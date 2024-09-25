#!/usr/bin/env bash -x

S=$(sacct -X -o STATE%-15 | tail -1)

if [[ $S == *OUT_OF_MEMORY* ]] ; then 
    true
else
    echo "Hum the last job ended in state $(echo $S|xargs). We are looking for state OUT_OF_MEMORY"
    false
fi
