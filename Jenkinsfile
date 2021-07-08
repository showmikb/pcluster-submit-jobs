pipeline
{
agent any
environment
  {
    PATH='/sbin:/bin:/usr/sbin:/usr/bin:~/.local/bin/'
  }
  stages
  {
    stage('SSH into Pcluster')
    {
      steps
      {
        script
        {
          sh 'ls -al'
          sh 'sh pclustermanage.sh'
        }
      }
    } 
    stage('save log build') 
    {
      steps 
      {
        script 
        {
          def logContent = Jenkins.getInstance()
          .getItemByFullName(env.JOB_NAME)
          .getBuildByNumber(
          Integer.parseInt(env.BUILD_NUMBER))
          .logFile.text
          // copy the log in the job's own workspace
          writeFile file: "buildlog.txt", text: logContent
        }
      }
    }

   
  }
}
