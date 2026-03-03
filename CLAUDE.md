# IT-Classes — Slidev Lesson Decks

## Project Overview

Slidev-based slide decks for IT lessons. Each lesson lives under `lessons/<topic>/<NN>-<slug>/slides.md`.

## Tech Stack

- **Slidev** (`@slidev/cli`) — Markdown-to-slides engine
- **Theme:** `slidev-theme-light-icons`
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
│   ├── Callout.vue             # Callout blocks (info/warning/danger/tip/success/exercise)
│   ├── Title.vue               # Large heading for cover slides
│   ├── Subtitle.vue            # Bold blue section heading
│   ├── Spacer.vue              # Vertical spacing
│   └── Result.vue              # Grey result/output box
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

### Frontmatter

Every lesson must start with this standard frontmatter:

```yaml
---
theme: light-icons
colorSchema: light
drawings:
  persist: false
fonts:
  mono: Hack
layout: center
class: text-center
---
```

### General Rules

- Separate slides with `---`
- Keep slides concise — bullet points, not paragraphs
- Use fenced code blocks with language tags for syntax highlighting
- Use `{monaco}` after the language tag for editable code blocks
- The AstroLab logo is automatically displayed bottom-right on all slides via `global-bottom.vue`
- Slidev layouts used: `center` (cover slides, section dividers), `default` (content slides)

### Cover Slide Pattern

The first slide after frontmatter should use the `<Title>` component:

```md
<Title>Lesson Title Here</Title>

<Spacer />

Subtitle or short description
```

### Section Divider Pattern

Use a `center` layout slide with `<Title>` to break lessons into sections:

```md
---
layout: center
class: text-center
---

<Title>Section Name</Title>
```

## Components

**Always use components instead of raw HTML.** Components ensure visual consistency across all lessons and are easier to maintain.

### `<Title>` — Cover/section headings

Large `<h1>` heading. Use on cover slides and section dividers.

| Prop | Default | Description |
|------|---------|-------------|
| `size` | `'3em'` | Font size |
| `mb` | `'0'` | Margin bottom |

```html
<Title>Introduction to Bash</Title>
<Title size="2em" mb="1rem">Smaller Title</Title>
```

### `<Subtitle>` — Section labels

Bold blue (`#60aace`) label for sections or columns.

| Prop | Default | Description |
|------|---------|-------------|
| `size` | `'md'` | `'md'` or `'sm'` |

```html
<Subtitle>Section Name</Subtitle>
<Subtitle size="sm">Small Label</Subtitle>
```

### `<Callout>` — Highlighted blocks

Colored callout blocks with icon. Use for tips, warnings, exercises, etc.

| Prop | Default | Description |
|------|---------|-------------|
| `type` | `'info'` | `info`, `warning`, `danger`, `tip`, `success`, `exercise` |
| `mt` | `'2rem'` | Margin top |
| `mb` | `null` | Margin bottom |
| `pt` | `null` | Padding top |
| `pb` | `null` | Padding bottom |

```html
<Callout type="info">This is an informational note.</Callout>
<Callout type="exercise" mt="1rem">Try running `ls -la` in your terminal.</Callout>
<Callout type="warning">Be careful with `rm -rf`!</Callout>
```

### `<Spacer>` — Vertical spacing

Adds vertical space between elements.

| Prop | Default | Description |
|------|---------|-------------|
| `size` | `'1rem'` | Height |

```html
<Spacer />
<Spacer size="2rem" />
```

### `<Result>` — Output display

Grey rounded box for showing command output or results.

| Prop | Default | Description |
|------|---------|-------------|
| `size` | `'0.85em'` | Font size |

```html
<Result>
drwxr-xr-x  5 user user 4096 Mar  1 10:00 Documents
</Result>
```

### `<Cols>` — Multi-column layouts

Grid layout for side-by-side content. **Always use this instead of raw Tailwind grid classes.**

| Prop | Default | Description |
|------|---------|-------------|
| `cols` | `2` | Number of columns (`2`, `3`, etc.) |
| `gap` | `4` | Gap size (Tailwind spacing scale) |

```html
<Cols>
<div>

Left column content

</div>
<div>

Right column content

</div>
</Cols>
```

Three columns: `<Cols cols="3">`. Wider gap: `<Cols gap="8">`.

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

**Rules:**
- NEVER mention Claude or add Co-Authored-By lines in commits
- If found, remove them

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
