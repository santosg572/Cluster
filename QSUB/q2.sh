#!/bin/bash

# https://bioinformatics.mdc-berlin.de/intro2UnixandSGE/sun_grid_engine_for_beginners/how_to_submit_a_job_using_qsub.html
#https://es.stackoverflow.com/questions/136294/c%C3%B3mo-puedo-imprimir-ciertos-campos-de-una-l%C3%ADnea

for i in `seq 100`
do
   qsub -q nvidia.q@nyquist.inb.unam.mx   -V -b n -cwd ./p1.sh 
done
