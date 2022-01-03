#!/bin/bash

unison -batch $1 $2
inotifywait -mrq -e create,delete,modify,move $1 | while read line; do
        unison -batch $1 $2
done


# bash syncto.sh /home/mrzhu/code/MedicalDiagnosis/IgAModel /home/mrzhu/code/USCL/IgAModel
# bash syncto.sh /home/mrzhu/code/USCL/IgAModel /home/mrzhu/code/MedicalDiagnosis/IgAModel 