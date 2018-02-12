#!/bin/bash

lista=(60.129 mountcastle
60.157   evarts
80.37    neurona
80.69    leviathan
80.70    jasper
80.73    cannabis
80.74    claustrum
80.77    arwen
80.79    charcot
80.90    tournoux
80.97    fourier
80.98    rabi
80.99    penfield
80.100   talairach
80.101   tanner
80.102   tesla
80.105   rhesus
80.106   mansfield
80.107   purcell
80.108   bloch
80.109   hahn
80.110   carr
80.111   sherrington
80.112   torrey
80.113   ernst
90.154   mendel
100.47   copula
100.49   copula2
100.73   giora
100.74   austin
140.49   sesamo8
)

nd=${#lista[*]}

for i in `seq 0 2 $nd` 
do
   maquina=${lista[$i]}
   nom_maquina=${lista[$[$i+1]]}
   echo '--------------------'$nom_maquina
   ./usuarios_maquina.sh $maquina
done
