#!/usr/bin/env sh

echo 2 | gsh assert_check false
echo 16 | gsh assert_check false
echo 4.01 | gsh assert_check true
