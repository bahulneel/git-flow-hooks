#!/usr/bin/env bash

ROOT_DIR=$(git rev-parse --show-toplevel 2> /dev/null)
NPM=`which npm`

if [ -x "$NPM" ]; then
  if [ -f "$ROOT_DIR/package.json" ]; then
    npm --no-git-tag-version version $VERSION
    git add package.json
    git add package-lock.json
  fi
fi
