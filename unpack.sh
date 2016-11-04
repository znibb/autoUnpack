#!/bin/bash
. directories.txt

for file in $RAR_DIR/*.rar; do
  FILE_NAME=$(basename -s .rar $file)
  TARGET="$UNPACK_DIR/$FILE_NAME"

  if [[ ! -d "$TARGET" ]]; then
    mkdir $TARGET
    unrar x $file $TARGET > /dev/null
  fi
done
