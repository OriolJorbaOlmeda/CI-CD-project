pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'pip install -r requirements.txt'
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
