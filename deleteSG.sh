for i in $(aws ec2 describe-security-groups --query 'SecurityGroups[*].GroupId'  --output text --region eu-west-1); do $(aws ec2 delete-security-group --group-id $i --region eu-west-1); done
