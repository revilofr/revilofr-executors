#!/usr/bin/env bash
# prerequisites.sh — check that the Jabra 'jabridge' CLI bridge is available.
set -euo pipefail

if command -v jabridge >/dev/null 2>&1; then
    echo "  ✓  jabridge is installed ($(command -v jabridge))"
    exit 0
fi

echo "  ✗  jabridge is not installed."
echo "  → Install Jabra Direct: https://www.jabra.com/software-and-services/jabra-direct"
exit 1
