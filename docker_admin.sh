#!/bin/bash

input_arg=$1
if [[ "$input_arg" == "start" ]]
then
  echo "Starting Docker Engine"
  curr_dtime=$(TZ=IST-5:30 date +"%Y_%m_%d_%H_%M_%S")
  sudo dockerd >> /home/mylinux/ShellLogs/processing_docker_$curr_dtime.log &

elif [[ "$input_arg" == "stop" ]]
then
  echo "Stoping Docker Engine"
  docid=`pidof sudo dockerd`
  echo $docid
  sudo kill -9 $docid

else
  echo "Argument not found"
fi
