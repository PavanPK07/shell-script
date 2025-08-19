#!/bin/bash

file_path=/home/centos/shell-script/if.sh

if [ -f $file_path ];
then
    line_count=$(wc-l "$file_path")
    echo "$file has $line_count lines"
else
    echo "$file doesn't exist or empty"
fi
