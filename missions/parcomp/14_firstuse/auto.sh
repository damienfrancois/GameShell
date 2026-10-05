#!/usr/bin/env sh

parallel cp {} {.}.bak ::: d?.txt

gsh check
