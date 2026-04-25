// LCD Display
void InitialiseLcd();

/*
// Buffered display
void BufferedDisplay_Clear();
void BufferedDisplay_Write(char *pText);
void BufferedDisplay_Printf(char* format, ...);
*/

// Direct write to display from a buffer
void DirectWriteToDisplay(unsigned char*);
