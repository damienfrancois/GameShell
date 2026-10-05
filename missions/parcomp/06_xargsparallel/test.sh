#!/usr/bin/env sh

echo 0.1 | gsh assert_check false
echo 16 | gsh assert_check false
echo 4.02 | gsh assert_check true
