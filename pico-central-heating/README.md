# Pico Central Heating

Raspberry Pi Pico W firmware for the central heating controller.
Build infrastructure is shared — see [`PicoBuild/README.md`](../PicoBuild/README.md).

## First time setup

```
git submodule update --init --recursive
```

This pulls the Pico SDK and Waveshare ePaper library into `PicoBuild/libs/`.
Then build the shared Docker images — run these once from `PicoBuild/`:

```powershell
cd ..\PicoBuild
.\build-base.ps1      # OS + ARM toolchain image (pico-compiler-base)
.\setup-compiler.ps1  # SDK + Waveshare + picotool image (pico-compiler-image)
cd ..\pico-central-heating
```

## Building (everyday workflow)

Run from this folder (`pico-central-heating/`):

```powershell
.\compile.ps1
```

On first run this creates a Docker container named `central-heating-pico` with
this folder mounted at `/usr/src/project` and `Common/` at `/usr/src/Common`.
The build directory lives inside the container so the CMake cache stays warm
between runs — only changed files are recompiled.

On subsequent runs it simply restarts the same container.

After a successful build the firmware is at `build-outputs/my_project.uf2`.

If a Pico in BOOTSEL mode is at `E:\` (identified by `INFO_UF2.TXT` starting
with `UF2 Bootloader v3.0`), the script flashes it automatically.

Re-run `PicoBuild/setup-compiler.ps1` if you change `CMakeLists.txt`, then
`docker rm central-heating-pico` so `compile.ps1` recreates the container.

## Flashing without unplugging

Pin 14 is wired to a hardware button that calls `reset_usb_boot()`, dropping
the Pico into BOOTSEL mode while it remains connected.

## Visual Studio IntelliSense

Open this folder in Visual Studio via **File > Open > Folder**. VS detects
`CMakeSettings.json` and `CMakeLists.txt` and configures IntelliSense using
the local submodules in `PicoBuild/libs/`.

You need `arm-none-eabi-gcc` in your system PATH (from the Pico SDK Windows
installer). No environment variables need to be set manually.

`CMakeLists.txt` works in both environments:
- **Docker build**: uses `PICO_SDK_PATH` and `waveshare_epaper` env vars baked
  into `pico-compiler-image`
- **VS locally**: falls back to `../PicoBuild/libs/pico-sdk` and
  `../PicoBuild/libs/waveshare` when those env vars are not set

The UF2 is always produced by the Docker build, not the local VS configuration.
