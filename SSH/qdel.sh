#!/bin/bash

files=`cat qstat_datos.txt | tr -s " " | cut -d " " -f 2`

for fil in ${files}
do
  qdel ${fil}
done
