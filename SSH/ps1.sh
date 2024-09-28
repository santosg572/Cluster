#!/bin/bash

# 12*9 9 hors = 108

for i in `seq 108`
do 
 ps -aux >> ${1}.txt
 echo "hola como estas"
 sleep 5m
done

