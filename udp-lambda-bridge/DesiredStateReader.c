#include "DesiredStateReader.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include <unistd.h>
#include <signal.h>
#include <sys/types.h>
#include <sys/prctl.h>
#include <curl/curl.h>

#define MINT_URL_BUFFER_SIZE 2048
#define DESIRED_STATE_BODY_BUFFER_SIZE 4096
#define ETAG_BUFFER_SIZE 128
#define POLL_INTERVAL_SECONDS 1

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

	const char* readApiUrl = getenv("READ_API_URL");
	const char* readApiKey = getenv("READ_API_KEY");
	if (readApiUrl == NULL || readApiKey == NULL)
	{
		printf("READ_API_URL and READ_API_KEY environment variables are required\n");
		exit(1);
	}

	char presignedUrl[MINT_URL_BUFFER_SIZE];
	char bodyBuffer[DESIRED_STATE_BODY_BUFFER_SIZE];
	char etag[ETAG_BUFFER_SIZE];
	etag[0] = '\0';

	for (;;)
	{
		if (MintDesiredStateUrl(readApiUrl, readApiKey, presignedUrl))
		{
			long statusCode = FetchDesiredState(presignedUrl, etag, bodyBuffer);

			if (statusCode == 200)
			{
				WriteCacheFile(bodyBuffer, strlen(bodyBuffer));
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
