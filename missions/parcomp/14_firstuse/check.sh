#!/usr/bin/env sh

_mission_check() (
  case "$PWD/" in
    */parcomp/*) ;;
    *) cd "$GSH_HOME/parcomp" || return 1 ;;
  esac

  if ! [ -f d1.bak ] || ! [ -f d2.bak ] || ! [ -f d3.bak ] || ! [ -f d4.bak ]
  then
    echo "I cannot find the files... Did you maybe only do a dry-run?"
    return 1
  fi
  return 0
)

_mission_check
