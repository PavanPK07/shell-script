#!/bin/bash

list = (madam level radar github amazon)
for item in ${list[@]}
do 
    reversed = echo ("$item | rev")
    if $item = $reversed 
    then 
        echo "$item is palindrome"
    else
        echo "$item is not a palindrome"
    fi
done
