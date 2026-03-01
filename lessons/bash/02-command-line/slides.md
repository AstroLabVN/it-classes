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

<Title>Command Line</Title>

<Spacer />

How to communicate with your computer through text

---

# What is a Shell?

A shell is an **interpreted programming language**. It allows users to interact to the Operating System.

When used <span style="text-decoration: underline">interactively</span>:
- The user types **a command**
- The shell **inteprets** the command, **executes** it and shows the result.

<Spacer />

<Label>Several shells exist:</Label>

<div style="font-size:0.7em; max-width:40%; line-height: 2px">

| Shell | Description |
|-------|-------------|
| **Bash** | Most common on Linux (default on Ubuntu) |
| **Zsh** | Default on macOS since 2019 |
| **PowerShell** | Default on Windows |

</div>

  <Callout type="info">
In this course, we use <strong>Bash</strong> — it's the most widely used shell on servers and Linux systems.
</Callout>

---

# Terminal vs Shell

Two different things that work together:

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Terminal</Label>

- The **window** you type in
- Just a graphical container
- Examples:
  - GNOME Terminal (Ubuntu)
  - iTerm2 (macOS)
  - Windows Terminal

</div>

<div>
<Label>Shell</Label>

- The **program** running inside the terminal
- Interprets and executes your commands
- Examples:
  - Bash
  - Zsh
  - PowerShell

</div>

</div>

<Callout type="tip">
Think of it like this: the <strong>terminal</strong> is the TV screen, the <strong>shell</strong> is the show running on it.
</Callout>

---

# The Command Prompt

When you open a terminal, you see something like this:

```bash
student@laptop:~$
```

<Spacer />

<Label>What is in the shell prompt</Label>

<div style="font-size:0.7em; max-width:40%; line-height: 2px">

| Part | Meaning |
|------|---------|
| `student` | Your **username** |
| `@` | Separator |
| `laptop` | Your **computer's name** (hostname) |
| `:` | Separator |
| `~` | Your **current directory** (`~` = home) |
| `$` | Ready for input |

</div>

<Callout type="info" mt="2rem">
Everything after the shell prompt is where you type your command.
</Callout>

---

# Exercise 1 : your first commands

<Callout type="exercise" mt="1rem">
Type each of these commands in your terminal. Can you guess what they do?<br>Write your answers in a file called <code>02-command_line.md</code>.
</Callout>

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Command</Label>

```bash
whoami

hostname

date

clear
```

</div>

<div>

<Label>Expected Output</Label>

- `whoami`: explanation of the command
- `hostname`: explanation of the command
- `date`: explanation of the command
- `clear`: explanation of the command

</div>

</div>


---

# Command Structure

Bash reads your input and splits it by **spaces**:

```
command [options] [arguments]
```

The **first word** is the command. Everything after is options and arguments, **separated by spaces**.

<div class="grid grid-cols-2 gap-4">
<div>

<Label>Example</Label>

```bash
ls -l /home
```

</div>

<div>

<Label>Breakdown</Label>

<div style="font-size:0.8em; max-width:80%; line-height: 2px">

| Part | Role |
|------|------|
| `ls` | **Command** — what to do |
| `-l` | **Option** — how to do it |
| `/home` | **Argument** — what to do it on |

</div>

</div>

</div>

<Callout type="warning">
Spaces are <strong>required</strong> between each part. <code>ls-l/home</code> does not work — Bash sees it as one unknown command.<br>
Commands are <strong>case-sensitive</strong>: <code>ls</code> works, <code>LS</code> does not.
</Callout>


---

# Exercise 2 - Arguments

Arguments are **inputs** you give to a command — they tell it **what to act on**.

<Callout type="exercise" mt="1rem">
Type each of these commands with their arguments in your terminal. Can you guess what they do?
</Callout>


<div class="grid grid-cols-2 gap-4">

<div>
<Label>Syntax</Label>

```bash
echo Hello

mkdir mydir

touch file.txt

cp file1.txt file2.txt
```

</div>

<div>
<Label>Expected output</Label>

- `echo Hello` — explanation
- `mkdir mydir` — explanation
- `touch file.txt` — explanation
- `cp file.txt file2.txt` — explanation

</div>

</div>

<Spacer />

<Callout type="info" mt="1rem">
Some commands accept <strong>multiple arguments</strong>, like <code>cp</code> which needs a source and a destination.
</Callout>

---

# Exercise 3 - Options (Flags)

Options **modify** the behavior of a command. They come in two forms: `short` or `long`.

<Callout type="exercise" mt="1rem">
Run both commands in each pair and compare the output. Do they produce the same or different output?
</Callout>

<div class="grid grid-cols-3 gap-4">

<div>
<Label>Pair 1 — uname</Label>

```bash
uname
uname -a
```

<Label>Pair 4 — ls</Label>

```bash
ls -l
ls --format=long
```

</div>

<div>
<Label>Pair 2 — whoami</Label>

```bash
whoami
whoami --help
```

<Label>Pair 5 — ls</Label>

```bash
ls -l -a
ls -la
```

</div>

<div>
<Label>Pair 3 — head</Label>

```bash
head /etc/passwd
head -3 /etc/passwd
```

<Label>Pair 6 — echo</Label>

```bash
echo Hello World
echo -n Hello World
```

</div>



</div>

<Callout type="info" mt="1rem">
Short options (<code>-l</code>) and long options (<code>--format=long</code>) often do the <strong>same thing</strong>.<br>Short options can be <strong>combined</strong>: <code>-la</code> = <code>-l -a</code>.
</Callout>


---

# Keyboard Shortcuts

Learn these shortcuts — they will save you a lot of time!

<Callout type="exercise" mt="1rem">
Try each shortcut in your terminal. Practice until they become muscle memory!
</Callout>

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Navigation</Label>

<div class="table" style="max-width:90%">

| Key | Action |
|-----|--------|
| `Up Arrow` | Recall previous command |
| `Down Arrow` | Recall next command |
| `Tab` | Auto-complete file/command name |
| `Tab Tab` | Show all possible completions |

</div>

</div>

<div>
<Label>Editing & Control</Label>

<div class="table" style="max-width:90%">

| Key | Action |
|-----|--------|
| `Ctrl + l` | Clear the screen |
| `Ctrl + u` | Delete from cursor to start of line |
| `Ctrl + k` | Delete from cursor to end of line |
| `Ctrl + a` | Move cursor to start of line |
| `Ctrl + e` | Move cursor to end of line |
| `Ctrl + c` | Cancel / kill current command |

</div>

</div>

</div>

<Callout type="tip">
<strong>Tab completion</strong> is your best friend — start typing a file or directory name and press <code>Tab</code> to auto-complete it!
</Callout>

---

# Exercise 4 — Find the Error

<Callout type="exercise" mt="1rem">
Each command below contains an <strong>error</strong>. For each one:

1. **Identify** what is wrong
2. **Explain** why it's wrong
3. **Write** the corrected command
</Callout>


<Label>Broken commands</Label>

```bash
# 1
LS -l
```

```bash
# 2
cd--help
```

```bash
# 3
mkdir
```

```bash
# 4
echo "Hello World
```

---

# Getting Help — the `man` command

In IT we don't memorize everything — we learn how to **find information**. RTFM!

```bash
man ls
```

This opens the **manual page** for `ls` — a built-in documentation viewer.

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Navigation</Label>

<div style="font-size:0.7em; max-width:100%; line-height: 2px">

| Key           | Action                             |
|---------------|------------------------------------|
| `f`           | Scroll down one page               |
| `b`           | Scroll up one page                 |
| `Up` or `k`   | Scroll one line up                 |
| `Down` or `j` | Scroll one line down               |
| `/word`       | Search for "word" (case sensitive) |
| `n`           | Next search result                 |
| `q`           | Quit                               |

</div>

</div>

<div>
<Label>Man page sections</Label>

<div style="font-size:0.7em; max-width:100%; line-height: 2px;">

| Section       | Content                  |
|---------------|--------------------------|
| `NAME`        | Command name and summary |
| `SYNOPSIS`    | How to use it            |
| `DESCRIPTION` | Detailed explanation     |
| `OPTIONS`     | Available flags          |
| `EXAMPLES`    | Usage examples           |

</div>

</div>

</div>

---

# Exercise 5 — man pages

<Callout type="exercise" mt="1rem">
Use <code>man</code> to find what each of these commands does. Write a <strong>one-line description</strong> for each.
</Callout>

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Commands to look up</Label>

<div>

```bash
man uname
man whoami
man ls
man head
man echo
```

</div>

</div>

<div>
<Label>Expected output</Label>

<div style="font-size: 0.8em">

- `uname` — your description
- `whoami` — your description
- `ls` — your description
- `head` — your description
- `echo` — your description

</div>

</div>

</div>

<Callout type="tip">
Look at the <strong>NAME</strong> section at the top of each man page — it gives you a short summary.
</Callout>

---

# Exercise 6 — Reading man pages

<Callout type="exercise" mt="1rem">
Use <code>man</code> to find what each <strong>option</strong> does. Write a one-line explanation for each.
</Callout>

<div class="grid grid-cols-2 gap-4">

<div>
<Label>Find the meaning of each option</Label>

<div style="font-size: 0.85em">

1. `head` **`-3`**
2. `uname` **`-a`**
3. `ls` **`-l`**
4. `echo` **`-n`**
5. `cat` **`-n`**
6. `date` **`-u`**

</div>

</div>

<div>
<Label>Expected output</Label>

<div style="font-size: 0.85em">

1. `head -3` — your explanation
2. `uname -a` — your explanation
3. `ls -l` — your explanation
4. `echo -n` — your explanation
5. `cat -n` — your explanation
6. `date -u` — your explanation

</div>

</div>

</div>

<Callout type="tip">
In the man page, go to the <strong>OPTIONS</strong> section to find what each flag does.
</Callout>

---

# Exercise 7 — Find the right option

<Callout type="exercise" mt="1rem">
For each task, use <code>man</code> to find the right option. Write the full command.
</Callout>

<div style="font-size: 0.8em; max-width: 85%; line-height: 6px">

| # | Command  | Task                                                             | Your answer            |
|---|----------|------------------------------------------------------------------|------------------------|
| 1 | `ls`     | Show hidden files                                                | `ls ???`               |
| 2 | `head`   | Display the first **10 lines** of a file                         | `head ??? /etc/passwd` |
| 3 | `uptime` | Show how long the system has been running in a **pretty** format | `uptime ???`           |
| 4 | `whoami` | Show the **version** info of whoami                              | `whoami ???`           |
| 5 | `uname`  | Show only the **operating system**                               | `uname ???`            |
| 6 | `ls`     | Sort files by **modification time** (newest first)               | `ls ???`               |


</div>

---

# Getting Help — `--help`

Another way to get help is the `--help` flag. It prints a **short summary** directly in the terminal.

```bash
ls --help
date --help
```

<Callout type="warning">
Not all commands support <code>--help</code>. Some only have <code>man</code> pages, some only have <code>--help</code>, some have both.
</Callout>

<Spacer />

<div class="grid grid-cols-2 gap-8">

<div>
<Label>Why the difference?</Label>

<div style="font-size: 0.85em">

- `man` — provided by the **system**, works for most commands
- `--help` — built into **each command** by its developer
- Some simple commands don't include `--help`

</div>

</div>

<div>
<Label>When to use what</Label>

<div style="font-size: 0.85em">

- **Full documentation** → `man command`
- **Quick reminder** → `command --help`
- **Shell built-ins** (cd, alias) → `help command`

</div>

</div>

</div>

---

# Built-in Commands

Some commands are **part of the shell itself**: they change things that only the shell can change.

<Label>Example of built-in command (part of Bash)</Label>

`cd` — change directory

`cd` **must** be built-in: an external program runs in its own process and cannot change the shell's current directory. Only the shell itself can do that.

<Callout type="info">
Use <code>type command</code> to check if a command is built-in.
</Callout>

<Spacer />

<div class="grid grid-cols-2 gap-8">

<div>
<Label>Getting help</Label>

<div style="font-size: 0.85em">

- Built-in commands **don't have `man` pages**
- Use `help cd` instead of `man cd`

</div>

</div>

<div>
<Label>Example</Label>

<div style="font-size: 0.85em">

```bash
man cd     # no manual entry!
help cd    # works!
```

</div>

</div>

</div>

---

# Exercise 8 — Built-in or not?

<Callout type="exercise" mt="1rem">
Use <code>type</code> to check each command. Create a table in your Markdown file with 3 columns.
</Callout>

<div style="font-size: 0.8rem; line-height: 1px; max-width: 70%">

| Command  | Is a built-in? | Command to get help |
|----------|----------------|---------------------|
| `tail`   | no             | `man tail`          |
| `cd`     |                |                     |
| `ls`     |                |                     |
| `echo`   |                |                     |
| `cat`    |                |                     |
| `alias`  |                |                     |
| `head`   |                |                     |
| `export` |                |                     |
| `date`   |                |                     |

</div>

<Callout type="tip">
If <code>type</code> says "builtin" → use <code>help</code>. If it says a file path → use <code>man</code>.
</Callout>

---
layout: center
class: text-center
---

<Title>Well done!</Title>

<Spacer />

You now know how to use the command line!

From now on, **always use `man` or `--help` before asking for help**.

