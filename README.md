# IT-Classes

Slidev-based slide decks for IT lessons.

**Live site:** https://astrolabvn.github.io/it-classes/

## Prerequisites

- [Bun](https://bun.sh) (`curl -fsSL https://bun.sh/install | bash`)

## Setup

```bash
git clone git@github.com:AstroLabVN/it-classes.git
cd it-classes
bun install
```

## Development

Open a lesson in dev mode with hot reload:

```bash
bun run dev -- lessons/bash/01-intro/slides.md --open
```

This starts a local server at http://localhost:3030.

### Slidev keyboard shortcuts (in browser)

| Key | Action |
|-----|--------|
| `Space` / `Right` | Next slide/click |
| `Left` | Previous slide |
| `o` | Slides overview |
| `d` | Toggle dark mode |
| `f` | Fullscreen |

## Build

Build all lessons for production:

```bash
bun run build
```

Output goes to `dist/`. Each lesson gets its own subdirectory.

## Project Structure

```
lessons/
  index.html                    # Landing page
  <topic>/
    <NN>-<slug>/slides.md       # One deck per lesson
components/                     # Shared Slidev Vue components
snippets/                       # Code snippets for slides
scripts/build-all.sh            # Discovers & builds all decks
.github/workflows/deploy.yml    # GitHub Pages deployment
```

## Adding a New Lesson

1. Create `lessons/<topic>/<NN>-<slug>/slides.md`
2. Add a link in `lessons/index.html`
3. Test locally: `bun run dev -- lessons/<topic>/<NN>-<slug>/slides.md --open`
4. Push to `main` — GitHub Actions deploys automatically

## Deployment

Pushes to `main` trigger the GitHub Actions workflow which builds all decks and deploys to GitHub Pages. CI uses npm (not bun) for compatibility.
