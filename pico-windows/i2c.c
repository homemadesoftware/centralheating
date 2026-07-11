#include "pico/stdlib.h"
#include "i2c.h"

i2c_inst_t* InitialiseI2C(int index, int baudrate)
{
	if (index == 0)
	{
		i2c_init(i2c0, baudrate);

		const int sda_pin = 4;
		const int scl_pin = 5;

		gpio_set_function(sda_pin, GPIO_FUNC_I2C);
		gpio_set_function(scl_pin, GPIO_FUNC_I2C);

		gpio_pull_up(sda_pin);
		gpio_pull_up(scl_pin);

		return i2c0;
	}
	else if (index == 1)
	{
		i2c_init(i2c1, baudrate);

		const int sda_pin = 6;
		const int scl_pin = 7;

		gpio_set_function(sda_pin, GPIO_FUNC_I2C);
		gpio_set_function(scl_pin, GPIO_FUNC_I2C);

		gpio_pull_up(sda_pin);
		gpio_pull_up(scl_pin);

		return i2c1;
	}

	// Index 0 is not implemented
	return NULL;
}
