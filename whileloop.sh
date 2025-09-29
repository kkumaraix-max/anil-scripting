#!/bin/bash

#while loop for printing 1 to 100
echo "=============================="
echo     "Printing from 0"
echo "==============================" 
i=0

while [ $i -lt 100 ] ## condition 
do
    echo $i
    i=$((i+25)) ## command
done
echo "=============================="
echo       "Printing from 100"
echo "==============================" 
Num=100

while [ $Num -gt 0 ]
do 
  echo $Num
  Num=$((Num-25))

done




