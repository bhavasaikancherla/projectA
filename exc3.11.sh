#!/bin/bash

echo "Enter Side of a Square = "
read squareSide

for (( x=1; x<=squareSide; x++ ))
do
    for (( y=1; y<=squareSide; y++ ))
    do
        # Checking boundary conditions and main
        # diagonal and secondary diagonal conditions
        if (( x==1 || x==squareSide || y==1 || y==squareSide || x==y|| y==(squareSide - x + 1) ))
        then
            #Print star
            printf "#"
        else
            #Print space
            printf " "
        fi
    done
    # Print new line
    printf "\n"
done

