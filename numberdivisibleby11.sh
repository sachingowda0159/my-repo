#!/bin/bash

echo "Enter the number"
read number

if [ $((number % 11)) -eq 0 ]; then
	echo "Number is divisible by 11"
else 
	echo " Number is not divisile by 11"
fi
