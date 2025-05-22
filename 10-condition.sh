#!/bin/bash

USERID=$(id -u)

if [ $USER -ne 0 ]
then
    echo "ERROR:: Please run the script with root access"
else
    echo "you are running with root access"
fi

dnf install mysql -y
