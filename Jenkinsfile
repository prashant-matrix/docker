pipeline {
agent any 
stages {
stage ("list file") {
steps {
sh 'pwd'
sh 'ls -ltr'
}
}
  stage ("Build image") {
    steps {
      sh ' sudo docker build -t nodejs . '
      sh 'sudo docker ps'
    }
  }
  
  stage("Delivery of Image to Docker Hub") {
    steps{
      sh 'sudo image tag nodejs pras001/nodejs:1.0'
      sh 'sudo docker push pras001/nodejs:1.0'
    }
  }
  
}
}

