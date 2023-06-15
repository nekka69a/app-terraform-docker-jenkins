pipeline {
    agent any 
	

       stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'git-nekka69a', url: 'https://github.com/nekka69a/app-terraform-docker-jenkins'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'cd webserver && terraform init'
            }
        }
	    stage('Terraform plan') {
            steps {
                sh 'cd webserver && terraform plan'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'cd webserver && terraform apply --auto-approve'
            }
        }
    }
}
    
