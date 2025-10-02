#!/usr/bin/env bash -x



read -p "What is the 'user' duration in seconds of the command as reported by the time command? " D

if [[ $D =~ 8* ]]
then
    true
else
        echo "Are you sure? The timing should be a bit above 4."
        false
fi
