#!/bin/bash
if [[ $1 -ge 1 && $1 -le 12 ]]; then
 month=$1
 case $month in
 1|3|5|7|8|10|12)
  echo "31 days"
 ;;
 4|6|9|11)
  echo "30 days"
 ;;
 2)
  echo "28 or 29 days"
 ;;
 esac
else
 echo "Please enter a number between 1 and 12"
fi
