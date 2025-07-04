#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
RESET="\e[0m"

PKG=$1
RESULT=dnf search $PKG 
USERID=$(id -u)

echo "$USERID"

main(){
    if [ $USERID -eq 0 ]
    then
        echo -e "Running with $Y ROOT $RESET ACCESS"
        echo $RESULT
    else
        echo -e "Not Running with $R ROOT $RESET ACCESS"
fi

}

main $1