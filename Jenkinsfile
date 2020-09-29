pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh 'echo Building...'
      }
    }
    stage('lint') {
      steps {
        sh 'tidy -q -e index.html'
      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t konradcodes/udacity-capstone-project .'
      }
    }
    stage('Push Docker Image') {
      steps {
        withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
          sh 'docker push konradcodes/udacity-capstone-project'
        }
      }
    }
    stage('Deployment') {
      steps {
        withAWS(credentials: "aws") {
          sh 'kubectl apply -f deployments/deployment.yaml'
        }
      }
    }
    stage('Clean Up') {
      steps {
        sh 'docker system prune'
      }
    }
  }
}
