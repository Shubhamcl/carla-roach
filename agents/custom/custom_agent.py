import copy
import logging
from collections import deque

import carla
import numpy as np
import cv2
import torch
from torchvision import transforms as T
from omegaconf import OmegaConf

from carla_gym.utils.config_utils import load_entry_point
from agents.cilrs.cilrs_agent import CilrsAgent

import carla_gym.utils.transforms as trans_utils
import carla_gym.core.task_actor.common.navigation.route_manipulation as gps_util
import carla

import sys
sys.path.insert(0, '/home/shubham/Desktop/git/etoe_vu/')

# For wrapper imported things
COLOR_BLACK = (0, 0, 0)
COLOR_WHITE = (255, 255, 255)
COLOR_RED = (255, 0, 0)
COLOR_GREEN = (0, 255, 0)
COLOR_BLUE = (0, 0, 255)
COLOR_YELLOW = (255, 255, 0)
COLOR_ORANGE_0 = (252, 175, 62)

# TODO:
# Make a reader of the models folder, to read config file
# Fill up things such as number of branches, etc.
# But right now information is missing

# Hook
holder = {}
def get_activation(name):
    def hook(model, input, output):
        holder[name] = output.detach().cpu().numpy()
    return hook

class CustomAgent():
    def __init__(self, path_to_conf_file='config_agent.yaml'):
        
        self._logger = logging.getLogger(__name__)
        self._render_dict = None

        self.im_stack_idx = [-1]
        self.device = torch.device('cuda:0')

        # Normalizing image function
        im_mean = [0.485, 0.456, 0.406]
        im_std = [0.229, 0.224, 0.225]
        self._im_transform = T.Compose([T.ToTensor(), T.Normalize(mean=im_mean, std=im_std)])
        
        # missing vars
        self.number_of_branches = 6

        self.setup(path_to_conf_file)

    def setup(self, path_to_conf_file):
        # This part loads model at least,
        # other things need to be figured out

        cfg = OmegaConf.load(path_to_conf_file)
        self._ckpt = cfg.ckpt
        self.future_step_prediction = cfg.future_step_prediction
        self.lb_mode = cfg.lb_mode
        cfg = OmegaConf.to_container(cfg)
        
        # Loading configs myself, because code is stupid. Abs add used, fuck it!
        obs_config = OmegaConf.load('/home/shubham/Desktop/git/carla-roach/config/agent/custom/obs_configs/central_rgb_wide.yaml')
        # Not requred:
        # train_config = OmegaConf.load('/home/shubham/Desktop/git/carla-roach/config/agent/custom/training/dagger.yaml')
        # policy_config = OmegaConf.load('/home/shubham/Desktop/git/carla-roach/config/agent/custom/policy/dagger.yaml')

        cfg['obs_configs'] = obs_config

        self._obs_configs = cfg['obs_configs']
        # for debug view
        self._obs_configs['route_plan'] = {'module': 'navigation.waypoint_plan', 'steps': 20}
        self.obs_configs = self._obs_configs
        # Loading wrapper class was skipped here
        
        # Model loading
        self._logger.info(f'Loading checkpoint: {self._ckpt}')
        self._policy = torch.load(self._ckpt)
        self._policy = self._policy.eval()

        self.mid_fusion = False

        # This holds pretrained dagger5, 
        if cfg['mid_fusion']:
            self.mid_fusion = True

            self._preagent = CilrsAgent('/home/shubham/Desktop/git/etoe_vu/data_altering/outputs/2023-01-03/17-35-28/config.yaml')
            self._preagent._policy.to(self.device)

            self._preagent._policy.join.register_forward_hook(get_activation('join'))

        self._im_queue = {
            'central_rgb': deque(maxlen=abs(min(self.im_stack_idx)))
        }

    def reset(self, log_file_path):
        """ Resets where we are gonna log things,
            don't know what though. """

        # Empty the logger's handler
        self._logger.handlers = []
        self._logger.propagate = False
        self._logger.setLevel(logging.DEBUG)
        
        # Give it a new handler
        fh = logging.FileHandler(log_file_path, mode='w')
        fh.setLevel(logging.DEBUG)
        self._logger.addHandler(fh)

        # Clear image queue
        for _, v in self._im_queue.items():
            v.clear()

    def render(self, reward_debug, terminal_debug):
        '''
        test render, used in benchmark.py
        '''
        self._render_dict['reward_debug'] = reward_debug
        self._render_dict['terminal_debug'] = terminal_debug
        im_render = self.im_render(self._render_dict)
        self._render_dict = None
        return im_render

    def run_step(self, input_data, timestamp):
        input_data = copy.deepcopy(input_data)

        for im_key in self._im_queue.keys():
            if len(self._im_queue[im_key]) == 0:
                for _ in range(self._im_queue[im_key].maxlen):
                    self._im_queue[im_key].append(input_data[im_key])
            else:
                self._im_queue[im_key].append(input_data[im_key])

            input_data[im_key] = [copy.deepcopy(self._im_queue[im_key][i]) for i in self.im_stack_idx]
        
        policy_input, command, fusion_input = self.process_obs(input_data)

        # actions, pred_speed = self._policy.forward_branch(command, **policy_input)
        # Forward 
        with torch.no_grad():

            command_tensor = command.to(self.device)
            command_tensor.clamp_(0, self.number_of_branches-1)

            if self.mid_fusion:
                fusion_input = dict([(k, v.to(self.device)) for k, v in fusion_input.items()])
                _ = self._preagent._policy.forward_branch(command, **fusion_input)
                policy_input['mid_fusion'] = torch.unsqueeze(torch.Tensor(holder['join'][0]),0)

            policy_input = dict([(k, v.to(self.device)) for k, v in policy_input.items()])
            
            outputs = self._policy(policy_input)
            actions = self.extract_branch(outputs['action_branches'], command_tensor)

            actions, pred_speed = actions[0].cpu().numpy(), outputs['pred_speed'].item()

            if self.future_step_prediction:
                actions = actions[:2]

            control = self.process_act(actions)

        self._render_dict = {
            'policy_input': policy_input,
            'command': command.cpu(),
            'action': actions,
            'pred_speed': pred_speed,
            'obs_configs': self._obs_configs,
            'birdview': input_data['birdview']['rendered'],
            'route_plan': input_data['route_plan'],
            'central_rgb': input_data['central_rgb'][-1]['data']
        }
        self._render_dict = copy.deepcopy(self._render_dict)
        self.supervision_dict = {}
        return control

    def process_obs(self, obs):
        # Prepare Command
        # VOID = -1
        # LEFT = 1
        # RIGHT = 2
        # STRAIGHT = 3
        # LANEFOLLOW = 4
        # CHANGELANELEFT = 5
        # CHANGELANERIGHT = 6
        
        self.speed_factor = 12.0

        command = obs['gnss']['command'][0]
        if command < 0:
            command = 4
        command -= 1
        assert command in [0, 1, 2, 3, 4, 5]

        # Make state [Speed only, as default]
        state_list = []
        state_list.append(obs['speed']['forward_speed'][0]/self.speed_factor)
        
        # Leaderboard needs more states
        if self.lb_mode:
            ev_gps = obs['gnss']['gnss']
            # imu nan bug
            compass = 0.0 if np.isnan(obs['gnss']['imu'][-1]) else obs['gnss']['imu'][-1]

            gps_point = obs['gnss']['target_gps']
            target_vec_in_global = gps_util.gps_to_location(gps_point) - gps_util.gps_to_location(ev_gps)
            ref_rot_in_global = carla.Rotation(yaw=np.rad2deg(compass)-90.0)
            loc_in_ev = trans_utils.vec_global_to_ref(target_vec_in_global, ref_rot_in_global)

            # Append vec
            state_list.append(loc_in_ev.x)
            state_list.append(loc_in_ev.y)
            # Append cmd
            cmd_one_hot = [0] * 6
            cmd_one_hot[command] = 1
            state_list += cmd_one_hot

        # Make a list for image
        im_list = []
         # NOTE: changed from small_central_rgb:
        im = self._im_transform( cv2.resize(obs['central_rgb'][0]['data'], (224,224)))
        im = self._im_transform(obs['central_rgb'][0]['data'])
        im_list.append(im)

        policy_input = {
            'im': torch.unsqueeze(torch.squeeze(torch.stack(im_list, dim=1)),0),
            'state': torch.unsqueeze(torch.tensor(state_list, dtype=torch.float32),0)
        }

        # Future turned off, as not training
        # if self.predict_future:
        #     policy_input['future'] = torch.squeeze(torch.tensor(obs['future'], dtype=torch.float32))
        
        fuse_policy_input = None
        if self.mid_fusion:
            # Make a list for image
            im_list2 = []
            im2 = self._im_transform(obs['central_rgb'][0]['data'])
            im_list2.append(im2)

            fuse_policy_input = {
                'im': torch.unsqueeze(torch.squeeze(torch.stack(im_list2, dim=1)),0),
                'state': torch.tensor(state_list, dtype=torch.float32)
            }
        return policy_input, torch.tensor([command], dtype=torch.int8), fuse_policy_input

    def im_render(self, render_dict):
        im_birdview = self.draw_route(render_dict)
        im_birdview = self.draw_gnss(im_birdview, render_dict)

        im_rgb = render_dict['central_rgb']

        h = im_birdview.shape[0]
        h_rgb, w_rgb = im_rgb.shape[0:2]

        w = int(w_rgb*(h/h_rgb))

        im = np.zeros([h, w+h, 3], dtype=np.uint8)
        im[:h, :w] = cv2.resize(im_rgb, (w, h))

        im[:h, w:w+h] = im_birdview

        action_str = np.array2string(render_dict['action'], precision=2, separator=',', suppress_small=True)
        state_str = np.array2string(render_dict['policy_input']['state'].cpu().numpy(),
                                    precision=2, separator=',', suppress_small=True)

        txt_1 = f'a{action_str} pre_v:{render_dict["pred_speed"]:5.2f}'
        im = cv2.putText(im, txt_1, (w, 12), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (255, 255, 255), 1)
        txt_2 = f'cmd: {render_dict["command"][0]} s{state_str}'
        im = cv2.putText(im, txt_2, (w, 24), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (255, 255, 255), 1)

        for i, txt in enumerate(render_dict['reward_debug']['debug_texts'] +
                                render_dict['terminal_debug']['debug_texts']):
            im = cv2.putText(im, txt, (3, (i+1)*12), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (255, 255, 255), 1)
        return im

    def draw_gnss(self, rendered_birdview, render_dict):
        if len(render_dict['policy_input']['state']) == 3:
            birdview_cfg = render_dict['obs_configs']['birdview']
            loc = render_dict['policy_input']['state'][1:].numpy()
            ev_xy = (int(birdview_cfg['width_in_pixels']/2),
                     int(birdview_cfg['width_in_pixels']-birdview_cfg['pixels_ev_to_bottom']))

            x = int(np.round(ev_xy[0] + loc[1]*birdview_cfg['pixels_per_meter']))
            y = int(np.round(ev_xy[1] - loc[0]*birdview_cfg['pixels_per_meter']))

            cmd = render_dict['command']

            if cmd == 0:
                # LEFT = 1
                color = COLOR_RED
            elif cmd == 1:
                # RIGHT = 2
                color = COLOR_GREEN
            elif cmd == 2:
                # STRAIGHT = 3
                color = COLOR_ORANGE_0
            elif cmd == 3:
                # LANEFOLLOW = 4
                color = COLOR_WHITE
            elif cmd == 4:
                # CHANGELANELEFT = 5
                color = COLOR_YELLOW
            elif cmd == 5:
                # CHANGELANERIGHT = 6
                color = COLOR_BLUE
            else:
                assert f'error {cmd}'

            cv2.line(rendered_birdview, ev_xy, (x, y), color=color, thickness=2)

        return rendered_birdview

    def draw_route(self, render_dict):
        birdview_cfg = render_dict['obs_configs']['birdview']
        rendered_birdview = render_dict['birdview']

        for i, loc in enumerate(render_dict['route_plan']['location']):
            x = int(np.round(birdview_cfg['width_in_pixels']/2 + loc[1]*birdview_cfg['pixels_per_meter']))
            y = int(np.round(birdview_cfg['width_in_pixels'] - birdview_cfg['pixels_ev_to_bottom']
                             - loc[0] * birdview_cfg['pixels_per_meter']))

            # VOID = 0
            # LEFT = 1
            # RIGHT = 2
            # STRAIGHT = 3
            # LANEFOLLOW = 4
            # CHANGELANELEFT = 5
            # CHANGELANERIGHT = 6
            cmd = render_dict['route_plan']['command'][i]

            if cmd == 1:
                # LEFT = 1
                color = COLOR_RED
            elif cmd == 2:
                # RIGHT = 2
                color = COLOR_GREEN
            elif cmd == 3:
                # STRAIGHT = 3
                color = COLOR_ORANGE_0
            elif cmd == 4:
                # LANEFOLLOW = 4
                color = COLOR_WHITE
            elif cmd == 5:
                # CHANGELANELEFT = 5
                color = COLOR_YELLOW
            elif cmd == 6:
                # CHANGELANERIGHT = 6
                color = COLOR_BLUE
            elif cmd == -1:
                # VOID = -1
                color = COLOR_BLACK
            else:
                print('error!!!!', cmd)
            cv2.circle(rendered_birdview, (x, y), 3, color, -1)

        return rendered_birdview

    @staticmethod
    def extract_branch(action_branches, branch_number):
        '''
        action_branches: list, len=num_branches, (batch_size, action_dim)
        '''
        output_vec = torch.stack(action_branches)
        # output_vec: (num_branches, batch_size, action_dim)

        if len(branch_number) > 1:
            branch_number = torch.squeeze(branch_number.type(torch.LongTensor))
        else:
            branch_number = branch_number.type(torch.LongTensor)
        # branch_number: (batch_size,)

        branch_number = torch.stack([branch_number, torch.LongTensor(range(0, len(branch_number)))])

        return output_vec[branch_number[0], branch_number[1], :]

    def process_act(self, action):
        # if self.acc_as_action:
        acc, steer = action.astype(np.float64)
        if acc >= 0.0:
            throttle = acc
            brake = 0.0
        else:
            throttle = 0.0
            brake = np.abs(acc)
        # else:
        #     throttle, steer, brake = action.astype(np.float64)

        throttle = np.clip(throttle, 0, 1)
        steer = np.clip(steer, -1, 1)
        brake = np.clip(brake, 0, 1)
        control = carla.VehicleControl(throttle=throttle, steer=steer, brake=brake)
        return control

class CustomAgentDepth(CustomAgent):
    def __init__(self, path_to_conf_file='config_agent.yaml'):
        super().__init__(path_to_conf_file)

        sys.path.insert(0,'/home/shubham/Desktop/git/Depth-Anything/')
        sys.path.insert(1,'/home/shubham/Desktop/git/Depth-Anything/torchhub/facebookresearch_dinov2_main/')

        from depth_anything.util.transform import Resize, NormalizeImage, PrepareForNet
        
        # Depth transforms
        self._depth_transform = T.Compose([
            Resize(
                width=518,
                height=518,
                resize_target=False,
                keep_aspect_ratio=True,
                ensure_multiple_of=14,
                resize_method='lower_bound',
                image_interpolation_method=cv2.INTER_CUBIC,
            ),
            NormalizeImage(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225]),
            PrepareForNet(),
        ])

        # Load Depth model
        self._depth_model = torch.load('/home/shubham/Desktop/git/Depth-Anything/depth_anything_encoder.t7').eval()
        self._depth_model.to(self.device)

    def process_obs(self, obs):
        # Prepare Command
        # VOID = -1
        # LEFT = 1
        # RIGHT = 2
        # STRAIGHT = 3
        # LANEFOLLOW = 4
        # CHANGELANELEFT = 5
        # CHANGELANERIGHT = 6
        
        self.speed_factor = 12.0

        command = obs['gnss']['command'][0]
        if command < 0:
            command = 4
        command -= 1
        assert command in [0, 1, 2, 3, 4, 5]

        # Make state [Speed only, as default]
        state_list = []
        state_list.append(obs['speed']['forward_speed'][0]/self.speed_factor)
        
        # Leaderboard needs more states
        if self.lb_mode:
            ev_gps = obs['gnss']['gnss']
            # imu nan bug
            compass = 0.0 if np.isnan(obs['gnss']['imu'][-1]) else obs['gnss']['imu'][-1]

            gps_point = obs['gnss']['target_gps']
            target_vec_in_global = gps_util.gps_to_location(gps_point) - gps_util.gps_to_location(ev_gps)
            ref_rot_in_global = carla.Rotation(yaw=np.rad2deg(compass)-90.0)
            loc_in_ev = trans_utils.vec_global_to_ref(target_vec_in_global, ref_rot_in_global)

            # Append vec
            state_list.append(loc_in_ev.x)
            state_list.append(loc_in_ev.y)
            # Append cmd
            cmd_one_hot = [0] * 6
            cmd_one_hot[command] = 1
            state_list += cmd_one_hot

        # Make a list for image
        im_list = []
         # NOTE: changed from small_central_rgb:
        im = self._im_transform( cv2.resize(obs['central_rgb'][0]['data'], (224,224)))
        im = self._im_transform(obs['central_rgb'][0]['data'])
        im_list.append(im)

        depth_image = torch.Tensor(self._depth_transform({'image': obs['central_rgb'][0]['data']/255.0})['image'])
        depth_image = torch.unsqueeze(depth_image, 0)
        depth_vector = self._depth_model(depth_image.to(self.device))

        policy_input = {
            'im': torch.unsqueeze(torch.squeeze(torch.stack(im_list, dim=1)),0),
            'state': torch.unsqueeze(torch.tensor(state_list, dtype=torch.float32),0),
            'depth' : depth_vector
        }

        # Future turned off, as not training
        # if self.predict_future:
        #     policy_input['future'] = torch.squeeze(torch.tensor(obs['future'], dtype=torch.float32))
        
        fuse_policy_input = None
        if self.mid_fusion:
            # Make a list for image
            im_list2 = []
            im2 = self._im_transform(obs['central_rgb'][0]['data'])
            im_list2.append(im2)

            fuse_policy_input = {
                'im': torch.unsqueeze(torch.squeeze(torch.stack(im_list2, dim=1)),0),
                'state': torch.tensor(state_list, dtype=torch.float32)
            }
        return policy_input, torch.tensor([command], dtype=torch.int8), fuse_policy_input

    def run_step(self, input_data, timestamp):
        input_data = copy.deepcopy(input_data)

        for im_key in self._im_queue.keys():
            if len(self._im_queue[im_key]) == 0:
                for _ in range(self._im_queue[im_key].maxlen):
                    self._im_queue[im_key].append(input_data[im_key])
            else:
                self._im_queue[im_key].append(input_data[im_key])

            input_data[im_key] = [copy.deepcopy(self._im_queue[im_key][i]) for i in self.im_stack_idx]
        
        policy_input, command, fusion_input = self.process_obs(input_data)

        # actions, pred_speed = self._policy.forward_branch(command, **policy_input)
        # Forward 
        with torch.no_grad():

            command_tensor = command.to(self.device)
            command_tensor.clamp_(0, self.number_of_branches-1)

            if self.mid_fusion:
                fusion_input = dict([(k, v.to(self.device)) for k, v in fusion_input.items()])
                _ = self._preagent._policy.forward_branch(command, **fusion_input)
                policy_input['mid_fusion'] = torch.unsqueeze(torch.Tensor(holder['join'][0]),0)

            policy_input = dict([(k, v.to(self.device)) for k, v in policy_input.items()])
            
            outputs = self._policy(policy_input)
            actions = self.extract_branch(outputs['action_branches'], command_tensor)

            actions, pred_speed = actions[0].cpu().numpy(), outputs['pred_speed'].item()

            if self.future_step_prediction:
                actions = actions[:2]

            control = self.process_act(actions)
        
        policy_input['depth'] = None
        self._render_dict = {
            'policy_input': policy_input,
            'command': command.cpu(),
            'action': actions,
            'pred_speed': pred_speed,
            'obs_configs': self._obs_configs,
            'birdview': input_data['birdview']['rendered'],
            'route_plan': input_data['route_plan'],
            'central_rgb': input_data['central_rgb'][-1]['data']
        }
        self._render_dict = copy.deepcopy(self._render_dict)
        self.supervision_dict = {}
        return control


# Interface for Benchmark:
# Takes in config file, and sets something as per config
# Reset (What are we resetting? Logging?) DONE
# Render, DONE
# Run step DONE
# Property of obs_config
# self._env_wrapper.im_render(self._render_dict)  DONE
# self._env_wrapper.process_obs(input_data) DONE
# control = self._env_wrapper.process_act(actions) DONE
# self._env_wrapper.im_stack_idx -> This needs to be DONE
# TODO:
# self._im_queue is missing right now, DONE, but needs understanding
# Getting 'central_rgb' to be 224x224 DONE
# Replace th with torch DONE
# 'central_rgb' ? Will it cause any harm? DONE, answer:Don't think so