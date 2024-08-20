#!/bin/bash
#
##########################
#Author: Amar
#Date: 18th Aug
#Version: draft
#
#
#This script will report the AWS Resource  usage and print this in a file 
#Aws IAM Users
#Aws S3
#Aws EC2
#Aws Lamda
#

#list S3 bucket
echo "this is to list s3 bucket"
aws s3 ls >ResourceTracker
echo "print___________________________________________________________________________"
#list EC2 Instances
echo "this is to list ec2 instanmces"

#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >>ResourceTracker
echo "print___________________________________________________________________________"

#list aws lamda
echo "this is to list lamda functions"
aws lambda list-functions >>ResourceTracker

echo "print___________________________________________________________________________"

#list IAM users
echo "this is to list iam users"

aws iam list-users >>ResourceTracker
