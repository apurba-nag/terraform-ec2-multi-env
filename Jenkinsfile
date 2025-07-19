pipeline {
    agent any

    parameters {
        choice(
            name: 'ENVIRONMENT',
            choices: ['dev', 'prod', 'staging'],
            description: 'Select the environment to deploy'
        )
    }

    environment {
        ENV_PATH = "environments/${params.ENVIRONMENT}"
    }

    stages {
        stage('Terraform Init') {
            steps {
                dir("${ENV_PATH}") {
                    echo "Running terraform init in ${ENV_PATH}"
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir("${ENV_PATH}") {
                    echo "Running terraform validate in ${ENV_PATH}"
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("${ENV_PATH}") {
                    echo "Running terraform plan in ${ENV_PATH}"
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${ENV_PATH}") {
                    echo "Running terraform apply in ${ENV_PATH}"
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
