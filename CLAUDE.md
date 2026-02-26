# IT-Classes — Slidev Lesson Decks

## Project Overview

Slidev-based slide decks for IT lessons. Each lesson lives under `lessons/<topic>/<NN>-<slug>/slides.md`.

## Tech Stack

- **Slidev** (`@slidev/cli`) — Markdown-to-slides engine
- **Theme:** `@slidev/theme-seriph`
- **Deploy:** GitHub Pages via GitHub Actions

## Project Structure

```
IT-Classes/
├── package.json
├── CLAUDE.md
├── .github/workflows/deploy.yml
├── scripts/build-all.sh
├── lessons/
│   ├── index.html              # Landing page (lists all decks)
│   └── <topic>/
│       └── <NN>-<slug>/slides.md
├── components/                 # Shared Slidev Vue components
│   └── Callout.vue             # Info/warning/tip/danger callout blocks
├── global-bottom.vue           # AstroLab logo on every slide
├── public/logo.png             # Logo asset
└── snippets/                   # Code snippets for slides
```

## Commands

```bash
# Dev a specific lesson (opens browser)
bun run dev lessons/<topic>/<NN>-<slug>/slides.md -- --open

# Build all lessons for deployment
bun run build

# Install dependencies
bun install
```

## Slide Conventions

- **Frontmatter** goes in the first slide (YAML between `---` markers at the top)
- Use `theme: seriph` in frontmatter
- Separate slides with `---`
- Use Slidev layouts: `cover`, `default`, `two-cols`, `image-right`, `section`, `center`, `fact`, `quote`, `end`
- Keep slides concise — bullet points, not paragraphs
- Use fenced code blocks with language tags for syntax highlighting
- Use `{monaco}` after the language tag for editable code blocks
- Use `<v-click>` or `v-click` directive for incremental reveals
- The AstroLab logo is automatically displayed bottom-right on all slides via `global-bottom.vue`
- Use `<Callout>` for highlighted blocks: `<Callout type="info">`, `warning`, `danger`, `tip`, `success`

## Lesson Naming

- `lessons/<topic>/<NN>-<slug>/slides.md`
- `<topic>` — lowercase topic name (e.g., `bash`, `python`, `networking`)
- `<NN>` — two-digit lesson number (e.g., `01`, `02`)
- `<slug>` — short kebab-case description (e.g., `intro`, `variables`, `file-permissions`)

## Git Conventions

Follow **Angular Commit Conventions** for all commit messages:

```
<type>(<scope>): <short summary>
```

**Types:** `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`

**Examples:**
- `feat(bash): add lesson 02 on variables`
- `fix(deploy): switch CI from npm to bun`
- `docs: update README with setup instructions`
- `ci: add GitHub Pages deploy workflow`

---

## Lesson Request Template

When asking Claude to create a new lesson, paste this template and fill in the details:

```
## New Lesson Request

**Topic:** <topic name, e.g., bash, python, networking>
**Lesson number:** <NN, e.g., 02>
**Slug:** <short-slug, e.g., variables>
**Title:** <Lesson title, e.g., "Variables & Environment">

**Audience:** <e.g., beginners, intermediate sysadmins>
**Duration:** <e.g., 45 min, 1 hour>

**Learning objectives:**
1. <objective 1>
2. <objective 2>
3. <objective 3>

**Key topics to cover:**
- <topic 1>
- <topic 2>
- <topic 3>

**Hands-on exercises:** <yes/no, describe if yes>
**Prerequisites:** <previous lessons or knowledge required>
**Notes:** <any special requests, examples to include, etc.>
```

### What Claude will do:

1. Create `lessons/<topic>/<NN>-<slug>/slides.md`
2. Update `lessons/index.html` to include the new deck
3. Verify the deck builds: `bun run build`
