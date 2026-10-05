#!/usr/bin/env sh

_mission_check() (
  if ! . fc-lnr.sh 50 | grep -Eq 'xargs[[:blank:]]+-I[[:blank:]]*\{\}[[:blank:]]+\./lower\.sh[[:blank:]]+\{\}[[:blank:]]+\{\}\.res'
  then
    echo "Hum the command does not see right. Can you please try again?"
    return 1
  fi
  return 0
)

_mission_check
