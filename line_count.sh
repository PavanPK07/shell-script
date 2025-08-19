#!/bin/bash

file_path=/home/centos/shell-script/if.sh

if [ $file_path -f ]
then
    line_count=(wc-l $file_path)
    echo "$file has $line_count lines"
else
    echo "$file doesn't exist or empty"
fi
