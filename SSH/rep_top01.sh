#!/bin/bash

IFS=$'\n'
uno=1

pass=${1}
datos=`cat hosts`

for line in ${datos}
do
#  echo ${line}
  ss=${line:0:1}
#  echo $ss
  if [ "$ss" = "$uno" ]; then
   echo "======================================================="
   ip=`echo $line | tr -s " " | cut -d " " -f1`
   maquina=`echo $line | tr -s " " | cut -d " " -f3`
   echo $ip"-"$maquina
   sshpass -p ${pass} ssh santosg@${ip} "hostname; top -n 5 -b > 'file_'${maquina}'.txt'"
  fi 
done
