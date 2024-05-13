#!/bin/bash


echo HOSTNAME = $(hostname)
echo TIMEZONE = $(timedatectl | grep 'Time zone' | cut -d ':' -f2-) 
echo USER = $(whoami)
echo OS = $(cat /etc/issue | awk '{print $1,$2}')
echo DATE = $(date +"%d %B %Y %T")
echo UPTIME = $(uptime -p)
echo UPTIME_SEC = $(cat /proc/uptime | awk '{print $1}')
echo IP = $(hostname -i)
echo MASK = $(ip a | grep inet | grep brd | awk '{print $4}')
echo GATEWAY = $(ip r | grep default | awk '{print $3}')
echo RAM_TOTAL = $(cat /proc/meminfo | grep MemTotal | awk '{printf "%.3f GB\n", $2/1024/1024}')
echo RAM_USED = $(free | awk 'FNR == 2 {printf "%.3f GB\n", $3/1024/1024}')
echo RAM_FREE = $(cat /proc/meminfo | grep MemFree | awk '{printf "%.3f GB\n", $2/1024/1024}')
echo SPACE_ROOT = $(df /root/ | awk 'FNR == 2 {printf "%.2f MB\n", $2/1024}')
echo SPACE_ROOT_USED = $(df /root/ | awk 'FNR == 2 {printf "%.2f MB\n", $3/1024}')
echo SPACE_ROOT_FREE = $(df /root/ | awk 'FNR == 2 {printf "%.2f MB\n", $4/1024}')



