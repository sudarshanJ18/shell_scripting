####################
# Author: Sudarshan
# This script will report the AWS resource
####################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM

set -x
# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 Instnaces
echo "Print ec2 instances"
aws ec2 describe-instances


# list lambda
echo "Print lambda functions"
aws lambda list-functions

# list IAM users
echo "Print iam users"
aws iam list-users


