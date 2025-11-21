#!/usr/bin/env bash -x




if [[ -f ~/.parallel/will-cite ]]
then
    true
else
        echo "Have you run parallel --citation? It seems not."
        false
fi
