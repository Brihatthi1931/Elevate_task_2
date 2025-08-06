pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-app .'
            }
        }
        stage('Test') {
            steps {
                sh 'docker run -d --name my-app-test my-app'
                sh 'docker exec my-app-test npm test'
                sh 'docker stop my-app-test'
                sh 'docker rm my-app-test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d --name my-app -p 3000:3000 my-app'
            }
        }
    }
}
