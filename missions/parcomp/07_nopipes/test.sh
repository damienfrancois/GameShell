#!/usr/bin/env sh

rm -f res.txt tmp.txt
echo 8 | gsh assert_check false

touch tmp.txt
echo 8 | gsh assert_check false

touch res.txt
echo 4 | gsh assert_check false
echo 8.1 | gsh assert_check true

rm -f res.txt tmp.txt
