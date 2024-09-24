#!/usr/bin/env bash

J=$(squeue -t PD | grep -v $USER | tail -1 | awk '{print $1}')
scancel $J |& gsh check
