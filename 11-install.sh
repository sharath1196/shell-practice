#!/bin/bash

USERID=$(id -u)

echo "$USERID"

if [ $USERID -eq 0]
then
    echo "Running as Root"
    echo "Installing MySql"
    dnf install mysql -y
else
    echo "Not running as Root User"

