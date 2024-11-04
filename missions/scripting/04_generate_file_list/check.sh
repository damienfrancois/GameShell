#!/usr/bin/env sh

NB=$(cat | grep "res-[0-9]\?[0-9].txt"  | wc -l)
if ((NB == 99 )) ; then 
    true
else
    false
fi

