#!/usr/bin/env sh

parallel --colsep , --header : touch experiment.{Letter}_{Number}.txt :::: experiments.csv

gsh check
