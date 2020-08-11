pipeline {
    agent {
        docker {
            image 'bryandollery/terraform-packer-aws-alpine'
            args "-u root"
        }
    }  
    environment{
             CREDS = credentials('rayanah-token')
	    OWNER='rayanah'
	    TF_NAMESPACE='rayanah'
	    PROJECT_NAME='web-server'
    }
    stages {
        stage ('build') {
            steps {
            sh "docker run -d -t --entrypoint='' bryandollery/terraform-packer-aws-alpine cat"
                sh "docker login -u ${CREDS_USR} -p ${CREDS_PSW}"
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
 
