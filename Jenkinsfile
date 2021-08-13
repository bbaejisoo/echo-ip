pipeline {
  agent any
  stages {
    stage('git scm update') {
      steps {
        git url: 'https://github.com/bbaejisoo/echo-ip', branch: 'main'
      }
    }
    stage('docker build and push') {
      steps {
        sh '''
        mkdir test
        cd test
        git clone https://github.com/bbaejisoo/echo-ip.git .
        docker build -t bbaejisoo/echo-ip .
        docker push bbaejisoo/echo-ip
        '''
      }
    }
    stage('deploy') {
      steps {
          echo "echo Deploy!!"
      }
    }
  }
}