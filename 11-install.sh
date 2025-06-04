#!/bin/bash

USERID=$(id -u)


if [ $USERID -eq 0 ]
then
    echo "Running as Root"
    echo "Installing MySql"
    dnf list installed mysql 
    if [ $? -eq 0 ]
    then
        echo "MySql is already installed"
    else
        dnf install mysql -y
    fi
else
    echo "User ID : $USERID" 
    echo "ERROR:: Not running as Root User" 
    exit 1
fi


if [ $? -eq 0 ]
then
    echo "Installing MySql is.... SUCCESS"
else
    echo "Installing MySql is... FAILURE"
    exit 1
fi

