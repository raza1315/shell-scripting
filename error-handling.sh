#!/bin/bash

#create a file and if file already exits then echo something
function create_dir(){
 mkdir demo
}
if  ! create_dir ;
 then
  echo "folder already exists..."
  exit 1
fi
echo "This should not work if folder already exists"
