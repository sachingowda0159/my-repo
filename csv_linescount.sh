#!/bin/bash

echo "Enter the csv file name: "
read filename

#Check file exists or not
if [ ! -f "$filename" ]; then
	echo "File does not exits"
	exit 1
fi

#Count the number of lines
lines_count=$(wc -l "$filename") 

#Print the lines count
echo "The number of lines in the csv file is $lines_count"
