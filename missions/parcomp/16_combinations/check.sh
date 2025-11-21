#!/usr/bin/env bash -x


if history  | tail -3 | cut -c 8- | grep -s ^cp 
then
        echo "Hum... It looks like you used the cp command directly? Please try with the parallel command."
        false
else
    true
fi


if [[ -f backup.a && -f backup.b && -f backup.c && -f backup.d ]]
then
    true
else
        echo "I cannot find the files... Did you maybe only do a dry-run?"
        false
fi
