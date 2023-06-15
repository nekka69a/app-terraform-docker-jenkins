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
                sh 'cd Staging && terraform init'
            }
        }
	    stage('Terraform plan') {
            steps {
                sh 'cd Staging && terraform plan'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'cd Staging && terraform apply --auto-approve'
            }
        }
    }
}
    
