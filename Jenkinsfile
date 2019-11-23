pipeline {
  agent {
                label 'DOCKER'
            }

  stages {
    stage('Check files') {
      steps {
        sh '''
          mvn package 
        '''
      }
    }
    

  }
}