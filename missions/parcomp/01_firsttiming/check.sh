#!/usr/bin/env sh

_mission_check() (
  if ! . fc-lnr.sh 50 | grep -Eq 'lower\.sh[[:blank:]]+(\./)?d\.txt'
  then
    echo "Hum the history of your terminal does not show the lower.sh command. Please try again."
    return 1
  fi
  return 0
)

_mission_check
