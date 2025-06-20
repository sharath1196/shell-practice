#!/bin/bash




# Check if you are running as root 
# if running as root 
# install mongodb
#     cp mongodb.repo to /etc/mongo.conf/mongodb.repo
#     dnf install mongodb
    
#     change port 127.0.0.0 to 0.0.0.0 to allow access to all



R='\e[31m'
G='\e[32m'
Y='\e[33m'

RESET='\e[0m'


USERID=$(id -u)
echo $USERID

if [ $USERID -eq 0 ]
then
    cp mongodb.repo /etc/yum.repos.d/mongo.repo

    dnf install mongodb-org -y

    sed -i 's/127.0.0.0/0.0.0.0/g' /etc/yum.repos.d/mongo.repo

    systemctl daemon-reload

    systemctl enable mongodb

    systemctl start mongodb

    systemctl restart mongodb

else

    echo "Not running as root user"

fi







