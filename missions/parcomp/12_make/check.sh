#!/usr/bin/env bash -x



read -p "What is the 'user' duration in seconds of the command as reported by the time command? " D

if [[ $D == 12* ]]
then
    echo "Hum it seems you bumped into a bug in Make."
    echo "One of the steps in the second stage did not run at the same time as the others"
    echo "which explains why you observe 12 seconds runtime. But actually, it should be 8."
    echo "Please try again (with make -B -j4)"
    false
fi
if [[ $D == 8* ]]
then
    true
else
        echo "Are you sure? The timing should be a bit above 8."
        false
fi
