#!/bin/bash

USERNAME="newuser"
PASSWORD="User@123"
EXPIRE_DATE="2025-09-30"     


if [ "$(id -u)" -ne 0 ]; then
    echo "ERROR: Please run as root"
    exit 1
fi

useradd -m -e "$EXPIRE_DATE" "$USERNAME"

echo "$USERNAME:$PASSWORD" | chpasswd



echo "User $USERNAME created with expiry date $EXPIRE_DATE"
