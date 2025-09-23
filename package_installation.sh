#!/bin/bash

ID=$(id -u)

dnf install nginx -y

if [ $ID -ne 0]; then
   echo "you need root access"
   exit 1
   else
   echo "nginx installed success"
fi


