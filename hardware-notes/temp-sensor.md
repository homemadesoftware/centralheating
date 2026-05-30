# Temperature Sensor

## Sensor Unit (pico-temp-sensor)

### DS18B20 Cable Colours

| Colour             | Sensor side             | Main unit               |
|--------------------|-------------------------|-------------------------|
| Brown              | GND                     | GND (Pin 38)            |
| Brown with stripes | VCC                     | VBUS (Pin 40)           |
| Blue               | DATA — GPIO 2 (Pin 4)   | GPIO 17 (Pin 22)        |
| Blue with stripes  | CLOCK — GPIO 1 (Pin 2)  | GPIO 16 (Pin 21)        |

### Tortoise Output

| Signal | GPIO |
|--------|------|
| Clock  | 1    |
| Data   | 2    |

## Main Unit (pico-central-heating)

### Tortoise Input

| Signal | GPIO |
|--------|------|
| Clock  | 16   |
| Data   | 17   |

Runs on a GPIO interrupt (rising edge on clock). A 16-bit shift register watches for the `0x7F7F` sentinel pattern, then captures the following 16 bits as the temperature value.

Returns −200°C if no reading received within 3 seconds.

## Tortoise Protocol

### Frame Format

4 bytes (32 bits), transmitted LSB-first:

| Byte | Content                         |
|------|---------------------------------|
| 0    | Sentinel `0x7F`                 |
| 1    | Sentinel `0x7F`                 |
| 2    | Low byte of raw temperature     |
| 3    | Upper 4 bits of raw temperature |

Raw value is DS18B20 native Q4 fixed-point. Temperature in °C = raw / 16.

### Bit Timing

Each bit takes ~50ms:

1. Set data pin (10ms)
2. Clock HIGH (10ms)
3. Clock LOW (10ms)
4. Data LOW (10ms)
5. Inter-bit delay (10ms)

Total frame transmission time: ~1.6 seconds.
