#!/bin/bash

PATH='/home/something/path/repo/master';

CHANGES=$(git -C $PATH status --porcelain | wc -l)

exit;
if [ "$CHANGES" -eq 0 ]; then
  echo "OK - there are no local modifications to this branch"
  exit 0
fi

echo "CRITICAL - there are $CHANGES differences to the branch $PATH"
exit 2
