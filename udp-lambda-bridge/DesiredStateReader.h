#ifndef DESIRED_STATE_READER_H
#define DESIRED_STATE_READER_H

#include <stddef.h>

// Path the reader child writes the latest fetched desired-state text to,
// and the parent reads from when replying to the Pico. Deliberately under
// /tmp - it's a re-derivable cache, fine to lose on reboot.
#define DESIRED_STATE_CACHE_PATH "/tmp/desired-state-cache.txt"

// Entry point for the forked child process. Reads READ_API_URL/READ_API_KEY
// from the environment, then loops forever (never returns): mints a fresh
// presigned URL, conditionally GETs it (If-None-Match/ETag), and on a
// change, atomically replaces the cache file. Exits the process outright on
// setup failure (missing env vars) or once the parent process is gone.
void DesiredStateReader_RunChildLoop(void);

// Copies the cached desired-state text into buffer, null-terminated and
// truncated to fit maxLength. Copies an empty string if nothing has been
// fetched successfully yet.
void DesiredStateReader_ReadCache(char* buffer, size_t maxLength);

#endif
