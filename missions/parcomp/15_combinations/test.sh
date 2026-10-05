#!/usr/bin/env sh

. alt_history_start.sh

rm -f backup.?
add_cmd 'parallel --link cp {1} {2} ::: d?.txt ::: backup.{a..d}'
add_cmd gsh check
gsh assert_check false

# all combinations: every backup is a copy of the same file
for b in a b c d
do
  cp d4.txt backup.$b
done
gsh assert_check false

cp d1.txt backup.a
cp d2.txt backup.b
cp d3.txt backup.c
gsh assert_check true

add_cmd 'cp d4.txt backup.d'
add_cmd gsh check
gsh assert_check false

. alt_history_stop.sh
rm -f backup.?
