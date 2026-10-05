#!/usr/bin/env sh

echo 12.1 | gsh assert_check false
echo 32 | gsh assert_check false
echo 8.05 | gsh assert_check true
