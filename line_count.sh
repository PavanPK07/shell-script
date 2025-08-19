#!/bin/bash

file_path=/home/centos/shell-script/if.sh

if [ -f $file_path ];
then
    line_count=$(wc -l < "$file_path")
    word_count=$(wc -w < "$file_path")
    echo "$file_path has $line_count lines with $word_count words"
else
    echo "$file doesn't exist or empty"
fi
