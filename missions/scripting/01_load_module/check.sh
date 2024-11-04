#!/usr/bin/env sh

if { which R || which octave || which julia || which python ;} >& /dev/null ; 
then
    for interpreter in R octave julia python ; 
    do
        which $interpreter >& /dev/null && echo "Found $interpreter !"
    done
    true
else
    echo "I did not find any interpreter (R, Octave, Julia or Python) available in the environment."
    false
fi
