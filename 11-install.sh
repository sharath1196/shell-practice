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
        echo "Installing MySql is.... SUCCESS"
    fi
else
    echo "User ID : $USERID" 
    echo "ERROR:: Not running as Root User"
    echo "Installing MySql is... FAILURE" 
    exit 1
fi


