pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'docker build -t my-app .'
            }
        }
        stage('Test') {
            steps {
                bat 'docker run -d --name my-app-test my-app'
                bat 'docker exec my-app-test npm test'
                bat 'docker stop my-app-test'
                bat 'docker rm my-app-test'
            }
        }
        stage('Deploy') {
            steps {
                bat 'docker run -d --name my-app -p 3000:3000 my-app'
            }
        }
    }
}
