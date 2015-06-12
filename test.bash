#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}
ANS=$(bash ./GreatestCommonDivisor.bash 24 32)
if [ "$ANS" -eq 8 ] ; then
  exit 0
else
  exit 1
fi
ANS=$(bash ./GreatestCommonDivisor.bash 125 65)
if [ "$ANS" -eq 5 ] ; then
  exit 0
else
  exit 1
fi

# 変な値
# bash ./GreatestCommonDivisor.bash hoge fuga
