#!/usr/bin/env bash -x


if history  | grep -s -E "xargs\s+-I\s\{\}\s+./lower.sh\s+\{\}\s+\{\}.res" 
then
    true
else
        echo "Hum the command does not see right. Can you please try again?"
        false
fi
