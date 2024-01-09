pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/mouni4598/JT-website.git'
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }
       stage (" Action") {
           steps {
             echo "Terraform action is --> apply"
             sh ('terraform apply --auto-approve') 
             }
        }

    }
}
    
