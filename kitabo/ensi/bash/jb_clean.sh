#!/bin/bash

# Define target directories
dirs=(
  pdfs
  figures
  media
  testbin
  nis
  myhtml
  dedication
  python
  ai
  r
  stata
  bash
  xml
)

# Create directories and copy contents if any
for d in "${dirs[@]}"; do
  mkdir -p "_build/html/$d"
  if [ -d "$d" ] && [ "$(ls -A "$d")" ]; then
    cp -r "$d/"* "_build/html/$d/" 2>/dev/null
  fi
done
