#!/bin/bash

for i in {1..10}
do
  echo "===================== " $i
  for j in {1..10}
  do
    echo "===================== "$i " - " $j
  done
  sleep 60
done

