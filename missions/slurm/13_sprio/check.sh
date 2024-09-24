#!/usr/bin/env bash -x

PRIO=$(sprio -h -w -o%F)

read -p "What is weight of the fairshare in the computation of the priority ? " W

if [[ $PRIO ==  $W ]]
then
    true
else
        echo "Are you sure? Look carefully at the output of sprio -w."
        false
fi
