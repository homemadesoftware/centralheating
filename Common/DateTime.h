int  GetNumDaysInMonth(DateTimeStruct* dt);
void FormatTime(char *buffer, DateTimeStruct *pdt, unsigned char seconds);
void FormatDate(char *buffer, DateTimeStruct *pdt);
void FormatIso8601DateTime(char *buffer, int size, DateTimeStruct *pdt);
void AddSecondsToDateTime(DateTimeStruct* pdt, int seconds, DateTimeStruct* result);
int  CompareDateTime(DateTimeStruct* dt1, DateTimeStruct* dt2);
