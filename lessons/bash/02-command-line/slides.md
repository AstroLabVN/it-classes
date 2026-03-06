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

<Title>Command Line (CLI)</Title>

<Spacer />

How to communicate with your computer through text

---

# What is a Shell?

A shell is an **interpreted programming language**. It allows users to interact to the Operating System.

<div class="grid gap-4" style="grid-template-columns: 3fr 1.2fr;">

<div>

When used <span style="text-decoration: underline">interactively</span>:
- The user types **a command**
- The shell **inteprets** the command, **executes** it and shows the result.

<Spacer size="2rem" />

<Subtitle>Several shells exist:</Subtitle>

<div style="font-size:0.9em; max-width:90%; line-height: 2px">

| Shell          | Description                              |
|----------------|------------------------------------------|
| **Bash**       | Most common on Linux (default on Ubuntu) |
| **Zsh**        | Default on macOS since 2019              |
| **PowerShell** | Default on Windows                       |

</div>
</div>

<div>
<img :src="'./bash/shell_kernel_interface.webp'" style="max-height: 250px; margin-top: 30px" />
<p style="font-size: 0.7em; color: #666; margin-top: 0.5rem; margin-left: 0; text-align: center; line-height: 10px;">
  The shell is an interface to the kernel
</p>
</div>

</div>

<Callout type="info">
In this course, we use <strong>Bash</strong> — it's the most widely used shell on servers and Linux systems.
</Callout>

---

# How the Shell and Kernel Work Together

<div class="grid gap-4" style="grid-template-columns: 3fr 1.6fr;">

<div style="font-size: 0.95em">

When you type a command:

1. You **type a command** in the shell
2. The shell **understands** it (parse: command + options + arguments)
3. The shell **runs a program** (or a built-in command)
4. The program **asks the kernel** for help (via **system calls**)
5. The kernel **talks to hardware / files** and **returns results**
6. The program **prints output**, then the shell shows the **prompt** again

</div>

<div>
<img :src="'./bash/shell_kernel.png'" style="max-height: 280px; margin-top: 50px" />
</div>

</div>


---

# Terminal and Shell

<div style="margin-top: -20px">

<Callout type="tip">
Think of it like this: the <strong>Terminal</strong> is the screen and the <strong>Shell</strong> is the program running on it.
</Callout>

</div>

<Cols>

<div>
<Subtitle>Terminal</Subtitle>

<div style="font-size:0.8em">

- The **window** you type in
- Just a graphical container
- Examples:
   - GNOME Terminal (Ubuntu)
   - iTerm2 (macOS)
   - Windows Terminal

</div>

<img :src="'./bash/VT100_terminal.jpg'" style="max-height: 150px; margin-top: 20px; margin-left: 1rem" />
<p style="font-size: 0.7em; color: #666; margin-top: 0.5rem; margin-left: 3.2rem; line-height: 10px;">
Old VT100 Terminal
</p>

</div>

<div>
<Subtitle>Shell</Subtitle>

<div style="font-size:0.8em">

- The **program** running inside the terminal
- Interprets and executes your commands
- Examples:
  - Bash
  - Zsh
  - PowerShell

</div>

<img :src="'./bash/cli_shell.webp'" style="max-height: 150px; margin-top: 20px; margin-left: 1rem" />
<p style="font-size: 0.7em; color: #666; margin-top: 0.5rem; text-align: center; line-height: 10px;">
Bash shell
</p>


</div>

</Cols>


---

# The Command Prompt

When you open a terminal, you see something like this:

```bash
student@laptop:~$
```

<Spacer />

<Subtitle>What is in the shell prompt</Subtitle>

<div style="font-size:0.9em; max-width:55%; line-height: 2px">

| Part      | Meaning                                 |
|-----------|-----------------------------------------|
| `student` | Your **username**                       |
| `@`       | Separator                               |
| `laptop`  | Your **hostname** (computer's name)     |
| `:`       | Separator                               |
| `~`       | Your **current directory** (`~` = home) |
| `$`       | Ready for input                         |

</div>

<Callout type="info" mt="2rem">
Everything after the shell prompt is where you type your command.
</Callout>

---

# Exercise 1 - My first commands

<Callout type="exercise" mt="1rem">
Type each of these commands in your terminal. Can you guess what they do?
</Callout>

<Cols>

<div>
<Subtitle>Command</Subtitle>

```bash
whoami

hostname

date

clear
```

</div>

<div>

<Subtitle>Expected Output</Subtitle>

- `whoami` — explanation of the command
- `hostname` — explanation of the command
- `date` — explanation of the command
- `clear` — explanation of the command

</div>

</Cols>


---

# Command Structure

Bash reads your input and splits it by **spaces**:

```
command [options] [arguments]
```

The **first word** is the command. Everything after is options and arguments, **separated by spaces**.

<Cols>
<div>

<Subtitle>Example</Subtitle>

```bash
ls -l /home
```

</div>

<div>

<Subtitle>Breakdown</Subtitle>

<div style="font-size:0.8em; max-width:80%; line-height: 2px">

| Part    | Role                                     |
|---------|------------------------------------------|
| `ls`    | **Command** — what to do                 |
| `-l`    | **Option** — how to do it                |
| `/home` | **Argument** — the target of the command |

</div>

</div>

</Cols>

<Callout type="warning">
Spaces are <strong>required</strong> between each part. <code>ls-l/home</code> does not work — Bash sees it as one unknown command.<br>
Commands are <strong>case-sensitive</strong>: <code>ls</code> works, <code>LS</code> does not.
</Callout>

---

# Command Syntax Notation

Man pages and `--help` use a standard notation to describe how commands work:

<Cols gap="30px">

<div>
<Subtitle>Syntax</Subtitle>

<div style="font-size:0.8em; line-height: 2px">

| Symbol | Meaning              | Example                  |
|--------|----------------------|--------------------------|
| `[]`   | Optional             | `ls [options] [path]`    |
| `<>`   | Required placeholder | `cd <directory>`         |
| `...`  | Repeatable           | `cp <source>... <dest>`  |

</div>

</div>

<div style="font-size: 0.9rem">
<Subtitle>Real examples</Subtitle>

`ls [options] [path]` — both **optional**:

```bash
ls                # command alone
ls -la            # with options only
ls /home          # with argument only
ls -la /home      # with both
```

<Spacer />

`cp <source>... <dest>` — both **required**:

```bash
# 1 argument for source, 1 argument for dest
cp file.txt backup.txt

# 2 arguments for source, 1 argument for dest
cp a.txt b.txt dest/
```

</div>

</Cols>

---

# Exercise 2 - Arguments

Arguments are **inputs** you give to a command.<br>They tell the command its **target** — the place or thing the command will work on.

<Callout type="exercise" mt="1rem">
Type each of these commands with their arguments in your terminal. Can you guess what they do?
</Callout>


<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
echo Hello

mkdir mydir

touch file.txt

cp file.txt file2.txt
```

</div>

<div>
<Subtitle>Expected output</Subtitle>

- `echo Hello` — explanation
- `mkdir mydir` — explanation
- `touch file.txt` — explanation
- `cp file.txt file2.txt` — explanation

</div>

</Cols>

<Spacer />

<Callout type="info" mt="1rem">
Some commands accept <strong>multiple arguments</strong>, like <code>cp</code> which needs a source and a destination.
</Callout>

---

# Exercise 3 - Options (Flags)

Options **modify** the behavior of a command. They come in two forms: **short** `-` or `**long** `--`.

<Callout type="exercise" mt="1rem">
Run both commands in each pair and compare the output. Do they produce the same or different output?
</Callout>

<Cols cols="3">

<div>
<Subtitle>Pair 1 — uname</Subtitle>

```bash
uname
uname -a
```

<Subtitle>Pair 4 — ls</Subtitle>

```bash
ls -l
ls --format=long
```

</div>

<div>
<Subtitle>Pair 2 — whoami</Subtitle>

```bash
whoami
whoami --help
```

<Subtitle>Pair 5 — ls</Subtitle>

```bash
ls -l -a
ls -la
```

</div>

<div>
<Subtitle>Pair 3 — head</Subtitle>

```bash
head /etc/passwd
head -3 /etc/passwd
```

<Subtitle>Pair 6 — echo</Subtitle>

```bash
echo Hello World
echo -n Hello World
```

</div>

</Cols>

<Callout type="info" mt="2rem">
Short options (<code>-l</code>) and long options (<code>--format=long</code>) often do the <strong>same thing</strong>.<br>Short options can be <strong>combined</strong>: <code>-la</code> = <code>-l -a</code>.
</Callout>


---

# Keyboard Shortcuts

Learn these shortcuts — they will save you a lot of time!

<Callout type="exercise" mt="1rem">
Try each shortcut in your terminal. Practice until they become muscle memory!
</Callout>

<Cols>

<div>
<Subtitle>Navigation</Subtitle>

<div style="font-size: 0.9rem; line-height: 2px; max-width: 90%">

| Key          | Action                          |
|--------------|---------------------------------|
| `Up Arrow`   | Recall previous command         |
| `Down Arrow` | Recall next command             |
| `Tab`        | Auto-complete file/command name |
| `Tab Tab`    | Show all possible completions   |

</div>

</div>

<div>
<Subtitle>Editing & Control</Subtitle>

<div style="font-size: 0.9rem; line-height: 2px; max-width: 85%">

| Key        | Action                              |
|------------|-------------------------------------|
| `Ctrl + l` | Clear the screen                    |
| `Ctrl + u` | Delete from cursor to start of line |
| `Ctrl + k` | Delete from cursor to end of line   |
| `Ctrl + a` | Move cursor to start of line        |
| `Ctrl + e` | Move cursor to end of line          |
| `Ctrl + c` | Cancel / kill current command       |

</div>

</div>

</Cols>

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

<Subtitle>Broken commands</Subtitle>


<Cols>

<div>
<Subtitle>1</Subtitle>

```bash
LS -l
```

<Subtitle>2</Subtitle>

```bash
cd--help
```
</div>

<div>

<Subtitle>3</Subtitle>

```bash
mkdir
```

<Subtitle>4</Subtitle>

```bash
echo "Hello World
```
</div>

</Cols>

---

# Getting Help — the `man` command

In IT we don't memorize everything — we learn how to **find information**. RTFM!

```bash
man ls
```

This opens the **manual page** for `ls` — a built-in documentation viewer.

<Cols>

<div>
<Subtitle>Navigation</Subtitle>

<div style="font-size: 0.9rem; line-height: 2px; max-width: 90%">

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
<Subtitle>Man page sections</Subtitle>

<div style="font-size: 0.9rem; line-height: 2px; max-width: 90%">

| Section       | Content                  |
|---------------|--------------------------|
| `NAME`        | Command name and summary |
| `SYNOPSIS`    | How to use it            |
| `DESCRIPTION` | Detailed explanation     |
| `OPTIONS`     | Available flags          |
| `EXAMPLES`    | Usage examples           |

</div>

</div>

</Cols>

---

# Exercise 5 — man pages

<Callout type="exercise" mt="1rem">
Use <code>man</code> to find what each of these commands does. Write a <strong>one-line description</strong> for each.
</Callout>

<Cols>

<div>
<Subtitle>Commands to look up</Subtitle>

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
<Subtitle>Expected output</Subtitle>

<div style="font-size: 0.8em">

- `uname` — your description
- `whoami` — your description
- `ls` — your description
- `head` — your description
- `echo` — your description

</div>

</div>

</Cols>

<Callout type="tip">
Look at the <strong>NAME</strong> section at the top of each man page — it gives you a short summary.
</Callout>

---

# Exercise 6 — Reading man pages

<Callout type="exercise" mt="1rem">
Use <code>man</code> to find what each <strong>option</strong> does. Write a one-line explanation for each.
</Callout>

<Cols>

<div>
<Subtitle>Find the meaning of each option</Subtitle>

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
<Subtitle>Expected output</Subtitle>

<div style="font-size: 0.85em">

1. `head -3` — your explanation
2. `uname -a` — your explanation
3. `ls -l` — your explanation
4. `echo -n` — your explanation
5. `cat -n` — your explanation
6. `date -u` — your explanation

</div>

</div>

</Cols>

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

<Cols gap="8">

<div>
<Subtitle>Why the difference?</Subtitle>

<div style="font-size: 0.85em">

- `man` — provided by the **system**, works for most commands
- `--help` — built into **each command** by its developer
- Some simple commands don't include `--help`

</div>

</div>

<div>
<Subtitle>When to use what</Subtitle>

<div style="font-size: 0.85em">

- **Full documentation** → `man command`
- **Quick reminder** → `command --help`
- **Shell built-ins** (cd, alias) → `help command`

</div>

</div>

</Cols>

---

# Built-in Commands

Some commands are **part of the shell itself**: they change things that only the shell can change.

<Subtitle>Example of built-in command (part of Bash)</Subtitle>

`cd` — change directory

`cd` **must** be built-in: an external program runs in its own process and cannot change the shell's current directory. Only the shell itself can do that.

<Callout type="info">
Use <code>type command</code> to check if a command is built-in.
</Callout>

<Spacer />

<Cols gap="8">

<div>
<Subtitle>Getting help</Subtitle>

<div style="font-size: 0.85em">

- Built-in commands **don't have `man` pages**
- Use `help cd` instead of `man cd`

</div>

</div>

<div>
<Subtitle>Example</Subtitle>

<div style="font-size: 0.85em">

```bash
man cd     # no manual entry!
help cd    # works!
```

</div>

</div>

</Cols>

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

From now on, **always use `man` or `--help` before asking for help**!

