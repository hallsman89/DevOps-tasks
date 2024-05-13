#!/bin/bash

if [ $# != 4 ]
then
    echo Wrong quantity of parameters
    exit 1
fi

export color1=$1
export color2=$2
export color3=$3
export color4=$4

for i in 1 2 3 4
do
    if [[ $[color$i] -gt 6 || $[color$i] -lt 1 ]]
    then
        echo color $i : Wrong parameter
        exit 1
    fi
done

if [[ $color1 == $color2 || $color3 == $color4 ]]
then
    echo ERROR: The font and background colors are the same
    exit 1
fi

chmod +x info.sh
./info.sh
