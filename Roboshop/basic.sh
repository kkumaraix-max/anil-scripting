#!bin/bash

ID=$(id -u)
UNAME=$(hostname | cut -d '.' -f1)
DATE=$(date +%D/%T)
LOG_FILE="/var/log/$UNAME.$DATE.log

if [ $ID -ne 0 ]; then
   echo "ERROR:you need root privilages to execute this command"
   exit 1

else 
    
    dnf install nginx -y &>>$LOG_FILE
    echo " NGINX installation completed"

 fi   



