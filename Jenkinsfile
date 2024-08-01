pipeline {
    
  environment {
        AWS_ACCESS_KEY_ID     = credentials('Access-key')
        AWS_SECRET_ACCESS_KEY = credentials('Secret-key')
    }
   tools{
       terraform 'terraform'
   }
    
  agent any
     stages {
        stage('Clone Repo') {
            steps {
               git branch: 'main', credentialsId: 'github', url: 'https://github.com/sanciajerin/Terraform-Jenkins.git'
            }
        }
        stage('Terraform Initialisation') {
            steps {
                dir('terraform') {
                    sh 'pwd;cd terraform/ ;terraform init'
                }
            }
        }
        stage('Terraform Validating') {
            steps {
               sh 'pwd;cd terraform/ ;terraform validate'                    
            }
        }

        stage('Terraform Planning') {
            steps {
               sh 'pwd;cd terraform/ ;terraform plan'                    
            }
        }
        stage('Terraform Apply') {
            steps {
               sh 'pwd;cd terraform/ ;terraform apply --auto-approve'
                }      
        }
    }
}

