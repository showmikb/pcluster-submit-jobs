#!/bin/bash
#Append your authentication token if it is a private repo : git clone https://token@github.com/showmikb/pcluster-submit-jobs.git
git clone https://github.com/showmikb/pcluster-submit-jobs.git
cd pcluster-submit-jobs
echo "Submitting Jobs"
qsub sampleshell.sh
