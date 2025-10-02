#!/usr/bin/env bash -x
if history  |& grep -s "&$"
then
    true
else
    echo "It seems the command you ran did not end with an ampersand?"
    false
fi
