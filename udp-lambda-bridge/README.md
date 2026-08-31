# udp-lambda-bridge

Runs on `toadmail-hub` (a 2012 Raspberry Pi Model B, ARMv6, headless — no screen by design).

Listens for UDP messages from Pico devices (`pico-central-heating`, `pico-temp-sensor`), replies immediately from its
last-known-response cache (so the sending device's tight receive loop never blocks
on internet/AWS latency), then refreshes that cache via a synchronous call to
API Gateway → Lambda on a separate thread.

`toadmail-hub` is a general-purpose host name, not specific to this project or to
central heating — it may run other things later.

## Why C

The target (ARMv6, 2012 hardware) can't run .NET — Microsoft dropped ARMv6 support
years ago. C keeps the toolchain simple and matches the rest of this repo's firmware
code.

## Why API Gateway + Lambda, not a direct SDK Invoke call

There's no official AWS SDK for C, only C++, and it's not clear that officially
supports ARMv6 either. Hand-rolling SigV4 request signing in C was judged too
fragile to maintain. A plain HTTPS POST (via libcurl) to API Gateway with an API key
avoids request signing entirely, at the cost of one extra AWS resource (API Gateway)
in front of the Lambda.

## Build setup (Visual Studio)

This project is built with Visual Studio's **remote build** support: VS syncs
source to `toadmail-hub` over SSH and invokes the Pi's own `gcc`/`cmake` there,
rather than cross-compiling from Windows. This avoids needing an ARMv6
cross-compiler on the dev machine.

The actual SSH connection to `toadmail-hub` (host, credentials) is configured
inside Visual Studio itself (Tools → Options → Cross Platform → Connection
Manager, or via "Manage Configurations" for a CMake remote target) — that's
IDE-side state, not tracked in this repo. Point it at this folder's
`CMakeLists.txt` once the connection exists.

## Configuration

Two environment variables, required for the write path
(`udp-lambda-bridge-pi/CommandCentreClient.c`) — no config file, no values
committed anywhere in this repo:

| Variable | Value |
|---|---|
| `WRITE_API_URL` | `write_api_invoke_url` output from `central-heating-on-cloud/infrastructure` |
| `WRITE_API_KEY` | `write_api_key_value` output (sensitive) from the same |

If running interactively, `export` them in the shell before launching. For a
real deployment (e.g. a systemd unit), set them via that unit's
`Environment=`/`EnvironmentFile=`, not baked into the binary or this repo.

## Status

UDP listener works (`UdpModule_ListenAndRespond` in `udp-lambda-bridge-shared`).
On every packet received from a Pico, the raw QUACK payload is forwarded
as-is to the Command Centre's write endpoint
(`CommandCentre_PostStatus` — synchronous for now, not yet moved to the
background thread the design above describes). The reply sent back to the
Pico is still an empty placeholder — the read path (desired-state via a
presigned S3 URL) isn't wired up yet. Requires
`libcurl4-openssl-dev` (or equivalent) installed on `toadmail-hub` itself,
since VS's remote build compiles/links against the actual libraries on the
Pi, not a local cross-compiler sysroot.
