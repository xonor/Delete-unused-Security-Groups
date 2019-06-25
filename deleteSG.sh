#!/bin/bash
#Delete unused Security Groups

read -p 'Region: ' userRegion
for SG in $(aws ec2 describe-security-groups --query 'SecurityGroups[*].GroupId'  --output text --region $userRegion); do
	aws ec2 delete-security-group --group-id $SG --region $userRegion
done
