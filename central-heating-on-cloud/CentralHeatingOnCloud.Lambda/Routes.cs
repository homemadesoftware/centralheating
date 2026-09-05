using Amazon.DynamoDBv2;
using Amazon.DynamoDBv2.Model;
using Amazon.S3;
using Amazon.S3.Model;

namespace CentralHeatingOnCloud.Lambda;

public static class Routes
{
    // Placeholder until there's a real way to identify which device sent a
    // given status — nothing in QUACK's outbound fields does today. See
    // AWS-BACKEND-SPEC.md §5.
    private const string Origin = "central-heating";

    private static readonly AmazonDynamoDBClient DynamoDb = new();
    private static readonly AmazonS3Client S3 = new();

    public static void MapAll(WebApplication app)
    {
        MapStatusIngest(app);
        MapMintDesiredStateUrl(app);
        MapLatestStatus(app);
        MapSetDesiredState(app);
    }

    // Receives the QUACK heartbeat/status payload udp-lambda-bridge forwards
    // from the Pico, as the raw QUACK wire text (key-value lines, not JSON —
    // see pico-central-heating/QUACK.md) and records it as one item in
    // STATUS_TABLE_NAME. API Gateway enforces the write API key before this
    // ever runs (infrastructure/apigateway.tf) — no app-level auth here.
    private static void MapStatusIngest(WebApplication app)
    {
        var tableName = Environment.GetEnvironmentVariable("STATUS_TABLE_NAME")
            ?? throw new InvalidOperationException("STATUS_TABLE_NAME environment variable is required.");

        app.MapPost("/status", async (HttpRequest request) =>
        {
            using var reader = new StreamReader(request.Body);
            var body = await reader.ReadToEndAsync();

            // Everything is stored as a string, deliberately — some fields
            // that look numeric (uptime, temperature) can legitimately carry
            // a non-numeric sentinel like "NO_READING", so there is no
            // field where a Number type is actually safe.
            var item = new Dictionary<string, AttributeValue>();
            foreach (var (key, value) in ParseQuackPayload(body))
            {
                item[key] = new AttributeValue { S = value };
            }

            // Assigned after the parsed fields, not before, so a stray QUACK
            // key can never overwrite these even if the protocol grows a
            // field with a colliding name.
            var now = DateTimeOffset.UtcNow;
            item["origin"] = new AttributeValue { S = Origin };
            item["received_at"] = new AttributeValue { S = now.ToString("yyyy-MM-ddTHH:mm:ss.fffZ") };
            item["expires_at"] = new AttributeValue { N = now.AddDays(90).ToUnixTimeSeconds().ToString() };

            await DynamoDb.PutItemAsync(new PutItemRequest
            {
                TableName = tableName,
                Item = item,
            });

            return Results.Ok();
        });
    }

    // QUACK.md's own definition: one `key value` pair per line, the key is
    // the first whitespace-delimited token, the value is everything after
    // the first space to the end of the line. Unknown/extra keys are kept,
    // not dropped — mirrors QUACK.md's own "unknown keys are ignored [by
    // the Pico], not treated as an error" forward-compatibility stance.
    // Malformed lines (no space) are skipped rather than failing the whole
    // request.
    private static Dictionary<string, string> ParseQuackPayload(string body)
    {
        var fields = new Dictionary<string, string>();

        foreach (var rawLine in body.Split('\n'))
        {
            var line = rawLine.TrimEnd('\r');
            if (line.Length == 0)
            {
                continue;
            }

            var spaceIndex = line.IndexOf(' ');
            if (spaceIndex < 0)
            {
                continue;
            }

            var key = line[..spaceIndex];
            var value = line[(spaceIndex + 1)..];
            fields[key] = value;
        }

        return fields;
    }

    // Mints a presigned S3 GET URL for the current desired-state object so the
    // hub can poll S3 directly afterwards, with no further Lambda involvement
    // (see AWS-BACKEND-SPEC.md §2, "How the hub polls for desired state").
    // Response is the URL alone, as plain text — deliberately not JSON, so
    // the hub's C client needs no parsing at all, just to GET whatever body
    // it gets back. Fully decoupled from the write path: no shared state,
    // no shared response shape.
    //
    // Presigning is a local SigV4 computation using the Lambda's own
    // credentials, not a real call to AWS — it succeeds even before
    // anything has ever called MapSetDesiredState below. The hub just gets
    // a 404 when it actually polls, which is fine — indistinguishable from
    // desired-state: none from the hub's point of view.
    private static void MapMintDesiredStateUrl(WebApplication app)
    {
        var bucket = Environment.GetEnvironmentVariable("DESIRED_STATE_BUCKET")
            ?? throw new InvalidOperationException("DESIRED_STATE_BUCKET environment variable is required.");
        var key = Environment.GetEnvironmentVariable("DESIRED_STATE_KEY")
            ?? throw new InvalidOperationException("DESIRED_STATE_KEY environment variable is required.");
        var ttlSeconds = int.Parse(Environment.GetEnvironmentVariable("PRESIGNED_URL_TTL_SECONDS")
            ?? throw new InvalidOperationException("PRESIGNED_URL_TTL_SECONDS environment variable is required."));

        app.MapGet("/desired-state-url", () =>
        {
            var url = S3.GetPreSignedURL(new GetPreSignedUrlRequest
            {
                BucketName = bucket,
                Key = key,
                Verb = HttpVerb.GET,
                Protocol = Protocol.HTTPS,
                Expires = DateTime.UtcNow.AddSeconds(ttlSeconds),
            });

            return Results.Text(url, "text/plain");
        });
    }

    // For the future Android app: the most recent status item, as JSON
    // (unlike the hub-facing routes above, which deliberately avoid it) —
    // a phone app has no reason to hand-parse QUACK wire text. Uses the
    // same app-facing API key as MapSetDesiredState below (see
    // infrastructure/apigateway.tf's "app" API).
    private static void MapLatestStatus(WebApplication app)
    {
        var tableName = Environment.GetEnvironmentVariable("STATUS_TABLE_NAME")
            ?? throw new InvalidOperationException("STATUS_TABLE_NAME environment variable is required.");

        app.MapGet("/status/latest", async () =>
        {
            var response = await DynamoDb.QueryAsync(new QueryRequest
            {
                TableName = tableName,
                KeyConditionExpression = "origin = :origin",
                ExpressionAttributeValues = new Dictionary<string, AttributeValue>
                {
                    [":origin"] = new AttributeValue { S = Origin },
                },
                ScanIndexForward = false, // received_at descending - newest item first
                Limit = 1,
            });

            if (response.Items.Count == 0)
            {
                return Results.NotFound();
            }

            // Every attribute is either S or N (see MapStatusIngest) and
            // both are string-typed in the SDK, so this loses nothing.
            var fields = response.Items[0].ToDictionary(pair => pair.Key, pair => pair.Value.S ?? pair.Value.N);
            return Results.Json(fields);
        });
    }

    // Accepts the new desired-state value as JSON from the future Android
    // app, assigns a new desired-state-id, and overwrites the single
    // desired-state object in S3 (still no bucket versioning - see s3.tf).
    // Fully decoupled from the read path above - the hub just sees a new
    // object next time it polls, with no idea a write even happened.
    //
    // Requires the target boot-id (see QUACK.md) so the Pico only acts on a
    // command issued against its current boot - the app is expected to have
    // just read it off GET /status/latest before calling this, so it's
    // always targeting whatever's actually running right now.
    private static void MapSetDesiredState(WebApplication app)
    {
        var bucket = Environment.GetEnvironmentVariable("DESIRED_STATE_BUCKET")
            ?? throw new InvalidOperationException("DESIRED_STATE_BUCKET environment variable is required.");
        var key = Environment.GetEnvironmentVariable("DESIRED_STATE_KEY")
            ?? throw new InvalidOperationException("DESIRED_STATE_KEY environment variable is required.");

        app.MapPost("/desired-state", async (SetDesiredStateRequest request) =>
        {
            if (request.DesiredState is not ("none" or "on" or "off"))
            {
                return Results.BadRequest("desired-state must be one of: none, on, off");
            }

            if (string.IsNullOrWhiteSpace(request.BootId))
            {
                return Results.BadRequest("boot-id is required - read it off GET /status/latest first");
            }

            // Epoch milliseconds, zero-padded to a fixed width so plain
            // string comparison agrees with numeric order, plus a GUID
            // suffix to break ties between writes landing in the same
            // millisecond - see QUACK.md's desired-state-id definition.
            // 16 digits comfortably outlives epoch-ms (until the year 5138).
            var desiredStateId = $"{DateTimeOffset.UtcNow.ToUnixTimeMilliseconds():D16}{Guid.NewGuid():N}";

            var content = $"boot-id {request.BootId}\ndesired-state {request.DesiredState}\ndesired-state-id {desiredStateId}\n";

            await S3.PutObjectAsync(new PutObjectRequest
            {
                BucketName = bucket,
                Key = key,
                ContentBody = content,
            });

            return Results.Text(desiredStateId, "text/plain");
        });
    }
}

// JSON property names mirror QUACK.md's own field names (boot-id,
// desired-state) rather than being camelCased, so the app can pass through
// values it read verbatim from GET /status/latest without translating keys.
public record SetDesiredStateRequest(
    [property: System.Text.Json.Serialization.JsonPropertyName("desired-state")] string DesiredState,
    [property: System.Text.Json.Serialization.JsonPropertyName("boot-id")] string BootId);
