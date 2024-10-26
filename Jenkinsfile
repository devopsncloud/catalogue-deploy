pipeline {
    agent {
    node {
        label 'AGENT-1'
        
    }
}

// environment { 
//     packageVersion = ''
//     nexusURL = '172.31.39.211:8081'
//     }

    options {
                timeout(time: 1, unit: 'HOURS') 
                disableConcurrentBuilds() 
                ansiColor('xterm')
    }

    parameters {
        string(name: 'version', defaultValue: '', description: 'what is the artifact version?')

        string(name: 'environment', defaultValue: '', description: 'what is the environment version?')

    }

    stages {
        stage('Print the version') {
            steps {
                sh """
                echo "The version is ${params.version}"
                echo "The environment is ${params.environment}"
                """
            }
        }

        stage('Checking Parameters usage') {
                    steps{
                        sh """
                            echo "Hello ${params.version}"

                            echo "Biography: ${params.environment}"
                            """
            }
        }

        stage('Terraform initialising') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-creds']]) 
                sh """
                    cd terraform 
                    terraform init --backend-config=${params.environment}/backend.tf -reconfigure
                """
            }
        }

        
}



    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }

        success { 
            echo 'The Job has ran  successfully!'
        }

        failure { 
            echo 'Useful when alerts has to send upon failure'
        }
    }
}
