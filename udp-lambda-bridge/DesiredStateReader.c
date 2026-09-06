#include "DesiredStateReader.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/prctl.h>
#include <curl/curl.h>

#define MINT_URL_BUFFER_SIZE 2048
#define DESIRED_STATE_BODY_BUFFER_SIZE 4096
#define ETAG_BUFFER_SIZE 128
#define DESIRED_STATE_ID_BUFFER_SIZE 64
#define TIMESTAMP_BUFFER_SIZE 32
// AWS deliberately isn't on the Pico-facing critical path - this is how
// often the hub itself checks S3 for a change, independent of how often it
// replies to the Pico (which just keeps reading whatever's currently
// cached - see DesiredStateReader_ReadCache).
#define POLL_INTERVAL_SECONDS 30
#define MINT_INTERVAL_SECONDS (6 * 60 * 60)

int DesiredStateReader_ValidateEnv(void)
{
	if (getenv("READ_API_URL") == NULL || getenv("READ_API_KEY") == NULL)
	{
		printf("READ_API_URL and READ_API_KEY environment variables are required\n");
		return 1;
	}
	return 0;
}

static void FormatUtcTimestamp(time_t t, char* pOut, size_t outSize)
{
	struct tm tmValue;
	gmtime_r(&t, &tmValue);
	strftime(pOut, outSize, "%Y-%m-%dT%H:%M:%SZ", &tmValue);
}

// Pulls the value out of the "desired-state-id <value>" line, if present -
// deliberately a tiny standalone scan rather than pulling in the Pico's
// own parser, since this is only for logging, not protocol correctness.
static void ExtractDesiredStateId(const char* pBody, char* pIdOut, size_t idOutSize)
{
	static const char key[] = "desired-state-id ";
	pIdOut[0] = '\0';

	const char* pFound = strstr(pBody, key);
	if (pFound == NULL)
	{
		return;
	}

	pFound += sizeof(key) - 1;
	size_t i = 0;
	while (pFound[i] != '\0' && pFound[i] != '\n' && pFound[i] != '\r' && i < idOutSize - 1)
	{
		pIdOut[i] = pFound[i];
		++i;
	}
	pIdOut[i] = '\0';
}

// The id's own leading 16 digits are the zero-padded epoch-millisecond
// timestamp it was minted at (see QUACK.md) - decoding that here shows how
// old a desired-state already was by the time this loop fetched it.
static void FormatMintedAt(const char* pId, char* pOut, size_t outSize)
{
	if (strlen(pId) < 16)
	{
		snprintf(pOut, outSize, "?");
		return;
	}

	char epochMsDigits[17];
	strncpy(epochMsDigits, pId, 16);
	epochMsDigits[16] = '\0';

	long long epochMs = strtoll(epochMsDigits, NULL, 10);
	FormatUtcTimestamp((time_t)(epochMs / 1000), pOut, outSize);
}

typedef struct
{
	char* pDestination;
	size_t capacity;
	size_t written;
} FixedBuffer;

// libcurl calls this with each chunk of response body; copies as much as
// fits into the fixed-size destination buffer and silently drops the rest
// (both responses handled here - a presigned URL and the desired-state
// text - are expected to comfortably fit).
static size_t CopyIntoFixedBuffer(char* pData, size_t size, size_t nmemb, void* pUserData)
{
	FixedBuffer* pBuffer = (FixedBuffer*)pUserData;
	size_t length = size * nmemb;
	size_t spaceLeft = (pBuffer->capacity > pBuffer->written + 1) ? (pBuffer->capacity - pBuffer->written - 1) : 0;
	size_t toCopy = length < spaceLeft ? length : spaceLeft;

	memcpy(pBuffer->pDestination + pBuffer->written, pData, toCopy);
	pBuffer->written += toCopy;
	pBuffer->pDestination[pBuffer->written] = '\0';

	return length;
}

// libcurl calls this with each response header line; picks out ETag so it
// can be sent back as If-None-Match next time round, avoiding a cache
// rewrite when the desired state hasn't actually changed.
static size_t CaptureETagHeader(char* pData, size_t size, size_t nmemb, void* pUserData)
{
	size_t length = size * nmemb;
	static const char prefix[] = "etag:";

	if (length > sizeof(prefix) - 1 && strncasecmp(pData, prefix, sizeof(prefix) - 1) == 0)
	{
		char* pEtag = (char*)pUserData;
		size_t valueStart = sizeof(prefix) - 1;
		while (valueStart < length && pData[valueStart] == ' ')
		{
			valueStart++;
		}

		size_t valueLength = length - valueStart;
		while (valueLength > 0 && (pData[valueStart + valueLength - 1] == '\r' || pData[valueStart + valueLength - 1] == '\n'))
		{
			valueLength--;
		}

		if (valueLength >= ETAG_BUFFER_SIZE)
		{
			valueLength = ETAG_BUFFER_SIZE - 1;
		}

		memcpy(pEtag, pData + valueStart, valueLength);
		pEtag[valueLength] = '\0';
	}

	return length;
}

static void WriteCacheFile(const char* pContent, size_t length)
{
	const char* tempPath = DESIRED_STATE_CACHE_PATH ".tmp";

	FILE* pFile = fopen(tempPath, "wb");
	if (pFile == NULL)
	{
		printf("Failed to write %s\n", tempPath);
		return;
	}

	fwrite(pContent, 1, length, pFile);
	fclose(pFile);

	// rename() is atomic on the same filesystem, so the parent (reading the
	// same path concurrently, on every UDP reply) never sees a partially
	// written file.
	if (rename(tempPath, DESIRED_STATE_CACHE_PATH) != 0)
	{
		printf("Failed to publish %s\n", DESIRED_STATE_CACHE_PATH);
	}
}

static int MintDesiredStateUrl(const char* pReadApiUrl, const char* pReadApiKey, char* pUrlBuffer)
{
	CURL* curl = curl_easy_init();
	if (curl == NULL)
	{
		printf("curl_easy_init failed\n");
		return 0;
	}

	char apiKeyHeader[256];
	snprintf(apiKeyHeader, sizeof(apiKeyHeader), "x-api-key: %s", pReadApiKey);

	struct curl_slist* headers = NULL;
	headers = curl_slist_append(headers, apiKeyHeader);

	FixedBuffer urlBuffer = { pUrlBuffer, MINT_URL_BUFFER_SIZE, 0 };
	pUrlBuffer[0] = '\0';

	curl_easy_setopt(curl, CURLOPT_URL, pReadApiUrl);
	curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, CopyIntoFixedBuffer);
	curl_easy_setopt(curl, CURLOPT_WRITEDATA, &urlBuffer);
	curl_easy_setopt(curl, CURLOPT_TIMEOUT, 10L);

	CURLcode result = curl_easy_perform(curl);

	long statusCode = 0;
	if (result == CURLE_OK)
	{
		curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &statusCode);
		if (statusCode != 200)
		{
			printf("Mint desired-state URL returned %ld\n", statusCode);
		}
	}
	else
	{
		printf("Mint desired-state URL failed: %s\n", curl_easy_strerror(result));
	}

	curl_slist_free_all(headers);
	curl_easy_cleanup(curl);

	return statusCode == 200 && urlBuffer.written > 0;
}

// Fetches the desired-state object at pPresignedUrl, conditional on pEtag
// (in/out - updated on a 200, left alone otherwise). Returns the HTTP
// status code, or 0 on a transport-level failure.
static long FetchDesiredState(const char* pPresignedUrl, char* pEtag, char* pBodyBuffer)
{
	CURL* curl = curl_easy_init();
	if (curl == NULL)
	{
		printf("curl_easy_init failed\n");
		return 0;
	}

	struct curl_slist* headers = NULL;
	if (pEtag[0] != '\0')
	{
		char ifNoneMatch[ETAG_BUFFER_SIZE + 32];
		snprintf(ifNoneMatch, sizeof(ifNoneMatch), "If-None-Match: %s", pEtag);
		headers = curl_slist_append(headers, ifNoneMatch);
	}

	FixedBuffer bodyBuffer = { pBodyBuffer, DESIRED_STATE_BODY_BUFFER_SIZE, 0 };
	pBodyBuffer[0] = '\0';

	char newEtag[ETAG_BUFFER_SIZE];
	newEtag[0] = '\0';

	curl_easy_setopt(curl, CURLOPT_URL, pPresignedUrl);
	curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, CopyIntoFixedBuffer);
	curl_easy_setopt(curl, CURLOPT_WRITEDATA, &bodyBuffer);
	curl_easy_setopt(curl, CURLOPT_HEADERFUNCTION, CaptureETagHeader);
	curl_easy_setopt(curl, CURLOPT_HEADERDATA, newEtag);
	curl_easy_setopt(curl, CURLOPT_TIMEOUT, 10L);

	CURLcode result = curl_easy_perform(curl);

	long statusCode = 0;
	if (result == CURLE_OK)
	{
		curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &statusCode);
		if (statusCode == 200)
		{
			strncpy(pEtag, newEtag, ETAG_BUFFER_SIZE - 1);
			pEtag[ETAG_BUFFER_SIZE - 1] = '\0';
		}
	}
	else
	{
		printf("Fetch desired-state failed: %s\n", curl_easy_strerror(result));
	}

	curl_slist_free_all(headers);
	curl_easy_cleanup(curl);

	return statusCode;
}

void DesiredStateReader_RunChildLoop(void)
{
	pid_t originalParentPid = getppid();
	prctl(PR_SET_PDEATHSIG, SIGTERM);

	// prctl() above only arms the signal from this point on, so if the
	// parent already died in the (tiny) window between fork() and here, no
	// signal will ever arrive - catch that race explicitly.
	if (getppid() != originalParentPid)
	{
		exit(0);
	}

	if (DesiredStateReader_ValidateEnv() != 0)
	{
		exit(1);
	}
	const char* readApiUrl = getenv("READ_API_URL");
	const char* readApiKey = getenv("READ_API_KEY");

	char presignedUrl[MINT_URL_BUFFER_SIZE];
	presignedUrl[0] = '\0';
	char bodyBuffer[DESIRED_STATE_BODY_BUFFER_SIZE];
	char etag[ETAG_BUFFER_SIZE];
	etag[0] = '\0';

	// 0 forces an immediate mint on the very first iteration. Re-minted
	// roughly every MINT_INTERVAL_SECONDS after that (well within the
	// presigned URL's own multi-day TTL), retried sooner on a failed mint,
	// and forced early if a fetch ever comes back unauthorized - see below.
	time_t nextMintAt = 0;

	for (;;)
	{
		if (time(NULL) >= nextMintAt)
		{
			if (MintDesiredStateUrl(readApiUrl, readApiKey, presignedUrl))
			{
				nextMintAt = time(NULL) + MINT_INTERVAL_SECONDS;
			}
			else
			{
				nextMintAt = time(NULL) + POLL_INTERVAL_SECONDS;
			}
		}

		if (presignedUrl[0] != '\0')
		{
			long statusCode = FetchDesiredState(presignedUrl, etag, bodyBuffer);

			if (statusCode == 401 || statusCode == 403)
			{
				// The URL may have gone bad early (bucket policy change,
				// clock skew, etc.) - don't wait out the rest of the
				// interval before trying a fresh one.
				nextMintAt = 0;
			}
			else if (statusCode == 200)
			{
				WriteCacheFile(bodyBuffer, strlen(bodyBuffer));

				char id[DESIRED_STATE_ID_BUFFER_SIZE];
				ExtractDesiredStateId(bodyBuffer, id, sizeof(id));
				if (id[0] != '\0')
				{
					char mintedAt[TIMESTAMP_BUFFER_SIZE];
					char writtenAt[TIMESTAMP_BUFFER_SIZE];
					FormatMintedAt(id, mintedAt, sizeof(mintedAt));
					FormatUtcTimestamp(time(NULL), writtenAt, sizeof(writtenAt));
					printf("[reader] New desired-state: id=%s minted=%s written=%s\n", id, mintedAt, writtenAt);
				}
			}
			else if (statusCode == 404)
			{
				// Valid state - no desired-state object has been written
				// yet. Reflect that as an empty cache rather than leaving
				// a stale value in place.
				etag[0] = '\0';
				WriteCacheFile("", 0);
			}
			else if (statusCode != 304 && statusCode != 0)
			{
				printf("Fetch desired-state returned %ld\n", statusCode);
			}
		}

		sleep(POLL_INTERVAL_SECONDS);
	}
}

void DesiredStateReader_ReadCache(char* buffer, size_t maxLength)
{
	// Logged only on change (once per actual rewrite, not once per reply)
	// so it can be diffed against the child's "written" log line and the
	// hub's own "Sending (changed)" line to see exactly how stale the file
	// is at the point it's handed to the Pico.
	static time_t lastLoggedMtime = 0;
	struct stat cacheStat;
	if (stat(DESIRED_STATE_CACHE_PATH, &cacheStat) == 0 && cacheStat.st_mtime != lastLoggedMtime)
	{
		lastLoggedMtime = cacheStat.st_mtime;
		char writtenAt[TIMESTAMP_BUFFER_SIZE];
		FormatUtcTimestamp(cacheStat.st_mtime, writtenAt, sizeof(writtenAt));
		printf("[cache] file last written %s\n", writtenAt);
	}

	FILE* pFile = fopen(DESIRED_STATE_CACHE_PATH, "rb");
	if (pFile == NULL)
	{
		snprintf(buffer, maxLength, "%s", "");
		return;
	}

	size_t bytesRead = fread(buffer, 1, maxLength - 1, pFile);
	buffer[bytesRead] = '\0';
	fclose(pFile);
}
