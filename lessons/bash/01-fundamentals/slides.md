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

<Title>01 - Fundamentals</Title>

<Spacer />

Unix, GNU, Linux — and how they fit together

---

# The Big Picture

<Subtitle>4 important terms</Subtitle>

<Spacer size="0.5rem" />

<div style="font-size:0.9em; line-height: 4px">

| Term          | What it is                                                                              |
|---------------|-----------------------------------------------------------------------------------------|
| **Unix**      | Operating System family + design tradition                                              |
| **GNU**       | An OS project that created many essential tools (shell, commands, compilers, libraries) |
| **Linux**     | The kernel (manages hardware, memory, and processes)                                    |
| **GNU/Linux** | A full OS = GNU tools + Linux kernel                                                    |

</div>

<Callout type="info">These 4 pieces form the foundation of most servers, phones, and supercomputers today.</Callout>

---
layout: center
class: text-center
---

<Title>Unix</Title>

---

<img :src="'./bash/unix_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 50px;" />

# What is Unix?

An Operating System created at AT&T Bell Labs in **1969**.

<Spacer size="0.5rem" />

<div class="grid gap-4" style="grid-template-columns: 3fr 1.3fr;">

<div>

- Created by **Dennis Ritchie** and **Ken Thompson**
- Built in the **time-sharing era** — one powerful computer, many users
- Bell Labs had worked on Multics, but it was too complex, so they built something **simpler**
- First Unix version released in **1969** in **assembly** language
- Rewritten in **C** in **1973**.
- **C** was developed at Bell Labs (mainly by Ritchie) and enabled Unix to be easier to maintain and move to other machines

</div>

<div style="text-align: center;">

<img :src="'./bash/pdp11.png'" style="height: 200px" />

<p style="font-size: 0.7em; color: #666; margin-top: 0.5rem; margin-right: 0.5rem; text-align: center; line-height: 10px;">
Ritchie and Thompson working on a PDP-11
</p>

</div>

</div>

<Callout type="info">Unix became a research tool that escaped the lab!<br>AT&T couldn’t sell Unix like a normal product then, so universities got it cheaply and it spread fast.</Callout>

---

# The Unix Legacy

<img :src="'./bash/unix_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 50px;" />

<Subtitle>Design principles that shaped computing</Subtitle>

Unix introduced ideas that are still at the heart of modern systems:

<Spacer size="0.5rem" />

- **Everything is a file** — devices, processes, and sockets are accessed like files
- **Small, sharp tools** — each program does one thing and does it well
- **Plain text** — universal format for data and configuration
- **Multi-user** — multiple people can use the same machine at once
- **Hierarchical filesystem** — one root `/`, everything branches from it

<Spacer size="0.5rem" />

**These principles are still the foundation** of Linux, macOS, and most server Operating Systems today.

<Callout type="tip">UNIX was not designed to <strong>stop its users from doing stupid things</strong>, as that would also stop them from doing clever things.</Callout>

---
layout: center
class: text-center
---

<Title>GNU</Title>

---

<img :src="'./bash/gnu_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

# What is GNU?

<Subtitle>Free as in freedom</Subtitle>


A project to build a **complete free Operating System**, compatible with Unix.

<Spacer size="0.5rem" />

<div class="grid gap-4" style="grid-template-columns: 3fr 1.2fr;">

<div>

- Announced in **1983** by **Richard Stallman**
- **GNU** = **G**NU's **N**ot **U**nix
- A reaction to **increasing proprietary software** — users were losing the freedom to share and modify code
- Goal: replace every non-free part of a Unix-like system
- Founded the **Free Software Foundation** (FSF) in 1985

</div>

<div>
<img :src="'./bash/stallman.jpg'" />
<p style="font-size: 1em; color: #666; margin-top: 0.5rem; margin-left: 0; text-align: center; line-height: 10px;">
  Richard Stallman
</p>
</div>

</div>



---

# What GNU Produced

<Subtitle>Tools and licensing</Subtitle>

<Cols>
<div>

**Core components**

- **Bash** — the shell
- **coreutils** — `ls`, `cp`, `mv`, `rm`…
- **Make** — build automation
- **GCC** — the GNU Compiler Collection
- **glibc** — the C standard library
- **Emacs** — text editor

</div>
<div>

**The GPL license**

The **GNU General Public License** ensures that software — and all derivative works — remains free.

This **copyleft** approach means anyone can use, modify, and share the code, but must keep it open.

</div>
</Cols>

<Callout type="tip" mt="2rem">By the early 1990s GNU had almost everything — compilers, editors, shell, utilities — <strong>except a working kernel</strong>.</Callout>

---
layout: center
class: text-center
---

<Title>Linux</Title>

---

<img :src="'./bash/linux_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

# What is Linux?

<Subtitle>The missing kernel</Subtitle>

A Unix-like **kernel** started by **Linus Torvalds** in **1991**.

<Spacer size="0.5rem" />


<div class="grid gap-8" style="grid-template-columns: 3fr 1.2fr;">

<div>

- Torvalds was a 21-year-old student at the **University of Helsinki**
- A **kernel** — and <span style="text-decoration: underline;">only a kernel</span> — no compilers, no shell, no utilities
- Quickly moved to the **GPLv2 license**, enabling massive collaboration

</div>

<div>
<img :src="'./bash/torvalds.jpg'" />
<p style="font-size: 1em; color: #666; margin-top: 0.5rem; margin-left: 0; text-align: center; line-height: 10px;">
  Linus Torvalds
</p>
</div>

</div>

<Callout type="tip"><span class="italic">"I'm doing a (free) Operating System (just a hobby, won't be big and professional like GNU)."</span> <span style="margin-left: 1rem;">— Linus Torvalds</span><br><br>It now runs on everything from phones to supercomputers!</Callout>


---

# GNU/Linux: The Complete Picture

<div style="position: absolute; top: 1.5rem; right: 2rem; display: flex; align-items: center; gap: 0.5rem;">
  <img :src="'./bash/gnu_logo.png'" style="height: 55px;" />
  <span style="font-size: 1.5rem; font-weight: bold; color: #888;">+</span>
  <img :src="'./bash/linux_logo.png'" style="height: 55px;" />
</div>

<Subtitle>Two halves of one whole</Subtitle>

<Cols gap="24px">
<div>

**GNU (1983)**

- Compilers, libraries, shell, utilities
- Everything **except** a kernel
- Had a kernel project (Hurd) but it was not widely adopted

</div>
<div>

**Linux (1991)**

- A kernel — **only** a kernel
- No compilers, no shell, no utilities
- Needed userland tools to be usable

</div>
</Cols>

<Spacer size="0.5rem" />

<Callout type="info">GNU had many OS parts but was missing a widely deployed kernel.<br>Combining <strong>GNU tools</strong> + the <strong>Linux kernel</strong> created a complete, free Operating System.<br>This is why some call it <strong>GNU/Linux</strong> rather than just "Linux".</Callout>

---

# The Unix Family Tree

<img :src="'./bash/unix_families.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

<Subtitle>One ancestor, many descendants</Subtitle>

Unix inspired an entire family of Operating Systems — some share code, others share design:

<Spacer size="0.5rem" />

<div style="line-height: 2px; font-size: 0.9rem; max-width: 70%">

| OS               | Based on                          | Used in                   |
|------------------|-----------------------------------|---------------------------|
| **GNU/Linux**    | Linux kernel + GNU tools          | Servers, desktops, cloud  |
| **Android**      | Linux kernel + custom userland    | Smartphones, tablets, TVs |
| **macOS**        | BSD (Unix) + Mach kernel (Darwin) | Apple computers           |
| **iOS / iPadOS** | Darwin (same base as macOS)       | iPhones, iPads            |
| **FreeBSD**      | Direct Unix descendant            | Servers, PlayStation      |
| **ChromeOS**     | Linux kernel + Chrome browser     | Chromebooks               |

</div>

<Callout type="info">Almost every device you use daily runs a Unix-based or Unix-inspired OS.</Callout>

---

# Where is Linux today?

<img :src="'./bash/linux_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

<Subtitle>It's everywhere!</Subtitle>

<div style="font-size:0.85rem">
<Cols gap="32px">

<div>

**Cloud & Servers**
- **Web hosting** — runs 96%+ of the top 1 million web servers (in 2025)
- **Clouds** — AWS (Amazon), Azure (Microsoft), GCP (Google)
- **Containers** — many containers run on Linux, using Linux kernel features (e.g Docker)

**Phones & Devices**
- **Android** (built on the Linux kernel) — 3+ billion active devices
- **Everyday tech** — Smart TVs, car systems, routers, IoT devices (cameras, sensors, even smart fridges!)

</div>
<div>

**Who relies on it?**
- **Big Tech** — Amazon, Google, Meta (Facebook), NASA, Netflix
- **Critical sectors** — banks, governments, hospitals
- Almost every website you visit!

**Supercomputers**
- **100%** of the top 500 run Linux

</div>
</Cols>

</div>

<div style="font-size: 0.95rem">
<Callout type="tip">You probably used Linux today without knowing it — every Google search, YouTube video, or Android app runs on it.</Callout>
</div>

---
layout: center
class: text-center
---

<Title>How Computers Work</Title>

---

# What is an Operating System (OS)?

<Subtitle>Definition</Subtitle>

Software that **manages computer resources** and **provides services** to programs.

<Spacer size="0.5rem" />


<div class="grid gap-4" style="grid-template-columns: 3fr 2fr;">

<div>

- **Device control** — talk to hardware (disks, network, display…)
- **File systems** — organize and store data
- **Memory management** — allocate RAM to processes
- **Process scheduling** — decide which program runs when

<Spacer size="0.5rem" />

An OS is the **interface** between you and the machine.

Without it, **each program would need its own code** to work with the keyboard, screen, and storage

</div>

<div>
<img :src="'./bash/os.png'"/>
</div>

</div>


---

# What is a Kernel?

<Subtitle>The core of every OS</Subtitle>

<div class="grid gap-4" style="grid-template-columns: 3fr 1.5fr;">

<div>


The **kernel** is the bridge between applications and hardware.

<Spacer size="0.5rem" />

- Controls **CPU**, **devices**, and **memory**
- Provides **system calls** — the basic OS services that programs use (like files, memory, network),
- Decides which **process** runs and for how long

</div>

<div>
<img :src="'./bash/kernel.png'"/>
</div>

</div>

<Callout type="info" mt="2rem">Typical flow: <code>app</code> → <code>system call</code> → <code>kernel</code> → <code>hardware</code></Callout>

---

# What is a Virtual Machine?

<div style="display:flex;justify-content:center;">
<iframe
  src="https://www.youtube.com/embed/UBVVq-xz5i0"
  title="What is a Virtual Machine?"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen
  style="width:80%;aspect-ratio:16/9;border:none;border-radius:8px;"
/>
</div>

---

# What is a Virtual Machine?

<Subtitle>A computer inside a computer</Subtitle>

A **virtual machine** (VM) is a software emulation of a physical computer.

<div style="font-size: 0.95rem">

- Runs its **own OS** (guest) on top of another OS (host)
- A **hypervisor** — software layer that creates and manages virtual machines
- Each VM is **isolated** — it behaves like a separate machine
- You can run **multiple VMs** on a single physical computer
- Common hypervisors:
  - VirtualBox (what you have now on your machine!)
  - Hyper-V (Windows)
  - VMware (professional use)
  - KVM (Linux)

</div>

<Callout type="tip" mt="1rem">VMs let you practice Linux safely on any computer.<br>You can experiment freely without <strong>risking damage to your real computer</strong>!</Callout>

---

# Key Takeaways

<Spacer size="0.5rem" />

- **Unix** (1969) created the design tradition that modern systems still follow
- **GNU** (1983) built free tools and compilers but never finished its kernel
- **Linux** (1991) provided the missing kernel — together with GNU (GNU/Linux), a complete free OS
- An **OS** manages hardware resources; the **kernel** is its core
- A **virtual machine** lets you run a full OS inside another — perfect for learning

---

# Why Learn Linux and Bash?

<Subtitle>Skills that pay off everywhere</Subtitle>

<div style="font-size: 0.95rem">

<Cols>
<div>

**Universal**

- Works on **Linux**, **macOS**, **WSL**, and cloud servers
- Same skills on a **Raspberry Pi** or on a supercomputer
- Commands and scripts are **portable** across machines

<Spacer />

**Power**

- **Automate** repetitive tasks with scripts
- **Combine** small tools to solve complex problems
- Work **remotely** (many servers have no GUI)

</div>

<div>

**Learning**

- Learn how the **OS + file system** works
- Build a base for **programming** and **networking**
- Practice thinking in **steps and systems**

<Spacer />

**IT Career**

- Used in **Cloud**, **Sysadmin** and **DevOps** roles
- Linux is the standard on many **servers**
- Core **job skills**: 
  - Read logs
  - Manage users/permissions
  - Monitor CPU/RAM/disk

</div>
</Cols>

</div>

---
layout: center
class: text-center
---

<Title>What's Next?</Title>

<Spacer />

It's time to run your first commands!

