pipeline {
    agent any
    environment {
        NEW_VERSION = '1.3.0'
        IMAGE_REPO_NAME = 'testing'
        IMAGE_TAG = 'latest'
        REPOSITORY_URL = 'https://hub.docker.com/repository/docker/airdmhund/myrepo'
    }
    stages {
        stage ("Build") {

            steps {
                echo 'Automatically Building the application'
                echo "Building version ${NEW_VERSION}"
                echo 'this is working'

            }
            
        }

        stage ("Test") {
          /* # when {
               # expression {
              #      BRANCH_NAME == 'dev'
             #   }
            #} */

            steps {
                echo 'testing the application'

            }
            
        } 

	    stage ("Building and Publishing Docker Image") {
		    steps {
			    echo 'About to build Docker Image'

                script{
                    dockerImage = docker.build "${IMAGE_REPO_NAME}:${IMAGE_TAG}"
                    sh "docker tag ${IMAGE_REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URL}:${IMAGE_TAG}"
                    sh "docker push airdmhund/myrepo:${IMAGE_TAG}"
                }
			
		}
        }


        stage ("Deploy to Airflow") {

            steps {
                echo 'deploying the application to airflow'

            }
            
        }
    }

    post {
        always {
            echo 'I can see youre working'
        }
    }
}