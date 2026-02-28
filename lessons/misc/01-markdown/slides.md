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

<Title>Markdown</Title>
A lightweight markup language with plain-text-formatting syntax

---

# What is Markdown?

- Created in 2004 by John Gruber
- Write formatted text using **plain text syntax**
- Easy to read even **without rendering**
- File extension: `.md` or `.markdown`

---

# Paragraphs

Simply write text. Separate paragraphs with a **blank line**.

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Syntax</Label>

````md
This is the first paragraph.

This is the second paragraph.
````

</div>

<div>
<Label>Result</Label>

This is the first paragraph.

This is the second paragraph.

</div>

</div>

---

# Headings

Use `#` symbols to create headings (1 to 6 levels).

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Syntax</Label>

````text
# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6
````

</div>

<div>
<Label>Result</Label>

<div style="color:#333;">
  <p style="font-size:1.8em;font-weight:bold;">Heading 1</p>
  <p style="font-size:1.5em;font-weight:bold;">Heading 2</p>
  <p style="font-size:1.2em;font-weight:bold;">Heading 3</p>
  <p style="font-size:1em;font-weight:bold;">Heading 4</p>
  <p style="font-size:0.85em;font-weight:bold;">Heading 5</p>
  <p style="font-size:0.7em;font-weight:bold;">Heading 6</p>
</div>
</div>

</div>

---

# Text Formatting — Emphasis

Use `*` for bold and italic and `~` for strikethrough.

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Syntax</Label>

````md
*italic*

**bold**

***bold and italic***

~~strikethrough~~
````

</div>

<div>
<Label>Result</Label>

<div style="font-size:0.8em">
*italic*

**bold**

***bold and italic***

~~strikethrough~~
</div>

</div>

</div>

<Callout type="info" mt="3rem">
Other syntax exists but this is the most common. Prefer using this one.
</Callout>

---

# Unordered Lists

Use `-` to create bullet points. Indent for nested lists.

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Syntax</Label>

````md
- First item
- Second item
  - Nested item
  - Another nested item
- Third item
````

</div>

<div>
<Label>Result</Label>

<div style="font-size:0.7em;">

- First item
- Second item
  - Nested item
  - Another nested item
- Third item

</div>

</div>

</div>

<Callout type="info" mt="3rem">
Other syntax exists but this is the most common. Prefer using this one.
</Callout>

---

# Ordered Lists

Use numbers followed by a period.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

````md
1. First item
2. Second item
3. Third item
   1. Sub-item A
   2. Sub-item B
````

</div>
<div>
<Label>Result</Label>

<div style="font-size:0.7em;">

1. First item
2. Second item
3. Third item
   1. Sub-item A
   2. Sub-item B

</div>


</div>
</div>

<Callout type="info" mt="3rem">
Many renderers renumber automatically, but writing 1, 2, 3 is clearer for humans.
</Callout>

---

# Links

Put the name you want to display between `[]` and put the URL between `()`

<div style="display:grid;grid-template-columns:70% 30%;gap:2rem;">
<div>
<Label>Syntax</Label>

````md
# Web URL
[Markdown Course](https://astrolabvn.github.io/it-classes/misc/01-markdown/1)

# Relative Path
[Markdown Course](./it-classes/misc/01-markdown/)
````

</div>
<div>
<Label>Result</Label>

<div style="font-size:0.8em;">
<a href="https://astrolabvn.github.io/it-classes/misc/01-markdown/" style="color:#2563eb;text-decoration:none;">Markdown Course</a> (web URL)

<a href="https://astrolabvn.github.io/it-classes/misc/01-markdown/" style="color:#2563eb;text-decoration:none;">Markdown Course</a> (relative path)

</div>
</div>

</div>

<Callout type="info" mt="3rem">
You can use an <strong>URL</Strong> or a <strong>relative path</Strong>.
</Callout>

---

# Images

Same syntax as links, but with a `!` prefix.

<div style="display:grid;grid-template-columns:80% 20%;gap:2rem;">
<div>
<Label>Syntax</Label>

````md
# Web URL
![Alt text](https://astrolabvn.github.io/it-classes/bash/00-setup/logo.png "Optional title")

# Relative Path
![Alt text](./logo.png "Optional title")
````

</div>
<div>
<Label>Result</Label>

<img src="/logo.png" alt="Logo" title="Optional title" class="h-20" />

</div>
</div>

<Callout type="info" mt="3rem">
You can use an <strong>URL</Strong> or a <strong>relative path</Strong>.
<br>
<br>
<strong>Alt text</strong> describes the image for accessibility and is shown if the image fails to load. (e.g AstroLab Logo)
</Callout>

---

# Blockquotes

Use `>` at the start of a line.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

````md
> This is a blockquote.
````

<br>

````md
> This is a blockquote on
>
> two lines 
````

</div>
<div>
<Label>Result</Label>

> This is a blockquote.

<br>

> This is a blockquote on
>
> two lines

</div>
</div>

---

# Horizontal Rules

Create a visual separator with three or more `-`.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

````md
---
````

</div>
<div>
<Label>Result</Label>

<div style="padding-top: 1rem">
<hr style="border-color:#94a3b8;">
</div>

</div>
</div>

---

# Inline Code

Wrap text in backticks <code>`</code> to format it as code.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

````md
Use the `print()` function
to display output.

The `<div>` tag is a
block element.
````

</div>
<div>
<Label>Result</Label>

<div style="font-size: 0.9rem">

Use the `print()` function to display output.

Markdown is a `markup language`.

</div>

</div>
</div>

---

# Code Blocks

Use triple backticks with an optional language for syntax highlighting.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

<pre style="background:#f1f5f9;padding:16px;border-radius:6px;font-size:0.7em;"><code>&#96;&#96;&#96;python
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
&#96;&#96;&#96;</code></pre>

</div>
<div>
<Label>Result</Label>

<div style="font-size:0.7em;">

```python
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
```

</div>
</div>
</div>

<Callout type="info" mt="2rem">
It works with <strong>many languages</strong>: JavaScript, Bash, HTML, etc.
</Callout>

---

# Tables

Use pipes `|` and dashes `-` to create tables.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

````md
| Name    | Age | City     |
|---------|-----|----------|
| Alice   | 25  | Paris    |
| Bob     | 30  | London   |
| Charlie | 28  | Berlin   |
````

</div>
<div>
<Label>Result</Label>

<div style="font-size:0.7em; max-width:70%; line-height: 2px">

| Name    | Age | City     |
|---------|-----|----------|
| Alice   | 25  | Paris    |
| Bob     | 30  | London   |
| Charlie | 28  | Berlin   |

</div>

</div>
</div>

---

# Tables — Column Alignment

Use colons `:` in the separator row to control alignment.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

````md
| Left    | Center | Right    |
|:--------|:------:|---------:|
| Alice   | 25     | Paris    |
| Bob     | 30     | London   |
| Charlie | 28     | Berlin   |
````

</div>
<div>
<Label>Result</Label>

<div style="font-size:0.7em; max-width:70%; line-height: 2px">

| Left    | Center | Right    |
|:--------|:------:|---------:|
| Alice   | 25     | Paris    |
| Bob     | 30     | London   |
| Charlie | 28     | Berlin   |

</div>
</div>
</div>

---

# Escaping Characters

Use a backslash `\` to display special characters literally.

<div class="grid grid-cols-2 gap-4">
<div>
<Label>Syntax</Label>

````md
\* This is not italic \*

\# This is not a heading

Use a \[bracket\] literally
````

</div>
<div>
<Label>Result</Label>

<div style="font-size:0.7em;">

\* This is not italic \*

\# This is not a heading

Use a \[bracket\] literally

</div>

</div>
</div>

---
layout: center
class: text-center
---

<Title>Markdown is everywhere !</Title>

---

# Where is Markdown Used?

* **AI** — ChatGPT, Gemini, Copilot
* **Websites** — GitHub, GitLab
* **Documentation** — MkDocs, Docusaurus
* **Chat** — Discord, Slack
- **This presentation!** — written entirely in Markdown

---

# Why Learn Markdown?

- **Universal** — supported across many tools
- **Simple** — you can learn the basics quickly
- **Portable** — plain text files are easy to move and keep
- **Version-control friendly** — clean diffs in Git
- **Fast** — format documents without leaving the keyboard!

<Callout type="info" mt="2rem">
If you work in tech, <strong>you will use Markdown</strong>. Learn it once, use it everywhere.
</Callout>

---
layout: center
class: text-center
---

<Title>Time to practice !</Title>

---

# Exercise 1 — Personal Profile

Create a file named **`profile.md`** with the following content and structure:

<div style="font-size:0.9em">

* `Heading H1` : your name
* `Heading H2` : Skills
  * `unordered list` with items : Bash, Markdown, SQL
* `Heading H2` : Education
  * `ordered list` with the names of your Primary School, Secondary School and University (if any)
* `Heading H2` : About me 
  - small `paragraph` explaining how old you are and where you live, including words in `Bold` and `Italic`
* `horizontal rule / divider`
* `paragraph` about what you learned in this lesson with :
  * `1 link` to https://google.com
  * `1 inline code` with the word markdown
* `blockquote` with the sentence : "Learning Markdown is so fun !"

</div>

---

# Exercise 1 — Expected result

<div style="font-size:0.8em">

<p style="font-size:2em;font-weight:bold; color:#333">Mister Ben</p>

<p style="font-size:1.4em;font-weight:bold; color:#333; margin-bottom: -1px">Skills</p>

- Bash
- Markdown
- SQL

<p style="font-size:1.4em;font-weight:bold; color:#333; margin-bottom: -1px">Education</p>

1. Elementary School of Bordeaux
2. High School of Bordeaux
3. University of Bordeaux

<p style="font-size:1.4em;font-weight:bold; color:#333; margin-bottom: -15px">About me</p>

I am 99 years old and I live in **Bien Hoa**, *south of Vietnam*.

<hr style="margin:8px 0;border-color:#cbd5e1;">

Today I learned how to use Markdown ! I can now use <a href="https://google.com" style="color:#2563eb;">a link</a>. I also can use `inline code`.

> Learning Markdown is so fun !

</div>

---

# Exercise 2 — README

Create a file **`README.md`** with the following structure:

<div style="font-size:0.9em">

* `Heading H1` : Project Overview
* `Heading H2` : Content
  * `Heading H3`: Code Block 
    - a `bash` code block containing:
    ```bash
    $ mkdir test-dir
    $ cd test-dir
    ```
  * `Heading H3`: Table 
    * a `table` with 3 columns (`Name`, `Role`, `Age`) and 3 rows with elements:
      * Roger, CEO, 45 - (left aligned)
      * Linh, Developer, 24 - (center aligned)
      * Max, Salesman, 29 - (right aligned)
  * `Heading H3`: Image 
    * the AstroLab logo using this URL: `https://astrolabvn.github.io/it-classes/bash/00-setup/logo.png`

</div>

---

# Exercise 2 — Expected Result

<div style="font-size:0.6em">

<p style="font-size:2.2em;font-weight:bold; color:#333">Project Overview</p>

<p style="font-size:2em;font-weight:bold; color:#333;">Content</p>

<p style="font-size:1.4em;font-weight:bold; color:#333; margin-bottom: -1px">Code Block</p>

```bash
$ mkdir test-dir
$ cd test-dir
```

<p style="font-size:1.4em;font-weight:bold; color:#333; margin-bottom: -1px">Table</p>

<div style="font-size:1em; max-width:30%; line-height: 2px">

| Name  | Role      | Contact |
|:------|:---------:|--------:|
| Roger | CEO       | 45      |
| Linh  | Developer | 24      |
| Max   | Salesman  | 29      |

</div>

<p style="font-size:1.4em;font-weight:bold; color:#333; margin-bottom: 2px">Image</p>

<img src="/logo.png" alt="AstroLab Logo" style="height:80px;">

</div>

---
layout: center
class: text-center
---

# Well Done!

You can now write Markdown confidently.

From now on, everytime you need to write in this class,<br>you **will have to use Markdown**!
