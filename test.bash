#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}
chmod 711 ./GreatestCommonDivisor.bash
ANS=$(bash ./GreatestCommonDivisor.bash 24 32)
if [ "$ANS" -eq 8 ] ; then
  exit 0
else
  exit 1
fi
