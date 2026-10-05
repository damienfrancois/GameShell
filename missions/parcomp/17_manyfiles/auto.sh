#!/usr/bin/env sh

command -v ml >/dev/null 2>&1 && ml parallel
parallel -k ./lower.sh {} > res.txt  ::: d?.txt

gsh check
