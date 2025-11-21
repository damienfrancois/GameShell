#!/usr/bin/env sh

ml parallel
rm -f res.txt
cat d.txt | parallel -k -N1 --pipe ./lower.sh > res.txt 2>/dev/null

gsh check
