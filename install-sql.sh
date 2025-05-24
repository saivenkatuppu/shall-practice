#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "error:: please run this script with root user"
    exit 1
else    
    echo "you are a root user"
fi
dnf install mysql -y
 if [ $?  -et 0 ]
 then 
    echo "installing mysql"
else
    echo "installing my sql is failure"

fi