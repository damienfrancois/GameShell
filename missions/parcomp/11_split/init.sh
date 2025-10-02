#!/usr/bin/env sh

pwd | grep -q parcomp || { cp -rp /CECI/proj/training/parcomp . && cd parcomp ; }
