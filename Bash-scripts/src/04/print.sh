#!/bin/bash

bash color.sh "HOSTNAME = " "$HOSTNAME"
bash color.sh "TIMEZONE = " "$TIMEZONE"
bash color.sh "USER = " "$USER"
bash color.sh "OS = " "$OS"
bash color.sh "DATE = " "$DATE"
bash color.sh "UPTIME = " "$UPTIME"
bash color.sh "UPTIME_SEC = " "$UPTIME_SEC"
bash color.sh "IP = " "$IP"
bash color.sh "MASK = " "$MASK"
bash color.sh "GATEWAY = " "$GATEWAY"
bash color.sh "RAM TOTAL = " "$RAM_TOTAL"
bash color.sh "RAM USED = " "$RAM_USED"
bash color.sh "RAM FREE = " "$RAM_FREE"
bash color.sh "SPACE ROOT = " "$SPACE_ROOT"
bash color.sh "SPACE ROOT USED = " "$SPACE_ROOT_USED"
bash color.sh "SPACE ROOT FREE = " "$SPACE_ROOT_FREE"

declare -a color_name=("null" "white" "red" "green" "blue" "purple" "black")

echo 

if [[ $flag1 == 1 ]] 
then
    echo "Column 1 background = default (${color_name[$color1]})"
else
    echo "Column 1 background = $color1 (${color_name[$color1]})"
fi

if [[ $flag2 == 1 ]]
then
    echo "Column 1 font color = default (${color_name[$color2]})"
else
    echo "Column 1 font color = $color2 (${color_name[$color2]})"
fi

if [[ $flag3 == 1 ]]
then
    echo "Column 2 background = default (${color_name[$color3]})"
else
    echo "Column 2 background = $color3 (${color_name[$color3]})"
fi

if [[ $flag4 == 1 ]]
then
    echo "Column 2 font color = default (${color_name[$color4]})"
else
    echo "Column2 font color = $color4 (${color_name[$color4]})"
fi

