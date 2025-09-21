#!/bin/bash

#echo "hello world"

#Server1="$1"
#Server2="$2"
#Server3="$3"
#Server4="$4"

#echo "$Server1 is developed IBM"
#echo "$Server2 is Opensource"
#echo "$Server3 is HP"
#echo "$Server4 is Solaris1"


#A=100
#B=200

#SUM=$(($A+$B))

#echo "Summ is $SUM"

#echo "Script name is:$0"
#echo "Present working directory:$PWD"
#echo "user who execueted is :$USER"
#echo "Process of of script :$$"
#sleep 20 &
#echo "PID last executed:$!"

Start_time=$(date +%s)
End_time=$(date +%s)

Sum=${($Start_time-$End_time)}
sleep 10 &
echo "Script execute: $Sum"

