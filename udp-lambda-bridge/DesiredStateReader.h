#ifndef DESIRED_STATE_READER_H
#define DESIRED_STATE_READER_H

#include <stddef.h>

// Checks READ_API_URL/READ_API_KEY exist, printing an error if not. Called
// from main() at startup, so a missing/bad config fails the whole service
// loudly immediately rather than only on the first tick.
int DesiredStateReader_ValidateEnv(void);

// Call once per main-loop iteration. Does nothing most of the time - only
// when due (mint roughly every 6h, or immediately after a 401/403; fetch
// every POLL_INTERVAL_SECONDS) does it actually make a blocking curl call
// inline, updating the cache synchronously before returning. No thread, no
// child process, no cache file - this and DesiredStateReader_ReadCache run
// on the same single thread as the UDP loop, so there's nothing to
// synchronize.
void DesiredStateReader_Tick(void);

// Copies the cached desired-state text into buffer, null-terminated and
// truncated to fit maxLength. Copies an empty string if nothing has been
// fetched successfully yet.
void DesiredStateReader_ReadCache(char* buffer, size_t maxLength);

#endif
