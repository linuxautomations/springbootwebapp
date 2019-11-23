pipeline {
  agent {
                label 'centos'
            }

  stages {
    stage('Check files') {
      steps {
        sh '''
          mvn package 
          ls target
        '''
      }
    }
    
    

  }
}