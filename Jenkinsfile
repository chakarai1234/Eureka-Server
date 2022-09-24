pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'mvn clean package -P docker'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                sh "mvn deploy -P docker"
            }
        }
    }
}