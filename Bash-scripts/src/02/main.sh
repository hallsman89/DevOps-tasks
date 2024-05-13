#!/bin/bash

if [ $# -gt 0 ]
then
    echo Error: input parameters are not expected
else
    chmod +x ./output.sh
    ./output.sh
    echo "Do you want to save data into the file? (Y/n)"
    read ans
    if [[ $ans == 'Y' || $ans == 'y' ]]
    then
        filename=$(date +'%d_%m_%y_%H_%M_%S')'.status'
        ./output.sh > $filename
    fi
fi
