pipeline {
    agent any 

       stages {
        stage('Checkout') {
            steps {
                git branch: 'main', credentialsId: 'git-nekka69a', url: 'https://github.com/nekka69a/azure-webserver'
            }
        }
        stage('Checkout') {
            step$class: 'DockerBuilderPublisher', cleanImages: false, cleanupWithJenkinsJobDelete: false, cloud: '', dockerFileDirectory: 'https://github.com/nekka69a/app-terraform-docker-jenkins/', fromRegistry: [credentialsId: 'dockerhub', url: 'https://hub.docker.com/'], pushCredentialsId: 'dockerhub', pushOnSuccess: true, tagsString: 'aminanekka/brief14:latest'
        }
        stage('Terraform init') {
            steps {
                sh 'cd terraform init'
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
    
