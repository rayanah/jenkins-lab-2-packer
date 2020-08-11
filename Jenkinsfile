pipeline {
    agent {
        docker {
            image 'bryandollery/terraform-packer-aws-alpine'
            args '--entrypoint='
        }
    }  
    environment{
        CREDS = credentials('73271efb-f4a6-488a-a29d-72c9e9db38e0')
        AWS_ACCESS_KEY_ID="${CREDS_USR}"
        AWS_SECRET_ACCESS_KEY="${CREDS_PSW}"
        OWNER= "rayanah"
        TF_NAMESPACE="rayanah"
        PROJECT_NAME="web-server"
    }
    stages {
        stage ('build') {
            steps {
                sh "make"
                sh "make build"
            }
          }
         stage ('test') {
            steps {
                sh "echo hi"
            }
          }       
 }
}
 
 
