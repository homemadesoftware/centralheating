using Amazon.Lambda.AspNetCoreServer.Hosting;
using CentralHeatingOnCloud.Lambda;

Console.WriteLine("central-heating-on-cloud starting");

var builder = WebApplication.CreateBuilder(args);

// AddAWSLambdaHosting runs this under Kestrel locally and under the Lambda
// Runtime API when AWS_LAMBDA_RUNTIME_API is set (i.e. inside Lambda) —
// same Main either way, no manual environment branching needed.
builder.Services.AddAWSLambdaHosting(LambdaEventSource.RestApi);

var app = builder.Build();

Routes.MapAll(app);

app.Run();
