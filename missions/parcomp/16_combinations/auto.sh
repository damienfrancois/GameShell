#!/usr/bin/env sh

parallel cp {1} {2} ::: d?.txt ::: backup.{a..d}

gsh check
