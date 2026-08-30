# Self-contained custom-runtime image (not AWS's own dotnet base image) —
# Amazon.Lambda.AspNetCoreServer.Hosting starts the Lambda Runtime API loop
# itself via Amazon.Lambda.RuntimeSupport when AWS_LAMBDA_RUNTIME_API is set,
# so the published executable can be the entrypoint directly.

FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY CentralHeatingOnCloud.Lambda.csproj .
RUN dotnet restore -r linux-x64

COPY . .
RUN dotnet publish -c Release -r linux-x64 --self-contained true \
    -p:PublishReadyToRun=true \
    -o /app/publish

FROM mcr.microsoft.com/dotnet/runtime-deps:10.0
WORKDIR /var/task
COPY --from=build /app/publish .

ENTRYPOINT ["./CentralHeatingOnCloud.Lambda"]
