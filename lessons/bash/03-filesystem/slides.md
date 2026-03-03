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

<Title>Files & Filesystem</Title>

<Spacer />

Understanding where things live and how to navigate

---

# The Linux Filesystem

In Linux, everything starts from a single **root directory**: `/`

There are **no drive letters** like `C:\` or `D:\` on Windows — just one tree.

```
/
├── home/
│   └── student/
│       ├── Documents/
│       └── Downloads/
├── etc/
├── tmp/
├── usr/
│   └── bin/
└── var/
```

<Callout type="info">
Everything is a <strong>file</strong> in Linux — even directories, devices, and system settings.
</Callout>

---

# The Filesystem Hierarchy

Every Linux system follows the same directory structure. Each directory has a specific role.

<Cols>

<div style="font-size: 0.8em; line-height: 1px">

| Directory        | Purpose                                   |
| ---------------- | ----------------------------------------- |
| `/`              | Root directory (everything begins here)   |
| `/bin`           | Essential user binaries (`ls`, `cp`)      |
| `/sbin`          | System binaries (`reboot`, `fdisk`)       |
| `/boot`          | Bootloader files (`vmlinuz`, `grub`)      |
| `/dev`           | Device files (`/dev/sda`, `/dev/null`)    |
| `/etc`           | System configuration files                |
| `/home`          | User home directories                     |
| `/lib`, `/lib64` | Essential shared libraries                |
| `/media`         | Removable media mount points              |
| `/mnt`    | Temporary mount points for sysadmins               |

</div>

<div style="font-size: 0.8em; line-height: 1px">

| Directory | Purpose                                            |
| --------- | -------------------------------------------------- |
| `/opt`    | Optional or third-party software                   |
| `/proc`   | Virtual filesystem for system info                 |
| `/root`   | Home directory for root user                       |
| `/run`    | Runtime variable data                              |
| `/srv`    | Site-specific service data                         |
| `/sys`    | Interface to the kernel                            |
| `/tmp`    | Temporary files                                    |
| `/usr`    | Secondary hierarchy (applications, libraries)      |
| `/var`    | Variable data (logs, mail, spool files)            |

</div>

</Cols>

<Callout type="tip">
You don't need to memorize all of these. Run <code>ls -l /</code> to see them on your own machine!
</Callout>


---

# Key Directories

<Cols>

<div>
<Subtitle>User directories</Subtitle>

<div style="font-size: 0.85em">

- `/home/student/` — your **personal files**
- `/tmp/` — **temporary** files (cleared on reboot)
- `/root/` — home directory for the **root** user

</div>

</div>

<div>
<Subtitle>System directories</Subtitle>

<div style="font-size: 0.85em">

- `/etc/` — **configuration** files
- `/usr/bin/` — **programs** (ls, cat, head...)
- `/var/` — **variable** data (logs, databases)
- `/bin/` — **essential** system commands

</div>

</div>

</Cols>

<Callout type="warning">
You can <strong>read</strong> most system directories, but you need <strong>root privileges</strong> to modify them.
</Callout>

---

# Absolute vs Relative Paths

There are two ways to refer to a file or directory:

<Cols>

<div>
<Subtitle>Absolute path</Subtitle>

Starts from the root `/` — always the **full address**.

```bash
/home/student/Documents/notes.txt
```

Works from **anywhere** on the system.

</div>

<div>
<Subtitle>Relative path</Subtitle>

Starts from your **current directory**.

```bash
Documents/notes.txt
./Documents/notes.txt
```

Depends on **where you are**.

</div>

</Cols>

<Callout type="tip">
Use <code>pwd</code> to check your current directory if you're unsure where you are.
</Callout>

---

# Path Symbols

<div style="font-size:0.7em; max-width:50%; line-height: 2px">

| Symbol | Meaning | Example |
|--------|---------|---------|
| `/` | Root directory / path separator | `cd /` |
| `.` | Current directory | `./script.sh` |
| `..` | Parent directory (one level up) | `cd ..` |
| `~` | Home directory | `cd ~` |

</div>

<Spacer />

<Cols>

<div>
<Subtitle>Example</Subtitle>

```bash
# If you are in /home/student/Documents
pwd         # /home/student/Documents
cd ..       # go to /home/student
cd ./Downloads  # go to /home/student/Downloads
cd ~        # go to /home/student
```

</div>

<div>
<Subtitle>Result</Subtitle>

<div style="font-size: 0.85em">

- `..` goes **up one level**
- `.` refers to **where you are now**
- `~` always takes you **home**

</div>

</div>

</Cols>

---

# Navigating — `cd` and `pwd`

<Cols>

<div>
<Subtitle>Commands</Subtitle>

```bash
pwd

cd /tmp

cd ~

cd ..

cd -
```

</div>

<div>
<Subtitle>What they do</Subtitle>

- `pwd` — **print** current directory
- `cd /tmp` — go to `/tmp` (absolute)
- `cd ~` — go **home**
- `cd ..` — go **up** one level
- `cd -` — go to **previous** directory

</div>

</Cols>

<Callout type="info">
<code>cd</code> without any argument also takes you home — same as <code>cd ~</code>.
</Callout>

---

# Listing Files — `ls`

<Cols>

<div>
<Subtitle>Commands</Subtitle>

```bash
ls

ls -l

ls -a

ls -la

ls -lh
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `ls` — **list** files and directories
- `ls -l` — **long format** (permissions, size, date)
- `ls -a` — show **hidden** files (starting with `.`)
- `ls -la` — long format **+ hidden** files
- `ls -lh` — long format with **human-readable** sizes

</div>

</div>

</Cols>

<Callout type="tip">
Files starting with a <code>.</code> (dot) are <strong>hidden</strong>. Use <code>ls -a</code> to see them. Examples: <code>.bashrc</code>, <code>.profile</code>.
</Callout>

---

# Exercise 1 — Navigate the filesystem

<Callout type="exercise" mt="1rem">
Run each command below. Write down the output of each <code>pwd</code> in your <code>03-filesystem.md</code> file.
</Callout>

<Cols cols="3">

<div>

<Subtitle size="sm">1</Subtitle>

```bash
cd
pwd
```

<Subtitle size="sm">2</Subtitle>

```bash
cd /tmp
pwd
```

<Subtitle size="sm">3</Subtitle>

```bash
cd ~
pwd
```

<Subtitle size="sm">4</Subtitle>

```bash
cd ..
pwd
```

</div>

<div>

<Subtitle size="sm">5</Subtitle>

```bash
cd -
pwd
```

<Subtitle size="sm">6</Subtitle>

```bash
cd /
pwd
```

<Subtitle size="sm">7</Subtitle>

```bash
cd /etc
pwd
```

<Subtitle size="sm">8</Subtitle>

```bash
cd /home
pwd
```

</div>

<div>
<Subtitle>Expected output</Subtitle>

<div style="font-size: 0.85em">

```
1. ???
2. ???
3. ???
4. ???
5. ???
6. ???
7. ???
8. ???
```

</div>

</div>

</Cols>

---

# Exercise 2 — Explore directories

<Callout type="exercise" mt="1rem">
Use <code>ls</code> to explore these directories. Write what you find in each one.
</Callout>

<Cols>

<div>
<Subtitle>Directories to explore</Subtitle>

```bash
ls /home

ls /tmp

ls /etc

ls /usr/bin
```

</div>

<div>
<Subtitle>Expected output</Subtitle>

<div style="font-size: 0.85em">

For each directory, write:
- **What kind of files** are in it (config files, programs, personal files...)
- **How many files** (approximately)

</div>

</div>

</Cols>

<Callout type="info">
Try <code>ls -la</code> on each directory to see hidden files and details.
</Callout>

---
layout: center
class: text-center
---

<Title>Creating & Managing Files</Title>

---

# Creating Files — `touch`

`touch` creates an **empty file** (or updates its timestamp if it already exists).

<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
touch myfile.txt

touch file1.txt file2.txt

touch .hidden-file
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `touch myfile.txt` — creates **one** empty file
- `touch file1.txt file2.txt` — creates **multiple** files at once
- `touch .hidden-file` — creates a **hidden** file

</div>

</div>

</Cols>

<Callout type="info">
<code>touch</code> does <strong>not</strong> add content to the file — it only creates it. The file will be empty (0 bytes).
</Callout>

---

# Creating Directories — `mkdir`

<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
mkdir mydir

mkdir dir1 dir2 dir3

mkdir -p parent/child/grandchild
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `mkdir mydir` — creates **one** directory
- `mkdir dir1 dir2 dir3` — creates **multiple** at once
- `mkdir -p parent/child/grandchild` — creates the **entire path** (parent directories included)

</div>

</div>

</Cols>

<Callout type="warning">
Without <code>-p</code>, <code>mkdir parent/child</code> fails if <code>parent/</code> doesn't exist yet.
</Callout>

---

# Copying — `cp`

<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
cp file.txt copy.txt

cp file.txt mydir/

cp -r mydir/ mydir-backup/
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `cp file.txt copy.txt` — copy a file to a **new name**
- `cp file.txt mydir/` — copy a file **into** a directory
- `cp -r mydir/ mydir-backup/` — copy an **entire directory** (recursive)

</div>

</div>

</Cols>

<Callout type="warning">
To copy a directory, you <strong>must</strong> use <code>-r</code> (recursive). Without it, <code>cp</code> will refuse.
</Callout>

---

# Moving & Renaming — `mv`

`mv` does two things: **move** files and **rename** them.

<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
mv old.txt new.txt

mv file.txt mydir/

mv mydir/ /tmp/
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `mv old.txt new.txt` — **rename** a file
- `mv file.txt mydir/` — **move** a file into a directory
- `mv mydir/ /tmp/` — **move** a directory

</div>

</div>

</Cols>

<Callout type="info">
Unlike <code>cp</code>, <code>mv</code> works on directories <strong>without</strong> needing <code>-r</code>.
</Callout>

---

# Deleting — `rm` and `rmdir`

<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
rm file.txt

rm file1.txt file2.txt

rmdir emptydir/

rm -r mydir/
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `rm file.txt` — delete **one** file
- `rm file1.txt file2.txt` — delete **multiple** files
- `rmdir emptydir/` — delete an **empty** directory only
- `rm -r mydir/` — delete a directory and **everything inside**

</div>

</div>

</Cols>

<Callout type="danger">
<code>rm</code> is <strong>permanent</strong> — there is no trash bin, no undo. Double-check before you delete!
</Callout>

---

# Exercise 3 — Create a project structure

<Callout type="exercise" mt="1rem">
Create the following directory structure using <code>mkdir</code> and <code>touch</code>. Then verify with <code>ls -R</code>.
</Callout>

```
~/my-project/
├── src/
│   ├── main.sh
│   └── utils.sh
├── docs/
│   └── readme.txt
└── tests/
    └── test1.sh
```

<Cols>

<div>
<Subtitle>Hints</Subtitle>

<div style="font-size: 0.85em">

- Use `mkdir -p` to create nested directories
- Use `touch` to create the files
- Use `ls -R ~/my-project` to verify

</div>

</div>

<div>
<Subtitle>Verify</Subtitle>

```bash
ls -R ~/my-project
```

</div>

</Cols>

---

# Exercise 4 — Copy, move, delete

<Callout type="exercise" mt="1rem">
Using the project from Exercise 3, perform these operations. Use <code>ls</code> to verify after each step.
</Callout>

<div style="font-size: 0.85em">

1. **Copy** `src/main.sh` to `src/main-backup.sh`
2. **Copy** the entire `src/` directory to `src-backup/`
3. **Move** `docs/readme.txt` to `docs/README.txt` (rename it)
4. **Move** `tests/test1.sh` to `src/test1.sh`
5. **Delete** the `tests/` directory (it should be empty now)
6. **Verify** your final structure with `ls -R ~/my-project`

</div>

<Callout type="tip">
Remember: <code>cp -r</code> for copying directories, <code>rmdir</code> for empty directories.
</Callout>

---

# Exercise 5 — Find the Error

<Callout type="exercise" mt="1rem">
Each command below contains an <strong>error</strong>. For each one:

1. **Identify** what is wrong
2. **Explain** why it's wrong
3. **Write** the corrected command
</Callout>

<Subtitle>Broken commands</Subtitle>

```bash
# 1
cp -r file.txt file-copy.txt
```

```bash
# 2
mkdir my project
```

```bash
# 3
rmdir mydir/
# (mydir/ contains files)
```

```bash
# 4
cd documents
# (you want to go to /home/student/Documents)
```

---
layout: center
class: text-center
---

<Title>Reading Files</Title>

---

# Viewing File Content — `cat`

`cat` prints the **entire content** of a file.

<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
cat /etc/hostname

cat -n /etc/passwd
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `cat /etc/hostname` — display the file content
- `cat -n /etc/passwd` — display with **line numbers**

</div>

</div>

</Cols>

<Callout type="warning">
<code>cat</code> dumps the <strong>entire</strong> file at once. For large files, use <code>head</code>, <code>tail</code>, or <code>less</code> instead.
</Callout>

---

# First & Last Lines — `head` and `tail`

<Cols>

<div>
<Subtitle>Syntax</Subtitle>

```bash
head /etc/passwd

head -5 /etc/passwd

tail /etc/passwd

tail -3 /etc/passwd
```

</div>

<div>
<Subtitle>What they do</Subtitle>

<div style="font-size: 0.85em">

- `head` — show the **first 10 lines** (default)
- `head -5` — show the **first 5 lines**
- `tail` — show the **last 10 lines** (default)
- `tail -3` — show the **last 3 lines**

</div>

</div>

</Cols>

<Callout type="info">
<code>head</code> and <code>tail</code> are very useful for <strong>large files</strong> — you don't need to see the entire file to check its content.
</Callout>

---

# Scrolling Through Files — `less`

`less` lets you **scroll** through a file interactively.

```bash
less /etc/passwd
```

<div style="font-size:0.7em; max-width:50%; line-height: 2px">

| Key | Action |
|-----|--------|
| `f` / `Space` | Scroll down one page |
| `b` | Scroll up one page |
| `Up` / `Down` | Scroll one line |
| `/word` | Search for "word" |
| `n` | Next search result |
| `q` | Quit |

</div>

<Callout type="tip">
These are the <strong>same shortcuts</strong> as <code>man</code> pages — because <code>man</code> uses <code>less</code> under the hood!
</Callout>

---

# Exercise 6 — Reading files

<Callout type="exercise" mt="1rem">
Use the right command for each task. Write the command you used and the output.
</Callout>

<div style="font-size: 0.85em">

| # | Task | Command |
|---|------|---------|
| 1 | Display the content of `/etc/hostname` | `???` |
| 2 | Display the **first 3 lines** of `/etc/passwd` | `???` |
| 3 | Display the **last 5 lines** of `/etc/passwd` | `???` |
| 4 | Display `/etc/passwd` **with line numbers** | `???` |
| 5 | Scroll through `/etc/passwd` interactively | `???` |
| 6 | Count how many **lines** are in `/etc/passwd` | `???` |

</div>

<Callout type="tip">
For #6, check <code>man wc</code> — you learned this command in the previous lesson!
</Callout>

---

# Exercise 7 — Find the Error

<Callout type="exercise" mt="1rem">
Each command below contains an <strong>error</strong>. For each one:

1. **Identify** what is wrong
2. **Explain** why it's wrong
3. **Write** the corrected command
</Callout>

<Subtitle>Broken commands</Subtitle>

```bash
# 1
cat /etc/doesnotexist.txt
```

```bash
# 2
head 5 /etc/passwd
```

```bash
# 3
touch /etc/myfile.txt
```

```bash
# 4
mv file.txt
```

---
layout: center
class: text-center
---

<Title>Well done!</Title>

<Spacer />

You now know how to navigate, create, and manage files!

Next up: **file permissions** — who can read, write, and execute.
