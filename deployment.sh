#!/bin/bash
#shell script for the deployment of app : cloning->building->deploying(local system)

code_clone(){
echo "cloning the repository from github..."
git clone https://github.com/raza1315/ShellDeployment
}

build_image(){
cd shellDeployment
echo "building docker image:"
docker build -t shelldeployment .
}

test(){
pwd
}

deployement(){
echo "Removing the container and starting a new container..."
docker stop shellDeployment 
docker rm shellDeployment
docker run -d -p 3000:3000 --name shelltest shelldeployment 
echo "Deployment successful!"
}

if  ! code_clone  
 then
  echo "Repository Already Exists..."
fi

build_image

test


