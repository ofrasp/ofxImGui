#!/usr/bin/env bash
set -euo pipefail
OF="${OF_ROOT:-/mnt/d/repos/ofRasp/openFrameworks}"
export OF_ROOT="$OF"
BASE="$(cd "$(dirname "$0")/.." && pwd)"
EXAMPLES=(
  example-simple
  example-demo
  example-debug
  example-helpers
  example-fonts
  example-advanced
  example-sharedcontext
  example-multiwindow
  example-dockingandviewports
  example-ImGuizmo
)
for d in "${EXAMPLES[@]}"; do
  echo "========== ${d} =========="
  make -C "${BASE}/${d}" -j4
done
echo "ALL EXAMPLES BUILT OK"
