#!/usr/bin/env sh

mkdir -p $GSH_HOME/testjob
cat <<EOT  > $GSH_HOME/testjob/submit2.sh
#!/bin/bash

#SBATCH --time=02:00
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=1MB

printf -v x %1000000000s
srun sleep 300
EOT

J=$(sbatch --parsable $GSH_HOME/testjob/submit2.sh)
state=$(sacct -X -n -j $J -o STATE)

while : ; do 
    sleep 10
    state=$(sacct -X -n -j $J -o STATE)
    if [[ $state == *PENDING* || $state == *RUNNING* ]]; then
    echo -n .
    else
    break
    fi
done

gsh check
