#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Please provide a file as argument."
    exit 1
fi

while read -r line
do
    name=$(echo $line | awk -F'!' '{print $1}')
    phone=$(echo $line | awk -F'!' '{print $2}')
    echo "$name: $phone"
done < $1
