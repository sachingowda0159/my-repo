#!/bin/bash

echo "Enter the directory path"
read dir

#set the threshold value
threshold=10

#get the disk usage
usage=$(df -h $dir | awk '{print $5}' | cut -d "%" -f1 | tail -n -1 )

#check the usage value
if [ $usage -ge $threshold ]; then
	echo "Disk usage of $dir exceed $threshold% "
fi
