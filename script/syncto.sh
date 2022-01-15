#!/bin/bash

unison -batch $1 $2
inotifywait -mrq -e create,delete,modify,move $1 | while read line; do
        unison -batch $1 $2
done

# 先手动同步一次
# bash syncto.sh /home/mrzhu/code/MedicalDiagnosis/IgAModel /home/mrzhu/code/USCL/IgAModel66
# bash syncto.sh /home/mrzhu/code/USCL/IgAModel66 /home/mrzhu/code/MedicalDiagnosis/IgAModel 

