pipeline {
agent any
stages {

stage ("List Files") {
  steps {
sh 'pwd'
sh 'ls -ltr'
sh 'terraform destroy -auto-approve'
sh 'terraform init'
sh 'terraform plan'
sh 'terraform apply -auto-approve'
sh 'terraform destroy -auto-approve'
  }
}




}
}
