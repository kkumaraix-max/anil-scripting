#!/bin/bash
#Purpose of this script is to reset user's password
#Author : Anil Kumar Kathoju
#Date : 27th Sep 2025
#Version : V1

USER=anilk
PASSWORD=anil@123
if [ $USER != anilk ]; then
    echo "ERROR: $USER is not vaialable"
    else
    echo "$USER is exist and resetting password"
    echo "$USER:$PASSWORD" | chpasswd
fi    

#PASSWORD=Anil@123

#for USER in "$@"
#do
#if [ "$USER" = "root" ]; then
#    echo "ERROR: you should not change root user passwd"
#    else
#    echo "$USER is Normal user you can chnage it"
#    echo "$USER:$PASSWORD" | chpasswd
#fi
#done   