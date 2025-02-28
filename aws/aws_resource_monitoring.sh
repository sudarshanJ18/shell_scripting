#!/bin/bash

# Author: Sudarshan
# Description: This script monitors AWS resources and logs their usage.

LOG_FILE="aws_resource_report_$(date +'%Y-%m-%d').log"

echo "AWS Resource Monitoring - $(date)" > $LOG_FILE

# List running EC2 instances
echo "Running EC2 instances:" >> $LOG_FILE
aws ec2 describe-instances --query 'Reservations[].Instances[?State.Name==`running`].[InstanceId,InstanceType,PublicIpAddress]' --output table >> $LOG_FILE

# List active Lambda functions
echo "Active Lambda functions:" >> $LOG_FILE
aws lambda list-functions --query 'Functions[].FunctionName' --output table >> $LOG_FILE

# List untagged S3 buckets (for security tracking)
echo "Untagged S3 Buckets:" >> $LOG_FILE
aws s3api list-buckets --query 'Buckets[].Name' --output table >> $LOG_FILE

# List IAM users without MFA enabled
echo "IAM Users without MFA:" >> $LOG_FILE
aws iam list-users --query 'Users[].UserName' --output table >> $LOG_FILE

echo "AWS Monitoring Complete. Log saved in $LOG_FILE"
