#!/bin/bash

# lb_small_tt -> small train town train weathers
# lb_small_nn -> small test town test weathers
# * To benchmark il agents.
agent="custom"
benchmark () {
  python -u benchmark.py resume=true log_video=true \
  wb_project=custom-test-benchmark \
  agent=$agent actors.hero.agent=$agent \
  'wb_group="SeqPenalty2ndIm"' \
  'wb_notes="D0"' \
  test_suites=lb_small_nn \
  seed=2021 \
  +wb_sub_group=Dagger0 \
  no_rendering=true \
  carla_sh_path=${CARLA_ROOT}/CarlaUE4.sh
}


# NO NEED TO MODIFY THE FOLLOWING
# actiate conda env
source ~/miniconda3/etc/profile.d/conda.sh
conda activate carla38

# remove checkpoint files
rm outputs/checkpoint.txt
rm outputs/wb_run_id.txt
rm outputs/ep_stat_buffer_*.json

# resume benchmark in case carla is crashed.
RED=$'\e[0;31m'
NC=$'\e[0m'
PYTHON_RETURN=1
until [ $PYTHON_RETURN == 0 ]; do
  benchmark
  PYTHON_RETURN=$?
  echo "${RED} PYTHON_RETURN=${PYTHON_RETURN}!!! Start Over!!!${NC}" >&2
  sleep 2
done

killall -9 -r CarlaUE4-Linux
echo "Bash script done."

# To shut down the aws instance after the script is finished
# sleep 10
# sudo shutdown -h now