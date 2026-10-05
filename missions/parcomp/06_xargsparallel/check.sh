#!/usr/bin/env sh

_mission_check() (
  printf '%s ' "What is the 'real' duration, in seconds, of the command as reported by the time command?"
  read -r D

  case "$D" in
    4*) return 0 ;;
  esac
  echo "Are you sure? Make sure the syntax for running both at the same time is correct."
  return 1
)

_mission_check
