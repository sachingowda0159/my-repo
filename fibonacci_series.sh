#!/bin/bash

echo "Enter the lenght (n)"
read n

a=0
b=1
N=10


echo "The fibonacci series is: $* "
for (( i=0; i<=N; i++ ))
do
	echo -n "$a"
	fn=$(( a + b ))
	a=$b
	b=$fn

done



