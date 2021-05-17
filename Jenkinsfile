pipeline {
    agent {
      docker {
        image 'node'
        args '-p 2021:2021'
      }
    }

    stages {
        stage('Build') {
            steps {
              sh 'npm install'
            }
        }
        stage('Deliver') {
          steps {
            sh 'npm start'
          }
        }
    }
}
