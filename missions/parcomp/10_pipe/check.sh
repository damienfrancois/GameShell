#!/usr/bin/env bash -x


if [[ -f res.txt ]]
then
    true
else
        echo "No resulting file res.txt was found this time?"
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
