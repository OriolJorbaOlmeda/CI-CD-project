pipeline {
    agent { docker { image 'python:3.8' } }
    
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
