pipeline {
    agent any 

       stages {

        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'git-nekka69a', url: 'https://github.com/nekka69a/azure-webserver'
            }
        }

        stage('Terraform init') {
            steps {
                sh 'terraform init'
            }
        }
	stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }    
    
}