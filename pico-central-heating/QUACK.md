# QUACK — Query / Update / ACKnowledge

Wire format for UDP traffic between `pico-central-heating` and the hub
(`toadmail-hub`/`udp-lambda-bridge`, eventually backed by an AWS Lambda holding
desired state). Transport is the existing `NetworkIo` broadcast/unicast
mechanism (`network_io.c`) — QUACK only defines what goes *inside* the
payload.

Status: draft v0.1. Field list below matches what's been discussed so far;
gaps are marked TBD rather than guessed at.

## Encoding

- Payloads are null-terminated ASCII strings — same convention already used
  throughout `network_io.c` ("we are always sending/receiving null terminated
  strings").
- A message is one or more lines separated by `\n`.
- Each line is `<key> <value>`: the key is the first whitespace-delimited
  token, the value is everything after the first space to the end of the
  line (so values may themselves contain spaces — useful for things like a
  timestamp).

Example shape:

```
foo bar
example value
```

## Outbound: Pico → hub

Sent periodically (piggybacking on the existing timer-driven heartbeat in
`Common/CentralHeating.c`, e.g. `READTEMPERATURECOOKIE`).

| Key | Meaning |
|-----|---------|
| `uptime` | Seconds since boot |
| `time` | Current time, from the RTC, ISO 8601 (`YYYY-MM-DDTHH:MM:SS`, no timezone offset — the RTC is naive local time) |
| `z1`..`z5` | Zone input status — `on`/`off`, one line per zone |
| `o1`..`o6` | Actuator output status — `on`/`off`, one line per actuator |
| `hw` | Hot water actuator status — `on`/`off` |
| `boiler` | Boiler output status — `on`/`off` |
| `heating` | Heating-on flag — `on`/`off` |
| `version` | Firmware version (`COMPILED_AT` in `CentralHeating.c`) |
| `temperature` | Hot water temperature |
| `fulfilled-state-id` | Id of the last desired state successfully applied (see below) |

Keys and values are both all lower-case, keys in kebab-case, consistently on
both directions of the protocol.

Sensors and outputs are human-readable, one line each, the same way the
e-paper screen already renders them (`AnimateScreen`/`TestAndDisplay` in
`Common/CentralHeating.c`) rather than packed into a bitmask:

```
z1 on
z2 off
z3 on
z4 off
z5 off
o1 on
o2 off
o3 off
o4 off
o5 off
o6 off
hw on
boiler on
```

(`z6`/`zonenc1`/`zonenc2` are unused inputs per `PicoEntryPoint.c` and aren't
emitted.)

All fields are sent as a single packet — one `\n`-joined payload per
heartbeat via `NetworkIo_Send`/`pSendNetworkPacket`, not split across
multiple sends. The full field list comfortably fits under the link MTU.

## Inbound: hub → Pico

| Key | Meaning |
|-----|---------|
| `desired-state` | The state the hub wants applied — see vocabulary below |
| `desired-state-id` | Increasing but otherwise random number identifying this desired state (not necessarily an S3/bucket version id — may be *generated from* one, but the Pico shouldn't assume the two are interchangeable) |

Unknown keys are ignored rather than treated as an error, so the format can
grow without breaking older firmware.

### `desired-state` vocabulary

The only desired state right now is hot water boost — the network
equivalent of someone pressing the physical hot water button
(`StartHotWater()` in `Common/CentralHeating.c`). It's a tri-state, not a
boolean, because "the hub has no opinion" is meaningfully different from
"the hub actively wants it off":

| Value | Meaning |
|-------|---------|
| `none` | The hub isn't overriding anything — hot water is left to the Pico's own local state (physical button, existing boost timer) |
| `on` | The hub wants hot water boost switched on |
| `off` | The hub wants hot water boost switched off (e.g. "we think the water is hot enough") |

## Processing model

- Incoming packets are handled as they arrive, via the existing receive
  callback path (`on_recv` → `ReceiveDataFromNetwork`). There is no
  request/response coupling between what the Pico last sent and what it next
  receives; the two directions are independent.
- **Highest id wins, not last received.** Because UDP can deliver packets out
  of order, the Pico keeps track of the highest `desired-state-id` it has
  applied so far. An incoming packet with a `desired-state-id` lower than
  (or equal to) that is a stale/reordered duplicate and is dropped without
  being applied — `desired-state-id` being monotonically increasing is
  exactly what makes this cheap to check.
- Because UDP is unreliable and unordered, the hub is expected to keep
  resending the current desired state until it sees the matching
  `fulfilled-state-id` come back, rather than the Pico acknowledging a
  specific packet.

## Fulfilled-state acknowledgement

Best-effort — no dedicated out-of-band ack packet. `fulfilled-state-id`
simply rides along in the regular heartbeat like every other field, and
starts appearing (and updating) once the Pico has actually *applied* the
corresponding `desired-state` — not merely received or parsed it. Until
then, the field reflects whatever the last successfully applied id still is.
The hub is expected to keep resending the current desired state until it
observes that value come back, since there's no separate acknowledgement to
wait for.
