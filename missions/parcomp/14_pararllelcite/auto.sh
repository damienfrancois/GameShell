#!/usr/bin/env sh

echo "will cite" | parallel --citation >& /dev/null

gsh check
