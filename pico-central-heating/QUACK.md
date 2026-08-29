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
| `time` | Current time, from the RTC |
| `Z1`..`Z5` | Zone input status — `On`/`Off`, one line per zone |
| `O1`..`O6` | Actuator output status — `On`/`Off`, one line per actuator |
| `HW` | Hot water actuator status — `On`/`Off` |
| `Boiler` | Boiler output status — `On`/`Off` |
| `heating` | Heating-on flag — `On`/`Off` |
| `version` | Firmware version (`COMPILED_AT` in `CentralHeating.c`) |
| `temperature` | Hot water temperature |
| `fulfilled_state_id` | Id of the last desired state successfully applied (see below) |

Sensors and outputs are human-readable, one line each, the same way the
e-paper screen already renders them (`AnimateScreen`/`TestAndDisplay` in
`Common/CentralHeating.c`) rather than packed into a bitmask:

```
Z1 On
Z2 Off
Z3 On
Z4 Off
Z5 Off
O1 On
O2 Off
O3 Off
O4 Off
O5 Off
O6 Off
HW On
Boiler On
```

(`Z6`/`ZONENC1`/`ZONENC2` are unused inputs per `PicoEntryPoint.c` and aren't
emitted.)

All fields are sent as a single packet — one `\n`-joined payload per
heartbeat via `NetworkIo_Send`/`pSendNetworkPacket`, not split across
multiple sends. The full field list comfortably fits under the link MTU.

## Inbound: hub → Pico

| Key | Meaning |
|-----|---------|
| `desired_state` | The state the hub wants applied — see vocabulary below |
| `desired_state_id` | Increasing but otherwise random number identifying this desired state (not necessarily an S3/bucket version id — may be *generated from* one, but the Pico shouldn't assume the two are interchangeable) |

Unknown keys are ignored rather than treated as an error, so the format can
grow without breaking older firmware.

### `desired_state` vocabulary

The only desired state right now is hot water boost — the network
equivalent of someone pressing the physical hot water button
(`StartHotWater()` in `Common/CentralHeating.c`). It's a tri-state, not a
boolean, because "the hub has no opinion" is meaningfully different from
"the hub actively wants it off":

| Value | Meaning |
|-------|---------|
| `None` | The hub isn't overriding anything — hot water is left to the Pico's own local state (physical button, existing boost timer) |
| `On` | The hub wants hot water boost switched on |
| `Off` | The hub wants hot water boost switched off (e.g. "we think the water is hot enough") |

## Processing model

- Incoming packets are handled as they arrive, via the existing receive
  callback path (`on_recv` → `ReceiveDataFromNetwork`). There is no
  request/response coupling between what the Pico last sent and what it next
  receives; the two directions are independent.
- **Highest id wins, not last received.** Because UDP can deliver packets out
  of order, the Pico keeps track of the highest `desired_state_id` it has
  applied so far. An incoming packet with a `desired_state_id` lower than
  (or equal to) that is a stale/reordered duplicate and is dropped without
  being applied — `desired_state_id` being monotonically increasing is
  exactly what makes this cheap to check.
- Because UDP is unreliable and unordered, the hub is expected to keep
  resending the current desired state until it sees the matching
  `fulfilled_state_id` come back, rather than the Pico acknowledging a
  specific packet.

## Fulfilled-state acknowledgement

Best-effort — no dedicated out-of-band ack packet. `fulfilled_state_id`
simply rides along in the regular heartbeat like every other field, and
starts appearing (and updating) once the Pico has actually *applied* the
corresponding `desired_state` — not merely received or parsed it. Until
then, the field reflects whatever the last successfully applied id still is.
The hub is expected to keep resending the current desired state until it
observes that value come back, since there's no separate acknowledgement to
wait for.
