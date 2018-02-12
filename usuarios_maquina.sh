#!/bin/bash

comando="who"

sshpass -p $2 ssh -X -Y santosg@$1 $comando
