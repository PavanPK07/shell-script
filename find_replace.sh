#!/bin/bash


file_path=/home/centos/shell-script/shell.sh
find_str=Purpose
replace_str=Aim

if [ -f $file_path ];
then 
    sed -i "/s/$find_str/$replace_str/g" "$file_path"
    echo "replaced $find_str with $replace_str in $file_path"
else
    echo "file doesn't exist or file doesnt contain $find_str"
fi