pipeline {
agent any 
stages {
stage ("list file") {
steps {
sh 'pwd'
sh 'ls -ltr'
}
  stage ("Build image") {
    steps {
      sh 'sudo build -t nodejs . '
    }
  }
}
}

