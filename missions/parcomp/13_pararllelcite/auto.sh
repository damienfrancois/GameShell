#!/usr/bin/env sh

if parallel --version 2>/dev/null | grep -q "parallel --citation"
then
  echo "will cite" | parallel --citation >/dev/null 2>&1
fi

gsh check
