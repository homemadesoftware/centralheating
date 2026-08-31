# udp-lambda-bridge

Runs on `toadmail-hub` (a 2012 Raspberry Pi Model B, ARMv6, headless — no screen by design).

Listens for UDP messages from Pico devices (`pico-central-heating`, `pico-temp-sensor`), replies immediately from its
last-known-response cache (so the sending device's tight receive loop never blocks
on internet/AWS latency), while a forked child process keeps that cache fresh by
polling API Gateway → Lambda in the background.

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

## Build setup

`build-pi.ps1` builds this by `scp`-ing sources to `toadmail-hub` and
running `cmake`/`gcc` there directly over `ssh` — deliberately a plain,
fully visible script rather than an IDE-managed remote build. A Visual
Studio Linux remote-build project (`.vcxproj`) was tried first and
abandoned 2026-08-31: the remote connection was unreliable independent of
actual network quality, the generated link command line was opaque and
didn't behave as its own project-file settings implied, and enabling
verbose build output produced no more detail. This is Pi-only code now —
there's no separate Windows build, so no platform split in the source
either.

Prerequisites on `toadmail-hub` itself (build happens on the real target,
not a cross-compiler sysroot, so its exact package versions matter):
`cmake`, `gcc`, `libcurl4-openssl-dev` (or equivalent).

Run from `udp-lambda-bridge/`:

```
.\build-pi.ps1
```

Requires SSH key auth already set up for `pi@toadmail-hub` (or pass
`-RemoteUser`/`-RemoteHost` for a different setup) — the script has no
password-prompt handling.

## Configuration

Four environment variables, required for the write path
(`CommandCentreClient.c`) and read path (`DesiredStateReader.c`) — no
config file, no values committed anywhere in this repo:

| Variable | Value |
|---|---|
| `WRITE_API_URL` | `write_api_invoke_url` output from `central-heating-on-cloud/infrastructure` |
| `WRITE_API_KEY` | `write_api_key_value` output (sensitive) from the same |
| `READ_API_URL` | `read_api_invoke_url` output from the same |
| `READ_API_KEY` | `read_api_key_value` output (sensitive) from the same |

If running interactively, `export` them in the shell before launching. For a
real deployment (e.g. a systemd unit), set them via that unit's
`Environment=`/`EnvironmentFile=`, not baked into the binary or this repo.

## Read path (desired-state)

`main()` forks right after startup. The child runs
`DesiredStateReader_RunChildLoop()` and never returns: every second it
mints a fresh presigned URL (`GET /desired-state-url`), conditionally
fetches it with `If-None-Match` against the last-seen ETag, and — only on
an actual change — atomically replaces `/tmp/desired-state-cache.txt`
(write to a `.tmp` file, then `rename()`, so the parent never reads a
half-written file). A `404` from S3 (no desired state set yet) is treated
as a valid "empty" state, not an error.

The parent's `OnResponseRequiredCallback` just reads that cache file on
every UDP reply — no locking, no shared memory, no threads. The two
processes only communicate through that one file.

A forked child inherits the parent's PID at fork time but gets reparented
to init if the parent dies, so `prctl(PR_SET_PDEATHSIG, SIGTERM)` is set
first thing in the child to make sure it's killed automatically rather
than leaking as an orphan.

## Status

UDP listener works (`UdpModule_ListenAndRespond` in `udp_io.c`). On every
packet received from a Pico, the raw QUACK payload is forwarded as-is to
the Command Centre's write endpoint (`CommandCentre_PostStatus` —
synchronous, best-effort). The reply sent back to the Pico is the latest
desired-state text from the read path described above.
