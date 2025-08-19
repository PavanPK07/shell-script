#!/bin/bash

echo 'enter number'
read number

if [ $number -le 10 ]
then 
    echo "$number is less than 10"
else
    echo "$number is greater than 10"
fi