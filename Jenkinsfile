pipeline {
  agent {
                label 'centos'
            }

  stages {
    stage('Compile Code') {
      steps {
        sh '''
          mvn versions:set -DnewVersion=2.50.1-SNAPSHOT
          mvn package 
          ls target
        '''
      }
    }
    
    stage('Make DOCKER IMAGE') {
      steps {
        sh '''
          docker build -t rkalluru/ktest:v1 .
        '''
      }
    }

  }
}