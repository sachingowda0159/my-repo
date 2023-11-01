#!/bin/bash

#Get the path from the user
echo "Enter the directory path"
read d

#Check whether the path exists or not
if [ -d "$d" ]; then
       echo "Okay, here is the list of all the files ends with .txt"
else
	echo "Enter the correct directory name"
fi

#Create a function to print the files with .txt files
files=$(find . -name "*.txt")

#create a new directory to move the files
mkdir ./moved_files

#Move the files
for files in $files; do
	mv "$files" ./moved_files
done

#change the directory to new directory 
cd ./moved_files

#list the files
ls -lrt 

#come back to original directory
cd ../
ls


