#!/bin/bash

comando="who"

sshpass -p carlos12 ssh -X -Y santosg@$1 $comando
