#! /bin/bash

if [[ $# == 0 || $# -gt 1 ]] ; then
    echo "Error: wrong input"
elif [[ $1 =~ ^[0-9]+\.?[0-9]*$ ]] ; then
    echo "Error: invalid argument ($1)"
else 
    echo $1
fi

