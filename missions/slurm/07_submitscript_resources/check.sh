#!/usr/bin/env bash -x

KO=0

if ! grep -- "--time[= ](0-)?(00:)?10:00"" $GSH_HOME/testjob/submit.sh &>/dev/null
then
    echo "The time specification is not correct."
    KO=1
fi

if ! grep -- "--cpus-per-task[= ]4" $GSH_HOME/testjob/submit.sh &>/dev/null
then
    echo "The CPU specification is not correct."
    KO=1
fi

if ! grep -- "--mem-per-cpu[= ]1000M\?B\?" $GSH_HOME/testjob/submit.sh &>/dev/null
then
    echo "The memory specification is not correct."
    KO=1
fi

if ((KO == 1)); then
    false
else
    true
fi
