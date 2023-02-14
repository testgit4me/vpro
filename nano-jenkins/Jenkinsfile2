pipeline {

    agent any

    stages {
       
        stage("test"){
            steps {
                script {
                    echo "testing the application"
                    echo "Executing pipeline for $BRANCH_NAME "
                }                
            }
        }

        stage("build"){
            
            when{
                expression{
                    BRANCH_NAME == "master"
                }
            }

            steps {
                script {
                    echo "building the application"
                    echo "building pipeline for $BRANCH_NAME "
                }                
            }
        }        

        stage("deploy"){

            when{
                expression{
                    BRANCH_NAME == "master"
                }
            }

            steps {
                script {
                    echo "deploying the application"
                    echo "deploying pipeline for $BRANCH_NAME "
                }                
            }
        }        
    }

}