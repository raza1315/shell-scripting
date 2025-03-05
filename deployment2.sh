#!/bin/bash

#deployment using the docker compose tool:

clone_code(){
echo "cloning the repository if doesn't exist..."
git clone https://github.com/raza1315/shell-scripting
}
test(){
pwd
}
build_and_deploy(){
echo "navigating to the shellDeployment directory..."
cd shellDeployment
echo "building the image using docker-compose after docker-compose down to down all the services(containers if running)"
docker compose down
docker compose up -d --build 
echo "deployment successful!"
}

if ! clone_code 
 then
   echo "Repo Already exists..." 
fi

test

if ! build_and_deploy  
 then
  echo "some error in docker..." 
fi
