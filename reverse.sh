#!/bin/bash

echo "enter number: "

read num

n=$num

rev=o

while [ $n -gt 0 ]
do
    digit=$(( n % 10 ))
    rev=$(( rev*10 +digit ))
    n=$((n/10))
done

echo "reverse of $num is $rev"