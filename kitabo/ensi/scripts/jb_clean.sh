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
)

# Create directories under _build/html
for d in "${dirs[@]}"; do
  mkdir -p "_build/html/$d"
  cp -r "$d/"* "_build/html/$d/" 2>/dev/null
done

