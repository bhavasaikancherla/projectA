#!/bin/bash
echo "Input number of rows: "
read r
for ((i=1;i<r;i++ )); do
    for ((j=0; j<=r-i; j++ )); do
        echo -n "*"
    done
    for (( j=2; j<=2*i-1; j++ )); do
        echo -n " "
    done
    for ((j=0; j<=r-i; j++ )); do
        echo -n "*"
    done
    echo
done
for ((i=r-1; i>=1; i-- )); do
    for ((j=0; j<=r-i; j++ )); do
        echo -n "*"
    done
    for ((j=2; j<=2*i-1; j++ )); do
        echo -n " "
    done
    for ((j=0; j<=r-i; j++ )); do
        echo -n "*"
    done
    echo
done
echo

