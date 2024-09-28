#!/bin/bash

fecha=`date "+M%mD%dA%Y"`

hora=`date "+%H-%M-%S"`

file="FIL_"${fecha}"_"${hora}.txt

./nombremaquina.sh >> ${file}
