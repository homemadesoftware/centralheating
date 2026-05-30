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

/// <summary>
/// This is a hacky way to pull up the waveshare outputs as soon as the system starts before anything else gets initiliased
/// Makes an assumption that the outputs are always at the i2c0. If this changes, then the hack needs revisiting.
/// </summary>
void IoExpander_Pull_Up_Output_On_I2C0_At_Startup()
{
	// Use the highest speed on i2c0
	i2c_init(i2c0, 400000);

	const int sda_pin = 4;
	const int scl_pin = 5;

	gpio_set_function(sda_pin, GPIO_FUNC_I2C);
	gpio_set_function(scl_pin, GPIO_FUNC_I2C);

	gpio_pull_up(sda_pin);
	gpio_pull_up(scl_pin);

	// The rest is similar to the IOExpander_Initialise() but takes place sooner.
	// Load the latch BEFORE switching on the ouputs
	// And do this before we turn outputs.
	uint8_t reset[2] = { OLATB, 0XFF };
	uint8_t retval = i2c_write_blocking(i2c0, MCP23017_ADDRESS, reset, 2, false);

	// Initialise Outputs on port B
	uint8_t all_outputs[2] = { IODIRB, 0x00 };
	i2c_write_blocking(i2c0, MCP23017_ADDRESS, all_outputs, 2, false);
}

/// <summary>
/// More civil and portable initialisation that goes over inputs and outputs once again as part of orderly initialisation
/// </summary>
/// <param name="i2cPort"></param>
void IoExpander_Initialise(i2c_inst_t* i2cPort)
{
	// Initialise Inputs on port A
	uint8_t all_inputs[2] = { IODIRA, 0xff };
	i2c_write_blocking(i2cPort, MCP23017_ADDRESS, all_inputs, 2, false);

	// The output circuit is active low and we don't want to spike them during initialisation
	// We want them to start from a switched off state = 0xff
	// So load the latch BEFORE switching on the ouputs
	// And do this before we turn outputs.
	uint8_t reset[2] = { OLATB, 0XFF };
	uint8_t retval = i2c_write_blocking(i2cPort, MCP23017_ADDRESS, reset, 2, false);

	// Initialise Outputs on port B
	uint8_t all_outputs[2] = { IODIRB, 0x00 };
	i2c_write_blocking(i2cPort, MCP23017_ADDRESS, all_outputs, 2, false);
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