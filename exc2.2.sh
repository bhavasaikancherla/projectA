#!/bin/bash

# Check if the zip file exists
if [ ! -f "$1" ]
then
    echo "Zip file does not exist!"
    exit 1
fi

# Define a list of passwords
passwords=( password1234 qwerty123 secret123 123456abc )
for password in "${passwords[@]}"
do
    # Try to extract the files from the zip archive
    unzip -P $password $1 &> /dev/null

    # Check if the extraction was successful
    if [ $? -eq 0 ]
    then
    echo "Password is: $password"
    break
    fi
done
