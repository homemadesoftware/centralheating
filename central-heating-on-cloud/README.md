# central-heating-on-cloud

The AWS backend (the "Command Centre") that `udp-lambda-bridge` (running on
`toadmail-hub`) talks to. Full design/decisions: [`AWS-BACKEND-SPEC.md`](AWS-BACKEND-SPEC.md).

## Layout

- `CentralHeatingOnCloud.Lambda/` — a single .NET console app, built into one
  Docker image, backing both Lambda functions. `HANDLER_TYPE` (set per
  function in `infrastructure/lambda.tf`) picks which routes it serves —
  see `Routes.cs`.
- `infrastructure/` — OpenTofu. Applied by hand (`tofu apply`) from a dev
  machine, never from CI — see `AWS-BACKEND-SPEC.md` §1 for why.

## Status

Scaffold only. Routing, hosting, the Docker build, and all the Tofu exist;
the actual handler logic (`Routes.cs`'s two `TODO`s) does not. Nothing has
been `tofu apply`'d — no real AWS resources exist yet.

## First-time setup (once there's real handler code to deploy)

```
cd infrastructure
cp terraform.tfvars.example terraform.tfvars   # fill in image_uri
tofu init
tofu apply
```

Then push the built image (see the `ecr_push_commands` output) and put the
`cd_user_access_key_id`/`cd_user_access_key_secret` outputs into this repo's
`CENTRAL_HEATING_ON_CLOUD_AWS_ACCESS_KEY_ID`/`_AWS_SECRET_ACCESS_KEY` GitHub
Actions secrets — after that,
`.github/workflows/deploy-central-heating-on-cloud.yml` takes over routine
deploys.
