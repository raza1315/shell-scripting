#!/bin/bash

read -p "Enter your name:  " name
if [[ $name == "raza" ]];
then
 echo "correct! $name"
else
  echo "Wrong!"
fi
