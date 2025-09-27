#!/bin/bash
#Purpose of this script is to check the Server's performance
#Author : Anil Kumar Kathoju
#Date : 27th Sep 2025
#Version : V1

set -x #Every command will be printed before output

df -h | awk -F " " '{print $4F,$5F}'  #it will print available space & used %# 
free | awk -F " " '{print $3F,$4F}' #it will print used memory & free memory
nproc # it will print no of cpu allocated to the server
