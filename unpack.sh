#!/bin/bash

## Source directories
. directories.txt

## Prepare media directory if it doesn't already exist
if [[ ! -d $UNPACK_DIR ]]; then
  mkdir $UNPACK_DIR
fi

## For each rar file in rar folder
for file in $RAR_DIR/*.rar; do
  ## Determine current file name
  FILE_NAME=$(basename -s .rar $file)

  ## Create target path label
  TARGET="$UNPACK_DIR/$FILE_NAME"

  ## Check that the target path doesn't already exist
  ## i.e. that the target hasn't already been unpacked
  if [[ ! -d "$TARGET" ]]; then
    ## Create target dir
    mkdir $TARGET

    ## Extract archive to target path
    unrar x $file $TARGET > /dev/null
  fi
done
