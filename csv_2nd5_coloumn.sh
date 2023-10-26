#!/bin/bash

echo "Enter the filename: "
read filename

#Check file exists or not
if [ ! -f "$filename" ]; then
	echo "File does not exists"
	exit 1
fi

#get 2nd and 5th coloumn
awk '{print $2}' $filename ; awk '{print $5}' $filename


