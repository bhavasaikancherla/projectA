#!/bin/bash

read -r -p "Enter depth of pyramid: " n
echo "You enetered level: $n"

s=0
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
                if((i==1 || i==2 || i==n))
                then
                        echo -n "#" 
                        echo -n " " 
                elif((k==1))
                then
                        echo -n "#" 
                elif((k==i))
                then
                        for((l=1;l<=k+s;l++))
                        do
                                echo -n " " 
                        done
                        s=$((s+1)) 
                        echo -n "#" 
                fi
        done
        echo -e 
done
