#!/usr/bin/env sh

parallel --colsep , --header : echo touch expriment.{Letter}_{Number}.txt :::: experiments.csv

gsh check
