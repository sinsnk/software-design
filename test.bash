#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

run_greatestcommondivisor() {
  ANS=$(bash ./GreatestCommonDivisor.bash $1 $2)
  if [ "$ANS" -eq $3 ] ; then
    exit 0
  else
    exit 1
  fi
}

# 正
run_greatestcommondivisor 24 32 8

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
