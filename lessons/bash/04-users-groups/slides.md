---
theme: light-icons
colorSchema: dark
# colorSchema: light
drawings:
  persist: false
fonts:
  mono: Hack
layout: center
class: text-center
---

<Title>Users & Groups</Title>

<Spacer />

Understanding identity on a Linux system

---

# Why does this matter?

On a shared Linux system, you need answers to these questions:

<Spacer />

<div style="font-size: 0.95em">

- How do we **stop one user** from changing another user's files?
- How do we let a **team share** a folder safely?
- Why can't **normal users** install software or edit system files?

</div>

<Spacer />

The answer: Linux tracks **who you are** (users) and **what teams you belong to** (groups), and uses that to decide what you can do.

<Spacer />

<Callout type="info">
This lesson covers <strong>identity</strong> — who you are on the system. The next lessons will cover <strong>permissions</strong> — what you can do with files.
</Callout>

---

# What you will learn

By the end of this lesson, you will be able to:

<Spacer />

<div style="font-size: 0.9em">

- Explain what a **user** and a **group** are
- Inspect your identity with `whoami`, `id`, and `groups`
- Explain how users and groups are **created** and managed
- Recognize when a command needs **`sudo`**
- Create a user and group in a practice environment

</div>

---
layout: center
class: text-center
---

<Title>Users & Groups</Title>

---

# What is a User?

A **user** is an account on the system. Every command or program runs with a **user identity**.

<Subtitle>Types of users</Subtitle>

<div style="font-size: 0.85em">

- **Your account** — the one you log in with
- **Other people's accounts** — other humans on the system
- **root** — the administrator
- **Service accounts** — used by programs (e.g., `www-data`, `nobody`). You do not need to memorize these

</div>

<Spacer />

<Subtitle>Check who you are</Subtitle>

```bash
whoami   # print effective user name

student
```

<Spacer />

```bash
id   # print real and effective user and group IDs

uid=1000(student) gid=1000(student) groups=1000(student),27(sudo)
```

---

# What is a Group?

A **group** is a named collection of users. Groups make **sharing** easier.

<Cols>

<div>
<Subtitle>How groups work</Subtitle>

<div style="font-size: 0.85em">

- Every user has a **primary group** (created with the user)
- A user can belong to **multiple groups**
- Instead of giving access user by user, give access to the **group**

</div>

</div>

<div>
<Subtitle>Check groups</Subtitle>

```bash
groups

student sudo
```

Example for another user:

```bash
groups labuser

labuser : labuser projectred
```

</div>

</Cols>

<Spacer />

<Callout type="info">
In <code>id</code> output: <code>gid=</code> is the <strong>primary group</strong> (created with the user). Extra entries in <code>groups=</code> are <strong>supplementary groups</strong> the user was added to.
</Callout>

---

# Why Users and Groups matter

Linux is a **multi-user** system. Users and groups help:

<Cols>

<div>

<div style="font-size: 0.85em">

- **Protect** private files from other users
- **Share** files safely within a team
- **Control** who can change system settings
- **Reduce mistakes** by limiting what each user can do

</div>

</div>

<div>
<Subtitle>Key files</Subtitle>

<div style="font-size: 0.85em">

| File | Contains |
|------|----------|
| `/etc/passwd` | User accounts |
| `/etc/group` | Group definitions |
| `/etc/shadow` | Password hashes & account data |

</div>

<Spacer />

```bash
cat /etc/passwd | head -3

root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
```

</div>

</Cols>

---

# Creating Users and Groups

<Cols>

<div>
<Subtitle>Create a group</Subtitle>

```bash
sudo addgroup projectred

Adding group `projectred' ...
Done.
```

<Spacer />

<Subtitle>Create a user</Subtitle>

```bash
sudo adduser labuser
```

You will be asked for a password and optional details. Press **Enter** to skip the optional fields.

</div>

<div>
<Subtitle>Add user to group</Subtitle>

```bash
sudo adduser labuser projectred

Adding user `labuser' to group `projectred' ...
Done.
```

<Spacer />

<Subtitle>Verify</Subtitle>

```bash
id labuser

uid=1001(labuser) gid=1001(labuser)
groups=1001(labuser),1002(projectred)
```

</div>

</Cols>

<Callout type="info">
On Debian-like systems, we use <code>adduser</code> and <code>addgroup</code>.<br>You may see <code>useradd</code> and <code>groupadd</code> on other systems — same job, different syntax.
</Callout>

---
layout: center
class: text-center
---

<Title>A quick look at sudo</Title>

---

# What is `root`?

`root` is the **superuser** — the administrator account with **unlimited power**.

<Cols>

<div>
<Subtitle><code>root</code> can do anything</Subtitle>

<div style="font-size: 0.85em">

- Read, modify, or delete **any** file
- Install or remove software
- Create or delete **any** user
- Change **any** permission or ownership
- Start or stop **any** service
- Break the entire system in one command

</div>

</div>

<div>
<Subtitle><code>root</code> identity</Subtitle>

```bash
id root

uid=0(root) gid=0(root) groups=0(root)
```

- UID **0** is always root
- root's home directory is `/root` (not `/home/root`)

</div>

</Cols>

<Callout type="danger">
root has <strong>no safety net</strong>. Many dangerous commands run immediately with no confirmation — a typo like <code>rm -rf /</code> as root can destroy the entire system.
</Callout>

---

# What is `sudo`?

`sudo` stands for **"superuser do"** — it runs a single command as root.

```bash
sudo apt update          # run apt update as root

sudo ls /root            # list a directory only root can access
```

<Spacer />

<Cols>

<div>
<Subtitle>How it works</Subtitle>

<div style="font-size: 0.85em">

1. You type `sudo <command>`
2. The system checks if you are **allowed** to use sudo
3. You enter **your own password** (not root's)
4. The command runs **as root**
5. You return to your normal user

</div>

</div>

<div>
<Subtitle>Who can use sudo?</Subtitle>

<div style="font-size: 0.85em">

- Users in the **`sudo`** group can use sudo
- On Debian: your first user is added to `sudo` automatically

</div>

```bash
groups student

student : student sudo
```

</div>

</Cols>

<Callout type="tip">
As a beginner and in normal admin work, prefer <code>sudo</code> instead of logging in directly as <code>root</code>. With <code>sudo</code>, every privileged command is <strong>logged</strong>, you only have root power for <strong>one command</strong>, and you stay a normal user the rest of the time.
</Callout>

---

# Exercise 1 — Identity & Groups

<Callout type="exercise" mt="1rem">
Run each command and write down the output.
</Callout>

<Spacer />

<Table maxWidth: 70% fontSize="0.75em" lineHeight="1.4" padding="0.15rem 0.4rem" cols="3,40,35,32">

| # | Command                       | What does it show? | Output |
|---|-------------------------------|--------------------|--------|
| 1 | `whoami`                      |                    |        |
| 2 | `id`                          |                    |        |
| 3 | `groups`                      |                    |        |
| 4 | `cat /etc/passwd \| tail -3`  |                    |        |
| 5 | `cat /etc/group \| grep sudo` |                    |        |
| 6 | `sudo whoami`                 |                    |        |

</Table>

<Spacer />

<Callout type="exercise" mt="0rem">
Now answer these questions:

1. Which part of <code>id</code> output shows your user ID? Which part shows your main group?
2. Does your account belong to the <code>sudo</code> group?
3. Which file stores group definitions?
4. What is the <strong>difference</strong> between <code>whoami</code> and <code>sudo whoami</code>? Why?
</Callout>

<!--
**Command answers:**
1. `whoami` → your username (e.g., `student`)
2. `id` → uid, gid, and groups (e.g., `uid=1000(student) gid=1000(student) groups=1000(student),27(sudo)`)
3. `groups` → group names (e.g., `student sudo`)
4. `cat /etc/passwd | tail -3` → last 3 lines of the user database
5. `cat /etc/group | grep sudo` → the sudo group line (e.g., `sudo:x:27:student`)
6. `sudo whoami` → `root`

**Question answers:**
1. `uid=` shows your user ID, `gid=` shows your primary (main) group.
2. Check `groups` output — if `sudo` appears, yes.
3. `/etc/group`
4. `whoami` shows your current user. `sudo whoami` runs `whoami` as root, so it returns `root`. This proves that `sudo` temporarily switches your identity to the superuser.
-->

---

# Exercise 2 — Create Users & Groups (Lab)
<Callout type="warning" mt="1rem">
Requires <code>sudo</code>. Use your practice VM or lab machine only.
</Callout>

<Callout type="exercise" mt="1rem">
Follow the steps below. Run each command yourself and verify the result before moving on.
</Callout>

<Spacer />

<Table maxWidth: 70% fontSize="0.75em" lineHeight="1.4" padding="0.15rem 0.4rem" cols="3,30,30,32">

| # | Task                               | Command                           | How to verify                               |
|---|------------------------------------|-----------------------------------|---------------------------------------------|
| 1 | Create a group called `projectred` | `sudo addgroup projectred`        | `grep projectred /etc/group`                |
| 2 | Create a user called `labuser`     | `sudo adduser labuser`            | `id labuser`                                |
| 3 | Add `labuser` to `projectred`      | `sudo adduser labuser projectred` | `groups labuser`                            |
| 4 | Confirm group membership           | `id labuser`                      | Should show `projectred` in the groups list |
| 5 | Check the group file               | `grep projectred /etc/group`      | Should list `labuser` as a member           |

</Table>

<Spacer />

<Callout type="tip">
These users and groups will be used again in the next lessons on permissions and collaboration.
</Callout>

<!--
**Expected outputs:**
1. `Adding group 'projectred' ... Done.`
2. Interactive prompts for password and details — press Enter to skip optional fields.
3. `Adding user 'labuser' to group 'projectred' ... Done.`
4. `uid=1001(labuser) gid=1001(labuser) groups=1001(labuser),1002(projectred)`
5. `projectred:x:1002:labuser`
-->

---

# Looking up Users and Groups with `getent`

`getent` asks the system for information from its account databases.

<Callout type="info" mt="1rem">
Use <code>getent</code> when you want to check whether a <strong>User</strong> or <strong>Group</strong> exists.
</Callout>

<Spacer />

<Cols>

<div>
<Subtitle>Examples</Subtitle>

```bash
getent passwd labuser     # look up a User
getent group projectred   # look up a Group
```

</div>

<div>
<Subtitle>What it does</Subtitle>

<div style="font-size: 0.85em">

- If the name exists, `getent` prints its entry
- If it does not exist, it prints nothing

</div>

</div>

</Cols>

<Spacer />

<Callout type="tip">
Use <code>getent</code> to ask the system directly.<br>
Use <code>grep</code> when you specifically want to read the text inside <code>/etc/passwd</code> or <code>/etc/group</code>.<br>
Example: <code>grep projectred /etc/group</code>
</Callout>

---

# Exercise 3 — Fix the command

<Callout type="exercise" mt="1rem">
Each command below contains an <strong>error</strong>. Find the problem and write the corrected command.
</Callout>

<Spacer />

<Cols>

<div>
<Subtitle>1 — Create a group</Subtitle>

```bash
addgroup devteam
```

<Spacer />

<Subtitle>2 — Add user to group</Subtitle>

```bash
sudo adduser devteam labuser
```

</div>

<div>
<Subtitle>3 — List a group's members</Subtitle>

```bash
id devteam
```

<Spacer />

<Subtitle>4 — Create a group</Subtitle>

```bash
sudo adduser devteam
```

</div>

</Cols>

<!--
**Answers:**
1. Missing `sudo` — only root can create groups.
   Fix: `sudo addgroup devteam`

2. Wrong argument order — the user comes first, then the group.
   Fix: `sudo adduser labuser devteam`

3. `id` works on users, not groups. To check a group's members, use `grep` or `getent`.
   Fix: `grep devteam /etc/group` or `getent group devteam`

4. Wrong command — `adduser` creates a user, not a group.
   Fix: `sudo addgroup devteam`
-->

---

# Exercise 4 — Clean up Users & Groups

<Callout type="warning" mt="1rem">
Requires <code>sudo</code>. Use your practice VM or lab machine only.
</Callout>

<Callout type="exercise" mt="1rem">
In this exercise, remove the practice User and Group you created earlier.

Do not guess the commands. Use <code>man</code>, <code>--help</code>, or <code>apropos</code> to find the correct commands and options.
</Callout>

<Spacer />

<Table maxWidth: 70% fontSize="0.75em" lineHeight="1.4" padding="0.15rem 0.4rem" cols="3,34,34,32">

| # | Task | Your command | How to verify |
|---|------|--------------|---------------|
| 1 | Remove the User `labuser` | | `id labuser` should fail |
| 2 | Confirm that the User is gone | | `getent passwd labuser` should print nothing |
| 3 | Remove the Group `projectred` | | `getent group projectred` should print nothing |
| 4 | Explain why the Group should be removed after the User | | Write one sentence |

</Table>

<!--
Possible answers on Debian-like systems:

1. Remove the User:
   sudo deluser labuser

2. Confirm the User is gone:
   getent passwd labuser

3. Remove the Group:
   sudo delgroup projectred

4. Explanation:
   Remove the User first so the Group no longer has that member attached.

Notes:
- Some students may find `userdel` and `groupdel` instead of `deluser` and `delgroup`.
- Accept either if it works correctly on the system.
- `id labuser` should fail after the User is removed.
- `getent passwd labuser` and `getent group projectred` should print nothing after removal.
-->

---

# Common mistakes

<div style="font-size: 0.85em">

- **Forgetting to add the user to the group** — creating a user and a group is not enough; you must explicitly add the user to the group with `adduser <user> <group>`
- **Confusing `adduser` with `useradd`** — both exist, but `adduser` is the friendly Debian wrapper; `useradd` has different syntax and fewer defaults
- **Running everything with `sudo` out of habit** — only use `sudo` when the command actually needs root privileges
- **Forgetting that group changes may require a new login** — if a user is already logged in, they may need to log out and back in for new group membership to take effect
- **Using User commands on Groups** — `id` and `groups` are for users; use `getent group <name>` or `grep <name> /etc/group` to inspect a group

</div>

<Spacer />

<Callout type="tip">
When something doesn't work, always check with <code>id &lt;username&gt;</code> — it shows exactly which groups a user belongs to <strong>right now</strong>.
</Callout>

---

# Important commands recap

<Subtitle>Identity</Subtitle>

```bash
whoami             # who am I?
id                 # full user/group info
groups             # list my groups
id labuser         # check another user
```

<Spacer />

<Subtitle>Create accounts</Subtitle>

```bash
sudo addgroup projectred            # create a group
sudo adduser labuser                # create a user
sudo adduser labuser projectred     # add user to group
```

<Spacer />

<Subtitle>Root access</Subtitle>

```bash
sudo <command>     # one command as root
```

---

# Key principles

<div style="font-size: 0.85em">

- Every account on the system is a **user** with a unique UID
- A **group** is a named collection of users — the best way to share access
- A user can belong to **many groups**
- **root** (UID 0) is the all-powerful administrator — use with care
- Use `sudo` for **individual commands**, not as a way of life
- As a beginner, prefer `sudo` over logging in directly as `root`
- Linux uses your user and group identity to decide whether actions on files and directories are **allowed**

</div>

<Spacer />

<Callout type="tip">
If you remember one thing: <strong>users</strong> identify who you are, <strong>groups</strong> identify what teams you belong to, and <strong>sudo</strong> lets you temporarily act as root.
</Callout>

---

# Exit question

<Spacer />

Ask yourself (or the class):

<Spacer />

> **If a file belongs to group `projectred`, when will `labuser` get group access to that file?**

<Spacer size="2rem" />

<!--
**Expected answer:**
When `labuser` is a member of `projectred` — and the file's group permissions allow the access (covered in the next lesson).
-->

<Callout type="tip">
This is the bridge to the next lesson: knowing <strong>who you are</strong> (users & groups) is only half the story. Next, you'll learn <strong>what you can do</strong> (permissions).
</Callout>

---
layout: center
class: text-center
---

<Title>Well done!</Title>

<Spacer />

You now know who users and groups are and how to manage them!

---
layout: center
class: text-center
---

<Title size="2em">What's next?</Title>

<Spacer />

### Next lesson: **File Permissions**

Learn how to read and change what each user can do with files and directories.

<Spacer size="2rem" />

<Callout type="tip">
Practice in your VM by creating users and groups until it feels natural. Try creating a group, adding two users, and checking with <code>id</code>!
</Callout>
