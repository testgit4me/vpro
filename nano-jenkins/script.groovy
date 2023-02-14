def buildJar(){
    echo "building jar ..."
    sh "mvn package"
}

def buildImage(){
    echo "building docker image..."
    sh "docker build -t projectvprofile/java-maven-app:jma-2.2 ."  
}

def pushImage(){
    echo "Pushing image..."
    withCredentials([usernamePassword(credentialsId: "cred-docker-hub", passwordVariable: "PASSWORD", usernameVariable: "USERNAME")]){
        sh "echo $PASSWORD | docker login -u $USERNAME --password-stdin"                
        sh "docker push projectvprofile/java-maven-app:jma-2.2"        
    }    
}

def deployImage(){
    echo "deploying the application"
}

return this