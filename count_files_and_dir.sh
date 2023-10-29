#!/bin/bash

echo "Enter the directory path "
read p

#check the path is correct or not
if [ -z "$p" ]; then
	echo "Please provide the directory name"
fi

#To get the number of files
files_count=$(find "$p" -type f | wc -l)

#To get the number of directories
directories_count=$(find "$p" -type  d | wc -l)

#Print the results
echo "Number of files is $files_count and Number of directories is $directories_count"
