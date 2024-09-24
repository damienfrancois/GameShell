#!/usr/bin/env bash -x

read -p "What is the response of scancel when you try bad things ? " R

if [[ $R ==  *"Access/permission denied" ]]
then
    true
else
        echo "That is not what I expected. Have you tried? Don't worry, you will not be able to harm other users' jobs"
        false
fi
