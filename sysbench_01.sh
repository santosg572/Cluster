#!/bin/bash

# Estresando la CPU con un thread (num-threads=1)

sysbench --test=cpu --cpu-max-prime=20000 --num-threads=1 run

