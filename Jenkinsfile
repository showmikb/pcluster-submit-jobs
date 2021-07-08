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
           sh "wget ${BUILD_URL}consoleText"
           sh 'ls'
        }
      }
    }

   
  }
}
