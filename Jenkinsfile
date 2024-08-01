pipeline {
    agent any

    tools {
        terraform 'terraform' // Name should match the one configured in Jenkins Global Tool Configuration
    }

    environment {
        AWS_ACCESS_KEY_ID     = credentials('Access-key')
        AWS_SECRET_ACCESS_KEY = credentials('Secret-key')
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/sanciajerin/Terraform-Jenkins.git'
            }
        }
        stage('Terraform Initialisation') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Planning') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                dir('terraform') {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
    }
}
