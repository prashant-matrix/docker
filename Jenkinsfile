pipeline {
agent any
stages {

stage ("List Files") {
  steps {
sh 'pwd'
sh 'ls -ltr'
  }
}

  stage ("Build Nodejs Image") {
    steps {
      sh 'sudo docker build -t nodejs .'
      sh 'sudo docker ps'
    }
  }

    stage ("Deployment to Kubernetes") {
    steps {
      sh 'chmod 400 susiminikube.pem'
      sh 'ls -ltr'
      sh 'scp -i susiminikube.pem rep01.yml ec2-user@43.204.109.189:/home/ec2-user/'
      sh 'ssh -i susiminikube.pem ec2-user@43.204.109.189 "kubectl create -f rep01.yml"'
    }
  }


}
}

