# Common

Shared C application logic that runs on all hardware targets without
modification. Nothing in this folder knows which platform it is running on —
that is determined entirely at compile time by the build system.

## Files

| File | Description |
|------|-------------|
| `HardwareAbstraction.h` | Platform abstraction layer — defines the `DateTimeStruct`, all hardware delegate types, and the `STDCALL`/`EXPORTEDFUNCTION` macros that resolve differently per platform |
| `CentralHeating.c/h` | Main application: `UserProgram()` entry point, timer callbacks, heating logic, menu command handler, screen animation |
| `CentralHeatingMenus.c/h` | Builds the menu tree (Hot Water, Set Clock, Test Outputs) by calling `AddMenuDefinition()` |
| `MenuMgr.c/h` | Generic hierarchical menu engine — handles left/select/right navigation and fires `HandleMenuCommand()` callbacks |
| `DateTime.c/h` | Date/time arithmetic: days-in-month, add seconds, compare two `DateTimeStruct` values, format time/date strings |
| `StringUtils.c/h` | Minimal string helpers shared across platforms |

## How platform selection works

`HardwareAbstraction.h` checks the build-time define and sets up the right
calling conventions and type aliases:

```c
#ifdef PICO_BOARD
    #define STDCALL
#else
    #define STDCALL _stdcall
    #define EXPORTEDFUNCTION __declspec(dllexport)
#endif
```

The hardware itself is accessed only through function pointers declared in this
header (`pGetRtc`, `pSetRtc`, `pWriteDisplayBuffer`, etc.). Each platform's
entry point (`PicoEntryPoint.c`, `EmulatorEntryPoint.c`) wires these pointers
to its own real or emulated implementations before calling `UserProgram()`.

## Adding a new platform

1. Add a new `#elif defined(YOUR_DEFINE)` block in `HardwareAbstraction.h`
2. Create a new board folder with an entry point that implements all the hardware
   delegates and calls `UserProgram()` followed by a scheduler loop
3. Pass your define to the compiler (`-DYOUR_DEFINE` or equivalent)
