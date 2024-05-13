#!/bin/bash

column1=$1
column2=$2

black_f="\033[30m"
red_f="\033[31m"
green_f="\033[32m "
yellow_f="\033[33m"
blue_f="\033[34m"
purple_f="\033[35m"
white_f="\033[97m"

black_b="\033[40m"
red_b="\033[41m"
green_b="\033[42m"
yellow_b="\033[43m"
blue_b="\033[44m"
purple_b="\033[45m"
white_b="\033[107m"

reset_colors="\e[0m"

function background_color()
{
    color=$1
    if [[ $color == 1 ]]
    then
        echo $white_b
    elif [[ $color == 2 ]]
    then
        echo $red_b
    elif [[ $color == 3 ]]
    then
        echo $green_b
    elif [[ $color == 4 ]]
    then
        echo $blue_b
    elif [[ $color == 5 ]]
    then
        echo $purple_b
    elif [[ $color == 6 ]]
    then
        echo $black_b
    fi
}

function font_color()
{
    color=$1
    if [[ $color == 1 ]]
    then
        echo $white_f
    elif [[ $color == 2 ]]
    then
        echo $red_f
    elif [[ $color == 3 ]]
    then
        echo $green_f
    elif [[ $color == 4 ]]
    then
        echo $blue_f
    elif [[ $color == 5 ]]
    then
        echo $purple_f
    elif [[ $color == 6 ]]
    then
        echo $black_f
    fi
}


function column1_color()
{
    echo $(background_color $color1)
    echo $(font_color $color2)
}

function column2_color()
{
    echo $(background_color $color3)
    echo $(font_color $color4)
}

echo -e $(column1_color) $column1 $(column2_color) $column2 $reset_colors


