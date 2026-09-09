#!/usr/bin/env bash
# prerequisites.sh — run every executor's own prerequisites.sh in turn.
set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
status=0

for dir in "$SCRIPT_DIR"/executors/*/; do
  name="$(basename "$dir")"
  echo "== $name =="
  if [ -x "$dir/prerequisites.sh" ]; then
    "$dir/prerequisites.sh" || status=1
  else
    echo "  (no prerequisites.sh, skipping)"
  fi
  echo ""
done

exit "$status"
