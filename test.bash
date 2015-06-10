#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

bash ./GreatestCommonDivisor.bash 24 32
exit 0
