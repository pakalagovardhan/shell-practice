#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
    exit 1
else
    echo "you are running with root access"
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MYSQL is not installed its going to install"
    if [ $? -eq 0 ]
    then
    echo "installing mysql is successfull"
    else
    echo "failed......"
    exit 1
    fi
else
    echo "Its already present"
fi

dnf install mysql -y


