#!/usr/bin/env bash
# prerequisites.sh — check (and install, on Debian/Ubuntu) upower.
set -euo pipefail

if command -v upower >/dev/null 2>&1; then
    echo "  ✓  upower is installed ($(command -v upower))"
    exit 0
fi

echo "  ✗  upower is not installed."

if command -v apt-get >/dev/null 2>&1; then
    echo "  → Installing upower via apt-get (sudo required)..."
    sudo apt-get update && sudo apt-get install -y upower
else
    echo "  → Please install 'upower' using your distribution's package manager."
    exit 1
fi
