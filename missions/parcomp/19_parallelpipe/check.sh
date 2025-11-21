#!/usr/bin/env bash -x

cat d.txt | parallel -k -N1 --pipe ./lower.sh > res.ref 2>/dev/null

if [[ ! -f res.txt ]]
then
        echo "I cannot find the res.txt file..."
        false
fi

if [[ $(stat --printf="%s" res.txt) != 4 ]]
then
        echo "The file exists but it does not seem to be correct size.. Maybe you run the command multiple times?"
        false
fi

if diff res.txt res.ref >/dev/null
then
    true
else
    echo "The content of the file does not seem right. Did you use -k ?"
    false
fi
