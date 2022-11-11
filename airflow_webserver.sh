#!/bin/bash

input_arg=$1
if [[ "$input_arg" == "start" ]]
then
  echo "Airflow Webserver Starting"
  curr_dtime=$(TZ=IST-5:30 date +"%Y_%m_%d_%H_%M_%S")
  airflow webserver -D >> /home/mylinux/ShellLogs/airflow_webserver_$curr_dtime.log

elif [[ "$input_arg" == "stop" ]]
then
  echo "Stopping Airflow Webserver"
  kill $(cat /mnt/d/WorkSpace/PythonProjects/AirflowHome/airflow-webserver.pid)

else
  echo "Argument not found"
fi
