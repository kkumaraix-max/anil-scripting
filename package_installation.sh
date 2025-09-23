#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]; then
   echo "you need root access"
   exit 1
fi
VALIDATE(){
    if [ $? -ne 0 ]; then
      echo "Error: $2 already installed"
      exit 1 
    else 
    echo "installation completed $2"
    fi
}
  for package in $@
  do
        dnf list installed | grep $package
    if [ $? -ne 0 ]; then
        dnf install $package -y &>>/var/log/package.log
        VALIDATE $? "$package"
    else
        echo "$package has been already installed"

    fi
 done
