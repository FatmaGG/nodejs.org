pipeline {
  agent any // use any available agent
  environment {
    DOCKERHUB_CREDENTIALS = credentials('docker') // the credentials for Docker Hub login
  }
  stages {
    stage('Checkout') {
            steps {
                checkout scm
            }
        }
    stage('Build and Test') {
  agent {
    docker {image 'node:18'}
  }
  steps {
    sh 'npm cache verify'
    sh 'npm install'
    sh 'npm test'
    sh 'npm run build'
  }
}
  }
}

