pipeline {
    agent {
        docker {
            image 'bryandollery/terraform-packer-aws-alpine'
            args '--entrypoint='
        }
    }  
    stages {
        stage ('build') {
        environment{
        CREDS = credentials('rayanah-docker-hub-token')
    }
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
 
 
