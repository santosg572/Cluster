#!/bin/bash

for i in `seq 100`
do
  echo ${i}
 qsub sleep.sh 
done

