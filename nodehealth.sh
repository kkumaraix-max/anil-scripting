#!/bin/bash
#Purpose of this script is to check the Server's performance
#Author : Anil Kumar Kathoju
#Date : 27th Sep 2025
#Version : V1

set -x #Every command will be printed before output

df -h | grep | awk -F " " '{print $4}'
free -m | grep | awk -F " " '{print $2}'
nproc
