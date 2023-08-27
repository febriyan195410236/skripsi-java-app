pipeline {
    agent {
        node {
            label 'slave02'
        }
    }
    stages {
        stage('build image') {
            steps {
                sh 'docker build -t app .'
            }
        }
        stage('push image') {
            steps {
                script {
                    sh 'sleep 10'
                }
            }
        }
    }
}