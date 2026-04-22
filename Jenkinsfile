/* groovylint-disable-next-line CompileStatic */
pipeline {
  agent any
  options {
    timestamps()
    skipDefaultCheckout()
  }

  stages {
      stage('Build') {
          steps {
            echo 'Building...'
          }
      }

      stage('Test') {
          steps {
            echo 'Testing...'
          }
      }
      stage('Deploy') {
          steps {
            echo 'Deploying...'
          }
      }
  }
  post {
      always {
          echo 'This will always run'
      }
      success {
          echo 'This will run only if successful'
      }
  }
}
