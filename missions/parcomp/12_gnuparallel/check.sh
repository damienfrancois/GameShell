#!/usr/bin/env sh

_mission_check() (
  if ! command -v parallel >/dev/null 2>&1
  then
    echo "Hum. The 'parallel' command cannot be found. Is the module properly loaded (or GNU parallel installed)?"
    return 1
  fi
  # the "moreutils" package (Debian / Ubuntu / Homebrew) provides an
  # unrelated command also called "parallel"
  if ! parallel --version 2>/dev/null | grep -q "GNU parallel"
  then
    echo "Hum. The 'parallel' command found ($(command -v parallel)) is not GNU parallel."
    echo "It probably comes from the 'moreutils' package."
    return 1
  fi
  return 0
)

_mission_check
