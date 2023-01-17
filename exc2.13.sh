#!/bin/bash
echo "Last connected users and their connection time and address (or IP):"
last | awk '{print $1,$3,$5}'

echo "Free space on the disk:"
df -h

echo "Free RAM memory:"
free -m

echo "Top 10 processes in terms of CPU usages:"
ps aux | sort -nrk 3 | head -n 10
