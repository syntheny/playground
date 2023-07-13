pipeline {
    agent any
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
    }
    stages {
        stage("Hello Goodbye World") {
            steps {
                sh "chmod +x -R ${env.WORKSPACE}/hw.sh"
                sh '${WORKSPACE}/hw.sh'
            }
        }
    }
}
