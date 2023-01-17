#!/bin/bash

echo " the passed arguments are: "
echo $@
echo " the total number of arguments is: "
echo $#

if [ $# -eq 0 ]; then
    echo "No arguments provided"
    exit 1
fi
