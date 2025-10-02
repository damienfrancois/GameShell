#!/usr/bin/env bash -x
if history | grep "./lower.sh" |& grep -s "d.txt"
then
    true
else
    echo "Hum the history of your terminal does not show the lower.sh command. Please try again."
    false
fi
