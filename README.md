# Pcluster-Submit-Jobs
## Description : Automation to drive PCluster Job Submission

## How it works :

### Assumptions :
The assumption is whichever Github project you'll work on, it'll contain all the jobs you want to schedule. In this scenario I've considered 'sampleshell.sh' as the job I want to submit.

### Step 1 :
The first step is to create a Jenkins Job, which would be webhook triggered and would accept the Jenkinsfile from SCM.
Set default branch to main instead of master in your Jenkins Job.

### Step 2 :
The second step is to write the Jenkinsfile. In the Jenkinsfile I've mentioned the environment variables and have abstracted the rest of the work to be done in a Shell Script.
The reason behind this is to enable the users of this code, to change whichever cluster, keypair and region they want to use, on the go, without having to visit Jenkins to make any changes. This thus enables the users to make their changes on github and see it getting reflected on their cluster, avoiding any manual intervention. 

For any project, this step of modifying the pclustermanage.sh would ideally be a one time job unless the user wants to modify the cluster parameters.

### Step 3 :
The next step involves the main.sh, this is where the user specifies his git url the reason being, pcluster doesn't know what jobs need to be run. All the jobs are made available on the GitHub repo. For private repositories, generate the access token first by going to settings > developer settings > personal access tokens > generate new token.

Then with the access token clone the repository using the main.sh.

```git clone https://<token>@github.com/owner/repo.git```

main.sh then specifies which jobs to queue using the qsub command. 

This gives user the power to modify the job scheduling as per their need, just by modifying the main.sh. 
