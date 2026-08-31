#ifndef COMMAND_CENTRE_CLIENT_H
#define COMMAND_CENTRE_CLIENT_H

// Reads WRITE_API_URL/WRITE_API_KEY from the environment and initialises
// libcurl. Returns 0 on success.
int CommandCentre_Init(void);

// POSTs the QUACK status payload (raw text, forwarded verbatim from the
// Pico) to the write endpoint. Returns 0 on success (HTTP 200), non-zero
// otherwise. Best-effort — the caller doesn't retry, the next heartbeat
// will just try again.
int CommandCentre_PostStatus(const unsigned char* statusPayload);

void CommandCentre_Shutdown(void);

#endif
