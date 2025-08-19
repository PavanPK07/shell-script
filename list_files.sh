#!/bin/bash

dir_path=/home/centos/shell-script


if [ -d "$dir_path" ]
then 
    echo "listing files in $dir_path"
    ls -lh "$dir_path"
else
    echo "error"
    exit 1
fi    

