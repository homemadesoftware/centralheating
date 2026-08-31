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
    // credentials, not a real call to AWS — it succeeds even if
    // current.json doesn't exist yet (nothing writes it yet; that's a
    // future Android app, out of scope here). The hub just gets a 404 when
    // it actually polls, which is fine — indistinguishable from
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
}
