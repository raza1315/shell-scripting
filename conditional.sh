#!/bin/bash

read -p "Enter your name:  " name
if [[ $name == "raza" ]];
then
 echo "correct! $name"
elif [[ $name == "Syed raza" ]]
then
 echo "HEY $name"
else
  echo "Wrong!"
fi
