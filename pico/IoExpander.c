#include "pico/stdlib.h"
#include "hardware/i2c.h"
#include "IoExpander.h"


// Because all A0, A1, A2 are pulled high on the waveshare board, we need to use the last possible address
#define MCP23017_ADDRESS 0x27


// IO Direction
#define IODIRA		0x00
#define IODIRB		0x01

// Input polarity
#define IPOLA		0x02
#define IPOLB		0x03

// Interrupt Enable
#define GPINTENA	0x04
#define GPINTENB	0x05

// Default Value
#define DEFVALA	    0x06
#define DEFVALB	    0x07

// Interrupt Control
#define INTCONA	    0x08
#define INTCONB	    0x09

// IO Configuration register
#define IOCONA	    0x0A
#define IOCONB	    0x0B

// Pull up
#define GPPUA		0x0C
#define GPPUB		0x0D

// Interrupt flag
#define INTFA		0x0E
#define INTFB		0x0F

// Interrupt Captured value
#define INTCAPA		0x10
#define INTCAPB 	0x11

// IO Register
#define GPIOA		0x12
#define GPIOB		0x13

// Output Latch
#define OLATA		0x14
#define OLATB		0x15


void IoExpander_Initialise(i2c_inst_t* i2cPort)
{
	// Initialise Inputs on port A
	uint8_t all_inputs[2] = { IODIRA, 0xff };
	i2c_write_blocking(i2cPort, MCP23017_ADDRESS, all_inputs, 2, false);

	// Initialise Outputs on port B
	uint8_t all_outputs[2] = { IODIRB, 0x00 };
	i2c_write_blocking(i2cPort, MCP23017_ADDRESS, all_outputs, 2, false);

	uint8_t reset[2] = { OLATB, 0X00 };
	uint8_t retval = i2c_write_blocking(i2cPort, MCP23017_ADDRESS, reset, 2, false);
}

void IoExpander_Read(i2c_inst_t* i2cPort, uint8_t* value)
{
	uint8_t target[1] = { GPIOA };
	i2c_write_blocking(i2cPort, MCP23017_ADDRESS, target, 1, false);
	uint8_t readBuffer[1] = { 0 };
	i2c_read_blocking(i2cPort, MCP23017_ADDRESS, readBuffer, 1, false);
	*value = readBuffer[0];
}

void IoExpander_Write(i2c_inst_t* i2cPort, uint8_t value)
{
	uint8_t values[2] = { OLATB, value };
	i2c_write_blocking(i2cPort, MCP23017_ADDRESS, values, 2, false);
}