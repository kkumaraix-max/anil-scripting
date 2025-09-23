#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]; then
   echo "you need root access"
   exit 1
fi
VALIDATE(){
    if [ $? -ne 0 ]; then
      echo "Error: $package already installed"
      exit 1 
    else 
    echo "$package installation completed"
    fi
}
  for package in $@
  do
        dnf list installed | grep $package &>>/var/log/package.log
    if [ $? -ne 0 ]; then
        dnf install $package -y &>>/var/log/package.log
        VALIDATE $? "$package"
    else
        echo "$package already installed in the server"

    fi
 done
