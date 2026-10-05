#!/usr/bin/env sh

# use a temporary PARALLEL_HOME to leave the player's one untouched
_PARALLEL_HOME=${PARALLEL_HOME-__unset__}
export PARALLEL_HOME="$TMPDIR/gsh_parallel_home"
rm -rf "$PARALLEL_HOME"
mkdir -p "$PARALLEL_HOME"

if parallel --version 2>/dev/null | grep -q "parallel --citation"
then
  gsh assert_check false
  touch "$PARALLEL_HOME/will-cite"
  gsh assert_check true
else
  # Debian / Ubuntu: no citation notice, nothing to do
  gsh assert_check true
fi

rm -rf "$PARALLEL_HOME"
if [ "$_PARALLEL_HOME" = __unset__ ]
then
  unset PARALLEL_HOME
else
  PARALLEL_HOME=$_PARALLEL_HOME
fi
unset _PARALLEL_HOME
