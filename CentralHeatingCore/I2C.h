// Initialises the I2C
void I2C_Initialise();

// Recevies an array of bytes from slave at the given address. 
// If no error then returns 1
unsigned char I2C_SendData(unsigned char slaveAddress, unsigned char *byte, int dataLen);

// Receives a number of bytes from slave
// If no error then returns 1
unsigned char I2C_RecvData(unsigned char slaveAddress, unsigned char *byte, int dataLen);

