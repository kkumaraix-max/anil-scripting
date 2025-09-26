#!bin/bash

ID=$(id -u)
UNAME=$(hostname | cut -d '.' -f1)
DATE=$(date +%D/%T)
LOG_FILE="/var/log/${UNAME}.${DATE}.log"

touch /var/log/${UNAME}.${DATE}.log

if [ $ID -ne 0 ]; then
   echo "ERROR:you need root privilages to execute this command"
   exit 1
   else
   echo "Nginx has been installed successfully"
fi

VALIDATE(){
    exit_status=$1
    package=$2
    if [ $1 -ne 0 ]; then
      echo "Error: $2 already installed"
      exit 1 
    else 
    echo "$2 installation completed"
    fi
}

dnf install nginx -y &>>$LOG_FILE
VALIDATE "$1" "$2 installed"


