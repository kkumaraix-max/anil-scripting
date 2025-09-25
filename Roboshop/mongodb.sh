#!/bin/bash

ID=$(id -u)
LOGS_DIR="/var/log/ani-script"
SCRIPT_NAME=$( echo $0 | cut -d "_" -f1 )
LOGFILE="$LOGS_DIR/${SCRIPT_NAME}.log"

mkdir -p $LOGS_DIR

if [ $ID -ne 0 ]; then
   echo "ERROR: Root privileges are required to execute this script ..."
   exit 1
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
    cp mongo.repo /etc/yum.repos.d/mongo.repo
    VALIDATE $? "Adding repo"
    
    dnf install mongodb-org -y &>>$LOGFILE
    VALIDATE $? "installing Mongodb"

    systemctl enable mongod 
    VALIDATE $? "enable mongodb"

    systemctl start mongod 
    VALIDATE $? "start mongodb"

    sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mongod.conf

