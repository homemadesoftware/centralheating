namespace CentralHeatingOnCloud.Lambda;

public static class Routes
{
    public static void MapForHandlerType(WebApplication app, string handlerType)
    {
        switch (handlerType)
        {
            case HandlerTypes.StatusIngest:
                MapStatusIngest(app);
                break;
            case HandlerTypes.MintDesiredStateUrl:
                MapMintDesiredStateUrl(app);
                break;
            default:
                throw new InvalidOperationException($"Unknown HANDLER_TYPE '{handlerType}'.");
        }
    }

    // Receives the QUACK-derived heartbeat/status fields udp-lambda-bridge
    // forwards from the Pico (see pico-central-heating/QUACK.md and
    // AWS-BACKEND-SPEC.md §2). API Gateway enforces the write API key before
    // this ever runs (infrastructure/apigateway.tf) — no app-level auth here.
    //
    // TODO: parse the status payload, persist a "last known status" snapshot
    // (AWS-BACKEND-SPEC.md §5, "where does current status live"), and update
    // fulfilled-state-id bookkeeping once a desired state has been applied.
    private static void MapStatusIngest(WebApplication app)
    {
        app.MapPost("/status", () => Results.StatusCode(StatusCodes.Status501NotImplemented));
    }

    // Mints a presigned S3 GET URL for the current desired-state object so the
    // hub can poll S3 directly afterwards, with no further Lambda involvement
    // (see AWS-BACKEND-SPEC.md §2, "How the hub polls for desired state").
    //
    // TODO: call S3 GetPreSignedURL for DESIRED_STATE_BUCKET/DESIRED_STATE_KEY
    // (env vars set in infrastructure/lambda.tf) and return { url, expiresAt }.
    private static void MapMintDesiredStateUrl(WebApplication app)
    {
        app.MapGet("/desired-state-url", () => Results.StatusCode(StatusCodes.Status501NotImplemented));
    }
}
