pipeline {
    agent any
    enviroment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
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
