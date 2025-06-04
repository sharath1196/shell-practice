#!/bin/bash

USERID=$(id -u)


if [ $USERID -eq 0 ]
then
    echo "Running as Root"
    echo "Installing MySql"
    dnf install mysql -y
else
    echo "User ID : $USERID" 
    exit 1
    echo "ERROR:: Not running as Root User"
    
fi

if [ $? -ne 0 ]
then
    echo "Installing MySql is....Failure"
else
    echo "Installing MySql is...Success"
fi

