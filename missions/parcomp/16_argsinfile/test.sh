#!/usr/bin/env sh

. alt_history_start.sh

rm -f experiment.*.txt
add_cmd 'parallel --colsep , --header : touch experiment.{Letter}_{Number}.txt :::: experiments.csv'
add_cmd gsh check
gsh assert_check false

touch experiment.A_1.txt experiment.B_2.txt experiment.C_4.txt
gsh assert_check false

touch experiment.A_5.txt
gsh assert_check true

add_cmd 'touch experiment.A_5.txt'
add_cmd gsh check
gsh assert_check false

. alt_history_stop.sh
rm -f experiment.*.txt
