#!/bin/bash

words=(madam level radar github amazon)

for word in "${words[@]}"
do
    reversed=$(echo "$word" | rev)

    if [ "$word" = "$reversed" ]
    then
        echo "$word is a palindrome"
    fi
done