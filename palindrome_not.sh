#!/bin/bash

read -p "enter number: " num

reversed=$(echo $num | rev)

if [ $num = $rev ];
then 
    echo "$num is a palindrome"
else
    echo "$num is not a palindrome"
fi