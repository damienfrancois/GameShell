#!/usr/bin/env sh

_mission_check() (
  case "$PWD/" in
    */parcomp/*) ;;
    *) cd "$GSH_HOME/parcomp" || return 1 ;;
  esac

  if [ -f tmp.fifo ]
  then
    echo "Hum, the tmp.fifo file that was found is a regular file, not a fifo file. Please remove it and try again"
    return 1
  fi
  if ! [ -p tmp.fifo ]
  then
    echo "No fifo file tmp.fifo was found"
    return 1
  fi

  printf '%s ' "What is the 'real' duration, in seconds, of the command as reported by the time command?"
  read -r D
  case "$D" in
    5*) return 0 ;;
  esac
  echo "Are you sure? The timing should be a bit above 4."
  return 1
)

_mission_check
