# Working with Huseyin on this project

## Editor and tools

- Uses **Visual Studio** (full IDE) — not VS Code, do not suggest it
- Works on **Windows 10** with Docker Desktop
- Shell is bash (via git bash); PowerShell also available
- Target hardware is **Raspberry Pi Pico W**

## How he likes to work

- For structural changes: present the plan first, wait for approval before touching anything
- For clear well-scoped tasks: just do it
- Creates a new git branch for each piece of work, merges via GitHub PR
- Wants docs updated as part of the work, not as an afterthought
- Prefers git submodules over gitignored clones for external dependencies
- Wants everything self-contained in the repo where possible

## What to avoid

- Do not suggest VS Code
- Do not add comments to code unless the why is genuinely non-obvious
- Do not add unnecessary abstractions or future-proofing beyond what the task needs
- Do not summarise what you just did at length — he can read the diff
- **NEVER commit or push directly to `master`/`main`. No exceptions** — not for
  a test script, not for a "trivial" one-liner. Always create a branch and go
  through a PR, exactly like every other piece of work.
