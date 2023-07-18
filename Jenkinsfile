pipeline {
    agent any
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
    }
    environment {
        XYZ = "xyzzzzz"
    }
    stages {
        stage("Hello Goodbye World") {
            steps {
                echo 'echo: bash hw.sh ${env.XYZ}'
                sh 'bash hw.sh ${env.XYZ}'
                withCredentials([string(credentialsId: 'CHUBBA', variable: 'chubba')]) {
                    sh 'bash hw.sh ${env.chubba}'
                }                                
                dir("${env.WORKSPACE}") {
                    // sh "chmod +x -R ${env.WORKSPACE}/hw.sh"
                    sh 'bash hw.sh'
                }
            }
        }
    }
}
