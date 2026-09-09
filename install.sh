#!/usr/bin/env bash
# install.sh — Local install (symlink) for development/contributors.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
EXECUTORS_DIR="$SCRIPT_DIR/executors"
BIN_DIR="$HOME/.local/bin"

echo "Installing revilofr-executors scripts (local/dev mode)..."

mkdir -p "$BIN_DIR"

for dir in "$EXECUTORS_DIR"/*/; do
  name="$(basename "$dir")"
  script="$dir$name"
  [ -f "$script" ] || continue
  chmod +x "$script"
  ln -sf "$script" "$BIN_DIR/$name"
  echo "  ✅ Symlink: $BIN_DIR/$name → $script"
done

echo ""
echo "Done."
echo "  → Run ./prerequisites.sh to check each executor's dependencies."
echo "  → Add each script as an active command in the GNOME Executor extension."
