#!/bin/bash

read -r -p "Please enter an ODD number: " num
center=$(( ($num+1)/2 ))

for((i=1;i<=num;i++))
do
   for((k=1;k<=num;k++))
   do
      if (( $i==1 || $i==$num ));
      then
        echo -n "*"
      else
 if (( $k==$i || $k==$num-$i+1 ))  
        then
           echo -n "*"
        else
           echo -n " "
        fi
      fi
   done

   echo
done

