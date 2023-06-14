pipeline {
agent any
stages {

stage ("List Files") {
  steps {
sh 'pwd'
sh 'ls -ltr'
sh 'terraform init && terraform plan'
sh 'terraform apply auto-approve'
  }
}

  


}
}
