#!/bin/bash

echo "enter statement:"

read Statement

if [[ $Statement =~ "AEIOUaeiou" ]];
then
    echo "$Statement has vowels in it"
else 
    echo "no vowels in $Statement"]
fi