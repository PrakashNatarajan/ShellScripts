curr_dtime=$(TZ=IST-5:30 date +"%Y_%m_%d_%H_%M_%S")
sudo dockerd >> /home/mylinux/ShellLogs/processing_docker_$curr_dtime.log

