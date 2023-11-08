#!/bin/bash/

# check empty
if [-z "$1"]
then
    echo "Parameter is empty! Pass 1 parameter."
    exit 1
# check more 1 param
elif [[ $# -gt 1 ]]
then
    echo "Too much parameters! Need 1 parametrs."
    exit 1
fi

# check first param, finish "/""
if [[ ${DIRECTORY: -1 } != "/" ]]
then
    echo "Wrong path! Missing sign in the end \"/\"."
    exit 1
fi

#check catalog
if [[ ! -d "$1" ]]
then
    echo "No such derictory"
    exit 1
fi
