#!/bin/bash

# aws ec2 run-instances \
#     --image-id <ami-id> \
#     --count <number-of-instances> \
#     --instance-type <instance-type> \
#     --key-name <key-pair-name> \
#     --security-group-ids <security-group-id> \
#     --subnet-id <subnet-id> \
#     --region <region>

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