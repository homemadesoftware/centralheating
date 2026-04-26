# PicoBuild

Shared Docker build infrastructure for all Raspberry Pi Pico / Pico W projects
in this repo. Build it once, use it from any project.

## What's here

| File | Purpose |
|------|---------|
| `BaseDockerfile` | Stage 1 image — Debian + ARM cross-compiler toolchain |
| `Dockerfile` | Stage 2 image — adds pico-sdk, Waveshare ePaper, picotool |
| `build-base.ps1` | Builds `BaseDockerfile` → `pico-compiler-base` image |
| `setup-compiler.ps1` | Builds `Dockerfile` → `pico-compiler-image` |
| `libs/pico-sdk` | Pico SDK submodule — for VS IntelliSense only |
| `libs/waveshare` | Waveshare ePaper submodule — for VS IntelliSense only |

## Setup (run once)

From inside the `PicoBuild/` folder:

```powershell
.\build-base.ps1      # builds the OS + toolchain base image
.\setup-compiler.ps1  # builds the full compiler image with SDK baked in
```

The SDK, Waveshare library and picotool are all baked into `pico-compiler-image`
at this step. Projects do not need to clone or mount them — just run the image.

## Adding a new Pico project

1. Create a folder for the project (e.g. `pico-temp-sensor/`)
2. Copy `compile.ps1` and `in-docker-compiler.sh` from an existing project
3. Change `$containerName` in `compile.ps1` to a unique name
4. Write your `CMakeLists.txt` — set `PICO_BOARD` to `pico` or `pico_w`
5. For VS IntelliSense, copy `CMakeSettings.json` and `pico_sdk_import.cmake`
   and point the SDK/waveshare paths at `../PicoBuild/libs/`

Each project gets its own named Docker container and build cache. All projects
share the same `pico-compiler-image` — no rebuild needed for each new project.

## Projects in a different repo

Any repo on the same machine can use `pico-compiler-image` without any setup:

```powershell
# From the project folder in the other repo:
docker run --name my-project-pico `
    -v ${PWD}:/usr/src/project `
    -v /usr/src/project/build `
    pico-compiler-image `
    /bin/bash /usr/src/project/in-docker-compiler.sh
```

Just ensure `setup-compiler.ps1` has been run on the machine at least once.

## libs/ submodules (IntelliSense only)

`libs/pico-sdk` and `libs/waveshare` are git submodules used exclusively for
Visual Studio IntelliSense — they are NOT used by the Docker build. The Docker
image clones its own copies internally.

After cloning the repo, initialise them with:

```
git submodule update --init --recursive
```
