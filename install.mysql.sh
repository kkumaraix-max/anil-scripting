#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "you need root access to install mysql"
   exit 1
fi

dnf install mysql -y

if [ $? -ne 0]; then
   echo "eeror: insatllation is failure"
   exit 1
    echo "install mysql"   
fi