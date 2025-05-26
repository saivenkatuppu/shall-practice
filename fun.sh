#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "error:: please run this script with root user"
    exit 1
else    
    echo "you are a root user"
fi
VALIDATE(){
    if [ $1 -eq 0 ]
 then 
    echo "installing $1 IS ....SUCCESS"
else
    echo "installing my $2 is failure"
    exit 1
fi
}
dnf list installed mysql

if [ $? -ne 0 ]
 then
    echo "MY SQL IS not installed...goingto install it"
    dnf install mysql -y
 VALIDATE $? "MYSQL"
else 
    echo "its already install"    
fi

dnf list installed python3

if [ $? -ne 0 ]
 then
    echo "PYTHON IS not installed...goingto install it"
    dnf install python3 -y
 VALIDATE $? "PYTHON"
else 
    echo "its already install"
    
fi

dnf list installed nginx

if [ $? -ne 0 ]
 then
    echo "MY SQL IS not installed...goingto install it"
    dnf install nginx -y
 VALIDATE $? "NGINX"
else 
    echo "its already install"
    
fi
 
 