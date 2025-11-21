#!/usr/bin/env bash -x




if [[ -f d1.bak && -f d2.bak && -f d3.bak && -f d4.bak ]]
then
    true
else
        echo "I cannot find the files... Did you maybe only do a dry-run?"
        false
fi
