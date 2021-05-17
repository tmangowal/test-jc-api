pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
              sh 'docker build -t tmangowal/test-api .'
            }
        }
        stage('Deliver') {
          steps {
            sh 'docker run --name test-api -p 2021:2021 tmangowal/test-api'
          }
        }
    }
}
