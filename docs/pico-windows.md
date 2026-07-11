# PicoWindows — Design Plan

## Overview

PicoWindows is a new, independent UI system built around the Waveshare 2.13" e-paper display on the Raspberry Pi Pico 2 W. It is a clean-slate project — it shares no code, patterns, or legacy with the central heating system. The goal is a properly designed display and windowing layer that respects the physical characteristics of the e-paper hardware.

The system has two parallel implementations:

- **`pico-windows/`** — firmware running on Pico 2 W hardware
- **`PicoWindowsEmulator/`** — C# WinForms application on Windows that runs the same C code in an x86 DLL, with a display panel that simulates e-paper physics visually

---

## Project Structure

```
pico-windows/               Pico 2 W firmware (exists)
  main.c                    Entry point stub
  ButtonPad.c/h             mLink 6-button pad driver (I2C)
  RTC1307.c/h               DS1307 RTC driver (I2C)
  i2c.c/h                   I2C initialisation
  CMakeLists.txt            pico2_w target, no Waveshare yet
  compile.ps1               Docker build (container: pico-windows)

PicoWindowsCommon/          Shared C code — PW_Init, PW_Tick, drawing logic (to be created)

x86-emulated-pico-windows/  x86 DLL entry point and wiring (to be created)

PicoWindowsEmulator/        C# WinForms emulator (to be created)
  PicoWindowsEmulator.sln
  PicoWindowsEmulator.csproj
  Form1.cs / Form1.Designer.cs
```

The C application code (drawing logic, UI state) lives in `PicoWindowsCommon/`, analogous to `Common/` for central heating. Both `pico-windows/` and `x86-emulated-pico-windows/` include from it.

---

## Architecture: Render Loop

Central heating used a timer-callback pattern. PicoWindows uses a **render loop**:

```
PW_Init()       — allocate buffer, init display, draw initial frame
loop:
  PW_Tick()     — read input, update state, draw to buffer if dirty, push display
  sleep / yield
```

On Pico: `main()` calls `PW_Init()` then `while(1) { PW_Tick(); sleep_ms(N); }`.

On the emulator: a dedicated .NET thread calls `PW_Init()` once, then loops calling `PW_Tick()` with a sleep between iterations. The WinForms message loop runs independently on the UI thread.

---

## Display Hardware Layer

### Physical characteristics

| Property | Value |
|----------|-------|
| Model | Waveshare 2.13" e-Paper V3 |
| Physical resolution | 122 × 250 px |
| Logical resolution (ROTATE_90) | 250 × 122 px landscape |
| Colour depth | 1 bpp monochrome |
| Frame buffer size | 3904 bytes |
| Full refresh time | ~2 s (visible white flash) |
| Partial refresh time | ~0.3 s (no flash) |

### Display modes

| Function | Speed | Registers updated | Use case |
|----------|-------|-------------------|----------|
| `EPD_2in13_V3_Display_Base(img)` | ~2 s | 0x24 and 0x26 | Startup, screen transitions, ghosting reset |
| `EPD_2in13_V3_Display_Partial(img)` | ~0.3 s | 0x24 only | In-screen value updates |
| `EPD_2in13_V3_Sleep()` | — | — | Power saving; requires `Init()` after wake |

### Correct usage sequence

1. `EPD_2in13_V3_Init()` — hardware reset, load LUT
2. `EPD_2in13_V3_Clear()` — blank screen
3. `EPD_2in13_V3_Display_Base(img)` — initial frame; primes both 0x24 and 0x26
4. `EPD_2in13_V3_Display_Partial(img)` — subsequent updates
5. After N partial updates → `Display_Base` again to re-synchronise and clear ghosting

---

## Hardware Abstraction Interface

The interface between application C code and the hardware (or emulator) is small and purpose-built for PicoWindows. No inheritance from central heating's `HardwareAbstraction.h`.

```c
// Push finished frame — full refresh (slow, clears ghosting)
typedef void (*DisplayFullRefreshDelegate)(unsigned char* buffer);

// Push finished frame — partial refresh (fast, no flash)
typedef void (*DisplayPartialRefreshDelegate)(unsigned char* buffer);

// Read buffered key presses
typedef void (*GetWaitingKeysDelegate)(unsigned char* buffer, unsigned char* readCount);

// Read RTC
typedef void (*GetRtcDelegate)(DateTimeStruct* dts);
```

The `imageBuffer` (3904 bytes) is **allocated by the C application code**, not by the hardware layer. The application passes it into the delegate on each push.

On Pico: delegates call `EPD_2in13_V3_Display_Base` / `Display_Partial` and `ButtonPad_ReadBufferedKeys` / `Rtc_ReadClock`.

On emulator: delegates are implemented in C# and cross the DLL boundary.

---

## Emulator — Threading Model

```
UI Thread (WinForms)
  ├── WinForms message loop
  ├── Timer (e.g. 16ms) → dequeue latest frame → render to panel
  └── Button MouseDown/Up → enqueue key to input queue

PW Thread (dedicated .NET Thread)
  ├── Calls PW_Init() once
  └── Loop: PW_Tick() → sleep(16ms)
        ├── calls GetWaitingKeys delegate → drains input queue
        └── calls DisplayFullRefresh or DisplayPartialRefresh delegate
              → copies unmanaged buffer to new managed byte[3904]
              → enqueues into frame queue
```

### Frame queue

- `ConcurrentQueue<byte[]>` with a small bounded depth (2–3 frames)
- On enqueue: if at capacity, dequeue and discard the oldest before adding the new frame
- On render tick: dequeue all available frames, render only the latest, discard the rest
- The two threads never share a buffer — each enqueued item is an independent allocation

### Input queue

- `ConcurrentQueue<byte>` — UI thread enqueues key codes on button events
- `GetWaitingKeys` delegate drains it on the MW thread
- Same direction inversion, same lock-free thread safety

---

## Emulator — E-Paper Physics Simulation

The emulator does not just show the logical pixel state. It simulates actual e-ink particle physics to make display artefacts visible, turning the emulator into a diagnostic tool.

### State maintained per pixel (all at full 122×250 = 30,500 pixels)

| Array | Type | Meaning |
|-------|------|---------|
| `target[]` | `byte` | Content of register 0x24 — what C requested |
| `reference[]` | `byte` | Content of register 0x26 — controller's belief about current state |
| `physical[]` | `float` | Actual particle position: 0.0 = fully black, 1.0 = fully white |

### On `DisplayFullRefresh`

```
reference[i] = target[i]           // 0x26 updated
physical[i]  = target[i] ? 1.0 : 0.0  // particles snap fully
```

Every pixel comes out clean black or white.

### On `DisplayPartialRefresh`

```
for each pixel i:
  if reference[i] != target[i]:
    // Controller drives this pixel with partial waveform
    physical[i] moves ~85-90% of the way toward target[i]
    // reference NOT updated — 0x26 stays stale
  else:
    // Controller applies no drive
    // physical[i] stays wherever it is — drift persists
```

Over many partial updates, pixels where `reference` is stale go undriven. Their `physical` value sits between 0.0 and 1.0. This is the ghosting/drift state.

### Rendering

Each pixel is mapped from `physical[i]` to a colour:

- 1.0 → white (or warm off-white to simulate e-ink paper)
- 0.0 → black
- In between → grey, proportional to drift

Three visually distinct zones appear naturally:
- **Clean black/white** — recently full-refreshed pixels
- **Slight grey residue** — pixels recently changed by partial refresh
- **Ghost image** — pixels that should have changed but didn't, due to stale reference

### Tuneable parameters

- Drive strength on partial refresh (default ~87%)
- Paper white colour (default warm off-white)
- These can be calibrated against observed behaviour on real hardware

---

## GUI_Paint Layer

`GUI_Paint` is a pure-C drawing library with no hardware dependency. It compiles identically into the Pico firmware and the x86 DLL.

Available primitives:

| Function | Purpose |
|----------|---------|
| `Paint_NewImage(buf, w, h, rotate, color)` | Initialise paint context |
| `Paint_Clear(color)` | Fill buffer |
| `Paint_SetPixel(x, y, color)` | Single pixel |
| `Paint_DrawLine(...)` | Line with width and style |
| `Paint_DrawRectangle(...)` | Filled or outline rectangle |
| `Paint_DrawCircle(...)` | Filled or outline circle |
| `Paint_DrawString_EN(...)` | ASCII string |
| `Paint_DrawChar(...)` | Single character |
| `Paint_DrawNum(...)` | Integer |
| `Paint_DrawBitMap(...)` | Pre-rendered 1bpp bitmap |

Available fonts: `Font8`, `Font12`, `Font16`, `Font20`, `Font24`.

Note: no `MeasureString` equivalent. Text width must be calculated manually as `font.Width * strlen(str)` for layout/alignment purposes.

---

## Open Questions / Future Work

- Periodic full refresh cadence — how many partial updates before forcing `Display_Base`?
- Screen transition API — explicit "new screen" call that triggers full refresh
- Power management — `Sleep()` / wake cycle on Pico
- Periodic full refresh cadence — how many partial updates before forcing `Display_Base`?
- `PicoWindowsCommon/` shared code folder — to be created when implementation begins
- `x86-emulated-pico-windows/` DLL entry point — to be created when implementation begins
- `PicoWindowsEmulator/` Visual Studio solution — to be created when implementation begins
