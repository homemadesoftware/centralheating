using Amazon.Lambda.AspNetCoreServer.Hosting;
using CentralHeatingOnCloud.Lambda;

var handlerType = Environment.GetEnvironmentVariable("HANDLER_TYPE")
    ?? throw new InvalidOperationException("HANDLER_TYPE environment variable is required.");

Console.WriteLine($"central-heating-on-cloud starting, HANDLER_TYPE={handlerType}");

var builder = WebApplication.CreateBuilder(args);

// AddAWSLambdaHosting runs this under Kestrel locally and under the Lambda
// Runtime API when AWS_LAMBDA_RUNTIME_API is set (i.e. inside Lambda) —
// same Main either way, no manual environment branching needed.
builder.Services.AddAWSLambdaHosting(LambdaEventSource.RestApi);

var app = builder.Build();

Routes.MapForHandlerType(app, handlerType);

app.Run();
