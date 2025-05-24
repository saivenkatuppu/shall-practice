#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "error:: please run this script with root user"
else    
    echo "you are a root user"
fi
dnf install mysql -y
fi