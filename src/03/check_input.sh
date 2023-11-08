#!/bin/bash

# check empty
if [ -z $1 ];
then
    echo "Parameter is empty! Pass 4 parameter."
    exit 1
# check more 4 param
elif [ $# -gt 4 ];
then
    echo "Parameter more than 4! Need 4 parameter."
    exit 1
# check less 4
elif [ $# -lt 4 ];
then
    echo "Paremetert less than 4! Need 4 parameter."
    exit 1
fi

# check only digit
for arg in $@
do
    if [[ $arg != *[0-9]* ]];
    then
    echo "Wrong parameter! Parameter must contain only letters."
    exit 1
    fi
done

#check only 0-6 digit
for arg in $@
do 
    if [[ ($arg -gt 6) || ($arg -lt 0) ]]
    then
    echo "Wrong color number! All parameters must be digits from 0 to 6."
    exit 1
    fi
done

# the first & second pair of parameters do not match
for arg in $@
do 
    if [[ (($1 -eq $2) && ($1 -ne 0)) || (($3 -eq $4) && ($3 -ne 0)) ]]
    then
    echo "Text and background color match!"
    exit 1
    fi
done