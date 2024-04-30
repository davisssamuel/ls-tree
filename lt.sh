#!/usr/bin/env bash

if [[ $# -lt 2 ]]; then
  tree -L 1
elif [[ $# -ge 2 ]] && [[ $1 =~ ^[0-9]$ ]]; then 
  tree -L $1
elif [[ ! $1 =~ ^[0-9]$ ]]; then
  echo "lt: tree level must be an integer from 0-9"
else
  echo "lt: tree is not installed https://github.com/Old-Man-Programmer/tree"
fi