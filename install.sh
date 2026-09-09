#!/usr/bin/env bash
# install.sh — Local install (symlink) for development/contributors.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_SRC_DIR="$SCRIPT_DIR/bin"
BIN_DIR="$HOME/.local/bin"

echo "Installing gnome-executors scripts (local/dev mode)..."

mkdir -p "$BIN_DIR"

for script in "$BIN_SRC_DIR"/*; do
  name="$(basename "$script")"
  chmod +x "$script"
  ln -sf "$script" "$BIN_DIR/$name"
  echo "  ✅ Symlink: $BIN_DIR/$name → $script"
done

echo ""
echo "Done."
echo "  → Add each script as an active command in the GNOME Executor extension."
