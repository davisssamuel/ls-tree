#!/usr/bin/env bash

if [[ $(command -v tree) ]]; then

  if   [[ $# -lt 1 ]]; then
    tree -L 1
  elif [[ $# -eq 1 ]]; then
    tree -L $1
  else
    echo "Error: too many arguments" 
  fi

else
  echo "Error: tree is not installed; install tree https://oldmanprogrammer.net/source.php?dir=projects/tree"
fi