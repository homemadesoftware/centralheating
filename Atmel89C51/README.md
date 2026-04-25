# 89C51 Central Heating (SDCC Build)

> **Note:** The 89C51 board is the original hardware target and is being retired
> in favour of the Raspberry Pi Pico. See `pico/README.md` for the new build.

## Prerequisites

Install **SDCC (Small Device C Compiler)** from https://sdcc.sourceforge.net.
The build scripts expect it at `C:\Program Files\SDCC\bin\`. SDCC is a free,
open-source C compiler targeting small microcontrollers including the 8051 family.

To flash the compiled firmware you also need **Atmel Flip**, which programs the
chip over USB using the built-in DFU bootloader:
`C:\Program Files (x86)\Atmel\Flip 3.4.7\bin\`

## Building

Run `Build.bat` from inside the `CentralHeatingCore\` folder:

```
cd CentralHeatingCore
Build.bat
```

The script adds SDCC to the PATH if it is not already there, then runs the build
in two phases:

### Phase 1 — compile each file

Each C file is compiled individually to a `.rel` object file:

```
sdcc --compile-only --vc -V -DMC8051 --model-large -I../Common <file>.c
```

| Flag | Meaning |
|------|---------|
| `--compile-only` | Compile to object file, do not link |
| `--vc` | Emit errors in Visual Studio format so VS can navigate to them |
| `-V` | Verbose — prints the internal commands SDCC runs |
| `-DMC8051` | Defines the `MC8051` preprocessor symbol, which selects the 8051 code path in `HardwareAbstraction.h` |
| `--model-large` | Large memory model — places variables in external RAM. Required for the AT89C51ED2 which has 2KB internal RAM and external EEPROM |
| `-I../Common` | Adds the `Common/` folder to the include search path |

Files compiled:

| File | Description |
|------|-------------|
| `SimpleCentralHeating.c` | Simple polling heating loop (legacy, unused in current firmware) |
| `89C51Board.c` | Board entry point, hardware driver implementations |
| `LcdDisplay.c` | LCD driver |
| `I2C.c` | I2C bus driver |
| `RTC1307.c` | DS1307 real-time clock driver |
| `../Common/CentralHeating.c` | Main application logic (shared with Pico) |
| `../Common/CentralHeatingMenus.c` | Menu definitions (shared with Pico) |
| `../Common/MenuMgr.c` | Menu navigation engine (shared with Pico) |
| `../Common/StringUtils.c` | String helpers (shared with Pico) |
| `../Common/DateTime.c` | Date/time arithmetic (shared with Pico) |

### Phase 2 — link

All `.rel` files are linked into a single firmware image:

```
sdcc --iram-size 1796 --model-large 89C51Board.rel <all other .rel files>
```

`--iram-size 1796` tells the linker how much internal RAM is available on the
AT89C51ED2, so it can catch overflows at build time.

### Phase 3 — convert to HEX

The linker outputs an `.ihx` file (Intel HEX with gaps). `packihx` converts it
to a clean `.hex` file suitable for Atmel Flip:

```
packihx 89C51Board.ihx > 89C51Board.hex
```

## Build outputs

| File | Description |
|------|-------------|
| `89C51Board.hex` | Final firmware — flash this to the chip |
| `89C51Board.ihx` | Intermediate Intel HEX (before packing) |
| `89C51Board.map` | Linker memory map — useful for checking RAM/ROM usage |
| `89C51Board.mem` | Memory summary |
| `*.rel` | Compiled object files |
| `*.asm` | SDCC-generated assembly — useful for debugging |
| `*.lst` | Assembly listing with source interleaved |
| `*.sym` | Symbol table |

## Flashing with Atmel Flip

1. Put the AT89C51ED2 into bootloader mode (hold PSEN low during reset)
2. Connect via USB
3. Open Atmel Flip and select device `AT89C51ED2`
4. Connect via USB (`Device > Select`)
5. Load `89C51Board.hex` (`File > Load HEX File`)
6. Click `Run` to program

## How the 8051 code path works

The codebase targets three hardware platforms from a single shared `Common/`
source tree. The platform is selected at compile time via preprocessor defines
in `HardwareAbstraction.h`:

- `MC8051` — defined by `Build.bat` for this 8051 build
- `PICO_BOARD` — defined by the Pico CMake build
- Neither — selects the x86 emulator path (used by the Windows simulator)

The `REENTRANT` keyword in function signatures maps to `__reentrant` under SDCC,
which forces the function to use a separate stack frame rather than the 8051's
static overlay scheme. This is required for any function called via a function
pointer (the timer callbacks).

`--model-large` means all pointers are 16-bit and data defaults to external RAM.
On the 8051 this matters because internal RAM is extremely limited (256 bytes
directly addressable, 1796 bytes with the ED2 extensions).
