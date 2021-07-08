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
        
           sh "curl ${BUILD_URL}consoleText --output ${BUILD_NUMBER}.log"
          sh "aws s3 cp ${BUILD_NUMBER}.log s3://jenkinslogsdivino/${JOB_NAME}/${BUILD_NUMBER}.log"
        }
      }
    }

   
  }
}
