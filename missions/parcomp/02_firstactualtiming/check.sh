#!/usr/bin/env sh

_mission_check() (
  printf '%s ' "What is the 'real' duration, in seconds, of the command as reported by the time command?"
  read -r D

  case "$D" in
    4*) return 0 ;;
  esac
  echo "Are you sure? Look carefully at the output of time."
  return 1
)

_mission_check
