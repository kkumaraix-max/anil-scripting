#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]; then
   echo "you need root access"
   exit 1
fi

dnf install nginx -y
VALIDATE(){
    if [ $? -ne 0 ]; then
      echo "Error: nginx already installed"
      exit 1 
    else 
    echo "install nginx"
}
 fi  



