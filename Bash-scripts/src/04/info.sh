#!/bin/bash


export HOSTNAME=$(hostname)
export TIMEZONE=$(timedatectl | grep 'Time zone' | cut -d ':' -f2-)
export USER=$(whoami)
export OS=$(cat /etc/issue | awk '{print $1,$2}')
export DATE=$(date +"%d %B %Y %T")
export UPTIME=$(uptime -p)
export UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
export IP=$(hostname -i)
export MASK=$(ip a | grep inet | grep brd | awk '{print $4}')
export GATEWAY=$(ip r | grep default | awk '{print $3}')
export RAM_TOTAL=$(cat /proc/meminfo | grep MemTotal | awk '{printf "%.3f GB\n", $2/1024/1024}')
export RAM_USED=$(free | awk 'FNR == 2 {printf "%.3f GB\n", $3/1024/1024}')
export RAM_FREE=$(cat /proc/meminfo | grep MemFree | awk '{printf "%.3f GB\n", $2/1024/1024}')
export SPACE_ROOT=$(df /root/ | awk 'FNR == 2 {printf "%.2f MB\n", $2/1024}')
export SPACE_ROOT_USED=$(df /root/ | awk 'FNR == 2 {printf "%.2f MB\n", $3/1024}')
export SPACE_ROOT_FREE=$(df /root/ | awk 'FNR == 2 {printf "%.2f MB\n", $4/1024}')

chmod +x print.sh
./print.sh
