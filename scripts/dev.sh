#!/usr/bin/env bash
set -euo pipefail

# Dev a specific lesson with shared components symlinked.
# Usage: bash scripts/dev.sh lessons/<topic>/<NN>-<slug>/slides.md [extra slidev args...]

SLIDE="${1:?Usage: dev.sh <path-to-slides.md> [slidev args...]}"
shift
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
LESSON_DIR="$(dirname "$SLIDE")"

# Resolve to absolute if relative
[[ "$LESSON_DIR" != /* ]] && LESSON_DIR="$ROOT/$LESSON_DIR"
[[ "$SLIDE" != /* ]] && SLIDE="$ROOT/$SLIDE"

SHARED_DIRS=("components" "public" "snippets" "styles")
SHARED_FILES=("global-bottom.vue")

cleanup() {
  for dir in "${SHARED_DIRS[@]}"; do
    [ -L "$LESSON_DIR/$dir" ] && rm "$LESSON_DIR/$dir"
  done
  for file in "${SHARED_FILES[@]}"; do
    [ -L "$LESSON_DIR/$file" ] && rm "$LESSON_DIR/$file"
  done
}

trap cleanup EXIT

for dir in "${SHARED_DIRS[@]}"; do
  # Skip if lesson dir IS the root (avoids self-referencing symlinks)
  [ "$LESSON_DIR" = "$ROOT" ] && continue
  [ -d "$ROOT/$dir" ] && ln -sfn "$ROOT/$dir" "$LESSON_DIR/$dir"
done
for file in "${SHARED_FILES[@]}"; do
  [ "$LESSON_DIR" = "$ROOT" ] && continue
  [ -f "$ROOT/$file" ] && ln -sfn "$ROOT/$file" "$LESSON_DIR/$file"
done

exec "$ROOT/node_modules/.bin/slidev" "$SLIDE" "$@"
