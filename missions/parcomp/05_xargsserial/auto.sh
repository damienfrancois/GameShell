#!/usr/bin/env sh

. alt_history_start.sh
add_cmd 'ls d?.txt | xargs -I {} ./lower.sh {} {}.res'
add_cmd gsh check
gsh check
. alt_history_stop.sh
