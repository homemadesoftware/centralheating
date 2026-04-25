# Central Heating Controller

Firmware and tooling for a home central heating controller. The system controls
zone actuators, a boiler, a pump, and hot water on demand, driven by a real-time
clock and a simple menu UI on a 2-line LCD or ePaper display.

## Repository structure

| Folder | Description |
|--------|-------------|
| `Common/` | Shared C application logic — runs on all platforms |
| `CentralHeatingCore/` | 89C51 firmware and SDCC build (retiring) |
| `pico/` | Raspberry Pi Pico W firmware and Docker build (current) |
| `Simulator/` | Windows WinForms emulator for running the firmware on a PC |
| `x86Emulated/` | x86 DLL that the Simulator loads at runtime |
| `EepromAccess/` | Utility for reading/writing the board EEPROM |

## Hardware targets

The `Common/` source tree is shared across all targets. The platform is selected
at compile time via preprocessor defines in `Common/HardwareAbstraction.h`:

| Define | Platform |
|--------|----------|
| `MC8051` | AT89C51ED2 8051 board (SDCC build) |
| `PICO_BOARD` | Raspberry Pi Pico W (CMake / Docker build) |
| _(neither)_ | x86 Windows DLL (Visual Studio build, used by Simulator) |

## Build instructions

- **Pico (current hardware):** see [`pico/README.md`](pico/README.md)
- **89C51 (retiring):** see [`CentralHeatingCore/README.md`](CentralHeatingCore/README.md)
- **Simulator:** open `Simulator/CentralHeatingEmulator.sln` in Visual Studio.
  Build `x86Emulated` first (produces the DLL), then build and run `Simulator`.

## First time clone

The Pico build depends on git submodules. After cloning, run:

```
git submodule update --init --recursive
```

This fetches the Pico SDK and Waveshare ePaper library into `pico/libs/`.
