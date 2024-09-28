#!/bin/bash


datos=`cut -d ' ' -f 1  qstatf.txt`

for qq in ${datos}
do
  echo ${qq}
done
