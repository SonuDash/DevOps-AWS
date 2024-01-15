
#!/bin/bash

#############
# Author: Ayushman Dash
#
# Date: 14-Jan-2024
#
# Version: v1
#
# This scriptwill report the AWS resource usage
#############

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM
#
# list of AWS S3 bucket
echo "print the list of AWS S3 buckets"
aws s3 ls > resourceTracker

# list of EC2 instances
echo "print the list of all the EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "print the list of all the list functions"
aws lambda list-functions > reourceTracker

# list IAM users
echo "print the list of IAM users"
aws iam list-users
