#!/usr/bin/env sh

_mission_check() (
  case "$PWD/" in
    */parcomp/*) ;;
    *) cd "$GSH_HOME/parcomp" || return 1 ;;
  esac

  if . fc-lnr.sh 3 | grep -q '^touch[[:blank:]]'
  then
    echo "Hum... It looks like you used the touch command directly? Please try with the parallel command."
    return 1
  fi

  if ! [ -f experiment.A_1.txt ] || ! [ -f experiment.B_2.txt ] || ! [ -f experiment.A_5.txt ] || ! [ -f experiment.C_4.txt ]
  then
    echo "I cannot find all the files... Did you maybe only do a dry-run?"
    return 1
  fi
  return 0
)

_mission_check
