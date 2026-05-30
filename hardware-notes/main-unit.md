# Main Unit (pico-central-heating)

Raspberry Pi Pico W (RP2040)

## ePaper Display

Waveshare 2.13" e-paper V3. Connected via SPI1 at 4 MHz. The display plugs onto Pico pins 11–17.

| Signal | GPIO | Pin |
|--------|------|-----|
| DC     | 8    | 11  |
| CS     | 9    | 12  |
| GND    | —    | 13  |
| CLK    | 10   | 14  |
| DIN    | 11   | 15  |
| RST    | 12   | 16  |
| BUSY   | 13   | 17  |

## IO Expander

MCP23017 16-bit I/O expander on I2C bus 0, address `0x27`.

### Port A — Inputs

Thermostat demand signals from room stats, opto-coupled from 5V.

| Bit | Mask | Name           | Note          |
|-----|------|----------------|---------------|
| 0   | 0x01 | INPUT_ZONENC1  | Unused        |
| 1   | 0x02 | INPUT_ZONENC2  | Unused        |
| 2   | 0x04 | INPUT_ZONE3    |               |
| 3   | 0x08 | INPUT_ZONE4    | Unused        |
| 4   | 0x10 | INPUT_ZONE1    |               |
| 5   | 0x20 | INPUT_ZONE2    |               |
| 6   | 0x40 | INPUT_ZONE5    | Unused        |
| 7   | 0x80 | INPUT_ZONE6    | Faulty        |

### Port B — Outputs

Relay outputs driving zone valve actuators and boiler.

| Bit | Mask | Name               | Controls              |
|-----|------|--------------------|-----------------------|
| 0   | 0x01 | OUTPUT_ACTUATOR1   | Zone 1 actuator       |
| 1   | 0x02 | OUTPUT_ACTUATOR2   | Zone 1 actuator       |
| 2   | 0x04 | OUTPUT_ACTUATOR3   | Zone 2 actuator       |
| 3   | 0x08 | OUTPUT_ACTUATOR4   | Zone 3 actuator       |
| 4   | 0x10 | OUTPUT_HWACTUATOR  | Hot water actuator    |
| 5   | 0x20 | OUTPUT_BOILER      | Boiler                |
| 6   | 0x40 | OUTPUT_ACTUATOR5   | Zone 4 actuator       |
| 7   | 0x80 | OUTPUT_ACTUATOR6   | Zone 5 actuator       |

## RTC

DS1307 on I2C bus 1, address `0x68`. BCD format, 24-hour mode.

## Button Pad

mLink 6-button pad (HCMODU0193) on I2C bus 0, address `0x59`. 3.3V–5.5V, up to 16 key presses buffered.

| Bit | Button |
|-----|--------|
| 0   | Up     |
| 1   | Left   |
| 2   | Down   |
| 3   | Right  |
| 4   | Select |
| 5   | Back   |

## Tortoise Receiver

Receives temperature readings from the sensor unit. See [temp-sensor.md](temp-sensor.md) for protocol details.

| Signal | GPIO | Pin |
|--------|------|-----|
| Clock  | 16   | 21  |
| Data   | 17   | 22  |

Returns −200°C if no reading received within 3 seconds.

## I2C Buses

| Bus   | SDA      | SCL      | Speed  | Devices                          |
|-------|----------|----------|--------|----------------------------------|
| I2C0  | GPIO 4 (Pin 6) | GPIO 5 (Pin 7) | 10 kHz | IO expander (0x27), button pad (0x59) |
| I2C1  | GPIO 6 (Pin 9) | GPIO 7 (Pin 10) | 10 kHz | RTC (0x68)                      |
