#!/bin/bash

#deployment using the docker compose tool:

clone_code(){
echo "cloning the repository if doesn't exist..."
git clone https://github.com/raza1315/shell-scripting
}
test(){
pwd
}
build_image(){
echo "navigating to the shellDeployment directory..."
cd shellDeployment
echo "building the image using docker-compose after docker-compose down to down all the services(containers if running)"
docker compose down
docker compose up -d --build 

}
