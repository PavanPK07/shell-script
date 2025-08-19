#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 
else
    echo "You are root user"
fi 
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing MySQL is failed"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi

yum install nginx -y

if [ $? -ne 0 ]
then
    echo "ERROR:: Installing nginx is failed"
    exit 1
else
    echo "Installing nginx is SUCCESS"
fi