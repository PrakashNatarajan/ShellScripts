#!/bin/bash

input_arg=$1
if [[ "$input_arg" == "start" ]]
then
  echo "Airflow Scheduler Starting"
  curr_dtime=$(TZ=IST-5:30 date +"%Y_%m_%d_%H_%M_%S")
  airflow scheduler -D >> /home/mylinux/ShellLogs/airflow_scheduler_$curr_dtime.log

elif [[ "$input_arg" == "stop" ]]
then
  echo "Stoping Airflow Scheduler"
  kill $(cat /mnt/d/WorkSpace/PythonProjects/AirflowHome/airflow-scheduler.pid)

else
  echo "Argument not found"
fi
