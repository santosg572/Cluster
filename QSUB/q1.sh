#!/bin/bash

# https://bioinformatics.mdc-berlin.de/intro2UnixandSGE/sun_grid_engine_for_beginners/how_to_submit_a_job_using_qsub.html

for i in `seq 100`
do
 echo $i
 qsub -V -b n -cwd ./p1.sh $i
done
