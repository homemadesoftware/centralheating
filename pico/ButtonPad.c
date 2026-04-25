#include "pico/stdlib.h"
#include "hardware/i2c.h"
#include "ButtonPad.h"

// Default I2C address
#define BPAD_I2C_ADD	0x59

// Module specific registers
enum MLINK_BPAD_REGISTERS
{
	MLINK_BPAD_BUFF_STATUS_REG = 10,
	MLINK_BPAD_BUFFER_REG = 11,
	MLINK_BPAD_KEYSTATE_REG = 12,
	MLINK_BPAD_DEBOUNCE_REG = 13,
};


#define BPAD_UP_BIT						0
#define BPAD_LEFT_BIT					1
#define BPAD_DOWN_BIT					2
#define BPAD_RIGHT_BIT					3
#define BPAD_SELECT_BIT					4
#define BPAD_BACK_BIT					5

#define BPAD_BUFF_EMPTY_BIT				0
#define BPAD_BUFF_FULL_BIT				1


int ConvertKey(uint8_t key);
uint8_t ReadFromRegister(i2c_inst_t* i2cPort, uint8_t reg);
bool ButtonPad_IsLeftDown(i2c_inst_t* i2cPort);
bool ButtonPad_IsMiddleDown(i2c_inst_t* i2cPort);
bool ButtonPad_IsRightDown(i2c_inst_t* i2cPort);


uint8_t ButtonPad_ReadKeyState(i2c_inst_t* i2cPort)
{
	if (ButtonPad_IsLeftDown(i2cPort))
	{
		return 1;
	}
	else if (ButtonPad_IsMiddleDown(i2cPort))
	{
		return 2;
	}
	else if (ButtonPad_IsRightDown(i2cPort))
	{
		return 3;
	}
	return 0;
}

#include "HardwareAbstraction.h"
extern CrashDumpDelegate           pCrashDump;
void IntToString(unsigned char* p, unsigned int v);

void ButtonPad_ReadBufferedKeys(i2c_inst_t* i2cPort, uint8_t* keys, uint8_t* read)
{
	*read = 0;
	for (uint8_t i = 0; i < 32; ++i)
	{
		if (ReadFromRegister(i2cPort, MLINK_BPAD_BUFF_STATUS_REG) & (1 << BPAD_BUFF_EMPTY_BIT))
		{
			return;
		}
		keys[i] = ConvertKey(ReadFromRegister(i2cPort, MLINK_BPAD_BUFFER_REG));

		/*
		char buf[10];
		IntToString(buf, keys[i]);
		pCrashDump(buf);
		*/


		++(*read);
	}
}

int ConvertKey(uint8_t key)
{
	if (key == 1)
	{
		return 1;
	}
	else if (key == 4)
	{
		return 2;
	}
	else if (key == 3)
	{
		return 3;
	}
	return 0;
}

uint8_t ReadFromRegister(i2c_inst_t* i2cPort, uint8_t reg)
{
	uint8_t buffer[1];
	buffer[0] = reg;
	i2c_write_blocking(i2cPort, BPAD_I2C_ADD, buffer, 1, false);

	buffer[0] = 0;
	i2c_read_blocking(i2cPort, BPAD_I2C_ADD, buffer, 1, false);
	return buffer[0];
}

bool ButtonPad_IsLeftDown(i2c_inst_t* i2cPort)
{
	return ReadFromRegister(i2cPort, MLINK_BPAD_KEYSTATE_REG) & (1 << BPAD_LEFT_BIT);
}


bool ButtonPad_IsMiddleDown(i2c_inst_t* i2cPort)
{
	return ReadFromRegister(i2cPort, MLINK_BPAD_KEYSTATE_REG) & (1 << BPAD_SELECT_BIT);
}


bool ButtonPad_IsRightDown(i2c_inst_t* i2cPort)
{
	return ReadFromRegister(i2cPort, MLINK_BPAD_KEYSTATE_REG) & (1 << BPAD_RIGHT_BIT);
}
