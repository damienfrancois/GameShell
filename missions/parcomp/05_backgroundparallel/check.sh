#!/usr/bin/env bash -x


read -p "What is the 'user' duration, in seconds, of the command as reported by the time command? " D

if [[ $D == 4* ]]
then
    true
else
        echo "Are you sure? Make sure the syntax for running both at the same time is correct."
        false
fi
