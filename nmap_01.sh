#!/bin/bash

for i in {1..40}
do
  start_time=`date +"%T"`
  start_hour=`date +"%H"`
  start_minute=`date +"%M"`
  start_second=`date +"%S"`
  echo "=========================== "$i " ====== " $elapsed_hour.$elapsed_minute.$elapsed_second
  nmap -sP  172.24.220.1-255
  sleep 6m
  end_time=`date +"%T"`
  end_hour=`date +"%H"`
  end_minute=`date +"%M"`
  end_second=`date +"%S"`

  elapsed_hour=`expr $end_hour - $start_hour`
  elapsed_minute=`expr $end_minute - $start_minute`
  elapsed_second=`expr $end_second - $start_second`
#  echo $elapsed_hour.$elapsed_minute.$elapsed_second
done
