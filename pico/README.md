# Pico Central Heating

## First time setup

After cloning the repo, initialise the submodules before doing anything else:

```
git submodule update --init --recursive
```

This pulls down the Pico SDK (including btstack, cyw43-driver and lwip) and the
Waveshare ePaper library into `pico/libs/`. These are large repos so it takes a
few minutes the first time.

## External libraries (submodules)

The project depends on two external libraries, kept as git submodules under `pico/libs/`:

| Submodule | Path | Purpose |
|-----------|------|---------|
| raspberrypi/pico-sdk | `pico/libs/pico-sdk` | Raspberry Pi Pico SDK and ARM toolchain setup |
| waveshare/Pico_ePaper_Code | `pico/libs/waveshare` | Waveshare 2.13" ePaper display driver |

A submodule is a pointer to a specific commit in an external repo. The submodule
files themselves are not stored here — only the pointer. Running
`git submodule update --init --recursive` follows the pointer and checks out the
right version. If the pointer is updated in a future commit, run the same command
again to update your local copy.

The pico-sdk itself has three nested submodules (btstack, cyw43-driver, lwip).
The `--recursive` flag handles these automatically.

## Build instructions

Building uses Docker so you do not need the ARM toolchain or any C build tools
installed on your Windows machine. Run all scripts from inside the `pico/` folder.

### Step 1 — build the base image (once ever)

```powershell
.\build-base.ps1
```

Builds `BaseDockerfile` into a Docker image called `pico-compiler-base`. This is
a Debian Bookworm container with the ARM cross-compiler toolchain installed
(`gcc-arm-none-eabi`, cmake, etc.). Only needs to be re-run if `BaseDockerfile` changes.

### Step 2 — set up the compiler container (once, or after CMakeLists.txt changes)

```powershell
.\setup-compiler.ps1
```

Builds `Dockerfile` on top of `pico-compiler-base` to create `pico-compiler-image`.
This image installs picotool and configures the build environment. It then creates
a named container called `pico-compiler` by running it once with your source tree
mounted:

- `../Common` is mounted at `/usr/src/project/Common`
- `pico/` (this folder) is mounted at `/usr/src/project/pico`
- The `pico/libs/` submodules travel with the mount, so Docker uses them directly
  rather than cloning anything at build time
- The `build/` directory lives inside the container as an anonymous volume so the
  CMake cache persists between runs

The first cmake configure and make run happens during this step.

Re-run this step if you change `CMakeLists.txt`, or if you run `docker rm pico-compiler`
and need to recreate the container.

### Step 3 — compile (everyday workflow)

```powershell
.\compile.ps1
```

Restarts the existing `pico-compiler` container, which re-runs
`in-docker-compiler.sh` (`cmake` + `make -j4`). Because the build directory is
an anonymous volume inside the container, the CMake cache is warm and only changed
files are recompiled.

After a successful build the UF2 file is copied to `pico/build-outputs/my_project.uf2`.

If a Pico in BOOTSEL mode is detected at `E:\` (identified by `INFO_UF2.TXT`
starting with `UF2 Bootloader v3.0`), the script copies the UF2 to the drive
automatically to flash the device.

You do not need to unplug the Pico to flash it. A hardware button on pin 14 is
wired to trigger `reset_usb_boot()`, which drops the Pico into BOOTSEL mode
while it remains connected.

## Visual Studio IntelliSense

Open the `pico/` folder in Visual Studio (File > Open > Folder). Visual Studio
will detect `CMakeSettings.json` and `CMakeLists.txt` and run CMake configure
locally to build its IntelliSense database.

`CMakeSettings.json` points Visual Studio at the local submodules for both the
Pico SDK and the Waveshare library, and sets `PICO_BOARD=pico_w`. No environment
variables need to be set manually.

You need `arm-none-eabi-gcc` in your system PATH for the CMake configure to
succeed. This is installed by the Raspberry Pi Pico SDK Windows installer.

`CMakeLists.txt` is written to work in both environments:
- In Docker: uses the `PICO_SDK_PATH` and `waveshare_epaper` environment variables
  set in `Dockerfile`
- Locally in VS: falls back to `pico/libs/pico-sdk` and `pico/libs/waveshare`
  when those env vars are not set

The output UF2 for flashing is always produced by the Docker build, not the local
VS configuration.
