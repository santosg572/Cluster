#!/bin/bash

for i in `seq 1`
do
   sshpass -p carlos21 ssh -X -Y santosg@172.24.220.153 'bash -s' < qq.sh
   echo '-----------------------'$i
#   sleep 3600
done


