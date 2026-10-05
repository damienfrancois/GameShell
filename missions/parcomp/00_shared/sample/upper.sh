#!/bin/bash
# 
# Usage:
#    ./upper.sh [input_file [output_file]]
#
# Make actg chars upper case with extra processing.
#
# If output_file is not defined, stdout is used
# If input_file and output_file are not defined, stdin and stdout are used.

while read line; do
sleep 1
echo $line | tr actg ACTG  >> ${2-/dev/stdout}
done < ${1-/dev/stdin}

