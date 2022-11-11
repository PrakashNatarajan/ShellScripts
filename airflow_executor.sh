#!/bin/bash

input_arg=$1
if [[ "$input_arg" == "start" ]]
then
  echo "Airflow Executor Starting"
  curr_dtime=$(TZ=IST-5:30 date +"%Y_%m_%d_%H_%M_%S")
  airflow celery worker -D >> /home/mylinux/ShellLogs/airflow_executor_$curr_dtime.log

elif [[ "$input_arg" == "stop" ]]
then
  echo "Airflow Executor Stopping"
  airflow celery stop

else
  echo "Argument not found"
fi
