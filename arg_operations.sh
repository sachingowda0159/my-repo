#!/bin/bash
echo "Enter Size(N)"
read N

i=1
sub=0

echo "Enter Numbers"
while [ $i -le $N ]
do
  read num           #get number
  sub=$((sub - num)) #sum+=num
  i=$((i + 1))
done

echo $sub

