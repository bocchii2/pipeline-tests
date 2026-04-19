pipeline {
  agent any
  options {
    timestamps()
    skipDefaultCheckout()
  }
  
  stage("Checkout") {
    steps {
      checkout scm
    }
  }
  stage("Build") {
    steps {
      sh "echo 'Building the application...'"
      // Aquí puedes agregar comandos para construir tu aplicación, por ejemplo:
      // sh 'mvn clean install' o sh 'npm install && npm run build'
    }
  }

  stage("Test") {
    steps {
      sh "echo 'Running tests...'"
      // Aquí puedes agregar comandos para ejecutar tus pruebas, por ejemplo:
      // sh 'mvn test' o sh 'npm test'
    }
  }

  stage("Deploy") {
    steps {
      sh "echo 'Deploying the application...'"
      // Aquí puedes agregar comandos para desplegar tu aplicación, por ejemplo:
      // sh 'docker-compose -f docker/docker-compose.yaml up -d'
    }
  }

  post {
    always {
      sh "echo 'Cleaning up...'"
      // Aquí puedes agregar comandos para limpiar recursos, por ejemplo:
      // sh 'docker-compose -f docker/docker-compose.yaml down'
    }
  }
}