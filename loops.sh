#!/bin/bash

for (( num=1;num<=10;num++ ))
 do
  echo "number is : $num"
  mkdir "Dir$num"
 done

echo "$((num-1)) directories made"
ls
read -p "Press f/F to delete all the directories: " del
if [[ $del == "f" ]];
 then
  rm -rf Dir*
elif [[ $del == "F" ]]
 then 
  rm -rf Dir*
else
  echo "Delete yourself now 😂"
fi

