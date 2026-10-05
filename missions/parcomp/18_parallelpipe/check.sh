#!/usr/bin/env sh

_mission_check() (
  case "$PWD/" in
    */parcomp/*) ;;
    *) cd "$GSH_HOME/parcomp" || return 1 ;;
  esac

  if ! [ -f res.txt ]
  then
    echo "I cannot find the res.txt file..."
    return 1
  fi

  ref=$GSH_TMP/parcomp_res.ref
  parallel -k -N1 --pipe ./lower.sh < d.txt > "$ref" 2>/dev/null

  if [ "$(wc -c < res.txt)" -ne "$(wc -c < "$ref")" ]
  then
    echo "The file exists but it does not seem to be correct size.. Maybe you run the command multiple times?"
    rm -f "$ref"
    return 1
  fi

  if ! cmp -s res.txt "$ref"
  then
    echo "The content of the file does not seem right. Did you use -k ?"
    rm -f "$ref"
    return 1
  fi
  rm -f "$ref"
  return 0
)

_mission_check
