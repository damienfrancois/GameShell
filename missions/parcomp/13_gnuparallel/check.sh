#!/usr/bin/env bash -x




if which parallel &>/dev/null
then
    true
else
        echo "Hum. The `parallel` command cannot be found. Is the module properly loaded?"
        false
fi
