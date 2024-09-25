#!/usr/bin/env bash -x

S=$(sacct -o STATE%-15 | grep -v extern | tail -1)

if [[ $S == *OUT_OF_MEMORY* ]] ; then 
    true
else
    echo "Hum the last job ended in state $(echo $S|xargs). We are looking for state OUT_OF_MEMORY"
    false
fi
