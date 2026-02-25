---
theme: seriph
title: "Introduction to Bash"
info: |
  ## Introduction to Bash
  A beginner-friendly introduction to the Bash shell and command line.
class: text-center
drawings:
  persist: false
transition: slide-left
mdc: true
---

# Introduction to Bash

Getting started with the command line

<div class="abs-br m-6 flex gap-2">
  <span class="text-sm opacity-50">AstroLab IT Classes</span>
</div>

---

# What is Bash?

<v-clicks>

- **B**ourne **A**gain **Sh**ell — a Unix shell and command language
- Default shell on most Linux distributions and macOS (before zsh)
- A way to **talk to your computer** using text commands
- Much older than GUIs — and often much faster

</v-clicks>

---

# Why Learn the Command Line?

<v-clicks>

- **Speed** — many tasks are faster with commands than clicking
- **Automation** — write scripts to repeat tasks automatically
- **Remote access** — servers usually have no graphical interface
- **Power** — combine small tools to solve complex problems
- **Universal** — works on Linux, macOS, WSL, cloud servers

</v-clicks>

---
layout: two-cols
---

# Terminal vs Shell

<v-clicks>

**Terminal** (emulator)
- The *window* you type in
- Examples: GNOME Terminal, iTerm2, Windows Terminal

**Shell**
- The *program* interpreting your commands
- Examples: Bash, Zsh, Fish

</v-clicks>

::right::

<div class="mt-12 ml-4">

```
┌──────────────────────────┐
│  Terminal (window)        │
│                          │
│  ┌────────────────────┐  │
│  │  Shell (bash)      │  │
│  │                    │  │
│  │  $ your commands   │  │
│  │    go here         │  │
│  └────────────────────┘  │
│                          │
└──────────────────────────┘
```

</div>

---

# The Prompt

When you open a terminal, you see something like:

```
username@hostname:~$
```

<v-clicks>

| Part | Meaning |
|------|---------|
| `username` | Your user name |
| `hostname` | Your computer's name |
| `~` | Current directory (home) |
| `$` | Ready for input (`#` = root) |

</v-clicks>

---

# Your First Commands

```bash
# Who am I?
whoami

# Where am I?
pwd

# What's here?
ls

# What's the date?
date
```

<v-click>

Try each one in your terminal!

</v-click>

---

# Navigating the Filesystem

```bash
# List files (detailed)
ls -la

# Change directory
cd /home
cd ~          # go home
cd ..         # go up one level
cd -          # go back to previous dir

# Print working directory
pwd
```

<v-click>

> Think of `cd` as "change directory" and `pwd` as "print working directory"

</v-click>

---

# File Paths

Two types of paths:

```bash
# Absolute path — starts from root /
/home/student/Documents/notes.txt

# Relative path — starts from current directory
Documents/notes.txt
./Documents/notes.txt
../other-user/file.txt
```

<v-clicks>

| Symbol | Meaning |
|--------|---------|
| `/` | Root directory / path separator |
| `.` | Current directory |
| `..` | Parent directory |
| `~` | Home directory |

</v-clicks>

---

# Working with Files

```bash
# Create an empty file
touch myfile.txt

# Create a directory
mkdir mydir

# Copy a file
cp myfile.txt mydir/

# Move / rename a file
mv myfile.txt renamed.txt

# Remove a file
rm renamed.txt

# Remove a directory
rmdir mydir        # only if empty
rm -r mydir        # recursive (careful!)
```

---

# Reading Files

```bash
# Print entire file
cat notes.txt

# Page through a file
less notes.txt        # q to quit

# First / last lines
head -5 notes.txt     # first 5 lines
tail -5 notes.txt     # last 5 lines
```

<v-click>

> `less` is more useful than `more` (yes, really)

</v-click>

---
layout: section
---

# Hands-On Practice

---

# Exercise 1: Explore

```bash
# 1. Open a terminal
# 2. Run these commands and observe the output:
whoami
pwd
ls -la
cd /tmp
pwd
ls
cd ~
```

---

# Exercise 2: Create & Organize

```bash
# 1. Create a project structure:
mkdir -p ~/bash-practice/notes
mkdir -p ~/bash-practice/scripts

# 2. Create some files:
touch ~/bash-practice/notes/day1.txt
touch ~/bash-practice/scripts/hello.sh

# 3. Verify:
ls -R ~/bash-practice

# 4. Clean up:
rm -r ~/bash-practice
```

---

# Key Takeaways

<v-clicks>

1. **Bash** is a shell — it interprets your text commands
2. **Navigation:** `cd`, `pwd`, `ls` to move around
3. **Files:** `touch`, `cp`, `mv`, `rm` to manage files
4. **Paths:** absolute (`/home/...`) vs relative (`./...`)
5. Practice makes permanent — use the terminal daily!

</v-clicks>

---
layout: center
class: text-center
---

# Next Up

## Bash 02 — Variables & Environment

<div class="mt-4 text-gray-400">

Commands, arguments, and how Bash processes your input

</div>
