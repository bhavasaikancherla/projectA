#!/bin/bash

# Initialize an empty array to store the random numbers
arr=()

max=5

while [ ${#arr[@]} -lt $max ]
do
    rand=$((RANDOM % 50 + 1))

    if [[ ! " ${arr[@]} " =~ " ${rand} " ]]; then
       arr+=($rand)
    fi
done

echo ${arr[@]}



