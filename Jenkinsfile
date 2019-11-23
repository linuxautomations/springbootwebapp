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
          docker build --build-arg RELEASE_VERSION=${RELEASE_VERSION} -t rkalluru/ktest:${RELEASE_VERSION} .
          docker push rkalluru/ktest:${RELEASE_VERSION}
        '''
      }
    }

    stage('Apply Kubernetes - DEV NS') {
      steps {
        sh '''
          sed -i -e "s/VERSION/${RELEASE_VERSION}/" deploy.yml
          kubectl apply -f deploy.yml -n dev
        '''
      }
    }

    stage('Approval') {
      steps {
        input 'Do you want to Deploy in PROD ?'
      }
    }

    stage('Apply Kubernetes - PROD NS') {
      steps {
        sh '''
          sed -i -e "s/VERSION/${RELEASE_VERSION}/" deploy.yml
          kubectl apply -f deploy.yml -n dev
        '''
      }
    }

  }
}