pipeline {
    agent any
    enviroment {
        CI = 'true'
    }
    stages {
        stage('Clonning') {
            steps {
                git 'https://github.com/OriolJorbaOlmeda/CI-CD-project'
            }
        }
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
