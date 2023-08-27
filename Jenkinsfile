pipeline {
    agent {
        node {
            label 'slave03'
        }
    }
    stages {
        stage('build image') {
            steps {
                sh 'docker build -t app --no-cache .'
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
