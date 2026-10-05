#!/usr/bin/env sh

_mission_check() (
  printf '%s ' "What is the 'real' duration, in seconds, of the command as reported by the time command?"
  read -r D

  case "$D" in
    12*)
      echo "Hum it seems you bumped into a bug in Make."
      echo "One of the steps in the second stage did not run at the same time as the others"
      echo "which explains why you observe 12 seconds runtime. But actually, it should be 8."
      echo "Please try again (with make -B -j4)"
      return 1
      ;;
    8*)
      return 0
      ;;
  esac
  echo "Are you sure? The timing should be a bit above 8."
  return 1
)

_mission_check
