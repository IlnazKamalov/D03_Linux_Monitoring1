#!/bin/bash

if [[ $1 == *[0-9]* ]];
then
    echo "Wrong parameter! Parameter must contain only letters."
    exit 1
else
    echo "$1"
fi
