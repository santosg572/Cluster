
#!/bin/bash

dir=`cat hosts.dat`
fecha=`date "+M%mD%dA%Y"`

hora=`date "+%H-%M-%S"`

#file_out="nom_maquiinas_"$fecha$hola".txt"
#echo $fecha
#echo $hora

for file in ${dir}
do
  ss=${file:0:1}
  if [[ "$ss" = "1" ]]; then
    echo ${file}
    sshpass -p carlos21 ssh -X -Y santosg@${file} "hostname"
  fi
done




