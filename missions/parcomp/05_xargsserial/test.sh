#!/usr/bin/env sh

. alt_history_start.sh

add_cmd 'ls d?.txt | xargs ./lower.sh'
add_cmd gsh check
gsh assert_check false

add_cmd 'ls d?.txt | xargs -I {} ./lower.sh {} {}.res'
add_cmd gsh check
gsh assert_check true

. alt_history_stop.sh
. alt_history_start.sh

add_cmd 'ls d?.txt | xargs -I{} ./lower.sh {} {}.res'
add_cmd gsh check
gsh assert_check true

. alt_history_stop.sh
