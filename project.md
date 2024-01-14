# AWS Resource Tracker
## Purpose:
This project will automate the weekly resources usage information logging for a company thereby saving a lot of precious **time** of the organisation and the team working on a particular project.

## Description:
This project will enable a scheduled publishing of the report containing the following key features:
- AWS S3 Bucket
- AWS EC2 instances
- AWS IAM users
- AWS Lambda functions

##  Pre-Requisite:
- bash
- AWS CLI
- AWS EC2 instance connection

## Commands in shell
**initialisation**
```
vim aws_resource_tracker.sh
```

```
ubuntu@ip-172-31-32-157:~$ ./aws_resource_tracker.sh
+ echo 'print the list of AWS S3 buckets'
print the list of AWS S3 buckets
+ aws s3 ls
+ echo 'print the list of all the EC2 instances'
print the list of all the EC2 instances
+ aws ec2 describe-instances
+ jq '.Reservations[].Instances[].InstanceId'
"i-0ccabea93ea31af9a"
+ echo 'print the list of all the list functions'
print the list of all the list functions
+ aws lambda list-functions
{
    "Functions": []
}
+ echo 'print the list of IAM users'
print the list of IAM users
+ aws iam list-users
{
    "Users": []
}
ubuntu@ip-172-31-32-157:~$

```
