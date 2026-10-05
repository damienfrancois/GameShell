#!/usr/bin/env sh

rm -f res.txt
gsh assert_check false

parallel -k ./lower.sh {} ::: d?.txt > res.txt
gsh assert_check true

# same size, wrong order
parallel -k ./lower.sh {} ::: d4.txt d3.txt d2.txt d1.txt > res.txt
gsh assert_check false

parallel -k ./lower.sh {} ::: d?.txt >> res.txt
gsh assert_check false

rm -f res.txt
