pipeline {
    agent {
        docker {
            image 'bryandollery/terraform-packer-aws-alpine'
            args "-u root"
            args '--entrypoint='
        }
    }  
    environment{
        CREDS = credentials('rayanah-docker-hub-token')
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
 
 
