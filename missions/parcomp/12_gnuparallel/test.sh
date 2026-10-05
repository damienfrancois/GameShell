#!/usr/bin/env sh

if parallel --version 2>/dev/null | grep -q "GNU parallel"
then
  gsh assert_check true
else
  gsh assert_check false
fi
