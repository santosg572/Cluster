#!/bin/bash

datos=`cat hosts.dat`

uno=1

for file in ${datos}
do
#  echo ${file}
  ss=$(expr substr $file 1 1)
  if [ "$ss" = "$uno" ]; then
   echo "================================================"
   echo $file
   ssh soporte@${file} "sudo shutdown now"
  fi 
done

