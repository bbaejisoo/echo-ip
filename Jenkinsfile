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
#        git clone https://github.com/bbaejisoo/echo-ip.git .
#        docker build -t bbaejisoo/echo-ip .
#        docker push bbaejisoo/echo-ip
        '''
        app = docker.build("bbaejisoo/echo-ip")
        docker.withRegistry('https://registry.hub.docker.com', 'echo-ip') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
      }
    }
    stage('deploy') {
      steps {
          echo "echo Deploy!!"
      }
    }
  }
}
