#!/bin/bash

# Estresando el disco

sysbench --test=fileio --file-total-size=3G prepare
sysbench --test=fileio --file-total-size=3G --file-test-mode=rndrw --max-time=300 --max-requests=0 run
sysbench --test=fileio --file-total-size=3G cleanup

