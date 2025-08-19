#!/bin/bash

echo "enter a number"
read Num
Num=$n
sum=0

while [$n -ge 0 ]
do
    digit=(($n%10))
    sum=(($sum+$digit))
    n=$((n/10))
done

echo " sum of digits of $Num is $sum "