namespace CentralHeatingOnCloud.Lambda;

// One container image backs both Lambda functions (see infrastructure/lambda.tf);
// the HANDLER_TYPE environment variable set on each function tells this shared
// entry point which routes to serve. See AWS-BACKEND-SPEC.md §1/§4.
public static class HandlerTypes
{
    public const string StatusIngest = "status-ingest";
    public const string MintDesiredStateUrl = "mint-desired-state-url";
}
