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
           sh '
             if aws s3 ls "s3://$S3_BUCKET" 2>&1 | grep -q 'NoSuchBucket'
             then
                echo "Hello"
             else
                echo "Bye"
             fi
           '
           sh "curl ${BUILD_URL}consoleText --output ${BUILD_NUMBER}.log"
           sh 'ls'
        }
      }
    }

   
  }
}
