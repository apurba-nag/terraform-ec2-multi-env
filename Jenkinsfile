pipeline {
    agent any

    environment {
        TF_VAR_aws_region = 'ap-south-1'
    }

    stages {

        stage('Terraform Init') {
            steps {
                dir('environments/dev') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir('environments/dev') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('environments/dev') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir('environments/dev') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
