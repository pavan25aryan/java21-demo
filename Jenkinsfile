pipeline {
    agent any

    tools {
        maven 'Maven 3.9' // Match your Maven tool in Jenkins
    }

    environment {
        IMAGE_NAME = 'java21-demo'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/java21-demo.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Docker Image') {
            steps {
                sh 'docker run --rm $IMAGE_NAME'
            }
        }
    }
}

