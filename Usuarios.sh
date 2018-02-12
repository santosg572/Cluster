#!/bin/bash

lista=(172.24.60.129 mountcastle
172.24.60.157   evarts
172.24.80.37    neurona
172.24.80.69    leviathan
172.24.80.70    jasper
172.24.80.73    cannabis
172.24.80.74    claustrum
172.24.80.77    arwen
172.24.80.79    charcot
172.24.80.90    tournoux
172.24.80.97    fourier
172.24.80.98    rabi
172.24.80.99    penfield
172.24.80.100   talairach
172.24.80.101   tanner
172.24.80.102   tesla
172.24.80.105   rhesus
172.24.80.106   mansfield
172.24.80.107   purcell
172.24.80.108   bloch
172.24.80.109   hahn
172.24.80.110   carr
172.24.80.111   sherrington
172.24.80.112   torrey
172.24.80.113   ernst
172.24.90.154   mendel
172.24.100.47   copula
172.24.100.49   copula2
172.24.100.73   giora
172.24.100.74   austin
172.24.140.49   sesamo8
192.168.192.154 lauterbur
)

nd=${#lista[*]}

for i in `seq 0 2 $nd` 
do
   maquina=${lista[$i]}
   nom_maquina=${lista[$[$i+1]]}
   echo '--------------------'$nom_maquina
   ./usuarios_maquina.sh $maquina
done
