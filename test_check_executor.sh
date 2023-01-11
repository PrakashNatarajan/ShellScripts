#!/bin/bash

echo "Checking args"
curr_dtime=$(TZ=IST-5:30 date +"%Y_%m_%d_%H_%M_%S")
cd /mnt/d/WorkSpace/PythonProjects/CheckExecutors
python3 internal_hier_loader.py >> /home/mylinux/ShellLogs/internal_hier_loader_$curr_dtime.log

