pipeline {
    agent {
        docker {
            image 'bryandollery/terraform-packer-aws-alpine'
            args "-u root"
        }
    }  
    environment{
	    AWS_ACCESS_KEY_ID='AKIA3H33RTPCBXU26C6B'
	    AWS_SECRET_ACCESS_KEY='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'
	    OWNER='rayanah'
	    TF_NAMESPACE='rayanah'
    }
    stages {
        stage ('build') {
            steps {
                sh "make"
                sh "make build"
            }
          }
 
        }
 }
 
