pipeline {
    agent any
    environment {
        TF_WORKING_DIR = 'terraform'
        ENV = 'prod'                // Change this to dev/staging/prod as needed
        SECRET_NAME = 'aws-cred'
        AWS_REGION = 'us-east-1'
    }
    stages {
        stage('Terraform Init') {
            steps {
                withAWS(region: ${AWS_REGION}, credentials: ${SECRET_NAME}) {  
                    dir("${TF_WORKING_DIR}") {
                        sh """
                        terraform init -backend-config=backend-${ENV}.tfvars -input=false
                        """
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withAWS(region: "${AWS_REGION}", credentials: "${SECRET_NAME}") {
                    dir("${TF_WORKING_DIR}") {
                        sh """
                        terraform init
                        terraform plan -var-file=${ENV}.tfvars -out=tfplan
                        """
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                withAWS(region: "${AWS_REGION}", credentials: "${SECRET_NAME}") {
                    dir("${TF_WORKING_DIR}") {
                        sh "terraform apply -auto-approve tfplan"
                    }
                }
            }
        }
    }

    post {
        cleanup {
            echo "Pipeline finished"
        }
    }
}
