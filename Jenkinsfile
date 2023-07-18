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
                sh '''#!/bin/bash\n
                    echo "XYZ: ${env.XYZ}"\n
                '''
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
