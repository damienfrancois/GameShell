#!/usr/bin/env sh

if ! parallel --version 2>/dev/null | grep -q "GNU parallel" && command -v ml >/dev/null 2>&1
then
  ml parallel
fi

gsh check
