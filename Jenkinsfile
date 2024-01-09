pipeline {
    agent any

    parameters {
        string(name: 'action', defaultValue: 'apply', description: 'Terraform action (apply/destroy)')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/mouni4598/JT-website.git'
            }
        }
    
        stage("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage("plan") {
            steps {
                sh ('terraform plan') 
            }
        }
       
        stage("Action") {
            steps {
                script {
                    echo "Terraform action is --> ${params.action}"
                    sh "terraform ${params.action} --auto-approve"
                }
            }
        }
    }
}
