# udp-lambda-bridge

Runs on `toadmail-hub` (a 2012 Raspberry Pi Model B, ARMv6, headless — no screen by design).

Listens for UDP messages from Pico devices (`pico-central-heating`, `pico-temp-sensor`), replies from its
last-known-response cache, refreshing that cache inline roughly every 30s (bounded
by curl's own timeout) rather than on every packet — see "Read path (desired-state)"
below for why that's fine as a single-threaded, single-process design.

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

Uses password auth (`-RemotePassword`, defaulting to the stock Raspberry
Pi password) rather than SSH keys — deliberately not hardened, since
`toadmail-hub` is a home-LAN-only device; override `-RemoteUser`/
`-RemoteHost`/`-RemotePassword` for a different setup.

Once the build succeeds, the script also (re)installs the
`udp-lambda-bridge-pi` systemd service — disabled and stopped, not
started — see "Deploying as a service" below for the one-time setup that
needs before the very first run, and for how to actually run it.

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

If running interactively, `export` them in the shell before launching. For
the real deployment, they're read from `/etc/udp-lambda-bridge-pi.env` —
see "Deploying as a service" below.

## Deploying as a service

`udp-lambda-bridge-pi.service` (committed, no secrets in it) runs the
built binary under systemd: `Restart=always`, starts after networking is
up, and reads its environment from `/etc/udp-lambda-bridge-pi.env`.
`build-pi.ps1` installs/updates this service after every successful
build, via passwordless `sudo` (the Raspberry Pi OS default for the `pi`
user) — but deliberately leaves it disabled and stopped rather than
starting it, so a build doesn't fight with (or silently replace) whatever
you're currently doing on the Pi, e.g. running the binary by hand in a
terminal. Start it explicitly when you actually want it running:

```
sudo systemctl start udp-lambda-bridge-pi
```

or `sudo systemctl enable --now udp-lambda-bridge-pi` for it to also
survive reboots.

**One-time setup**, before the first `build-pi.ps1` run on a given Pi:
create `/etc/udp-lambda-bridge-pi.env` by hand over SSH, root-owned and
not world-readable, since it holds two API keys — this file is
deliberately not managed by this repo or the deploy script:

```
sudo tee /etc/udp-lambda-bridge-pi.env > /dev/null <<'EOF'
WRITE_API_URL=...
WRITE_API_KEY=...
READ_API_URL=...
READ_API_KEY=...
EOF
sudo chmod 600 /etc/udp-lambda-bridge-pi.env
```

A re-imaged SD card loses this file, so it has to be recreated by hand
again after any full Pi rebuild.

Useful commands once it's running:

```
systemctl status udp-lambda-bridge-pi
journalctl -u udp-lambda-bridge-pi -f
```

## Read path (desired-state)

Single process, single thread, no `fork()`, no `pthread` — a plain
sequential loop. `OnResponseRequiredCallback` runs three steps in order on
every UDP reply cycle: `DesiredStateReader_Tick()`, then
`PostLatestStatusIfDue()`, then `DesiredStateReader_ReadCache()`.

`DesiredStateReader_Tick()` does nothing most of the time. Only when due
(mint a fresh presigned URL roughly every 6h, or immediately after a
401/403; fetch at most every 30s) does it make a blocking curl call
inline — conditional on `If-None-Match` against the last-seen ETag — and
update a plain in-memory buffer on an actual change. A `404` from S3 (no
desired state set yet) is treated as a valid "empty" state, not an error.

This replaces an earlier two-process design (a forked child running its
own loop, communicating with the parent via a cache file). That design
turned out to be the Pi hangs' prime suspect, so it was replaced outright
rather than root-caused further — a plain blocking call every ~30s,
bounded by curl's own timeout, is a world away from the original bug
(blocking on every single packet), and has no process/signal lifecycle to
get wrong.

## Status

UDP listener works (`UdpModule_ListenAndRespond` in `udp_io.c`). On every
reply cycle, the latest QUACK payload received from a Pico is posted
in-line to the Command Centre's write endpoint
(`CommandCentre_PostStatus`), at most once every 30s. The reply sent back
to the Pico is the latest desired-state text from the read path described
above.
