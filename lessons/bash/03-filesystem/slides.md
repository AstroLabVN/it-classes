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

| Directory        | Purpose                                 |
|------------------|-----------------------------------------|
| `/`              | Root directory (everything begins here) |
| `/bin`           | Essential user binaries (`ls`, `cp`)    |
| `/sbin`          | System binaries (`reboot`, `fdisk`)     |
| `/boot`          | Bootloader files (`vmlinuz`, `grub`)    |
| `/dev`           | Device files (`/dev/sda`, `/dev/null`)  |
| `/etc`           | System configuration files              |
| `/home`          | User home directories                   |
| `/lib`, `/lib64` | Essential shared libraries              |
| `/media`         | Removable media mount points            |
| `/mnt`           | Temporary mount points for sysadmins    |

</div>

<div style="font-size: 0.8em; line-height: 1px">

| Directory | Purpose                                       |
|-----------|-----------------------------------------------|
| `/opt`    | Optional or third-party software              |
| `/proc`   | Virtual filesystem for system info            |
| `/root`   | Home directory for root user                  |
| `/run`    | Runtime variable data                         |
| `/srv`    | Site-specific service data                    |
| `/sys`    | Interface to the kernel                       |
| `/tmp`    | Temporary files                               |
| `/usr`    | Secondary hierarchy (applications, libraries) |
| `/var`    | Variable data (logs, mail, spool files)       |

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

- `/home/student/` — your **personal directory**
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

<Cols gap="60px">

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

| Symbol | Meaning                         | Example       |
|--------|---------------------------------|---------------|
| `/`    | Root directory / path separator | `cd /`        |
| `.`    | Current directory               | `./script.sh` |
| `..`   | Parent directory (one level up) | `cd ..`       |
| `~`    | Home directory                  | `cd ~`        |

</div>

<Spacer />

<Cols gap="50px">

<div>
<Subtitle>Example</Subtitle>

```bash
# If you are in /home/student/Documents
pwd              # /home/student/Documents
cd ..            # go to /home/student
cd ./Downloads   # go to /home/student/Downloads
cd ~             # go to /home/student
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

<Cols gap="50px">

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

<Cols gap="50px">

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
Run each command below. Write down the output of each <code>pwd</code>.
</Callout>

<Cols cols="3" gap="50px">

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

# File Types in Linux

Remember: **everything is a file** in Linux. But not all files are the same.

When you run `ls -l`, the **first character** tells you the file type:

<div style="font-size: 0.85em; max-width: 90%; line-height: 2px">

| Char | Type             | What it is                                        | Example             | Note    |
|------|------------------|---------------------------------------------------|---------------------|----------------|
| `-`  | Regular file     | Text, scripts, binaries — the "normal" files      | `/etc/hostname`     |  |
| `d`  | Directory        | A folder that contains other files                | `/home`             |  |
| `l`  | Symbolic link    | A shortcut that points to another file            | `/bin` → `/usr/bin` |  |
| `c`  | Character device | Interface to hardware (streams data char by char) | `/dev/null`         | rare |
| `b`  | Block device     | Interface to storage (reads/writes in blocks)     | `/dev/sda`          | rare |

</div>

<Spacer />

<Subtitle>Example</Subtitle>

```bash
ls -l /etc/hostname

-rw-r--r-- 1 root root 7 Jan 1 10:00 /etc/hostname   # The first character is `-` → regular file.

```

---

# Regular Files (`-`)

The most common type. A regular file holds **data** — text, code, images, binaries, anything.

```bash
ls -l /etc/hostname

-rw-r--r-- 1 root root 7 Jan  1 10:00 /etc/hostname   # The first character is `-` → regular file.
```

<Spacer size="2rem" />

<Subtitle>Examples of regular files</Subtitle>

<div style="font-size: 0.85em">

- `/etc/hostname` — system configuration (text)
- `/home/student/notes.txt` — your own files
- `/var/log/syslog` — log files (text)
- `/usr/bin/ls` — a program (binary)

</div>

---

# Directories (`d`)

A directory is a special file that **contains references to other files and directories**.

```bash
ls -ld /home

drwxr-xr-x 3 root root 4096 Jan  1 10:00 /home   # The first character is `d` → directory.
```

<Spacer />

<Subtitle>Why `ls -ld`?</Subtitle>

<Cols>

<div>

`ls -l /home` — shows the **contents** of `/home`:

```
drwxr-xr-x 5 student student 4096 ... student
drwxr-xr-x 3 alice   alice   4096 ... alice
```

</div>

<div>

`ls -ld /home` — shows `/home` **itself**:

```
drwxr-xr-x 4 root root 4096 ... /home
```

</div>

</Cols>

<Callout type="tip">
Without <code>-d</code>, <code>ls</code> looks <strong>inside</strong> the directory instead of showing its own entry.
</Callout>

---

# Symbolic Links (`l`)

A symbolic link (symlink) is a **shortcut** — a file that points to another file or directory.

```bash
ls -l /bin

lrwxrwxrwx 1 root root 7 Jan  1 10:00 /bin -> usr/bin   # The first character is `l` → link.
```

The `->` arrow shows the **target**: accessing `/bin` actually takes you to `/usr/bin`.

<Spacer space="0.5rem" />

<Subtitle>Why do symlinks exist?</Subtitle>

<div style="font-size: 0.85em">

Programs used to live in `/bin`. Modern Linux moved them to `/usr/bin` — but thousands of scripts still reference `/bin/ls`, `/bin/cat`, etc. A symlink lets the **old path keep working** without breaking anything.

</div>

<Spacer space="0.5rem" />

<Cols gap="4rem">

<div>
<Subtitle>Common symlinks</Subtitle>

<div style="font-size: 0.85em">

```bash
ls -ld /bin             # /bin -> usr/bin
ls -l /usr/bin/python3  # python3 -> python3.12
```

</div>

</div>

<div>
<Subtitle>Broken links</Subtitle>

<div style="font-size: 0.85em">

If the **target is deleted**, the link still exists but points to nothing — it becomes a **broken link**.

</div>

</div>

</Cols>


---

# Exercise 2 — What kind of file?

<Callout type="exercise" mt="1rem">
Create the table below. Run each command and write your answers in it.
</Callout>

<Spacer />

<div style="font-size: 0.8em; line-height: 2px; max-width: 80%">

| Command                   | 1st char | File type    | Why `-ld` or `-l`?                   |
|---------------------------|----------|--------------|--------------------------------------|
| `ls -l  /etc/passwd`      | `-`      | Regular file | `-l` because it's not a directory    |
| `ls -l  /etc/hostname`    |          |              |                                      |
| `ls -ld /tmp`             |          |              |                                      |
| `ls -l  /dev/null`        |          |              |                                      |
| `ls -ld /bin`             |          |              |                                      |
| `ls -ld /home`            |          |              |                                      |
| `ls -l  /usr/bin/python3` |          |              |                                      |

</div>


---
layout: center
class: text-center
---

<Title>Creating & Managing Files</Title>

---

# Creating Files — `touch`

`touch` creates an **empty file** (or updates its timestamp if it already exists).

```bash
touch myfile.txt            # creates one empty file

touch file1.txt file2.txt   # creates multiple files at once

touch .hidden-file          # creates a hidden file
```

<Spacer />

<Callout type="info">
<code>touch</code> does <strong>not</strong> add content to the file — it only creates it. The file will be empty (0 bytes).
</Callout>

---

# Creating Directories — `mkdir`

`mkdir` creates **new directories** (folders).

```bash
mkdir mydir                        # creates one directory

mkdir dir1 dir2 dir3               # creates multiple directories at once

mkdir -p parent/child/grandchild   # creates the entire path (parent directories included)
```

<Spacer />

<Callout type="warning">
Without <code>-p</code>, <code>mkdir parent/child</code> fails if <code>parent/</code> doesn't exist yet.
</Callout>

---

# Copying — `cp`

`cp` duplicates files or directories — the original stays untouched.

```bash
cp file.txt copy.txt         # copy a file to a **new name**

cp file.txt mydir/           # copy a file **into** a directory

cp -r mydir/ mydir-backup/   # copy an **entire directory** (recursive)
```

<Spacer />

<Callout type="warning">
To copy a directory, you <strong>must</strong> use <code>-r</code> (recursive). Without it, <code>cp</code> will refuse.
</Callout>

---

# Moving & Renaming — `mv`

`mv` does two things: **move** files and **rename** them.

```bash
mv old.txt new.txt    # rename a file

mv file.txt mydir/    # move a file into a directory

mv mydir/ /tmp/       # move a directory
```

<Spacer />

<Callout type="info">
Unlike <code>cp</code>, <code>mv</code> works on directories <strong>without</strong> needing <code>-r</code>.
</Callout>

---

# Deleting — `rm` and `rmdir`

`rm` deletes files, `rmdir` deletes **empty** directories.

```bash
rm file.txt                # delete one file

rm file1.txt file2.txt     # delete multiple files

rmdir emptydir/            # delete an empty directory only

rm -r mydir/               # delete a directory and everything inside
```

<Spacer />

<Callout type="danger">
<code>rm</code> is <strong>permanent</strong> — there is no trash bin, no undo. Double-check before you delete!
</Callout>

---

# Exercise 3 — Create a project structure

<Callout type="exercise" mt="1rem">
Create the following directory structure using <code>mkdir</code> and <code>touch</code>. Then verify with <code>ls -R</code>.<br>
Write each command you used.
</Callout>

```bash
~/my-project/
├── src/
│   ├── main.sh
│   └── utils.sh
├── docs/
│   └── readme.txt
└── tests/
    └── test1.sh
```

<Callout type="exercise" mt="1rem">
Write the command to create the following directory structure in <code>one command</code> only.
</Callout>


```bash
~/my-project-2/
my-project-2/
└── folder1
    └── folder2
        └── folder3
```

---

# Exercise 4 — Copy, move, delete

<Callout type="exercise" mt="1rem">
Using the project structure from <strong>Exercise 3</strong>, perform these operations. Use <code>ls</code> to verify after each step.
</Callout>

<div style="font-size: 0.85em">

1. **Copy** `src/main.sh` to `src/main-backup.sh`
2. **Copy** the entire `src/` directory to `src-backup/`
3. **Move** `docs/readme.txt` to `docs/README.txt` (rename it)
4. **Move** `tests/test1.sh` to `src/test1.sh`
5. **Delete** the `tests/` directory (it should be empty now)
6. **Verify** your final structure with `ls -R ~/my-project`
7. Run `history` to review all the commands you ran, then **copy them into your Markdown file**

</div>

<Callout type="tip">
<code>history</code> displays all the commands you've typed in the current session — very useful to retrace your steps!
</Callout>

---

# Exercise 5 — Find the Error

<Callout type="exercise" mt="1rem">
Each command below contains an <strong>error</strong>. For each one:

1. **Identify** what is wrong
2. **Explain** why it's wrong
3. **Write** the corrected command
</Callout>

<Spacer />

<Cols>

<div>
<Subtitle>1 — Copy a file</Subtitle>

```bash
cp -r file.txt file-copy.txt
```

<Spacer />

<Subtitle>2 — Create a directory called "my project"</Subtitle>

```bash
mkdir my project
```

</div>

<div>
<Subtitle>3 — Delete a directory with files inside</Subtitle>

```bash
rmdir mydir/
```

<Spacer />

<Subtitle>4 — Go to /home/student/Documents</Subtitle>

```bash
cd documents
```

</div>

</Cols>

---
layout: center
class: text-center
---

<Title>Reading Files</Title>

---

# Viewing File Content — `cat`

`cat` prints the **entire content** of a file.

<Subtitle>Syntax</Subtitle>

```bash
cat /etc/hostname    # display the file content


cat -n /etc/passwd   # display with line numbers
```

<Spacer />

<Callout type="tip">
<code>cat</code> dumps the <strong>entire</strong> file at once. For large files, use <code>head</code>, <code>tail</code>, or <code>less</code> instead.
</Callout>


---

# Scrolling Through Files — `less`

`less` lets you **scroll** through a file interactively.

```bash
less /etc/passwd
```

<Spacer />

<div style="font-size:0.7em; max-width:50%; line-height: 2px">

| Key           | Action               |
|---------------|----------------------|
| `f` / `Space` | Scroll down one page |
| `b`           | Scroll up one page   |
| `Up` / `Down` | Scroll one line      |
| `/word`       | Search for "word"    |
| `n`           | Next search result   |
| `q`           | Quit                 |

</div>

<Spacer />

<Callout type="tip">
These are the <strong>same shortcuts</strong> as <code>man</code> pages — because <code>man</code> uses <code>less</code> under the hood!
</Callout>


---

# First & Last Lines — `head` and `tail`

`head` shows the **beginning** of a file, `tail` shows the **end**.

```bash
head /etc/passwd        # show the first 10 lines (default)

head -5 /etc/passwd     # show the first 5 lines

tail /etc/passwd        # show the last 10 lines (default)

tail -3 /etc/passwd     # show the last 3 lines
```

<Spacer />

<Callout type="info">
<code>head</code> and <code>tail</code> are very useful for <strong>large files</strong> — you don't need to see the entire file to check its content.
</Callout>

---

# Exercise 6 — Reading files

<Callout type="exercise" mt="1rem">
Use the right command for each task. Write the command you used and the output.
</Callout>

<Spacer />

<div style="font-size: 0.8em; max-width: 70%; line-height: 2px">

| # | Task                                           | Command |
|---|------------------------------------------------|---------|
| 1 | Display the content of `/etc/hostname`         | `???`   |
| 2 | Display the **first 3 lines** of `/etc/passwd` | `???`   |
| 3 | Display the **last 5 lines** of `/etc/passwd`  | `???`   |
| 4 | Display `/etc/passwd` **with line numbers**    | `???`   |
| 5 | Scroll through `/etc/passwd` interactively     | `???`   |
| 6 | Count how many **lines** are in `/etc/passwd`  | `???`   |

</div>

<Spacer />

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

<Spacer />

<Cols>

<div>
<Subtitle>1 — Display a file's content</Subtitle>

```bash
cat /etc/doesnotexist.txt
```

<Spacer />

<Subtitle>2 — Show the first 5 lines</Subtitle>

```bash
head 5 /etc/passwd
```

</div>

<div>
<Subtitle>3 — Create a file in /etc</Subtitle>

```bash
touch /etc/myfile.txt
```

<Spacer />

<Subtitle>4 — Move a file</Subtitle>

```bash
mv file.txt
```

</div>

</Cols>

---
layout: center
class: text-center
---

<Title>Well done!</Title>

<Spacer />

You now know how to navigate, create, and manage files!

---
layout: center
class: text-center
---

<Title size="2em">What's Next?</Title>

<Spacer />

### Next lesson: **File Permissions**

Who can read, write, and execute — and how to change it.

<Spacer size="2rem" />

<Callout type="tip">
Practice creating, moving, and deleting files until it feels natural!
</Callout>
