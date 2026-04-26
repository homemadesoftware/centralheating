uint8_t ButtonPad_ReadKeyState(i2c_inst_t* i2cPort);
void ButtonPad_ReadBufferedKeys(i2c_inst_t* i2cPort, uint8_t* keys, uint8_t* read);