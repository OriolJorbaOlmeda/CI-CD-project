pipeline {
    agent any
    environment {
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
                echo "sh 'pip install --user -r requirements.txt'"
            }
        }
        stage('Test') {
            steps {
                echo "sh 'python test.py'"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
