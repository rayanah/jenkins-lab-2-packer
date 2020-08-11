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
	       sh "git clone https://github.com/rayanah/jenkins-lab-2-packer.git"
	       sh "cd jenkins-lab-2-packer"
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
 
