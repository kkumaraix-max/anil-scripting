#!/bin/bash
# Purpose of this script to install packages
# Author  : Anil Kumar Kathoju
# Date    : 27th Sep 2025
# Version : V1

#user needs to have access to install packages
USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "ERROR: You will be need superuser privilages to install this package"
    else
    echo "Install the package"
fi   


#check packages exist or not
#$? = 0 
#$? = 1 to 127 failure

VALIDATE(){
    if [ $? -eq 0 ]; then
    echo "package already isnatlled"
    else
    dnf install mysql -y 
    echo "mysql has been installed" 
    fi
}



#install 





