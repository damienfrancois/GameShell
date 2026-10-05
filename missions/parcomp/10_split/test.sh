#!/usr/bin/env sh

echo 4 | gsh assert_check false
echo 1.03 | gsh assert_check true
