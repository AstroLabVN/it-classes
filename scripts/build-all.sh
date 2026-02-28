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

# Shared resources that Slidev expects next to slides.md
SHARED_DIRS=("components" "public" "snippets" "styles")
SHARED_FILES=("global-bottom.vue")

# Find all slides.md under lessons/
find "$ROOT/lessons" -name 'slides.md' | sort | while read -r slide; do
  # Extract relative path: lessons/<topic>/<lesson>/slides.md
  rel="${slide#"$ROOT"/lessons/}"         # e.g. bash/01-intro/slides.md
  lesson_dir="$(dirname "$rel")"          # e.g. bash/01-intro
  abs_lesson_dir="$(dirname "$slide")"

  # Symlink shared dirs into the lesson directory
  for dir in "${SHARED_DIRS[@]}"; do
    [ -d "$ROOT/$dir" ] && ln -sfn "$ROOT/$dir" "$abs_lesson_dir/$dir"
  done
  for file in "${SHARED_FILES[@]}"; do
    [ -f "$ROOT/$file" ] && ln -sfn "$ROOT/$file" "$abs_lesson_dir/$file"
  done

  echo "==> Building $lesson_dir"
  ./node_modules/.bin/slidev build "$slide" \
    --base "/$REPO/$lesson_dir/" \
    --out "$DIST/$lesson_dir"

  # Clean up symlinks
  for dir in "${SHARED_DIRS[@]}"; do
    [ -L "$abs_lesson_dir/$dir" ] && rm "$abs_lesson_dir/$dir"
  done
  for file in "${SHARED_FILES[@]}"; do
    [ -L "$abs_lesson_dir/$file" ] && rm "$abs_lesson_dir/$file"
  done
done

# Copy landing page
cp "$ROOT/lessons/index.html" "$DIST/index.html"

echo ""
echo "Build complete! Output in dist/"
ls -R "$DIST" | head -30 || true
