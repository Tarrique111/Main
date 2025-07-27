pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Init Terraform') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Validate Terraform') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('Plan Terraform') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Apply Terraform') {
      steps {
        input message: "Apply the Terraform plan?"
        sh 'terraform apply -auto-approve tfplan'
      }
    }
  }

  post {
    always {
      echo 'Pipeline finished.'
    }
    failure {
      echo 'Pipeline failed.'
    }
  }
}
