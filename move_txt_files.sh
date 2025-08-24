#!/bin/bash

SOURCE_DIR="./project"
DEST_DIR="./project/logs"
PATTERN="*.txt"

mkdir -p "$DEST_DIR"

FILES=`find "$SOURCE_DIR" -type f -name "$PATTERN"`

for FILE in $FILES
do
  mv "$FILE" "$DEST_DIR"
  echo "Moved: $FILE to $DEST_DIR"
done

