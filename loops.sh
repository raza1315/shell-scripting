#!/bin/bash

#While loop
count=1
while [[ $count -le 5  ]]
 do
  echo "5x$count=$((5*count))"
  count=$((count+1))
 done
echo "Now running For loop:"
#For loop creating 10 Directories and then delete by pressing F/f
for (( num=1;num<=10;num++ ))
 do
  echo " Dir$num created"
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

