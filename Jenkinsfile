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
            sh 'docker container stop test-api'
            sh 'docker container rm test-api'
            sh 'docker run --name test-api -p 2021:2021 tmangowal/test-api'
          }
        }
    }
}
