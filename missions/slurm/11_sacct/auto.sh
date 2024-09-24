#!/usr/bin/env sh

history -s "sacct --format Jobid%-15,State,ReqMem,MaxRSS,Timelimit,AllocCPUS,CPUTime,TotalCPU"
history -s "gsh check"
history -w

gsh check
