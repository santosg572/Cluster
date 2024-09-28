#!/bin/bash

ipN=172.24.220.91
ipV=172.24.80.70
adaptador=enp3s0

pati="/misc/tournoux2/santosg/linux_IP"
 
ssh santosg@${ipV} "${pati}/copiaAnetplain.sh ${ipN} ${adaptador}"




