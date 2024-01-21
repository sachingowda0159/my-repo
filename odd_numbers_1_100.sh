#!/bin/bash

for num in {1..100}; do
	if [ $((num % 2)) -ne 0 ]; then
	echo "$num"
	fi
done
