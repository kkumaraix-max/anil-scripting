#!bin/bash

ID=$(id -u)
UNAME=$(hostname | cut -d '.' -f1)
DATE=$(date +%D/%T)
LOG_FILE="/var/log/${UNAME}.${DATE}.log"

if [ $ID -ne 0 ]; then
   echo "ERROR:you need root privilages to execute this command"
   exit 1
fi
VALIDATE(){
    exit_status=$1
    package=$2

if [ $1 -ne 0 ]; then
 echo "$2 exist"
 exit 1
else
dnf install nginx -y &>>$LOG_FILE
echo "nginx installation cpmpleted"
fi
}