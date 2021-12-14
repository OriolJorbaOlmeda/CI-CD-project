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
                echo "sh'docker build -t flask-app:latest .'"
            }
        }
        stage('Exposing Dockerfile') {
            steps {
                echo "sh 'docker run -d -p 5000:5000 flask-app'"
            }
        }
        stage('Pulling Docker Image') {
            steps {
                echo "sh 'docker tag flask-oriol:1.0 oriol8/flask-app:flask-oriol:1.0'"
                echo "sh 'docker push oriol8/flask-app'"
            }
        }
        stage('Creating Kuberentes Deployment') {
            steps {
                echo "sh 'kubectl apply -f deploy.yaml'"
            }
        }
        stage('Creating Kuberentes Service') {
            steps {
                echo "sh 'kubectl apply -f service.yaml'"
            }
        }
        
    }
}
