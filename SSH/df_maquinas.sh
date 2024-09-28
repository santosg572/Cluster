#!/bin/bash

pass=${1}
datos=`cat hosts.dat`

uno=1

for file in ${datos}
do
#  echo ${file}
  ss=$(expr substr $file 1 1)
  if [ "$ss" = "$uno" ]; then
   echo "======================================================="
   echo $file
     sshpass -p ${pass} ssh santosg@${file} "hostname" 
  fi 
done
