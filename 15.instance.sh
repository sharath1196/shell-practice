#!/bin/bash



AMI_ID="ami-09c813fb71547fc4f"
TYPE="t2.micro"
SECURITY="sg-0d59eea9e5ef98c7e"
ZONE_ID="Z023580323RAYFGL1JQNH"

DOMAIN="daws84.fun"

INSTANCES=("mongod" "payment" "mysql" "redis" "frontend" "catalogue" "users" "cart" "dispatch" "shipping" "rabbitmq")

for INSTANCE in ${INSTANCES[@]}
do 
    echo $INSTANCE
done

aws ec2 run-instances --image-id $AMI_ID --instance-type $TYPE --security-group-ids $SECURITY --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=TEST}]' --query 'Reservation[0].Instances[0].PrivateIpAddress' --output text