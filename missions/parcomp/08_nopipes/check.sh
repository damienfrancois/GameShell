#!/usr/bin/env bash -x

if [[ -f res.txt ]]
then
    true
else
        echo "The result file res.txt is nowhere to be found??"
        false
        return
fi

if [[ -f tmp.txt ]]
then
    true
else
        echo "The intermediate file tmp.txt is nowhere to be found??"
        false
        return
fi

read -p "What is the 'user' duration in seconds of the command as reported by the time command? " D

if [[ $D == 8* ]]
then
    true
else
        echo "Are you sure? Make sure the intermediate file has been removed before running the command?"
        false
fi
