#!/bin/bash

if [ ! -n "$1" ]; then
  echo 
elif [ $# \> 1 ]; then
  echo "Параметр должен быть только один"
else
  if [[ "$1" =~ [[:alpha:]] ]]; then
  echo "$1"
  elif [[ "$1" =~ [[:digit:]] ]]; then
  echo "Параметр должен быть текстовый"
  fi
fi
