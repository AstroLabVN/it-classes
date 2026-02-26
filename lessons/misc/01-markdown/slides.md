---
theme: seriph
title: "Learn Markdown"
info: |
  ## Learn Markdown
  A complete guide to writing with Markdown syntax.
class: text-center
drawings:
  persist: false
transition: slide-left
mdc: true
---

# Learn Markdown

Write formatted documents with plain text

<div class="abs-br m-6 flex gap-2">
  <span class="text-sm opacity-50">AstroLab IT Classes</span>
</div>

---

# What is Markdown?

<v-clicks>

- A **lightweight markup language** created by John Gruber in 2004
- Write formatted text using **plain text syntax**
- Easy to read even **without rendering**
- Used everywhere: GitHub, documentation, blogs, notes, chat apps...
- File extension: `.md` or `.markdown`

</v-clicks>

---

# Paragraphs

Simply write text. Separate paragraphs with a **blank line**.

````md
This is the first paragraph.

This is the second paragraph.
````

<v-click>

**Result:**

This is the first paragraph.

This is the second paragraph.

</v-click>

---

# Headings

Use `#` symbols to create headings (1 to 6 levels).

````md
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
````

<v-click>

> The number of `#` determines the heading level.
> `# Title` is the biggest, `###### Title` is the smallest.

</v-click>

---

# Alternative Heading Syntax

You can also underline text with `=` or `-`:

````md
Heading 1
=========

Heading 2
---------
````

<v-click>

This produces the same result as `#` and `##`.

> Prefer the `#` syntax — it's more common and easier to read.

</v-click>

---

# Text Formatting — Emphasis

<div class="grid grid-cols-2 gap-8">
<div>

### Syntax

````md
*italic* or _italic_

**bold** or __bold__

***bold and italic***

~~strikethrough~~
````

</div>
<div>

<v-click>

### Result

*italic* or _italic_

**bold** or __bold__

***bold and italic***

~~strikethrough~~

</v-click>
</div>
</div>

---

# Unordered Lists

Use `-`, `*`, or `+` to create bullet points. Indent for nested lists.

````md
- First item
- Second item
  - Nested item
  - Another nested item
- Third item
````

<v-click>

**Result:**

- First item
- Second item
  - Nested item
  - Another nested item
- Third item

</v-click>

---

# Ordered Lists

Use numbers followed by a period. The actual numbers don't matter — Markdown renumbers automatically.

````md
1. First item
2. Second item
3. Third item
   1. Sub-item A
   2. Sub-item B
````

<v-click>

**Result:**

1. First item
2. Second item
3. Third item
   1. Sub-item A
   2. Sub-item B

</v-click>

---

# Task Lists

A GitHub Flavored Markdown extension. Great for checklists.

````md
- [x] Write the introduction
- [x] Add code examples
- [ ] Proofread the document
- [ ] Submit for review
````

<v-click>

**Result:**

- [x] Write the introduction
- [x] Add code examples
- [ ] Proofread the document
- [ ] Submit for review

</v-click>

---

# Links

<div class="grid grid-cols-2 gap-8">
<div>

### Inline links

````md
[Click here](https://example.com)

[With title](https://example.com "My title")
````

</div>
<div>

<v-click>

### Reference links

````md
Read [the docs][1] or [this guide][docs].

[1]: https://example.com
[docs]: https://example.com/guide
````

> Useful when you reuse the same URL multiple times.

</v-click>
</div>
</div>

<v-click>

### Auto-links

````md
https://example.com
````

> Raw URLs are automatically converted to clickable links (on GitHub, etc.)

</v-click>

---

# Images

Same syntax as links, but with a `!` prefix.

````md
![Alt text](https://via.placeholder.com/300x150)

![Logo](./images/logo.png "Optional title")
````

<v-click>

> **Alt text** describes the image for accessibility and is shown if the image fails to load.

</v-click>

<v-click>

### Image with link

````md
[![Alt text](image.png)](https://example.com)
````

</v-click>

---

# Blockquotes

Use `>` at the start of a line. Nest them with `>>`.

````md
> This is a blockquote.
>
> It can span multiple lines.

>> This is a nested blockquote.
````

<v-click>

**Result:**

> This is a blockquote.
>
> It can span multiple lines.

>> This is a nested blockquote.

</v-click>

---

# Horizontal Rules

Create a visual separator with three or more `-`, `*`, or `_`.

````md
---

***

___
````

<v-click>

> All three produce the same horizontal line separator.

</v-click>

---

# Inline Code

Wrap text in backticks to format it as code.

````md
Use the `print()` function to display output.

The `<div>` tag is a block element.
````

<v-click>

**Result:**

Use the `print()` function to display output.

The `<div>` tag is a block element.

</v-click>

---

# Code Blocks

Use triple backticks with an optional language for syntax highlighting.

````md
```python
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
```
````

<v-click>

**Result:**

```python
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
```

</v-click>

---

# Code Blocks — More Languages

<div class="grid grid-cols-2 gap-8">
<div>

### JavaScript

```js
const sum = (a, b) => a + b;
console.log(sum(2, 3));
```

### Bash

```bash
echo "Hello, World!"
ls -la /home
```

</div>
<div>

### HTML

```html
<h1>Welcome</h1>
<p>This is a paragraph.</p>
```

### JSON

```json
{
  "name": "Alice",
  "age": 25
}
```

</div>
</div>

---

# Tables

Use pipes `|` and dashes `-` to create tables.

````md
| Name    | Age | City     |
|---------|-----|----------|
| Alice   | 25  | Paris    |
| Bob     | 30  | London   |
| Charlie | 28  | Berlin   |
````

<v-click>

**Result:**

| Name    | Age | City     |
|---------|-----|----------|
| Alice   | 25  | Paris    |
| Bob     | 30  | London   |
| Charlie | 28  | Berlin   |

</v-click>

---

# Tables — Column Alignment

Use colons `:` in the separator row to control alignment.

````md
| Left     | Center   | Right    |
|:---------|:--------:|---------:|
| text     | text     | text     |
| left     | center   | right    |
````

<v-click>

**Result:**

| Left     | Center   | Right    |
|:---------|:--------:|---------:|
| text     | text     | text     |
| left     | center   | right    |

</v-click>

<v-click>

> - `:---` = left aligned (default)
> - `:---:` = center aligned
> - `---:` = right aligned

</v-click>

---

# Escaping Characters

Use a backslash `\` to display special characters literally.

````md
\* This is not italic \*

\# This is not a heading

Use a \[bracket\] literally
````

<v-click>

**Result:**

\* This is not italic \*

\# This is not a heading

Use a \[bracket\] literally

</v-click>

---
layout: section
---

# Markdown is Everywhere

---

# Where is Markdown Used?

<v-clicks>

- **GitHub / GitLab** — README files, issues, pull requests, comments, wikis
- **Documentation** — Static site generators (MkDocs, Docusaurus, VitePress)
- **Note-taking** — Obsidian, Notion, Logseq, Joplin
- **Chat & communication** — Slack, Discord, Teams, Reddit
- **Blogs & CMS** — Hugo, Jekyll, Ghost, DEV.to
- **Project management** — Trello, Linear, Jira
- **This presentation!** — Built with Slidev, written entirely in Markdown

</v-clicks>

---

# Why Learn Markdown?

<v-clicks>

- **Universal** — works across hundreds of tools and platforms
- **Portable** — plain text files that will never become obsolete
- **Fast** — format documents without leaving the keyboard
- **Version-control friendly** — diffs are clean and meaningful
- **Simple** — you can learn the basics in minutes

</v-clicks>

<v-click>

> If you work in tech, you **will** use Markdown. Mastering it now saves you time forever.

</v-click>

---
layout: section
---

# Exercises

---

# Exercise 1 — Personal Profile

Create a file called `profile.md` that contains:

<v-clicks>

- A **level 1 heading** with your name
- A **short paragraph** introducing yourself (2-3 sentences)
- A **level 2 heading** "Skills" with an **unordered list** of 5 skills
- A **level 2 heading** "Education" with an **ordered list** of your degrees
- Make at least one word **bold** and one word *italic*

</v-clicks>

---

# Exercise 2 — Project README

Create a `README.md` for a fictional project:

<v-clicks>

- A **level 1 heading** with the project name
- A **blockquote** with a one-line project description
- A **level 2 heading** "Installation" with a **code block** (bash commands)
- A **level 2 heading** "Usage" with an **inline code** example
- A **level 2 heading** "Team" with a **table** (Name, Role, Contact)
- A **link** to a fictional website
- A **horizontal rule** before a footer line

</v-clicks>

---

# Exercise 3 — Complete Document

Create a `cheatsheet.md` using **every element** you've learned:

<v-clicks>

- Headings (at least 3 levels)
- Paragraphs with **bold**, *italic*, and ~~strikethrough~~ text
- An unordered list and an ordered list
- A task list with checked and unchecked items
- An inline link and a reference-style link
- An image (use any placeholder URL)
- A blockquote
- Inline code and a fenced code block with a language tag
- A table with at least 3 columns and 3 rows
- A horizontal rule
- An escaped special character

</v-clicks>

---
layout: center
class: text-center
---

# Well Done!

You now know Markdown.

Start using it — the more you write, the more natural it becomes.

<div class="abs-br m-6 flex gap-2">
  <span class="text-sm opacity-50">AstroLab IT Classes</span>
</div>
