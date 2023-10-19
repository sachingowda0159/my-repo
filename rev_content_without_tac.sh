#!/bin/bash

echo "Enter the file name"
read name

cat -n $name | sort -r -n
