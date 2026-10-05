#!/usr/bin/env sh

rm -f res.txt
gsh assert_check false

parallel -k -N1 --pipe ./lower.sh < d.txt > res.txt
gsh assert_check true

parallel -k -N1 --pipe ./lower.sh < d.txt >> res.txt
gsh assert_check false

rm -f res.txt
