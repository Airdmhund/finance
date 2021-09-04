pipeline {
    agent any
    environment {
        NEW_VERSION = '1.3.0'
	    dockerImage =''
        registry = 'airdmhund/testing'
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
			docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                def customImage = docker.build("airdmhund/myrepo")

                customImage.push()
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
