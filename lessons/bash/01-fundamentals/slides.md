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

<div style="font-size:0.9em; max-width:80%; line-height: 4px">

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

<img :src="'/bash/unix_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 50px;" />

# What is Unix?

<Subtitle>The origin</Subtitle>

Unix started at AT&T Bell Labs in 1969 and later evolved into a **whole family of Unix and Unix-like systems**.

<Spacer size="0.5rem" />

- Created by **Ken Thompson** and **Dennis Ritchie**
- Born in the era of **time-sharing** — the need for multiple users on one machine
- First version in **1969**, rewritten in **C** in 1973
- Its influence spread to virtually **every modern OS**

<Callout type="info">The C language was created by Ritchie largely to rewrite Unix.<br>One language, born to serve one OS, ended up powering <strong>most of modern computing</strong>.</Callout>

---

<img :src="'/bash/unix_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 50px;" />

# Why Unix Was Created

<Subtitle>Context</Subtitle>

- The **time-sharing era** — expensive computers needed to serve many users at once
- Bell Labs had been part of the **Multics** project, a large and ambitious OS that grew too complex
- Thompson and Ritchie wanted something **simpler** and more practical
- Unix became a research tool that escaped the lab

<Callout type="info">AT&T couldn’t sell Unix like a normal product then, so universities got it cheaply and it spread fast.</Callout>

---

# The Unix Legacy

<img :src="'/bash/unix_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 50px;" />

<Subtitle>Design principles that shaped computing</Subtitle>

Unix introduced ideas that are still at the heart of modern systems:

<Spacer size="0.5rem" />

- **Everything is a file** — devices, processes, and sockets are accessed like files
- **Small, sharp tools** — each program does one thing well
- **Plain text** — universal format for data and configuration
- **Multi-user** — multiple people can use the same machine at once
- **Hierarchical filesystem** — one root `/`, everything branches from it

<Callout type="info">These principles are still the foundation of Linux, macOS, and most server Operating Systems today.</Callout>

---
layout: center
class: text-center
---

<Title>GNU</Title>

---

<img :src="'/bash/gnu_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

# What is GNU?

<Subtitle>Free as in freedom</Subtitle>

A project to build a **complete free Operating System**, compatible with Unix.

<Spacer size="0.5rem" />

- Announced in **1983** by **Richard Stallman**
- **GNU** = **G**NU's **N**ot **U**nix
- A reaction to **increasing proprietary software** — users were losing the freedom to share and modify code
- Goal: replace every non-free part of a Unix-like system
- Founded the **Free Software Foundation** (FSF) in 1985

---

# What GNU Produced

<Subtitle>Tools and licensing</Subtitle>

<Cols>
<div>

**Core components**

- **Bash** — the shell
- **coreutils** — `ls`, `cp`, `mv`, `rm`…
- **GCC** — the GNU Compiler Collection
- **glibc** — the C standard library
- **Make** — build automation
- **Emacs** — text editor

</div>
<div>

**The GPL license**

The **GNU General Public License** ensures that software — and all derivative works — remains free.

This **copyleft** approach means anyone can use, modify, and share the code, but must keep it open.

<Callout type="tip" mt="2rem">By the early 1990s GNU had almost everything — compilers, editors, shell, utilities — <strong>except a working kernel</strong>.</Callout>

</div>
</Cols>

---
layout: center
class: text-center
---

<Title>Linux</Title>

---

<img :src="'/bash/linux_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

# What is Linux?

<Subtitle>The missing kernel</Subtitle>

A **Unix-like kernel** started by **Linus Torvalds** in 1991.

<Spacer size="0.5rem" />

- Torvalds was a 21-year-old student at the **University of Helsinki**
- A kernel — and **only** a kernel — no compilers, no shell, no utilities
- Quickly moved to the **GPLv2 license**, enabling massive collaboration

<Callout type="tip"><span class="italic">"I'm doing a (free) Operating System (just a hobby, won't be big and professional like GNU)."</span> <span style="margin-left: 1rem;">— Linus Torvalds</span><br><br>It now runs on everything from phones to supercomputers!</Callout>

---

# GNU/Linux: The Complete Picture

<div style="position: absolute; top: 1.5rem; right: 2rem; display: flex; align-items: center; gap: 0.5rem;">
  <img :src="'/bash/gnu_logo.png'" style="height: 55px;" />
  <span style="font-size: 1.5rem; font-weight: bold; color: #888;">+</span>
  <img :src="'/bash/linux_logo.png'" style="height: 55px;" />
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

<img :src="'/bash/unix_families.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

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
| **ChromeOS**     | Linux kernel + Chrome browser     | Chromebooks               |
| **FreeBSD**      | Direct Unix descendant            | Servers, PlayStation      |

</div>

<Callout type="info">Almost every device you use daily runs a Unix-based or Unix-inspired OS.</Callout>

---

# Where is Linux today?

<img :src="'/bash/linux_logo.png'" style="position: absolute; top: 1.5rem; right: 2rem; height: 70px;" />

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

**Operating system** = `kernel` + `core tools` + `libraries` + a `user interface`.

<Callout type="info" mt="2rem">Without an OS, every program would need to know how to talk directly to each piece of hardware — every disk, every keyboard, every screen.</Callout>

</div>

<div>
<img :src="'/bash/os.png'"/>
</div>

</div>



---

# What is a Kernel?

<Subtitle>The core of every OS</Subtitle>

The **kernel** is the bridge between applications and hardware.

<Spacer size="0.5rem" />

- Controls **CPU**, **devices**, and **memory**
- Provides **system calls** — the basic OS services that programs use
- Decides which **process** runs and for how long

<Callout type="info" mt="2rem">Typical flow: <code>app</code> → <code>system call</code> → <code>kernel</code> → <code>hardware</code></Callout>


---

# Kernel Space vs User Space

<Subtitle>Two separate worlds</Subtitle>

The system keeps 2 separate areas of memory to **protect the system** so a broken or harmful program can’t easily damage the whole system.

<Spacer size="0.5rem" />

<Cols Cols gap="30px">
<div>

**Kernel space**

- Where the **kernel** runs
- Has **full access** to hardware — CPU, RAM, devices
- Runs **drivers**, scheduler, memory manager
- A bug here **crashes the entire system**

</div>
<div>

**User space**

- Where **your programs** run — shell, browser, editor
- **Cannot** access hardware directly
- Must ask the kernel via **system calls**
- A bug here only **crashes that program**

</div>
</Cols>

<Callout type="info">This separation is what keeps your system stable — one broken app can't take down the whole machine.<br>
- Your browser crashes → browser closes (user space).<br>- A disk driver crashes → whole system may freeze (kernel space).</Callout>

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

**IT Career**

- Required for **sysadmin**, **DevOps**, and **cloud** roles
- Most **servers** in the world run Linux

**Power**

- **Automate** repetitive tasks with scripts
- **Combine** small tools to solve complex problems
- **Remote access** — servers have no graphical interface

</div>

<div>

**Learning**

- Understand **how computers actually work**
- Build a foundation for **programming** and **networking**
- **Free and open** — you can read, modify, and learn from the source

**It's universal**

- Works on Linux, macOS, WSL, cloud servers
- Same skills from a Raspberry Pi to a supercomputer

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

