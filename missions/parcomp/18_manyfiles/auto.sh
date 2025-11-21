#!/usr/bin/env sh

ml parallel
parallel -k ./lower.sh {} > res.txt  ::: d?.txt

gsh check
