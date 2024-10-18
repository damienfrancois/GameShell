#!/usr/bin/env bash 

PART=$(sinfo -ho%P | grep \*)
JOBID=$(squeue -t PD -p ${PART%%\*} | awk '/Resources/ {print $1}')
read -p "What is the job ID of the next job to be scheduled in the default partition ? " JOBIDA

if [[ "$JOBID" == "$JOBIDA" ]]
then
    true
else
    echo "You might want to have a better look. Or the situation might have changed. Maybe try with grep?"
    false
fi
