#!/usr/bin/env sh


history -s "ls d?.txt | xargs -I {} ./lower.sh {} {}.res ;"

gsh check
