#!/usr/bin/env bash -x

parallel -k ./lower.sh {} > res.ref  ::: d?.txt 2>/dev/null

if [[ ! -f res.txt ]]
then
        echo "I cannot find the res.txt file..."
        false
fi

if [[ $(stat --printf="%s" res.txt) != 32 ]]
then
        echo "The file exists but it does not seem to be correct size.. Please try again."
        false
fi

if diff res.txt res.ref >/dev/null
then
    true
else
    echo "The content of the file does not seem right. Did you use -k ?"
    false
fi
