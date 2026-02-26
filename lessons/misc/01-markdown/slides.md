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
fonts:
  mono: Hack
colorSchema: auto
---

# Markdown

---

# What is Markdown?

<v-click>

- Created in 2004 by John Gruber
- A **lightweight markup language** (a system of annotating a document to describe its structure and presentation)
- Write formatted text using **plain text syntax**
- Easy to read even **without rendering**
- Used everywhere: GitHub, documentation, blogs, notes, chat apps...
- File extension: `.md` or `.markdown`

</v-click>

---

# Paragraphs

Simply write text. Separate paragraphs with a **blank line**.

````md
This is the first paragraph.

This is the second paragraph.
````

<v-click>

Result:

This is the first paragraph.

This is the second paragraph.

</v-click>


---

# Headings


Use `#` symbols to create headings (1 to 6 levels).

````text
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
````

<v-click>

Result:
```md
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
```


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

This produces the same result as `#` and `##`.

<Callout type="warning" mt="4rem">
Prefer the `#` syntax — it's more common and easier to read.
</Callout>

---

# Text Formatting — Emphasis

````md
*italic* or _italic_

**bold** or __bold__

***bold and italic***

~~strikethrough~~
````

<v-click>

Result:

*italic* or _italic_

**bold** or __bold__

***bold and italic***

~~strikethrough~~

<Callout type="info">
Pick one style and stay consistent. Prefer the more common <code>*</code> for italic and <code>**</code> for bold.
</Callout>

</v-click>

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

Result:

- First item
- Second item
  - Nested item
  - Another nested item
- Third item

<Callout type="info">
In team docs, choose one bullet marker and stick to it (many teams use <code>-</code>).
</Callout>

</v-click>

---

# Ordered Lists

Use numbers followed by a period.

````md
1. First item
2. Second item
3. Third item
   1. Sub-item A
   2. Sub-item B
````

<v-click>

Result:

1. First item
2. Second item
3. Third item
   1. Sub-item A
   2. Sub-item B

<Callout type="info">
Many renderers renumber automatically, but writing 1, 2, 3 is clearer for humans.
</Callout>

</v-click>

---

# Links

Put the name you want to display between `[]` and put the URL between `()`

````md
# Web URL
[AstroLab Markdown Class Link](https://astrolabvn.github.io/it-classes/misc/01-markdown/1)

# Relative Path
[AstroLab Markdown Class Link](./it-classes/misc/01-markdown/)
````

<v-click>

Result:

<a href="https://astrolabvn.github.io/it-classes/misc/01-markdown/1" style="color:#60a5fa;text-decoration:none;">AstroLab Markdown Class Link</a> (web URL)

<a href="./it-classes/misc/01-markdown/" style="color:#60a5fa;text-decoration:none;">AstroLab Markdown Class Link</a> (relative path)


<Callout type="info" mt="2rem">
You can use an URL or a relative path.
</Callout>

</v-click>

---

# Images

Same syntax as links, but with a `!` prefix.

````md
# Web URL
![Alt text](https://myimage.png "Optional title")

# Relative Path
![Logo](./src/astrolab-logo-transparent-white.png "Optional title")
````

Result:

<img src="/logo.png" alt="Logo" title="Optional title" class="h-20" />


<Callout type="info" mt="2rem">
`Alt text` describes the image for accessibility and is shown if the image fails to load.
</Callout>

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

Result:

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


Result:

<br>

***

</v-click>

---

# Inline Code

Wrap text in backticks ( `` ) to format it as code.

````md
Use the `print()` function to display output.

The `<div>` tag is a block element.
````

<v-click>

**Result:**

Use the `print()` function to display output.

Markdown is a `markup language`.

</v-click>

---

# Code Blocks

Use triple backticks with an optional language for syntax highlighting.

<pre style="background:#121212;padding:16px;border-radius:6px;font-size:0.9em;"><code>&#96;&#96;&#96;python
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
&#96;&#96;&#96;</code></pre>

<v-click>

Result:

```python
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
```

<Callout type="info" mt="2rem">
It works with many languages : JavaScript, Bash, HTML, etc.
</Callout>


</v-click>

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

Result:

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

Result:

| Left     | Center   | Right    |
|:---------|:--------:|---------:|
| text     | text     | text     |
| left     | center   | right    |

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

Result:

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

<v-click>

- **GitHub / GitLab** — README files, issues, pull requests, comments, wikis
- **Documentation** — Static site generators (MkDocs, Docusaurus, VitePress)
- **Note-taking** — Obsidian, Notion, Logseq, Joplin
- **Chat & communication** — Slack, Discord, Teams, Reddit
- **Blogs & CMS** — Hugo, Jekyll, Ghost, DEV.to
- **Project management** — Trello, Linear, Jira
- **This presentation!** — Built with Slidev, written entirely in Markdown

</v-click>

---

# Why Learn Markdown?

<v-click>

- **Fast** — format documents without leaving the keyboard
- **Portable** — plain text files are easy to move and keep
- **Simple** — you can learn the basics quickly
- **Universal** — supported across many tools
- **Version-control friendly** — clean diffs in Git

<Callout type="info" mt="2rem">
If you work in tech, you will use Markdown. Learn it once, use it everywhere.
</Callout>


</v-click>

---
layout: section
---

# Time to practise !

---

# Exercise 1 — Personal Profile

Create a file named **`profile.md`** with the following content and structure:

* **1 H1 title** : your Full Name
* **3 H2 headings** : Skills, Education, About me
  * **Skills** : an unordered list with items : bash, markdown, SQL
  * **Education** : an ordered list with the names of your Primary School, Secondary School and University (if any)
  * **About me** : a small paragraph explaining how old you are and where you live, including Bold + Italic
* **1 horizontal rule / divider**
* **1 paragraph** about what you learn in this lesson with :
  * **1 link** to https://google.com
  * **1 inline code** with the word markdown
* **1 blockquote** with the sentence : "Learning Markdown is so fun !"

---

# Exercise 2: README

Create a file **`README.md`** with the following sections and content:

* **1 H1 title** : Project Overview
* **1 code block** for `bash` language:
```bash
$ mkdir test-dir
$ cd test-dir
```

* 1 table with **3 columns**: `Name`, `Role`, `Contact`and content:
  * Roger, CEO, roger@mail.com
  * Linh, Developer, linh@mail.com
  * Max, Salesman, max@mail.com

* **1 image** (get the URL of any image by right click > copy image address)


---
layout: center
class: text-center
---

# Well Done!

You can now write Markdown confidently.

From now on, everytime you need to write for an exercise or documentation, you **will have to use Markdown**!


