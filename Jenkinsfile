pipeline {
  agent any // use any available agent
  environment {
    DOCKERHUB_CREDENTIALS = credentials('docker') // the credentials for Docker Hub login
  }
  stages {
    stage('Install dependeincies') {
      agent {
        docker {image 'node:18'}
      }
      steps {
        //sh 'npm cache verify'
        sh 'npm install'
      }
    }
    stage('Unit Tests') {
      agent {
        docker {image 'node:18'}
      }
      steps {
        sh 'npm run test' // run the unit tests
      }
    }
    stage('Build') {
      agent {
        docker {image 'node:18'}
      }
      steps {
        sh 'npm run build' // run the build script
      }
    }
  }
}
