#!/bin/bash

nuevaIP=${1}
adaptador=${2}

nl=${#nuevaIP}

if [ $nl -gt "0" ]; then
  sed "s|MODIFICA|$nuevaIP|g" /home/vagrant/Copiar_netplain/01-network-manager-all.yaml > /home/vagrant/Copiar_netplain/tempo
#  sed "s|ADAPTADOR|$adaptador|g" /home/vagrant/Copiar_netplain/tempo >  /home/vagrant/Copiar_netplain/dd/01-network-manager-all.yaml2.${nuevaIP}
 sed "s|ADAPTADOR|$adaptador|g" /home/vagrant/Copiar_netplain/tempo > /misc/tournoux2/santosg/linux_IP/dd/01-network-manager-all.yaml2.${nuevaIP}
else
  echo "falta un argumento al scrip"
fi
