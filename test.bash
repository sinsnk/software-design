#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

run_greatestcommondivisor_ok() {
  ANS=$(bash ./GreatestCommonDivisor.bash $1 $2)
  if [ "$ANS" -eq $3 ] ; then
    exit 0
  else
    exit 1
  fi
}
run_greatestcommondivisor_ng() {
  ANS=$(bash ./GreatestCommonDivisor.bash $1 $2)
  if [ "$ANS" -eq $3 ] ; then
    exit 1
  else
    exit 0
  fi
}
# 正
run_greatestcommondivisor_ok 24 32 8
run_greatestcommondivisor_ok 125 65 5

# 誤
run_greatestcommondivisor_ng 125 65 1
