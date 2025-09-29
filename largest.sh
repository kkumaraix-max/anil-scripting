#!/bin/bash

largest=$1

for num in "$@"
do
  if [ $num -gt "$largest" ];
  then 
  echo " $largest is greater" 
  fi
done