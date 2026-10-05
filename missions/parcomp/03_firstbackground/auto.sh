#!/usr/bin/env sh

. alt_history_start.sh
add_cmd './lower.sh d.txt &'
add_cmd gsh check
gsh check
. alt_history_stop.sh
