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

        // stage('Terraform initialising') {
        //     steps {
        //         sh """
        //             cd terraform 
        //             terraform init --backend-config=${params.environment}/backend.tf -reconfigure
        //         """
        //     }
        // }

//         stage('Checking Parameters usage') {
//             steps{
//                  sh """
//                     echo "Hello ${params.PERSON}"

//                     echo "Biography: ${params.BIOGRAPHY}"

//                     echo "Toggle: ${params.TOGGLE}"

//                     echo "Choice: ${params.CHOICE}"

//                     echo "Password: ${params.PASSWORD}"

//         """
//     }
// }
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
