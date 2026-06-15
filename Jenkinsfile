pipeline {

    agent any

    environment {
        IMAGE_NAME = "docker-ci-project"
    }

    stages {

        stage('Clone Repository') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

    }

    post {

        success {
            echo "Docker image built successfully"
        }

        failure {

            emailext(
                subject: "Jenkins Build Failed",
                body: "The Docker build has failed.",
                to: "your-email@gmail.com"
            )

            slackSend(
                channel: "#jenkins-alert",
                color: "danger",
                message: "Docker Build Failed"
            )

        }

    }

}
