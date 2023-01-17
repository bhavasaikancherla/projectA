#!/bin/bash
while read line
do
 student_id=$(echo $line | cut -d ';' -f 2)
 marks=$(echo $line | cut -d ';' -f 3- | tr ';' ' ')
 total=0
 count=0
 for mark in $marks
 do
  total=$((total + mark))
  count=$((count + 1))
 done
 average=$((total / count))
 echo "$student_id:$average"
done < marks.csv
