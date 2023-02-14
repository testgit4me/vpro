def gv
pipeline {

    agent any
    
    tools{
        maven "maven3"
    }

    stages {
        
        stage("initing groovy"){
            steps{
                script {
                    gv = load "script.groovy"  
                }              
            }
        }

        stage("building jar"){
            steps{
                script(){
                    gv.buildJar()
                }                
            }
        }
        
        stage("building image"){
            steps{
                script(){
                    gv.buildImage()
                }              
            }
        }

        stage("Pushing image"){
            steps{
                script(){
                    gv.pushImage()
                }              
            }
        }

        stage("deploying image"){
            steps{
                script(){
                    gv.deployImage()
                }                
            }
        }
    }
}