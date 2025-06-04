#!/bin/bash

USERID=$(id -u)


if [ $USERID -eq 0 ]
then
    echo "Running as Root"
    echo "Installing MySql"
    dnf install mysql -y
else
    echo "User ID : $USERID" 
    echo "Not running as Root User"
    exit 1
fi

