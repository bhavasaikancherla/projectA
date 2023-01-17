#!/bin/bash
echo "What is the name of the file you want to transform?"
read filename
if [ -f $filename ]; then
 newFilename="${filename%.*}.csv"
 touch $newFilename
 while read line; do
 line=${line// /;};
 echo $line >> $newFilename
done <$filename
 echo "File successfully transformed!"
else
 echo "File does not exist!"
fi
