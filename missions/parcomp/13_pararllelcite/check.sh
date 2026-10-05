#!/usr/bin/env sh

_mission_check() (
  # Debian / Ubuntu patch GNU parallel to remove the citation notice and the
  # --citation option: there is nothing to agree to
  if ! parallel --version 2>/dev/null | grep -q "parallel --citation"
  then
    return 0
  fi

  if ! [ -f "${PARALLEL_HOME:-$HOME/.parallel}/will-cite" ]
  then
    echo "Have you run parallel --citation? It seems not."
    return 1
  fi
  return 0
)

_mission_check
