pipeline {
    agent any
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
    }
    stages {
        stage("Hello Goodbye World") {
            steps {
                withCredentials(string(credentialsId: 'CHUBBA', variable: 'chubba')) {
                    echo "CHUBBA: ${env.chubba}"
                }                                
                dir("${env.WORKSPACE}") {
                    // sh "chmod +x -R ${env.WORKSPACE}/hw.sh"
                    sh 'bash hw.sh'
                }
            }
        }
    }
}
