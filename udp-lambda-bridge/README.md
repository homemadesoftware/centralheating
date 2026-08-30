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

## Status

Scaffold only — builds and prints a startup message. UDP listener, response
cache, and the API Gateway/Lambda call are not implemented yet.
