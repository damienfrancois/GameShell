#!/usr/bin/env sh

# "split --filter" requires GNU split. On macOS, Homebrew's coreutils
# installs it as "gsplit".
if ! split --version >/dev/null 2>&1
then
  if command -v gsplit >/dev/null 2>&1
  then
    alias split=gsplit
  else
    echo "Mission $MISSION_NAME requires GNU split (the 'split' command of GNU coreutils)." >&2
    echo "On macOS, install it with 'brew install coreutils'." >&2
    echo "This mission is skipped." >&2
    return 1
  fi
fi

# restore the working copy of the sample if needed, and go there
parcomp_workdir || return 1
case "$PWD/" in
  */parcomp/*) ;;
  *) cd "$GSH_HOME/parcomp" ;;
esac
