#!/bin/bash

if [ $# -ne 1 ] 
then
    echo "Usage: $0 filename"
    exit 1
fi

if [ ! -f $1 ]
then
    echo "Error: $1 does not exist"
    exit 2
fi

while read line
do
    mark1=$(echo $line | cut -d";" -f3)
    mark2=$(echo $line | cut -d";" -f4)
    mark3=$(echo $line | cut -d";" -f5)

    average=$((($mark1+$mark2+$mark3)/3))
    name=$(echo $line | cut -d";" -f2)
    if [ $average -ge 16 ]
    then
        appreciation="A: excellent"
    elif [ $average -ge 13 ]
    then
        appreciation="B: good"
    elif [ $average -ge 10 ]
    then
        appreciation="C: Average"
    elif [ $average -ge 8 ]
    then
        appreciation="D: below average"
    else
        appreciation="F: Fail"
    fi

    echo $name has $appreciation
done < $1


