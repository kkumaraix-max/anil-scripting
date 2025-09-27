#!/bin/bash
# Purpose of this script to install packages
# Author  : Anil Kumar Kathoju
# Date    : 27th Sep 2025
# Version : V1

#user needs to have access to install packages
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: You will be need superuser privilages to install this package"
    exit 1
    else
    echo "Install the package"
fi   


#check packages exist or not
#$? = 0 
#$? = 1 to 127 failure

VALIDATE(){
    if [ $? -ne 0 ]; then
    echo "installation of $2 failed"
    exit 1
    else
    echo "package has been successfully installed" 
    fi
}

#install
for package in "$@"
do
VALIDATE(){
    exit_status=$1
    package=$2
  if [ $1 -ne 0 ]; then
  echo echo "package already isnatlled"
  exit 1
  else  
  dnf install $package -y 
  VALIDATE "$?" "$2"
  fi
}
done

