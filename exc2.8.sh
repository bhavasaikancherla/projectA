#!/bin/bash
echo -n "Enter username:"
read username
echo -n "Enter phone number:"
read phone number
echo -n "Enter address:"
read address
grep -Fq "$username" contacts.csv
if [ $? -eq 0 ]
then
 sed -i
"s/^$username,.*/$username,$phone,$address/" contacts.csv
else
 echo "$username,$phone,$address" >>contacts.csv
fi 
