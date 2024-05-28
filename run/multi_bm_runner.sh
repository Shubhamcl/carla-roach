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

# Fully benchmarking Dino D5 on NN [SEED 2023] # Doing 28th February
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_19.t7"

# Fully benchmarking Dino D5 on NN [SEED 2022] # Redoing on 27th February 2024 # Done, bad result
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_19.t7"

# Fully benchmarking Dino D5 on NN [SEED 2021]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_19.t7" # DONE before 27-02-2024
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_30.t7"# TODO: CHECK

# Fully benchmarking Dino D4 on NN
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240202_224825Dino_oneD4_e12/models/model_19.t7"

# ------------

# Trying to benchmark Depth Vector Dagger 2 # Painfully bad, stopped mid way
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240217_230350DepthVector_D2/models/model_19.t7"

# Depth Vector Dagger 3 # Bad, stopped midway
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240218_155657DepthVector_D3/models/model_16.t7"

# Depth Vector FC Fix
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240219_095944DepthVectorFcfix/models/model_16.t7"

# Roach Verify
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240219_172745RoachNetVerify//models/model_13.t7"

# -------

#  [[ Trying seed 2022 and 2023 for Dino v1 dagger 5 model 30, instead 19 used earlier ]]

# Seed 2022
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_30.t7" 2022

# Seed 2023
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_30.t7" 2023

# [[ Dagger 4 Dino v1 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240202_224825Dino_oneD4_e12/models/model_19.t7" 2022
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240202_224825Dino_oneD4_e12/models/model_19.t7" 2023

# [[ RoachNet50 Dagger 4 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240302_202021RoachNet50D4/models/model_17.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240302_202021RoachNet50D4/models/model_17.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240302_202021RoachNet50D4/models/model_17.t7" 2023 # DONE

# [[ RoachNet50 Dagger 5 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240304_064850RoachNet50D5/models/model_16.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240304_064850RoachNet50D5/models/model_16.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240304_064850RoachNet50D5/models/model_16.t7" 2023 # DONE

# [[ Dino v1 Dagger 3 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7" 2023 # DONE

# [[ Check Dino v2 Dagger 4 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240310_191510Dinov2D4/models/model_16.t7" 2021 # DONE

# [[ Dino v1 Dagger 2 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7" 2023 # DONE

# [[ Dino v1 Dagger 1 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7" 2023 # DONE

# [[ Dino v1 Dagger 0 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_14.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_14.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_14.t7" 2023 # DONE

# [[ RoachNet50 Dagger 3 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240301_170125RoachNet50D3/models/model_15.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240301_170125RoachNet50D3/models/model_15.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240301_170125RoachNet50D3/models/model_15.t7" 2023 # DONE

# [[ RoachNet50 Dagger 2 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240229_170421RoachNet50D2/models/model_16.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240229_170421RoachNet50D2/models/model_16.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240229_170421RoachNet50D2/models/model_16.t7" 2023 # DONE

# [[ RoachNet50 Dagger 1 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240228_095251RoachNet50D1/models/model_16.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240228_095251RoachNet50D1/models/model_16.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240228_095251RoachNet50D1/models/model_16.t7" 2023 # DONE

# [[ RoachNet50 Dagger 0 ]]
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240226_010408RoachNet50/models/model_12.t7" 2021 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240226_010408RoachNet50/models/model_12.t7" 2022 # DONE
# ./run/multi_custom_benchmark.sh "lb_test_nn" "/home/shubham/Desktop/logs/etoe_vu/20240226_010408RoachNet50/models/model_12.t7" 2023 # DONE

# [[ END OF NN benchmarking ]]
# [[ Starting TT ]]

# Town 1 -> 0 to 09 WetNoon0to9, 10 to 19 ClearSunsent0to9
# Town 3 -> 0 to 19 WetNoon10to29, 20 to 39 ClearSunset10to29
# Town 4 -> 0 to 9 WetNoon30to39, 10 to 19 ClearSunset30to39
# Town 6 -> 0 to 9 WetNoon40to49, 10 to 19 ClearSunset40to49

# [[ Dinov1 Dagger 5 ]]
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_30.t7" 2021
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_30.t7" 2022
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240204_170347Dino_oneD5_e12/models/model_30.t7" 2023

# # [[ Dinov1 Dagger 4 ]]
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240202_224825Dino_oneD4_e12/models/model_19.t7" 2021
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240202_224825Dino_oneD4_e12/models/model_19.t7" 2022
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240202_224825Dino_oneD4_e12/models/model_19.t7" 2023

# [[ Dino v1 Dagger 3 ]]
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7" 2021
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7" 2022
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240131_080535Dino_oneD3_e12/models/model_17.t7" 2023

# [[ Dino v1 Dagger 2 ]]
./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7" 2021
./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7" 2022
./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240130_094844Dino_oneD2_e12/models/model_18.t7" 2023

# [[ Dino v1 Dagger 1 ]]
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7" 2021
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7" 2022
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240123_152535Dino_oneD1_e12/models/model_16.t7" 2023

# [[ Dino v1 Dagger 0 ]]
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_14.t7" 2021
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_14.t7" 2022
# ./run/multi_custom_benchmark.sh "lb_test_tt" "/home/shubham/Desktop/logs/etoe_vu/20240120_224834Dino_one/models/model_14.t7" 2023
