#!/bin/bash

echo -n "Enter the size: "
read size

for ((x=(size/2); x<=size; x+=2))
do
    for ((y=1; y<(size-x); y+=2))
    do
        printf " "
    done
    for ((y=1; y<=x; ++y))
    do
        printf "*"
    done
    for ((y=1; y<=(size-x); ++y))
    do
        printf " "
    done
    for ((y=1; y<=x; ++y))
    do
        printf "*"
    done
    echo
done

for ((x=size; x>=1; --x))
do
    for ((y=x; y<size; ++y))
    do
        printf " "
    done
    for ((y=1; y<=(x*2)-1; ++y))
    do
        printf "*"
    done
    echo
done



