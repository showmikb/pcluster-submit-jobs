#!/bin/bash
export  PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
echo "DOWNLOADFROM S3"
aws secretsmanager --region us-east-1 get-secret-value --secret-id divine-showmik.pem --query 'SecretString' --output text > divine-showmik.pem
chmod 600 divine-showmik.pem
pcluster  ssh dmscluster -r us-east-1 -i divine-showmik.pem 'bash -s' < main.sh


#sudo yum install git -y

