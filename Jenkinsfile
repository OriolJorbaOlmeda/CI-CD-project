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
                echo "sh 'pip install Flask'"
            }
        }
        stage('Test') {
            steps {
                echo "sh 'python test.py'"
            }
        }
        stage('Creating Dockerfile') {
            steps {
                echo 'sh'docker build -t flask-app:latest .''
            }
        }
        stage('Exposing Dockerfile') {
            steps {
                echo 'sh docker run -d -p 5000:5000 flask-app''
            }
        }
    }
}
