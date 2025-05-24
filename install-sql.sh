#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "error:: please run this script with root user"
    exit 1
else    
    echo "you are a root user"
fi
dnf list installed mysql
if [ $? -ne 0 ]
 then
    echo "MY SQL IS not installed...goingto install it"
    dnf install mysql -y
 if [ $? -eq 0 ]
 then 
    echo "installing mysql"
else
    echo "installing my sql is failure"
    exit 1
fi
else 
    echo "its already install"
    exit 1
fi
