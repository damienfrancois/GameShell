#!/usr/bin/env bash -x
history | tail -2 | head -1 | { read H
W=(sacct format reqmem maxrss timelimit alloccpus cputime totalcpu)
for w in ${W[@]}; do
    if [[ "${H,,}" == *$w* ]]; then 
        :
    else
        if [[ $w == "sacct" ]]; then 
        echo "You did not run the sacct command"
        elif [[ $w == "format" ]]; then
        echo "You did not use the --format option of sacct"
        else
        echo "You have not looked at $w"
        fi
        false
        return
    fi
done
}
