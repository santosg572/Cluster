#!/bin/bash

#files=`cat ./HOST/fmrilab_hosts.txt hosts_nuevo.txt | tr -s " " | cut -d " " -f4`
files=`cat fmrilab_hosts.txt`

IFS=$'\n'
uno=1
dos=2
cero=0

for line in ${files}
do
#  echo $line
  nl=${#line}
#  echo $nl
  if [ $nl -gt $cero ]; then
#    echo "linea: "${line}
    ss=${line:0:1}
#    echo $ss
    if [ "$ss" = "$uno" ]; then
     echo "================================================"
     echo "linea: "${line}
     c1=`echo $line | tr -s " " | cut -d " " -f1`
     echo "ip para entrar "$c1
#     sshpass -p 'carlos21' ssh santosg@${c1} "hostname; ip a"
     sshpass -p 'carlos21' ssh santosg@${c1} "hostname; ifconfig"
    fi
  fi
done 


