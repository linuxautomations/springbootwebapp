pipeline {
  agent {
                label 'centos'
            }

  stages {
    stage('Compile Code') {
      steps {
        sh '''
          mvn package 
          ls target
        '''
      }
    }
    
    stage('')

  }
}