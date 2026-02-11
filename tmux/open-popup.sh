#!/bin/bash
# Open a popup with proper working directory
# Usage: open-popup.sh <prefix> [command]
# prefix: type of popup (pop, open, git)
# command: optional command to run in the session (default: interactive shell)

PREFIX="${1:-pop}"
CMD="${2:-}"

# Get the current working directory (from popup's -d flag)
PROJECT_DIR="${PWD:-.}"

RESOLVED_DIR=$(bash ~/.config/tmux/get-project-dir.sh "$PROJECT_DIR" 2>/dev/null)
if [ -n "$RESOLVED_DIR" ]; then
  PROJECT_DIR="$RESOLVED_DIR"
fi

# Generate session ID
SESSION_ID=$(echo "$PROJECT_DIR" | md5sum | awk '{print $1}')
SESSION_NAME="${PREFIX}-${SESSION_ID}"

# Create or attach to session
if ! tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  if [ -n "$CMD" ]; then
    tmux new-session -d -s "$SESSION_NAME" -c "$PROJECT_DIR" "$CMD"
  else
    tmux new-session -d -s "$SESSION_NAME" -c "$PROJECT_DIR"
  fi
  tmux set-option -t "$SESSION_NAME" status off
fi

tmux attach-session -t "$SESSION_NAME"
