#ifndef PW_HARDWARE_ABSTRACTION_H
#define PW_HARDWARE_ABSTRACTION_H

#ifdef PICO_BOARD

#define PW_STDCALL
#define PW_EXPORTEDFUNCTION

#else

#define PW_STDCALL          _stdcall
#define PW_EXPORTEDFUNCTION __declspec(dllexport)

#endif

typedef struct tagDateTimeStruct
{
    unsigned char seconds;
    unsigned char minutes;
    unsigned char hours;
    unsigned char dayOfWeek;
    unsigned char day;
    unsigned char month;
    unsigned char year;
} DateTimeStruct;

// Full refresh — slow, clears ghosting, primes reference register
typedef void (PW_STDCALL *PW_DisplayFullRefreshDelegate)(unsigned char* buffer);

// Partial refresh — fast, no flash
typedef void (PW_STDCALL *PW_DisplayPartialRefreshDelegate)(unsigned char* buffer);

// Read buffered key presses (up to 16)
typedef void (PW_STDCALL *PW_GetWaitingKeysDelegate)(unsigned char* buffer, unsigned char* readCount);

// Read RTC
typedef void (PW_STDCALL *PW_GetRtcDelegate)(DateTimeStruct* dts);


typedef struct tagPW_BoardCalls
{
    PW_DisplayFullRefreshDelegate  DisplayFullRefresh;
    PW_DisplayPartialRefreshDelegate DisplayPartialRefresh;
    PW_GetWaitingKeysDelegate      GetWaitingKeys;
    PW_GetRtcDelegate              GetRtc;
} PW_BoardCalls;


extern PW_DisplayFullRefreshDelegate  pPW_DisplayFullRefresh;
extern PW_DisplayPartialRefreshDelegate pPW_DisplayPartialRefresh;
extern PW_GetWaitingKeysDelegate      pPW_GetWaitingKeys;
extern PW_GetRtcDelegate              pPW_GetRtc;

// Key constants
#define PW_KEY_LEFT    1
#define PW_KEY_SELECT  2
#define PW_KEY_RIGHT   3
#define PW_KEY_UP      4
#define PW_KEY_DOWN    5
#define PW_KEY_FIRE    6

// Display buffer size (122 x 250 x 1bpp)
#define PW_DISPLAY_BUFFER_SIZE  3904

// Entry points implemented in PicoWindowsCommon
PW_EXPORTEDFUNCTION void PW_Init();
PW_EXPORTEDFUNCTION void PW_Tick();

#endif
