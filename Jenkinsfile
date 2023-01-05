pipeline {
    agent {
        kubernetes {
            defaultContainer 'docker'
            yamlFile 'pod.yaml'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                docker build -t pushtest .
                docker tag pushtest:latest 873186839494.dkr.ecr.eu-west-2.amazonaws.com/pushtest:latest
                docker push 873186839494.dkr.ecr.eu-west-2.amazonaws.com/pushtest:latest
                '''
            }
        }
    }
}
