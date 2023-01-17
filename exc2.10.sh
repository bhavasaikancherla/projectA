#!/bin/bash
echo "User login names with UID greater than 1000 and their associated shell:"
while read p; do
 uid=$(echo $p | cut -d: -f3)
 shell=$(echo $p | cut -d: -f7)
 if [ $uid -gt 1000 ]; then
     echo $(echo $p | cut -d: -f1)
    echo $shell
 fi
done < /etc/passwd
