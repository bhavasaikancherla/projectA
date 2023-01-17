#!/bin/bash

files=(*)

mkdir -p images documents videos

for file in ${files[@]}
do
 if [[ $file == *.pdf ]]
 then
 mv $file documents
 elif [[ $file == *.png || $file == *.gif ]]
 then
  mv $file images
 elif [[ $file == *.avi || $file == *.mov ]]
 then
  mv $file videos
 fi
done
