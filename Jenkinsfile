pipeline {
    agent any
    environment {
        NEW_VERSION = '1.3.0'
        registry = 'airdmhund/myrepo'
        registryCredential = 'dockerhub_id'
        dockerImage = ''
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
                    dockerImage = docker.build registry + "$BUILD_NUMBER"
                }
			
		}
        }


        stage ("Deploy to hub") {

            steps {
                echo 'deploying the application to DockerHub'

                script {
                    docker.withRegistry('',registryCredential) {
                        dockerImage.push()
                    }
                }

            }
            
        }
    }

    post {
        always {
            echo 'I can see youre working'
        }
    }
}