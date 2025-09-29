#!/bin/bash

#while loop for printing 1 to 100

#i=1

#while [ $i -lt 100 ] ## condition 
#do
#    echo $i
#    i=$((i+25)) ## command
#done

Num=100

while [ $Num -gt 0 ]; then 
do 
  echo $Num
  Num=$((Num-1))

done




