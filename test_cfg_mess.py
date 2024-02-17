import hydra
from omegaconf import DictConfig, OmegaConf
from carla_gym.utils import config_utils

# NOTE:
# This file was made to test if custom_agent.py's CustomAgent class instantiates 
# or not. (Basically makes it through CustomAgent.setup() or not)


@hydra.main(config_path='config', config_name='benchmark')
def main(cfg: DictConfig):
    # single actor, place holder for multi actors
    agents_dict = {}
    obs_configs = {}
    reward_configs = {}
    terminal_configs = {}
    agent_names = []
    for ev_id, ev_cfg in cfg.actors.items():
        agent_names.append(ev_cfg.agent) # Only the cilrs name
        cfg_agent = cfg.agent[ev_cfg.agent] # cilrs.yaml from config.agent folder
        OmegaConf.save(config=cfg_agent, f='config_agent.yaml')# save cilrs config
        AgentClass = config_utils.load_entry_point(cfg_agent.entry_point) # Get refernce to agents.cilrs.cilrs_agent:CilrsAgent class
        agents_dict[ev_id] = AgentClass('config_agent.yaml') # Instantiate this class into agents_dict[hero]
        obs_configs[ev_id] = agents_dict[ev_id].obs_configs # Put the obs config of cilrs into obs_config[hero]

        # get obs_configs from agent
        reward_configs[ev_id] = OmegaConf.to_container(ev_cfg.reward)# Reward config loading
        terminal_configs[ev_id] = OmegaConf.to_container(ev_cfg.terminal)# Terminal config loading

if __name__=='__main__':
    main()