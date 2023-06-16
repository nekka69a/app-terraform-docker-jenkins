pipeline {
    agent any 
	

     
        stage('Terraform init') {
            steps {
                sh 'cd staging && terraform init'
            }
        }
	    stage('Terraform plan') {
            steps {
                sh 'cd staging && terraform plan'
            }
        }
        stage('Terraform apply') {
            steps {
                sh 'cd staging && terraform apply --auto-approve'
            }
        }
    }
}
    
