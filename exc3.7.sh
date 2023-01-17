#!/bin/bash

echo -n "Enter the number of rows: "
read rows

for((x=1; x <= rows; x++))
do
    for((y=1; y <= (rows-x); y++))
    do
        printf " "
    done

    for((y=x; y <= rows; y++))
    do
        printf "*"
    done
    printf "\n"
done

for((x=1; x <= rows; x++))
do
    for((y=1; y <= x; y++))
    do
        printf " "
    done

    for((y=1; y <= x; y++))
    do
        printf "*"
    done
    printf "\n"
done
