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

cleanup_symlinks() {
  local dir="$1"
  for d in "${SHARED_DIRS[@]}"; do
    [ -L "$dir/$d" ] && rm "$dir/$d" || true
  done
  for f in "${SHARED_FILES[@]}"; do
    [ -L "$dir/$f" ] && rm "$dir/$f" || true
  done
}

create_symlinks() {
  local dir="$1"
  # Remove stale symlinks first to avoid ln following them
  cleanup_symlinks "$dir"
  for d in "${SHARED_DIRS[@]}"; do
    [ -d "$ROOT/$d" ] && ln -sn "$ROOT/$d" "$dir/$d" || true
  done
  for f in "${SHARED_FILES[@]}"; do
    [ -f "$ROOT/$f" ] && ln -sn "$ROOT/$f" "$dir/$f" || true
  done
}

# Find all slides.md under lessons/
find "$ROOT/lessons" -name 'slides.md' | sort | while read -r slide; do
  # Extract relative path: lessons/<topic>/<lesson>/slides.md
  rel="${slide#"$ROOT"/lessons/}"         # e.g. bash/01-intro/slides.md
  lesson_dir="$(dirname "$rel")"          # e.g. bash/01-intro
  abs_lesson_dir="$(dirname "$slide")"

  create_symlinks "$abs_lesson_dir"

  echo "==> Building $lesson_dir"
  ./node_modules/.bin/slidev build "$slide" \
    --base "/$REPO/$lesson_dir/" \
    --out "$DIST/$lesson_dir" \
    || { cleanup_symlinks "$abs_lesson_dir"; exit 1; }

  cleanup_symlinks "$abs_lesson_dir"
done

# Copy landing page and logo
cp "$ROOT/lessons/index.html" "$DIST/index.html"
cp "$ROOT/public/logo.png" "$DIST/logo.png"

echo ""
echo "Build complete! Output in dist/"
ls -R "$DIST" | head -30 || true
