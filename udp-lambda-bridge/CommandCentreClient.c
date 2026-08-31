#include "CommandCentreClient.h"

#include <stdio.h>
#include <stdlib.h>
#include <curl/curl.h>

static const char* g_writeApiUrl;
static const char* g_writeApiKey;

// libcurl calls this with each chunk of response body; the write path
// doesn't care about the body (a 200 with nothing in it is success), so
// just tell curl every byte was consumed rather than leaving it to write
// to stdout by default.
static size_t DiscardResponseBody(char* pData, size_t size, size_t nmemb, void* pUserData)
{
	(void)pData;
	(void)pUserData;
	return size * nmemb;
}

int CommandCentre_Init(void)
{
	g_writeApiUrl = getenv("WRITE_API_URL");
	g_writeApiKey = getenv("WRITE_API_KEY");

	if (g_writeApiUrl == NULL || g_writeApiKey == NULL)
	{
		printf("WRITE_API_URL and WRITE_API_KEY environment variables are required\n");
		return 1;
	}

	return curl_global_init(CURL_GLOBAL_DEFAULT) == CURLE_OK ? 0 : 1;
}

int CommandCentre_PostStatus(const unsigned char* statusPayload)
{
	CURL* curl = curl_easy_init();
	if (curl == NULL)
	{
		printf("curl_easy_init failed\n");
		return 1;
	}

	char apiKeyHeader[256];
	snprintf(apiKeyHeader, sizeof(apiKeyHeader), "x-api-key: %s", g_writeApiKey);

	struct curl_slist* headers = NULL;
	headers = curl_slist_append(headers, apiKeyHeader);
	headers = curl_slist_append(headers, "Content-Type: text/plain");

	curl_easy_setopt(curl, CURLOPT_URL, g_writeApiUrl);
	curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);
	curl_easy_setopt(curl, CURLOPT_POSTFIELDS, (const char*)statusPayload);
	curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, DiscardResponseBody);
	curl_easy_setopt(curl, CURLOPT_TIMEOUT, 10L);

	CURLcode result = curl_easy_perform(curl);

	int ok = 0;
	if (result != CURLE_OK)
	{
		printf("POST to Command Centre failed: %s\n", curl_easy_strerror(result));
	}
	else
	{
		long statusCode = 0;
		curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &statusCode);
		if (statusCode == 200)
		{
			ok = 1;
		}
		else
		{
			printf("POST to Command Centre returned %ld\n", statusCode);
		}
	}

	curl_slist_free_all(headers);
	curl_easy_cleanup(curl);

	return ok ? 0 : 1;
}

void CommandCentre_Shutdown(void)
{
	curl_global_cleanup();
}
