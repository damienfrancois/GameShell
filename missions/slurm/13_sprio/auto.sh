#!/usr/bin/env sh

PART=$(sprio -h -w -o%F)
echo ${PART} | gsh check
