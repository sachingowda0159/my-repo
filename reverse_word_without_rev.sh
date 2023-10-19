#!/bin/bash

#Get the word from the string

echo "Enter the word"
read word

#Reverse the word

for (( i=${#word}-1; i>=0; i-- )) do
	echo "${word:$i:1}"
done


