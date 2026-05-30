void IoExpander_Pull_Up_Output_On_I2C0_At_Startup();
void IoExpander_Initialise(i2c_inst_t* i2cPort);
void IoExpander_Write(i2c_inst_t* i2cPort, uint8_t value);
void IoExpander_Read(i2c_inst_t* i2cPort, uint8_t* value);