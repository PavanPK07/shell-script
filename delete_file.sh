#!/bin/bash

file_path=/home/centos/shell-script/for.sh


if [ -f "$file_path" ]
then 
    rm "$file_path"
    echo "file deleted in the path $file_path"
else
    echo "ERROR: file doesn't exist in $file_path"
    exit 1
fi    