#!/bin/bash

echo "enter statement:"

read statement

if [[ $statement =~ [AEIOUaeiou] ]];
then
    echo "$statement has vowels in it"
else 
    echo "no vowels in $statement"]
fi