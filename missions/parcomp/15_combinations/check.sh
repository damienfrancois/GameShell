#!/usr/bin/env sh

_mission_check() (
  case "$PWD/" in
    */parcomp/*) ;;
    *) cd "$GSH_HOME/parcomp" || return 1 ;;
  esac

  if . fc-lnr.sh 3 | grep -q '^cp[[:blank:]]'
  then
    echo "Hum... It looks like you used the cp command directly? Please try with the parallel command."
    return 1
  fi

  if ! [ -f backup.a ] || ! [ -f backup.b ] || ! [ -f backup.c ] || ! [ -f backup.d ]
  then
    echo "I cannot find the files... Did you maybe only do a dry-run?"
    return 1
  fi

  if ! cmp -s d1.txt backup.a || ! cmp -s d2.txt backup.b || ! cmp -s d3.txt backup.c || ! cmp -s d4.txt backup.d
  then
    echo "The files exist, but they are not copies of the right files. Did you use --link?"
    return 1
  fi
  return 0
)

_mission_check
