#!/bin/bash

ID=$(id -u)
UNAME=$(hostname | cut -d '.' -f1)
DATE=$(date +%d-%m-%Y-%H-%M-%S)
LOG_FILE="/var/log/${UNAME}_${DATE}.log"

# Check root privileges
if [ $ID -ne 0 ]; then
   echo "ERROR: You need root privileges to execute this script"
   exit 1
fi

# Validation function
VALIDATE() {
  if [ $1 -ne 0 ]; then
     echo "ERROR: $2 ... check logs at $LOG_FILE"
     exit 1
  else
     echo "SUCCESS: $2"
  fi
}

# Install nginx
dnf install nginx -y &>>$LOG_FILE
VALIDATE $? "Nginx installation completed"
