#!/bin/bash

#while loop for printing 1 to 100

i=0

while [ $i -lt 100 ]
do
    echo $i
    i=$((i+25))
done


