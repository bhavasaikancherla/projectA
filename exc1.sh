#!/bin/bash

echo "SELECT ONE OF THE BELOW:";
echo "1. List of users in your ubuntu box"
echo "2. Kernel version"
echo "3. Distribution name and version"
echo "4. Identity of the user "
echo "5. Privilege escalation to administrator"
echo "6. Exit"
echo -n "Enter your menu choice [1-6]: "

while :
do
read choice
case $choice in
  1)  awk -F: '{ print $1}' /etc/passwd;;
  2)  uname -r;;
  3)  cat /etc/os-release;;
  4)  echo "$USER";;
  5)  ls -la /etc/passwd;;
  6)  echo "Quitting ..."
      exit;;
  *) echo "invalid option";;

esac
  echo -n "Enter your menu choice [1-6]: "
done
