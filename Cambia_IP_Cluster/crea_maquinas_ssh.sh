#!/bin/bash

IFS=$'\n'

files=$(cat hosts)

k=1
for fil in ${files}
do
  echo "======================================="
  ss=$(expr substr $fil 1 1)
  if [ "$ss" == "1" ]; then
    echo $fil
    ip=`echo $fil | tr -s " " | cut -d " " -f1`
    maquina=`echo $fil | tr -s " " | cut -d " " -f3`
    echo "#!/bin/bash" > "m"${k}_${maquina}.sh
    echo " " >> "m"${k}_${maquina}.sh
    echo "sshpass -p 'carlos21' ssh santosg@${ip}" >> "m"${k}_${maquina}.sh
    chmod u+x "m"${k}_${maquina}.sh
    k=$((k+1))
  fi
#  ipO=`echo $fil | tr -s " " | cut -d " " -f4`
#  adaptador=`echo $fil | tr -s " " | cut -d " " -f5`
done

