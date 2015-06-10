#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

ANS=$(./GreatestCommonDivisor.bash 24 32)
if [ "$ANS" -eq 0 ] ; then
  exit 0
else
  exit 1
fi
