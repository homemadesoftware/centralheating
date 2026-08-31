# Status history — one item per received heartbeat, retained 90 days via
# native TTL. PK = `origin` (currently a hardcoded placeholder in the
# Lambda — nothing in QUACK identifies which device sent a given status
# yet, see AWS-BACKEND-SPEC.md §5), SK = `received_at`, the backend's own
# receipt time at millisecond precision (deliberately not the
# device-reported `time` field — QUACK.md: the device's RTC is naive local
# time, not guaranteed correct or monotonic). Millisecond precision is
# cheap insurance against two heartbeats in the same second silently
# overwriting each other (PutItem replaces on a PK+SK collision, no
# error). The device-reported `time` is still stored as a plain attribute,
# which doubles as free RTC-drift visibility. All other QUACK fields are
# likewise stored as plain string item attributes, not one opaque blob, so
# they stay queryable/projectable later — including ones that look
# numeric (uptime, temperature), since some device fields can legitimately
# be a non-numeric sentinel (e.g. "NO_READING").
resource "aws_dynamodb_table" "status" {
  name         = "${var.service_name}-status"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "origin"
  range_key    = "received_at"

  attribute {
    name = "origin"
    type = "S"
  }

  attribute {
    name = "received_at"
    type = "S"
  }

  # `expires_at` must be a Number (Unix epoch seconds) — DynamoDB TTL
  # silently ignores the attribute otherwise. Set by the write path to
  # now + 90 days on every PutItem.
  ttl {
    attribute_name = "expires_at"
    enabled        = true
  }
}
