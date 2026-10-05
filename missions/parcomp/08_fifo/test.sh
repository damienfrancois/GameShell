#!/usr/bin/env sh

rm -f tmp.fifo
echo 5 | gsh assert_check false

touch tmp.fifo
echo 5 | gsh assert_check false

rm -f tmp.fifo
mkfifo tmp.fifo
echo 8 | gsh assert_check false
echo 5.1 | gsh assert_check true

rm -f tmp.fifo
