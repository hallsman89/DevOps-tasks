#!/bin/bash

export default_color1=1
export default_color2=2
export default_color3=3
export default_color4=4

export flag1=0
export flag2=0
export flag3=0
export flag4=0

if [[ $# != 0 ]]
then
    echo Error: input parameters are not expected
    exit 1
elif ! [[ -f "preset_color.conf" ]]
then
    echo Error: preset_color.conf does not exists
    exit 1
fi

source preset_color.conf

if [[ -z "$column1_background" ]]
then
    export color1=$default_color1
    export flag1=1
else
    export color1=$column1_background
fi

if [[ -z "$column1_font_color" ]]
then
    export color2=$default_color2
    export flag2=1
else
    export color2=$column1_font_color
fi

if [[ -z "$column2_background" ]]
then
    export color3=$default_color3
    export flag3=1
else
    export color3=$column2_background
fi

if [[ -z "$column2_font_color" ]]
then
    export color4=$default_color4
    export flag4=1
else
    export color4=$column2_font_color
fi

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
    echo Error: The font and background colors are the same
    exit 1
fi

chmod +x info.sh
./info.sh

