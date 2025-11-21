#!/usr/bin/env bash -x


read -p "What is the 'real' duration, in seconds, of the command as reported by the time command? " D

if [[ $D == 4* ]]
then
    true
else
        echo "Are you sure? Look carefully at the output of time."
        false
fi
