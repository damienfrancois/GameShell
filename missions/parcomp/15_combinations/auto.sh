#!/usr/bin/env sh

parallel --link cp {1} {2} ::: d1.txt d2.txt d3.txt d4.txt ::: backup.a backup.b backup.c backup.d

gsh check
