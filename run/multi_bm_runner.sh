# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230223_131935SegVPRencD3/models/model_19.t7"
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230223_131935SegVPRencD3/models/model_19.t7"

# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230226_005522SegVPRencD4/models/model_16.t7"
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230226_005522SegVPRencD4/models/model_16.t7"

# Trying to find better BaselineD2 model for training set
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_4.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_20.t7"


# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230227_074626SegVPRencD5/models/model_16.t7"
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230227_074626SegVPRencD5/models/model_16.t7"

# Trying to find better BaselineD2 model for testing set
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_4.t7"
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_20.t7"

# Skip above's exploration
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230301_220308LbModeBaselineD3/models/model_16.t7"
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230302_202806LbModeBaselineD4/models/model_16.t7"
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20230303_180104LbModeBaselineD5/models/model_19.t7"

# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230301_220308LbModeBaselineD3/models/model_16.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230302_202806LbModeBaselineD4/models/model_16.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20230303_180104LbModeBaselineD5/models/model_19.t7"

#################################################################
# Now starting full scale benchmarking for reporting in the paper
#################################################################

# [ LB TEST NN ]

# SEG VPR D5
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230227_074626SegVPRencD5/models/model_16.t7"

# Baseline D5
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230303_180104LbModeBaselineD5/models/model_19.t7"

# Baseline D3
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230301_220308LbModeBaselineD3/models/model_16.t7"

# SEG VPR D3
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230223_131935SegVPRencD3/models/model_19.t7"

# # Baseline D4
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230302_202806LbModeBaselineD4/models/model_16.t7"

# # SEG VPR D4
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230226_005522SegVPRencD4/models/model_16.t7"


# # Baseline D1
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230131_025157LbModeBaselineD1/models/model_16.t7"

# # SEG VPR D1
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230220_231756SegVPRencD1/models/model_11.t7"


# # Baseline D0
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230130_105732LbModeBaseline/models/model_15.t7"

# # SEG VPR D0
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230220_010526SegVPRenc/models/model_5.t7"


# # Baseline D2
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_16.t7"

# # SEG VPR D2
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20230221_205635SegVPRencD2/models/model_18.t7"


# [[ LB TEST TT ]]

# SEG VPR D0
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230220_010526SegVPRenc/models/model_5.t7"

# SEG VPR D1
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230220_231756SegVPRencD1/models/model_11.t7"

# SEG VPR D2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230221_205635SegVPRencD2/models/model_18.t7"

# # SEG VPR D3
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230223_131935SegVPRencD3/models/model_19.t7"

# # SEG VPR D4
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230226_005522SegVPRencD4/models/model_16.t7"

# # SEG VPR D5
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230227_074626SegVPRencD5/models/model_16.t7"


# # Baseline D0
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230130_105732LbModeBaseline/models/model_15.t7"

# # Baseline D1
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_025157LbModeBaselineD1/models/model_16.t7"

# # Baseline D2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_16.t7"

# Baseline D3
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230301_220308LbModeBaselineD3/models/model_16.t7"

# Baseline D4
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230302_202806LbModeBaselineD4/models/model_16.t7"

# # Baseline D5 : CANCELED
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230303_180104LbModeBaselineD5/models/model_19.t7"

# # Baseline D5 v2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230327_110716LbModeBaselineD5_v2/models/model_19.t7"


# SEED 2 (now set to 2022)

# [[ LB TEST TT ]]

# SEG VPR D0
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230220_010526SegVPRenc/models/model_5.t7"

# SEG VPR D1
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230220_231756SegVPRencD1/models/model_11.t7"

# SEG VPR D2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230221_205635SegVPRencD2/models/model_18.t7"

# # SEG VPR D3
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230223_131935SegVPRencD3/models/model_19.t7"

# # SEG VPR D4
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230226_005522SegVPRencD4/models/model_16.t7"

# # SEG VPR D5
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230227_074626SegVPRencD5/models/model_16.t7"


# # Baseline D0
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230130_105732LbModeBaseline/models/model_15.t7"

# # Baseline D1
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_025157LbModeBaselineD1/models/model_16.t7"

# # Baseline D2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_16.t7"

# Baseline D3
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230301_220308LbModeBaselineD3/models/model_16.t7"

# Baseline D4
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230302_202806LbModeBaselineD4/models/model_16.t7"

# # Baseline D5 : CANCELED
###### ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230303_180104LbModeBaselineD5/models/model_19.t7"

# # Baseline D5 v2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230327_110716LbModeBaselineD5_v2/models/model_19.t7"


# SEED 3 (now set to 2023)

# [[ LB TEST TT ]]

# SEG VPR D0
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230220_010526SegVPRenc/models/model_5.t7"

# SEG VPR D1
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230220_231756SegVPRencD1/models/model_11.t7"

# SEG VPR D2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230221_205635SegVPRencD2/models/model_18.t7"

# # SEG VPR D3
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230223_131935SegVPRencD3/models/model_19.t7"

# # SEG VPR D4
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230226_005522SegVPRencD4/models/model_16.t7"

# # SEG VPR D5
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230227_074626SegVPRencD5/models/model_16.t7"


# # Baseline D0
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230130_105732LbModeBaseline/models/model_15.t7"

# # Baseline D1
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_025157LbModeBaselineD1/models/model_16.t7"


# Sending these, to main PC

# # Baseline D2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230131_184744LbModeBaselineD2/models/model_16.t7"

# Baseline D3
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230301_220308LbModeBaselineD3/models/model_16.t7"

# Coming back main PC to this PC

# Baseline D4
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230302_202806LbModeBaselineD4/models/model_16.t7"

# # Baseline D5 : CANCELED
###### ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230303_180104LbModeBaselineD5/models/model_19.t7"

# # Baseline D5 v2
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20230327_110716LbModeBaselineD5_v2/models/model_19.t7"


# -------------------------------------------------------
# End of Paper
# -------------------------------------------------------

# Full resolution baseline
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20231218_171725kacim_observe_only_fullres_na//models/model_11.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20231218_171725kacim_observe_only_fullres_na//models/model_11.t7"
# Full resolution baseline
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20231218_171725kacim_observe_only_fullres_na//models/model_20.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20231218_171725kacim_observe_only_fullres_na//models/model_20.t7"

# # KACim 20231218_101634kacim_observe_only_fullres_na
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20231219_233946kacim_update_lowMP/models/model_20.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20231219_233946kacim_update_lowMP/models/model_20.t7"


# DinoRoach
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_20.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_20.t7"

# DinoRoach epoch 12
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_12.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_12.t7"

# DinoRoach epoch 4
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_4.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_4.t7"

# DinoRoach D1 epoch 10
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240121_195217Dino_oneD1/models/model_10.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240121_195217Dino_oneD1/models/model_10.t7"
# DinoRoach D1 epoch 20
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240121_195217Dino_oneD1/models/model_20.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240121_195217Dino_oneD1/models/model_20.t7"

# DinoRoach D1 daggered on better epoch (12) epoch 16
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7"
# DinoRoach D1 daggered on better epoch (12) epoch 20
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_20.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_20.t7"

# HSIC 0.5 multiplier 1
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240128_200657HSIC.5_town_MP1/models/model_11.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240128_200657HSIC.5_town_MP1/models/model_11.t7"

# # DinoD2
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7"

# DinoD3
# ./run/multi_custom_benchmark.sh "lb_small_nn" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7"
# ./run/multi_custom_benchmark.sh "lb_small_tt" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7"

# Above ones probably not looked at i.e. DinoD3

# Fully benchmarking Dino D4 on NN
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240202_224825Dino_oneD4_e12/models/model_19.t7"

# Fully benchmarking Dino D5 on NN [SEED 2023]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_19.t7"

# Fully benchmarking Dino D5 on NN [SEED 2022]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_19.t7"

# Fully benchmarking Dino D5 on NN [SEED 2021]
./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_19.t7"

