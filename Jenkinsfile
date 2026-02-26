pipeline{
    agent any
    stages{
        stage('git clone'){
            steps{
                git 'https://github.com/vishal368/vishal-portfolio.git'
            }
        }
        
        stage("build-image"){
            steps{
                sh 'docker build -t $JOB_NAME:v1.$BUILD_NUMBER .'
                sh 'docker tag $JOB_NAME:v1.$BUILD_NUMBER vishashally/$JOB_NAME:v1.$BUILD_NUMBER'
                sh 'docker tag $JOB_NAME:v1.$BUILD_NUMBER vishashally/$JOB_NAME:latest'
            }
        }
    }
}
