#!/usr/bin/env sh

rm -f d?.bak
gsh assert_check false

cp d1.txt d1.bak
cp d2.txt d2.bak
cp d3.txt d3.bak
gsh assert_check false

cp d4.txt d4.bak
gsh assert_check true

rm -f d?.bak
