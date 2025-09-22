#!/bin/bash

#if access go to next 

#if not exit

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "you does not required access"
    exit 1
fi    

VALIDATE(){
    if [ $1 -ne 0 ];
    echo "can not install $2"
    exit 1
    else 
    echo "instyalling $2 is success"
}

dnf install mysql -y
VALIDATE $? "MySql"

