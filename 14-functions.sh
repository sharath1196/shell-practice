#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"

RESET="\e[0m"

echo -e "Printing color$R RED $RESET"
echo -e "Printing color$G GREEN $RESET"
echo -e "Printing color$Y YELLOW $RESET"

USERID=$(id -u)

echo "$USERID"

main(){
    if [ $USERID -eq 0 ]
    then
        echo -e "Running with $Y ROOT $RESET ACCESS"
        dnf search $1 &> /dev/null
    else
        echo -e "Not Running with $R ROOT $RESET ACCESS"
fi


}

main $1