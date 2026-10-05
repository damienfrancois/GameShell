#!/usr/bin/env sh

# restore the working copy of the sample if needed, and go there
parcomp_workdir || return 1
case "$PWD/" in
  */parcomp/*) ;;
  *) cd "$GSH_HOME/parcomp" ;;
esac
