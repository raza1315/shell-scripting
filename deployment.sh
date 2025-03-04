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

deployment(){
echo "Removing the container and starting a new container..."
docker stop shelltest 
docker rm shelltest
docker run -d -p 3000:3000 --name shelltest shelldeployment 
echo "Deployment successful!"
}

if  ! code_clone  
 then
  echo "Repository Already Exists..."
fi

if ! build_image 
 then
  echo "Error Occurred while building the image"
  exit 1
fi

test

if ! deployment 
 then
  echo "Error occurred while deploying the container"
  echo "Deployment Failed..."
  exit 1
fi

