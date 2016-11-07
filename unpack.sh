#!/bin/bash

## Source directories
. directories.txt

## Prepare media directories if it doesn't already exist
if [[ ! -d $DEFAULT_DIR ]]; then
  mkdir $DEFAULT_DIR
fi
if [[ ! -d $VIDEO_DIR ]]; then
  mkdir $VIDEO_DIR
fi
if [[ ! -d $AUDIO_DIR ]]; then
  mkdir $AUDIO_DIR
fi

## For each rar file in rar folder
for file in $RAR_DIR/*.rar; do
  ## Determine current file name
  FILE_NAME=$(basename -s .rar $file)

  ## Test archive and try to determine media type
  result=$(unrar t $file)
  if [[ $(echo $result | awk '/.avi/ || /.mkv/ || /.mpg/') ]]; then
    TARGET="$VIDEO_DIR/$FILE_NAME"
  elif [[ $(echo $result | awk '/.mp3/ || /.wma/ || /.cda/ || /.flac/') ]]; then
    TARGET="$AUDIO_DIR/$FILE_NAME"
  else
    TARGET="$DEFAULT_DIR/$FILE_NAME"
  fi

  ## Check that the target path doesn't already exist
  ## i.e. that the target hasn't already been unpacked
  if [[ ! -d "$TARGET" ]]; then
    ## Create target dir
    mkdir $TARGET

    ## Extract archive to target path
    unrar x $file $TARGET > /dev/null
  fi
done
