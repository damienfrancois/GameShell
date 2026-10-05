#!/usr/bin/env sh

rm -f res.txt
echo 5 | gsh assert_check false

touch res.txt
echo 8 | gsh assert_check false
echo 5.1 | gsh assert_check true

rm -f res.txt
