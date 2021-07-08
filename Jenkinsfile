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
 stage('Save Build Log') 
    {
      steps 
      {
        script 
        {
          sh "curl ${BUILD_URL}consoleText --output ${BUILD_NUMBER}.log"
        }
      }
    }
  stage('Upload File to S3') 
    {
      steps 
      {
        script 
        {
          sh "aws s3 cp ${BUILD_NUMBER}.log s3://jenkinslogsdivino/${JOB_NAME}/${BUILD_NUMBER}.log"
        }
      }
    }
   
  }
}
