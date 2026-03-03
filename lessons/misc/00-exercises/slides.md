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

<Title>How to write your exercises</Title>

<Spacer />

Formatting rules for all lessons

---

# Why This Matters

<Subtitle>Be organized, be methodical</Subtitle>

In IT, **conventions** are everything.

<Spacer size="0.5rem" />

- Teams work on the same files — if everyone names things differently, it becomes a mess
- Servers, scripts, and tools expect **consistent naming** and **structure**
- Following rules now builds habits that will serve you in every job

<Callout type="warning">These formatting rules are <strong>mandatory</strong>. Exercises that don't follow them will not be accepted.</Callout>

---

# File naming

<Subtitle>You must always follow these rules</Subtitle>

- Create one file per lesson
- It must have the `.md` extension.
- The file name should be the **lesson name**, in **lowercase**, with spaces replaced by `_` (underscore).

<Spacer size="1rem" />


<Subtitle>Example</Subtitle>

<div style="font-size: 0.9rem; max-width: 40%; line-height: 4px">

| Lesson name  | File name         |
|--------------|-------------------|
| Markdown     | `markdown.md`     |
| Command Line | `command_line.md` |

</div>

---

# Structure inside the file

<Subtitle>Use Heading H2 for each exercise</Subtitle>

Each exercise should be a **Heading H2** (`##`) with its full name, exactly as shown in the lesson slides.

<Spacer size="0.5rem" />

<Cols gap="50px">

<div>
<Subtitle>Syntax</Subtitle>

<div style="font-size:0.85em; background:#f1f5f9; border-radius:8px; padding:1rem 1.5rem;">

```markdown
## Exercise 1 : My first commands

(your answers here)

## Exercise 2 : Navigation

(your answers here)
```

</div>
</div>

<div>
<div>
<Subtitle>Output</Subtitle>

<p style="font-size:1em;font-weight:bold; color:#333; margin-bottom: -1px">Exercise 1 - My first commands</p>

(your answers here)

<p style="font-size:1em;font-weight:bold; color:#333; margin-bottom: -1px">Exercise 2 - Navigation</p>

(your answers here)

</div>
</div>

</Cols>

---
layout: center
class: text-center
---

<Title size="2em">Remember</Title>

<Spacer />

Right file name, right structure, right habits.

<Spacer size="0.5rem" />

<Callout type="tip">If in doubt, check this slide again before submitting your work.</Callout>
