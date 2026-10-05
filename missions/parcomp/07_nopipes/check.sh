#!/usr/bin/env sh

_mission_check() (
  case "$PWD/" in
    */parcomp/*) ;;
    *) cd "$GSH_HOME/parcomp" || return 1 ;;
  esac

  if ! [ -f res.txt ]
  then
    echo "The result file res.txt is nowhere to be found??"
    return 1
  fi
  if ! [ -f tmp.txt ]
  then
    echo "The intermediate file tmp.txt is nowhere to be found??"
    return 1
  fi

  printf '%s ' "What is the 'real' duration, in seconds, of the command as reported by the time command?"
  read -r D
  case "$D" in
    8*) return 0 ;;
  esac
  echo "Are you sure? Make sure the intermediate file has been removed before running the command?"
  return 1
)

_mission_check
