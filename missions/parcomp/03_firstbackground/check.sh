#!/usr/bin/env sh

_mission_check() (
  if ! . fc-lnr.sh 50 | grep 'lower\.sh' | grep -q '&$'
  then
    echo "It seems the command you ran did not end with an ampersand?"
    return 1
  fi
  return 0
)

_mission_check
