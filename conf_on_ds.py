import numpy as np
import h5py

import time
import sys

# Load single h5 file
# See how to iterate through 1 file

h5_path = '/home/shubham/Desktop/dataset/bc/expert/0159.h5'
# h5_path = '/media/shubham/HDD/LinuxStorage/Data/speedtest/0159.h5'
obs_keys_to_load = ['speed', 'gnss', 'central_rgb']
im_stack_idx = [-1]

# How an address is stored:
# [h5_path, f'step_{i}', 'obs', obs_key]
# Rest is saved as an array
# But all goes into one dictionary

# Functions
def read_group_to_dict(group, list_keys):
    data_dict = {}
    for k, v in group.items():
        if v.size > 5000:   # Image, only save address, not value
            data_dict[k] = list_keys
        else:               # Not image
            data_dict[k] = np.array(v)
    return data_dict

# Collectors
obs_list = []
supervision_list = []

t = time.time()
with h5py.File(h5_path, 'r', libver='latest', swmr=True) as hf:

    new_hf_file = h5py.File('/home/shubham/Desktop/test.h5', 'w')

    for step_str, group_step in hf.items():

        if group_step.attrs['critical']: # Bullshit line of code

            new_step_group = new_hf_file.create_group(step_str)

            new_step_group.attrs['critical'] = group_step.attrs['critical']
            new_step_group.create_dataset('obs', data=group_step['obs'])
            new_step_group.create_dataset('supervision', data=group_step['supervision'])
            new_step_group.create_dataset('control_diff', data=group_step['control_diff'])


            # print(group_step['obs']['gnss'])

            # # Get step number
            # current_step = int(step_str.split('_')[-1]) # Always fucking step name
            # im_stack_idx_list = [max(0, current_step+i+1) for i in im_stack_idx]# [current_step]

            # obs_dict = {}
            # for obs_key in obs_keys_to_load:
            #     # For image, attach the address and other attributes, rest attach numpy value
            #     if 'rgb' in obs_key:
            #         obs_dict[obs_key] = [
            #             read_group_to_dict(
            #                 group_step['obs'][obs_key],
            #                 [h5_path, f'step_{i}', 'obs', obs_key]) for i in im_stack_idx_list]

            #         group_step['obs'][obs_key]
            #     else:
            #         obs_dict[obs_key] = read_group_to_dict(group_step['obs'][obs_key],
            #                                                     [h5_path, step_str, 'obs', obs_key])

            
            # supervision_dict = read_group_to_dict(group_step['supervision'],
            #                             [h5_path, step_str, 'supervision'])
            
            # for k,v in obs_dict.items():
            #     print(k)
            # print("-----------")
            # for k,v in supervision_dict.items():
            #     print(k)
            # sys.exit()
            # obs_list.append(obs_dict)
            # supervision_list.append(supervision_dict)
    hf.close()
print(time.time() - t)


            # self._obs_list.append(obs_dict)
            # self._supervision_list.append(self._env_wrapper.process_supervision(supervision_dict))
            # n_frames += 1

# def _load_h5(self, list_h5):
#     n_frames = 0
#     for h5_path in list_h5:
#         log.info(f'Loading: {h5_path}')
#         with h5py.File(h5_path, 'r', libver='latest', swmr=True) as hf:
#             for step_str, group_step in hf.items():
#                 if group_step.attrs['critical']: # Bullshit line of code
#                     current_step = int(step_str.split('_')[-1]) # Always fucking step name
#                     im_stack_idx_list = [max(0, current_step+i+1) for i in self._im_stack_idx]# [current_step]

#                     obs_dict = {}
#                     for obs_key in self._obs_keys_to_load:
#                         # For image, attach the address and other attributes, rest attach numpy value
#                         if 'rgb' in obs_key:
#                             obs_dict[obs_key] = [
#                                 self.read_group_to_dict(
#                                     group_step['obs'][obs_key],
#                                     [h5_path, f'step_{i}', 'obs', obs_key]) for i in im_stack_idx_list]

#                             group_step['obs'][obs_key]
#                         else:
#                             obs_dict[obs_key] = self.read_group_to_dict(group_step['obs'][obs_key],
#                                                                         [h5_path, step_str, 'obs', obs_key])

#                     supervision_dict = self.read_group_to_dict(group_step['supervision'],
#                                                                 [h5_path, step_str, 'supervision'])
#                     self._obs_list.append(obs_dict)
#                     self._supervision_list.append(self._env_wrapper.process_supervision(supervision_dict))
#                     n_frames += 1
#     return n_frames

# TODO: convert data from high rest to low res
# Opening h5 file DONE
# reading the image


# writing the image
# writing the h5 file


# import h5py, numpy as np

# arr = np.array([(1,'a'), (2,'b')], 
#       dtype=[('foo', int), ('bar', 'S1')]) 
# print (arr.dtype)

# h5file1 = h5py.File('test1.h5', 'w')
# h5file1.create_dataset('/ex_group1/ex_ds1', data=arr)                
# print (h5file1)

# my_array=h5file1['/ex_group1/ex_ds1']

# h5file2 = h5py.File('test2.h5', 'w')
# h5file2.create_dataset('/exgroup2/ex_ds2', data=my_array)
# print (h5file2)

# h5file1.close()
# h5file2.close()