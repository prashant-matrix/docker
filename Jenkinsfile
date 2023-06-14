pipeline {
agent any
stages {

stage ("List Files") {
  steps {
sh 'pwd'
sh 'ls -ltr'
sh 'terraform init'
sh 'terraform plan'
sh 'terraform apply auto-approve'
  }
}




}
}
