#!/bin/bash

USERID=$(id -u)


if [ $USERID -eq 0 ]
then
    echo "Running as Root"
    echo "Installing MySql"
else
    echo "User ID : $USERID" 
    echo "ERROR:: Not running as Root User" 
    exit 1
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
    echo "Installing MySql is....SUCCESS"
else
    echo "Installing MySql is...FAILURE"
    exit 1
fi

