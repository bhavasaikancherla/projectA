#!/bin/bash

read -r -p "Enter depth of pyramid: " n
echo "the enetered level: $n"

space=n

for((i=1;i<=n;i++))
do
        space=$((space-1))

        for((j=1;j<=space;j++))
        do
                echo -n " "
        done
        for((k=1;k<=i;k++))
        do
                echo -n "*"
                echo -n " "
        done
        echo -e
done

