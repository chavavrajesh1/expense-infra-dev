pipeline {
    agent {
        label 'AGENT-1'
    }
    options{
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    stages {
        stage('Init') {
            steps {
                sh """
                 cd 01.vpc
                 terraform init -reconfigure
                """
            }
        }
        stage('Apply') {
            steps {
                echo 'This is Test'
                sh 'sleep 10'
            }
        }
        stage('Deploy') {
            steps {
                echo 'This is Deploy'
            }
        }
    }
    post{
        always{
            echo 'I will always say Hello again!'
            deleteDir()
        }
        success{
            echo 'I will run when pipeline is success'
        }
        failure {
            echo 'I will run when pipeline is failure'
        }
    }
}