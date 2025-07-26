pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                script {
                    def output = sh(script: 'terraform validate', returnStatus: true)
                    if (output != 0) {
                        error("❌ Terraform validation failed.")
                    } else {
                        echo "✅ Terraform validation passed."
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan.out'
            }
        }

        stage('Terraform Apply') {
            when {
                branch 'learing-007'
            }
            steps {
                input message: 'Approve Terraform apply?', ok: 'Apply'
                sh 'terraform apply -auto-approve tfplan.out'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline completed successfully.'
        }
        failure {
            echo '❌ Pipeline failed.'
        }
    }
}
