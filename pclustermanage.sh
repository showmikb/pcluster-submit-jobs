#!/bin/bash
export  PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
chmod 600 divine-showmik.pem
pcluster  ssh dmscluster -r us-east-1 -i divine-showmik.pem 'bash -s' < main.sh


#sudo yum install git -y

