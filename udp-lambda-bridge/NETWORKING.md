# Networking

## Topology

- **TP-Link** (`192.168.1.1`) — main router/gateway, also the 4G/5G internet connection. Hosts several WiFi networks, including `"You will be hacked"`, used by the Pico.
- **Draytek** (`192.168.1.2`) — secondary router, bridged to the TP-Link over powerline Ethernet. Serves the same `192.168.1.0/24` subnet rather than a separate/NAT'd range, so it's effectively an extension of the TP-Link's LAN, not a separate network. Hosts its own WiFi network, used by `toadmail-hub`.
- `toadmail-hub` (the Pi): `192.168.1.125`
- Pico: `192.168.1.124` — was briefly assigned `192.168.0.124` due to a static IP reservation pointing at the wrong subnet; corrected.
- Dev machine ("Red"): `192.168.1.200`

## Finding: TP-Link's WiFi radio doesn't deliver inbound UDP to its own wireless clients

Root cause of "Pico broadcasts, `toadmail-hub` never receives it," after ruling out subnet mismatches, a flaky WiFi dongle on the Pi, and AP/client isolation (confirmed off on the TP-Link, both 2.4GHz and 5GHz bands):

| Path | Result |
|------|--------|
| TP-Link wireless client → anywhere | Works (outbound from a TP-Link client is fine) |
| Anywhere → TP-Link wireless client | **Fails** (inbound UDP, including broadcast, is not delivered) |
| Anywhere → Draytek wireless client | Works |
| Wired → wireless (either router) | Works |

Confirmed by testing the same receive code from two different devices (the Pi, and separately the Windows dev machine) — both failed to receive while connected to the TP-Link's WiFi, and both succeeded once wired or moved to the Draytek's WiFi instead. The exact mechanism (firmware bug, broadcast/DTIM handling, or an undiscovered setting) wasn't identified.

## Working configuration

- **Pico** stays on `"You will be hacked"` (TP-Link) — it only needs to send from there.
- **`toadmail-hub`** connects via the Draytek's WiFi (or wired), not the TP-Link, since it needs to reliably *receive* the Pico's broadcasts.

The powerline bridge between the two routers carries traffic between them fine — this isn't a subnet/routing problem, it's isolated to whichever radio a receiving device is actually associated with.

## Known limitation: WPA2 reconnect reliability on the Pico

An attempt to move the Pico onto the Draytek's WPA2-secured WiFi connected successfully once, then failed to reconnect on every subsequent attempt despite the retry loop in `network_io.c` (`udp-pusher` project) running every 30 seconds. Reverted to `"You will be hacked"` (open, `CYW43_AUTH_OPEN`) as the known-working configuration.

Suspected cause: `cyw43_arch_wifi_connect_async` being called repeatedly on failure can leave the cyw43 chip's internal join state machine wedged for secured networks specifically — much more sensitive than open auth, which has no handshake to get wrong. A full power cycle (not just a soft reset/reflash) was suspected but not confirmed as a fix. The SDK's `cyw43_arch_wifi_connect_timeout_ms()` (a synchronous connect-with-timeout helper) may be more robust than the current manual `connect_async` + poll retry loop, if WPA2 support on the Pico side is revisited.

`network_io.c`/`.h` (in `udp-pusher/`) already have the `password` field and `NetworkIo_Init` parameter plumbed through, unused for now, in case this is picked up again.

## Verification status

Confirmed working end-to-end once (Pico on TP-Link → `toadmail-hub` on Draytek, full send/receive/reply cycle). Worth a few more repeat cycles (Pico reset, Pi reboot) before fully trusting this as stable, given how much flakiness has shown up elsewhere in this investigation (WiFi dongle, WPA2 reconnect).
