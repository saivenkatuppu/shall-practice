#!/bin/bash

# USERID=$(id -u)

# if [ $USERID -ne 0 ]
# then 
#     echo "ERROR : PLEASE UPDATE THE USER INTO ROOT"
    
# else
#     echo "RUNNING WITH ROOT ACCESS"
# fi
dnf list installed mysql
if [ $? -ne 0 ]
then
echo "mysql is not installed going to install"
dnf install mysql -y
if [ $? -ne 0 ]
then 
echo "installing mysql is success"
else
echo "installing mysql is failure"
fi
else
echo "my sql isalready in laptop"