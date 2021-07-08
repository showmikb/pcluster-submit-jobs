#!/bin/bash
#Append your authentication token if it is a private repo : git clone https://token@github.com/showmikb/pcluster-submit-jobs.git
DIR="pcluster-submit-jobs"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists. #
  echo "${DIR} Present"
  cd $DIR
  git pull https://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@github.com/showmikb/$DIR.git

else 
  echo "Directory $DIR Not Present"
  git clone https://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@github.com/showmikb/$DIR.git
  cd $DIR
fi


echo "Submitting Jobs"
qsub sampleshell.sh
