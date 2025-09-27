#!/bin/bash
#Purpose of this script is to check the Server's performance
#Author : Anil Kumar Kathoju
#Date : 27th Sep 2025
#Version : V1

#set -x #Every command will be printed before output


#echo "===== Disk Usage ====="
#df -h | awk -F " " '{print $4F,$5F}'  #it will print available space & used %# 
#echo "===== Memory Usage ====="
#free | awk -F " " '{print $3F,$4F}' #it will print used memory & free memory
#echo "===== CPU count ====="
#nproc # it will print no of cpu allocated to the server


#!/bin/bash
# Node Health Check Script
# Author  : Anil Kumar Kathoju
# Date    : 27th Sep 2025
# Version : V1

set -e  # exit if any command fails
set -x  # debug mode (prints each command before execution)

echo "===================================="
echo "   NODE HEALTH CHECK REPORT"
echo "   Hostname: $(hostname)"
echo "   Date    : $(date)"
echo "===================================="

# Disk usage
echo "----- Disk Usage -----"
df -h | awk 'NR>1 {print $1, "Avail:", $4, "Used%:", $5}'

# Memory usage
echo "----- Memory Usage -----"
free -m | awk 'NR==2 {print "Used:", $3 "MB", "| Free:", $4 "MB"}'

# CPU count
echo "----- CPU Info -----"
echo "CPU Cores: $(nproc)"

# Load average
echo "----- Load Average -----"
uptime | awk -F'load average:' '{print $2}'

# Top 5 CPU-consuming processes
echo "----- Top 5 CPU Consuming Processes -----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

# Top 5 Memory-consuming processes
echo "----- Top 5 Memory Consuming Processes -----"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6

# Network check (ping google DNS)
echo "----- Network Check -----"
ping -c 2 8.8.8.8 >/dev/null 2>&1 && echo "Network is UP" || echo "Network is DOWN"

# Uptime
echo "----- System Uptime -----"
uptime -p

echo "===================================="
echo "   Health Check Completed"
echo "===================================="

