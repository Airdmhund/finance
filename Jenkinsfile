pipeline {
    agent any
    environment {
        NEW_VERSION = '1.3.0'
    }
    stages {
        stage ("build") {

            steps {
                echo 'Building the application'
                echo "Building version ${NEW_VERSION}"
                echo 'this is working'

            }
            
        }

        stage ("test") {
            when {
                expression {
                    BRANCH_NAME == 'dev'
                }
            }

            steps {
                echo 'testing the application'
                echo 'In Dev branch'

            }
            
        }

        stage ("deploy") {

            steps {
                echo 'deployinggit the application'

            }
            
        }
    }

    post {
        always {
            echo 'I can see youre working'
        }
    }
}