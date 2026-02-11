#!/bin/bash
# Get the git root directory if in a git repo, otherwise return current path

CURRENT_PATH="${1:-.}"
GIT_ROOT=$(cd "$CURRENT_PATH" 2>/dev/null && git rev-parse --show-toplevel 2>/dev/null)

if [ -n "$GIT_ROOT" ]; then
  echo "$GIT_ROOT"
else
  echo "$CURRENT_PATH"
fi
