#!/usr/bin/env bash
set -euo pipefail

# Build all Slidev lesson decks.
# Usage: bash scripts/build-all.sh <repo-name>
# Example: bash scripts/build-all.sh it-classes

REPO="${1:?Usage: build-all.sh <repo-name>}"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DIST="$ROOT/dist"

rm -rf "$DIST"
mkdir -p "$DIST"

# Find all slides.md under lessons/
find "$ROOT/lessons" -name 'slides.md' | sort | while read -r slide; do
  # Extract relative path: lessons/<topic>/<lesson>/slides.md
  rel="${slide#"$ROOT"/lessons/}"         # e.g. bash/01-intro/slides.md
  lesson_dir="$(dirname "$rel")"          # e.g. bash/01-intro

  echo "==> Building $lesson_dir"
  ./node_modules/.bin/slidev build "$slide" \
    --base "/$REPO/$lesson_dir/" \
    --out "$DIST/$lesson_dir"
done

# Copy landing page
cp "$ROOT/lessons/index.html" "$DIST/index.html"

echo ""
echo "Build complete! Output in dist/"
ls -R "$DIST" | head -30
