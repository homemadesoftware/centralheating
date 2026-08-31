# AWS backend — spec

This is the spec for the AWS side that `udp-lambda-bridge` (running on
`toadmail-hub`) eventually talks to, and for `central-heating-on-cloud/`,
the project that implements it.

QUACK (`pico-central-heating/QUACK.md`) is the wire protocol between the
Pico and the hub only — it doesn't extend to AWS. The hub↔AWS link this
spec describes has no protocol name of its own, and doesn't necessarily
need one right now; QUACK is referenced below only because the data
crossing that link originates from, or feeds back into, QUACK fields. See
`udp-lambda-bridge/NETWORKING.md`/`udp-lambda-bridge/README.md` for why the
hub exists as a separate hop rather than the Pico talking to AWS directly.

Status: draft v0.1. As of the "create everything now" pass, the repo
layout (§3), `infrastructure/*.tf` (§4), and the `CentralHeatingOnCloud.Lambda`
project scaffold (routing, hosting, Dockerfile) exist — see that project's
own `Routes.cs` for what's still a `501 Not Implemented` stub. The actual
handler logic (parsing/storing status, minting the presigned URL) is
deliberately not written yet.

## 1. Reference pattern (from HC's Reference Project)

HC's Reference Project — a separate, private repo of the user's, not part
of `centralheating` — already runs a personal-scale AWS backend with a
pattern worth reusing here rather than inventing a new one. Summarised
generically (no details specific to that project's own business are
repeated below):

### Lambda-as-console-app-in-a-container

- One .NET console app (`Program.cs` as the single entry point) is built
  into one Docker image and pushed to one ECR repository per app.
- The *same* image backs multiple Lambda functions. A `HANDLER_TYPE`
  environment variable set per-function picks which code path `Main` runs
  (an ASP.NET Core web server wired to `Amazon.Lambda.AspNetCoreServer` for
  HTTP-triggered functions, or a one-shot `LambdaBootstrapBuilder.Create(...)`
  handler for event-triggered ones). This avoids a separate build/image per
  function while still letting each function have its own memory/timeout/
  environment/IAM role.
- The same `Main` also runs locally outside Lambda (Kestrel for the web
  case, a plain one-shot call for the others), gated on whether
  `AWS_LAMBDA_FUNCTION_NAME` is set. Local dev and prod share one code path.
- Routing (`Routes.cs`) uses plain minimal-API `MapGet`/`MapPost`, no
  separate API Gateway route config to maintain — API Gateway/Function URLs
  are just a dumb pipe to the ASP.NET Core app.
- Auth is a middleware (`AuthMiddleware.cs`) checking an `X-Api-Key` header
  or a bearer JWT, bypassed entirely when `ASPNETCORE_ENVIRONMENT=Development`.
- Dockerfile: multi-stage build (SDK image → `dotnet publish
  --self-contained -r linux-x64` → slim `runtime-deps` image), entrypoint is
  the published executable directly (Lambda's own runtime bootstrap, no
  `AWS::Serverless::Function` handler string).
- Config cascades: `appsettings.json` → `appsettings.{env}.json` → a secrets
  layer. In Lambda, secrets come from a JSON file in a dedicated S3 bucket,
  fetched at cold start; locally, from a gitignored file outside the repo.

### OpenTofu layout (`infrastructure/*.tf`)

One flat directory, one file per resource *type*, not per environment:

| File | Contents |
|---|---|
| `providers.tf` | `terraform{}` block (required provider + version), local state backend, `provider "aws"` |
| `variables.tf` | A handful of variables — region, a `service_name` prefix used to derive every resource name, and the image URI (passed in, not computed by Tofu) |
| `s3.tf` | One `aws_s3_bucket` + `aws_s3_bucket_public_access_block` (+ optional versioning, + optional lifecycle expiry rule) per bucket, one bucket per *purpose* (secrets, state/watermark, reports, backups) |
| `ecr.tf` | One `aws_ecr_repository` per image, with an expire-old-images lifecycle policy (keep last N) |
| `lambda.tf` | One `aws_lambda_function` per function, all `package_type = "Image"`, all pointing at the same `image_uri` variable (except one that intentionally pins a separate image/repo), `lifecycle { ignore_changes = [image_uri] }` on every one so `tofu apply` never fights routine deploys that update the image out-of-band |
| `iam.tf` | One assume-role policy document shared by all Lambda roles; one role per *trust boundary* (not one per function) with narrowly-scoped inline policies (`aws_iam_role_policy`) granting only the specific S3 prefixes / Lambda ARNs / Bedrock models each role actually needs, plus the AWS-managed `AWSLambdaBasicExecutionRole` for CloudWatch logs |
| `eventbridge.tf` | One `aws_cloudwatch_event_rule` (rate or cron expression) + target + `aws_lambda_permission` per scheduled trigger |
| `cd-user.tf` | A dedicated IAM user for CI/CD with an inline policy scoped to exactly the actions the deploy pipeline needs (ECR push, `lambda:UpdateFunctionCode`/`GetFunction` on the specific function ARNs, nothing else) |
| `outputs.tf` | Human-usable outputs — bucket names, function URL, ECR push commands as a ready-to-paste heredoc |
| `terraform.tfvars.example` | Checked-in example of the three variables, real `terraform.tfvars` gitignored |

State is a local backend (`backend "local"`, `terraform.tfstate` gitignored)
— `tofu apply` is run by hand from a dev machine, not from CI.

### GitHub Actions (`deploy.yml`)

Notably, **CI does not run `tofu apply`**. The split is:

- Infra changes (new bucket, new Lambda, new IAM policy) → edited in
  `infrastructure/*.tf` and applied manually (`tofu apply`) from a dev
  machine, whenever they happen.
- Code changes (routine deploys) → CI builds the Docker image, pushes it to
  ECR, then calls `aws lambda update-function-code --image-uri ...` directly
  for each function. This is why every `aws_lambda_function` has
  `lifecycle { ignore_changes = [image_uri] }` — otherwise the next
  `tofu apply` would revert the image Tofu doesn't know CI just pushed.
- On a PR: build the image only (no push, no deploy) as a build-sanity check.
- On `master`: build, push to ECR tagged with the short commit SHA, then
  update every Lambda function's code to that image.
- Credentials: a long-lived IAM user (`cd-user.tf`'s `aws_iam_user.cd`)
  with an access key stored as GitHub Actions repo secrets
  (`awsAccessKeyId`/`awsSecretAccessKey`), consumed via
  `aws-actions/configure-aws-credentials`. No OIDC federation — a plain
  access key, scoped down by the dedicated user's narrow inline policy
  rather than by short-lived tokens.

## 2. Proposed adaptation for centralheating

The load here is tiny compared to HC's Reference Project (one device,
heartbeats every tens of seconds at most, no web UI) — the point of
following that pattern is consistency and reuse of a known-working deploy pipeline, not
because this workload needs it. Where the two diverge below, it's flagged.

This doc calls the whole AWS-side service the **Command Centre** rather than
"telemetry" — it's not a one-way sink, it also holds and serves the desired
state back to the hub, so "telemetry" undersells half of what it does.

### What the Command Centre needs to do

1. Accept a heartbeat/status POST from `udp-lambda-bridge` (the QUACK
   outbound fields — `uptime`, `time`, zone/actuator states, `temperature`,
   `fulfilled-state-id`, etc., forwarded from the Pico) via API Gateway →
   Lambda, authenticated with an API key (matches `README.md`'s stated
   reason for choosing API Gateway + Lambda over a raw SDK `Invoke` call —
   no SigV4 signing needed from the C client).
2. Hold the current desired state (from `QUACK.md`: `desired-state` +
   `desired-state-id`) somewhere durable that survives Lambda cold
   starts/restarts, that a human (or a future admin UI) can update, and
   that the hub can cheaply poll.
3. Let the hub retrieve that desired state. QUACK's resend model (hub keeps
   resending the current desired state until `fulfilled-state-id` catches
   up) means the hub needs to re-fetch it repeatedly too, not just once —
   so this path should be cheap and not necessarily go through Lambda at
   all every time.

### Desired-state storage: S3, one object, versioned

Store desired state as a single small JSON object (e.g.
`desired-state/current.json`, containing `desired-state` and something an
id can be derived from) in a dedicated, versioned S3 bucket.

- **`desired-state-id` is an abstract id, not necessarily open here.**
  QUACK.md is explicit that it's "not necessarily an S3/bucket version id
  — may be *generated from* one" — i.e. no code on the Pico/hub side may
  assume the value *is* an S3 version id or rely on S3-specific semantics
  to interpret it. That doesn't rule out the id's value literally coming
  from S3 versioning at write time — it's quite likely it will, since
  that's the obvious source once the state lives in a versioned bucket —
  it just has to keep behaving as an opaque, monotonically-increasing
  token from the consumer's point of view. One wrinkle worth flagging for
  whoever implements the write path: raw S3 version ids are opaque
  strings with no documented ordering guarantee, which is awkward for
  QUACK's highest-id-wins comparison (it wants an *orderable* id) — so the
  value stored in the JSON body may need to be a monotonic counter or
  timestamp captured *from* the write (rather than the version-id string
  itself) to satisfy that. Left as an implementation detail for when the
  write path is built, not a decision needed now. S3 versioning stays on
  underneath regardless, at minimum as a safety net (accidental overwrite
  recovery, audit trail of past desired states).
- Bucket gets `aws_s3_bucket_public_access_block` (block everything) same
  as every bucket in HC's Reference Project — no bucket is ever made public at the bucket/ACL
  level in that reference pattern, and there's no reason to start here.

### How the hub polls for desired state: two keys, two paths

**Decided.** Two separate API Gateway API keys, one per direction:

- **Write key** — used for the existing status-ingest POST (§ above). Goes
  through API Gateway → Command Centre Lambda on every heartbeat.
- **Read key** — used for a *new*, separate API Gateway endpoint + Lambda
  handler whose only job is minting a fresh presigned S3 GET URL for the
  current desired-state object (mint-Lambda requests the full 7-day max
  validity) and handing it back in the response.

**Decided: re-mint cadence.** No hard rate limit on this endpoint — it's
cheap and infrequent either way. The hub:
  - Calls it once a day under normal operation, refreshing well before the
    7-day URL would expire.
  - Calls it immediately on boot/reconnect — the first thing the hub does
    on startup, rather than waiting for the next scheduled refresh.
  - Calls it again on demand if a poll against the current URL ever comes
    back unauthorized, self-healing without waiting for the daily cycle.
    (Worth double-checking against the actual status S3 returns for an
    expired/invalid presigned URL when this is implemented — it's
    conventionally `403 Forbidden`, not `401`, since there's no
    `WWW-Authenticate` challenge/retry semantics involved; the hub's
    retry-trigger check should match whichever S3 actually sends.)

The hub then polls S3 *directly* with that presigned URL — a plain HTTPS
GET, no signing, no API Gateway, no Lambda — for however often it actually
needs to check for a new desired state (which per QUACK's resend model may
be much more frequent than once a day, e.g. matching the heartbeat cadence
while a desired state is outstanding). This keeps the *frequent* path
(desired-state polling) off Lambda entirely, while the *infrequent* path
(minting a fresh URL) reuses the same auth pattern and infrastructure
already decided for the write side, just with its own key/route rather
than a shared one.

No CloudFront, no hand-rolled SigV4 in C — the presigned URL already
carries its own signature in the query string, generated once by the
mint-Lambda (which does have full IAM/SDK access, unlike the hub) and just
handed to the hub as an opaque string.

### Where this plugs into QUACK.md's model

`udp-lambda-bridge` (per its own `README.md`) already replies to the
Pico immediately from a local cache and refreshes that cache
asynchronously from AWS — so both AWS round-trips above (the daily
URL-mint call and the more frequent direct-to-S3 polls) happen on the
hub's own schedule, off the Pico's UDP receive path entirely. Nothing here
changes that; this backend is just what the hub's background refresh
thread talks to.

## 3. Repo layout

A new top-level folder, `central-heating-on-cloud/`, sibling to
`udp-lambda-bridge/`, `Simulator/`, etc. — this repo already gives each
major component its own top-level folder, and this is a big enough new
component (its own Tofu, its own .NET solution, likely to grow) to warrant
one rather than nesting inside `udp-lambda-bridge/`. Mirrors how HC's
Reference Project keeps `infrastructure/` and its Lambda project as
siblings:

```
central-heating-on-cloud/
├── README.md
├── AWS-BACKEND-SPEC.md              (moved from udp-lambda-bridge/ — it's
│                                      this component's spec now that it has a name)
├── .gitignore                       (bin/obj, terraform state — same idea as
│                                      udp-lambda-bridge/.gitignore)
├── CentralHeatingOnCloud.slnx
├── CentralHeatingOnCloud.Lambda/    (console-app-in-container, mirrors the
│                                      Lambda project in HC's Reference Project)
│   ├── CentralHeatingOnCloud.Lambda.csproj
│   ├── Program.cs
│   ├── Routes.cs
│   ├── Dockerfile / .dockerignore
│   └── appsettings.json / appsettings.Development.json / appsettings.Production.json
└── infrastructure/                  (OpenTofu — see §4)
```

**Deviation from the reference pattern: no `AuthMiddleware.cs`.** That
project needs app-level auth because its one HTTP entry point is a plain
Lambda Function URL with no gateway-level key check. Here, API Gateway's
own REST API key/usage-plan mechanism (§4) rejects an unkeyed or
wrong-key request *before* it ever reaches Lambda, so a second,
app-level check would be redundant. Similarly no `LambdaSupportServer.cs`
— the `Amazon.Lambda.AspNetCoreServer.Hosting` package's
`AddAWSLambdaHosting()` now does what that file likely hand-rolled
(local-Kestrel-vs-Lambda-runtime switching), so there's nothing left to
hand-roll.

Deliberately **one Lambda project, not split into `DomainModel`/
`Repositories`/`Interfaces` etc. like HC's Reference Project is today** —
that split grew organically there over time; starting this the same way now would be
exactly the premature abstraction the user doesn't want. Split later if
and when this actually grows into the "dashboard backing API" mentioned
as a possibility, not up front.

The deploy workflow lives at `centralheating/.github/workflows/deploy-central-heating-on-cloud.yml`
(repo root — GitHub Actions requires workflows there, not nested per-folder),
`paths:`-scoped to `central-heating-on-cloud/**`, same idea as HC's
Reference Project's `deploy.yml` but path-scoped since this is a monorepo
with unrelated firmware/Simulator code alongside it. Three sibling
workflows cover the rest of the repo's build gaps (Simulator, Pico
firmware, `udp-lambda-bridge-pi`) — see each workflow file for specifics;
out of scope for this document.

This layout now exists on disk, built in the "create everything now" pass
— see the status note at the top of this document for exactly what's real
vs. still a stub.

## 4. Proposed `infrastructure/` file layout

Following the same one-file-per-resource-type convention as HC's
Reference Project's `infrastructure/`. These files now exist under
`central-heating-on-cloud/infrastructure/` — none have been applied
(`tofu apply`) yet, that's a manual step for whenever real AWS resources
are wanted.

| File | Would contain |
|---|---|
| `providers.tf` | `terraform{}`/provider block, `backend "local"` pointing at its own state file — same AWS account as HC's Reference Project, but never that project's `terraform.tfstate` (see §5) |
| `variables.tf` | `aws_region`, `service_name = "central-heating-on-cloud"`, `image_uri` (once there's a Lambda image to point at) |
| `s3.tf` | `desired-state` bucket (versioned, fully blocked public access), plus a `secrets` bucket if the Command Centre Lambda needs any secret config (API key value, etc.) — mirroring HC's Reference Project's `secrets.json`-in-S3 pattern rather than Lambda env vars for anything sensitive |
| `ecr.tf` | One repository for the Command Centre Lambda image — decided as console-app-in-container, same as HC's Reference Project (see §5) |
| `lambda.tf` | One Command Centre Lambda function, serving both routes (status ingest, mint-desired-state-url) — see §5 for why this collapsed from two functions to one. A future write-desired-state path could be a manual `aws s3 cp` / small script rather than a third route, given how infrequently it changes |
| `dynamodb.tf` (new) | `status` table — status-history log, one item per received heartbeat, 90-day TTL. See §5 |
| `apigateway.tf` (new, no equivalent in HC's Reference Project) | That project uses a plain Lambda Function URL for its one HTTP entry point; this project explicitly wants **API Gateway in front of Lambda** (per `udp-lambda-bridge/README.md`, for API-key auth without SigV4). **Correction from earlier drafts of this doc:** API-key + usage-plan auth is a REST API (v1, `aws_api_gateway_rest_api`) feature — the HTTP API (v2, `aws_apigatewayv2_api`) doesn't support it. Built as **two separate REST APIs**, not one API with two routes: a usage plan only scopes to a stage, not to individual methods within it, so two keys sharing one API could each call *either* route regardless of which key they were issued — two APIs is what actually enforces "write key can't be used to mint a read URL and vice versa." |
| `iam.tf` | One role for the Command Centre Lambda — the union of what both routes need: `dynamodb:PutItem` on the status table, `s3:GetObject`-presign on exactly the desired-state object, nothing broader |
| `cd-user.tf` | CI/CD IAM user, scoped to this project's ECR repo + these specific Lambda function ARNs — kept separate from HC's Reference Project's own CI/CD user even if the AWS account is shared (see open question) |
| `outputs.tf` | API Gateway invoke URL, desired-state bucket name, ECR push commands |
| `terraform.tfvars.example` | Same shape as HC's Reference Project's |

## 5. Decisions and open questions

### Decided

| Decision | Notes |
|---|---|
| Same AWS account as HC's Reference Project, resources fully isolated | One bill/console, but every resource lives in its own namespace: separate ECR repo, separate `terraform.tfstate` (own local state file/directory, never that project's), separate `cd-user`, separate IAM roles — all name-prefixed with the service name below so there's no collision risk and a bad `tofu apply` on one project's state can't touch the other's resources. |
| API Gateway in front of Lambda, API-key auth | Unlike HC's Reference Project (plain Lambda Function URL), this project puts API Gateway in front of the Command Centre Lambda specifically as the auth layer — an API key per caller, no SigV4 needed from the C client. Implemented as two separate REST APIs (`aws_api_gateway_rest_api`, not the v2 HTTP API), each with its own key/usage-plan, for genuine per-key route isolation (`apigateway.tf`, §4). |
| Desired-state reads: two keys, presigned URL for the actual poll | Write key → status-ingest endpoint (existing). Separate read key → a new, dedicated endpoint/Lambda that mints a 7-day presigned S3 GET URL. The hub re-mints once a day under normal operation, immediately on boot/reconnect, and on demand if a poll against the current URL comes back unauthorized. The hub then polls S3 *directly* with that URL as often as it needs to, with no signing and nothing on Lambda's hot path. No hard rate limit on the mint endpoint. See §2. |
| Language/runtime: C#/.NET, console-app-in-container, same pattern as HC's Reference Project | Not a lightweight scripted handler — this is deliberately the full pattern used there (ASP.NET Core via `Amazon.Lambda.AspNetCoreServer.Hosting`, one Docker image/ECR repo, ignore-image-changes-in-Tofu deploy split). Chosen with room to grow — this may end up backing a full dashboard/admin API later, not just the two endpoints described here. |
| Naming convention: `central-heating-on-cloud` | This is the `service_name` value threaded through every resource name in `variables.tf`, replacing the placeholder used earlier in this doc. |
| Cost | Expected near-zero at this volume — API Gateway, Lambda, S3, DynamoDB (on-demand), and ECR storage all sit within or close to AWS's always-free tier for a single-device, low-frequency workload. Not a factor in any decision above. |
| Current status lives in DynamoDB, not S3/CloudWatch | New `status` table (`dynamodb.tf`), `PAY_PER_REQUEST` billing. One item per received heartbeat — a history log, not just a "last known" singleton — with 90-day retention via native TTL (`expires_at`, a Number/epoch-seconds attribute set on write; DynamoDB ignores TTL on any other attribute type). Partition key = a device id — currently a **hardcoded placeholder**, since nothing in QUACK's outbound fields identifies which device sent a given status; if a second real device ever POSTs here, it would collide into the same partition until this gets a real identity mechanism. Sort key = the **backend's own receipt time**, deliberately not QUACK's device-reported `time` field, since that's the device's RTC and explicitly "naive local time" with no correctness/monotonicity guarantee (QUACK.md) — the device-reported time is still stored, just as a plain attribute, which doubles as free RTC-drift visibility (compare it against the sort key). All other QUACK fields are stored as plain item attributes rather than one opaque blob, so they stay queryable later. |
| One Lambda function, not two | Originally built as two separate functions (status-ingest, mint-desired-state-url) sharing one image, mirroring how the reference-project text above was read. Collapsed into one (`command_centre`) since there's no differing memory/timeout need to justify the split, and `iam.tf`'s own stated convention is "one role per *trust boundary*, not one per function" — splitting them was inconsistent with that. Trade-off: the merged role has the union of both routes' permissions (DynamoDB write + S3 presign-read) rather than each being separately scoped. This does **not** weaken the write/read API-key separation below — that lives entirely at the API Gateway layer (two REST APIs, each only wiring up its own route), not the Lambda layer, so each key can still only ever reach its own endpoint even though both are served by the same function. |

### Still open

| Question | Notes |
|---|---|
| Who/what writes desired state? | Planned to eventually be a dedicated Android app — out of scope to build now. Nothing in this spec yet defines the write path's shape (that app calling a future write endpoint, presumably), just that the desired-state object exists and the hub can read it. |
