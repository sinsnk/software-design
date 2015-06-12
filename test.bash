#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

# 正
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

# 誤
ANS=$(bash ./GreatestCommonDivisor.bash 125 65)
if [ "$ANS" -eq 1 ] ; then
  exit 1
else
  exit 0
fi
# 変な値
# bash ./GreatestCommonDivisor.bash hoge fuga
