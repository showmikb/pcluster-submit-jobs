#!/bin/bash
export  PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
pcluster  ssh dmscluster -r us-east-1 -i divine-showmik.pem 
#'bash -s' < main.sh


#sudo yum install git -y
#git clone https://github.com/showmikb/pcluster-submit-jobs.git
cd pcluster-submit-jobs
sh main.sh
