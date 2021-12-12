pipeline {
    agent { docker { image 'python:3.7.2' } }
    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'python demo.py'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
