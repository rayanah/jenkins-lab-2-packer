pipeline {
    agent {
        docker {
            image 'bryandollery/terraform-packer-aws-alpine'
            args "-u root"
            args '--entrypoint='
        }
    }  
    environment{
        CREDS = credentials('rayanah')
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
 
 
