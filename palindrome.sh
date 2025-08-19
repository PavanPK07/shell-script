#!/bin/bash

words=(madam level radar github amazon)
for word in ${words[@]}
do 
    reversed=$(echo "$word" | rev)
    if [ " $word = $reversed " ]
    then 
        echo "$word is palindrome"
    else
        echo "$word is not a palindrome"
    fi
done
