pipeline {
    agent {
        docker {
            image 'bryandollery/terraform-packer-aws-alpine'
            args "-u root"
            Entrypoint 'jenkins-lab-2-packer'
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
                sh "make"
                sh "make build"
            }
          }
         stage ('test') {
            steps {
                sh "echo hi"
            }
          }
          
         stage ('release') {
            steps {
                sh "whoami"
                sh "docker login -u ${CREDS_USR} -p ${CREDS_PSW}"
                sh "docker push bryandollery/terraform-packer-aws-alpine"
      }
        
   }
 }
}
 
 
