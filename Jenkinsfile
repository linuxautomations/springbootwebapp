pipeline {
  agent {
                label 'centos'
            }

  stages {
    stage('Compile Code') {
      steps {
        sh '''
          mvn versions:set -DnewVersion=${RELEASE_VERSION}-SNAPSHOT
          mvn package 
          ls target
        '''
      }
    }
    
    stage('Make DOCKER IMAGE') {
      steps {
        sh '''
          docker build --build-arg RELEASE_VERSION=${RELEASE_VERSION} -t rkalluru/ktest:v1 .
        '''
      }
    }

  }
}