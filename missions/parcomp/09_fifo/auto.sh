#!/usr/bin/env sh

rm -f tmp.fifo
mkfifo tmp.fifo

echo 5 | gsh check
