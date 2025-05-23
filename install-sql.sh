#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR : PLEASE UPDATE THE USER INTO ROOT"
    exit 1
else
    echo "RUNNING WITH ROOT ACCESS"
fi
dnf install mysql -y