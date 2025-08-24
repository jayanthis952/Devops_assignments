#!/bin/bash

FILE="watch_this.txt"

[ ! -f "$FILE" ] && touch "$FILE"

LAST_MODIFIED=`stat -c %Y "$FILE"`

echo "===Watching $FILE for changes==="

while true; do
  CURRENT_MODIFIED=`stat -c %Y "$FILE"`
  if [ "$CURRENT_MODIFIED" != "$LAST_MODIFIED" ]; then
    echo "$FILE was modified at `date`"
    LAST_MODIFIED=$CURRENT_MODIFIED
  fi
  sleep 5
done

