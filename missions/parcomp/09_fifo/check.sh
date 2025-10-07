#!/usr/bin/env bash -x

if [[ -f tmp.fifo ]]
then
        echo "Hum, the tmp.fifo file that was found is a regular file, not a fifo file. Please remove it and try again"
        false
        return
fi

if [[ -p tmp.fifo ]]
then
    true
else
        echo "No fifo file tmp.fifo was found"
        false
        return
fi


read -p "What is the 'user' duration in seconds of the command as reported by the time command? " D

if [[ $D == 5* ]]
then
    true
else
        echo "Are you sure? The timing should be a bit above 4."
        false
fi
