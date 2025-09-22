#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "you need root access to install mysql"
   exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "eeror: insatllation is failure"
   exit 1
    echo "install mysql"   
fi

dnf install nginx -y

if [ $? -ne 0 ]; then
   echo "error nginx install failed"
   exit 1
   else
    echo "install nginx"
 fi   


VALIDATE(){
    if [ $1 -eq 0 ]; then
    echo "installation of $2 completed"
    exit 0

    dnf install nodejs -y
    VALIDATE $1 "NodeJS"

}