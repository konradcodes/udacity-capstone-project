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
        sh 'docker build -t konradcodes/udacity-dev-ops-capstone-project .'
      }
    }
    stage('Push Docker Image') {
      steps {
        withDockerRegistry([url: "", credentialsId: "dockerhub"]) {
          sh 'docker push konradcodes/udacity-dev-ops-capstone-project'
        }
      }
    }
    stage('Create kube config file') {
      steps {
        withAWS(region:'us-east-2', credentials:'aws-static') {
          sh 'aws eks --region us-east-2 update-kubeconfig --name unique-creature-1601486709'
        }
      }
    }
    stage('Deployment') {
      steps {
        withAWS(region:'us-east-2', credentials:'aws-static') {
          sh 'kubectl apply -f deployment/mainDeployment.yml -v=8'
        }
      }
    }
  }
}
