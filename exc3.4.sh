#!/bin/bash

MAX=10
for ((i=MAX; i > 0; i--))
do
    for ((j=0; j < i; j++))
    do
        echo -n "*"
    done
    for ((j=0; j < space; j++))
    do
        echo -n " "
    done
    for ((j=0; j < i; j++))
    do
        echo -n "*"
    done
    echo
    space=$((space+2))
done





