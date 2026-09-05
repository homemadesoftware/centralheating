// Talks to the two existing app-facing endpoints on this same API - see
// Routes.cs (MapLatestStatus/MapSetDesiredState) and QUACK.md for the field
// names below (hotwater, boot-id, fulfilled-state-id, received_at).
//
// TODO: replace with the real app API key (`tofu output -raw
// app_api_key_value`). Deliberately not committed as a real secret - see
// AWS-BACKEND-SPEC.md's "shared key, pragmatic for four family members"
// note for why baking it into served client JS is an accepted trade-off,
// but a *real* key still shouldn't sit in git history.
const API_KEY = "REPLACE_WITH_APP_API_KEY";

const POLL_INTERVAL_MS = 15000;
const PENDING_STORAGE_KEY = "centralheating.pendingDesiredStateId";

const elState = document.getElementById("state");
const elLastHeard = document.getElementById("last-heard");
const elBoost = document.getElementById("boost");
const elCancel = document.getElementById("cancel");
const elError = document.getElementById("error");

let latestStatus = null;

function loadPending() {
  const raw = localStorage.getItem(PENDING_STORAGE_KEY);
  return raw ? JSON.parse(raw) : null;
}

function savePending(pending) {
  if (pending) {
    localStorage.setItem(PENDING_STORAGE_KEY, JSON.stringify(pending));
  } else {
    localStorage.removeItem(PENDING_STORAGE_KEY);
  }
}

async function apiFetch(path, options = {}) {
  const response = await fetch(path, {
    ...options,
    headers: { ...(options.headers || {}), "x-api-key": API_KEY },
  });
  if (!response.ok) {
    throw new Error(`${path} -> ${response.status}`);
  }
  return response;
}

function formatAgo(isoOrEpochSeconds) {
  const then = typeof isoOrEpochSeconds === "string" ? new Date(isoOrEpochSeconds) : new Date(isoOrEpochSeconds * 1000);
  const seconds = Math.max(0, Math.round((Date.now() - then.getTime()) / 1000));
  if (seconds < 60) return `${seconds}s ago`;
  if (seconds < 3600) return `${Math.round(seconds / 60)}m ago`;
  return `${Math.round(seconds / 3600)}h ago`;
}

function render() {
  if (!latestStatus) {
    elState.textContent = "…";
    elLastHeard.textContent = "";
    return;
  }

  const pending = loadPending();
  const hotwaterOn = latestStatus["hotwater"] === "on";

  if (pending && latestStatus["fulfilled-state-id"] === pending.id) {
    savePending(null);
  }

  if (pending && latestStatus["fulfilled-state-id"] !== pending.id) {
    const waitedSeconds = Math.round((Date.now() - pending.since) / 1000);
    elState.textContent = waitedSeconds < 60 ? `Turning ${pending.desiredState}…` : `Requested ${pending.desiredState} ${formatAgo(pending.since / 1000)}, house hasn't confirmed yet`;
  } else {
    elState.textContent = hotwaterOn ? "Hot water: on" : "Hot water: off";
  }

  elLastHeard.textContent = latestStatus.received_at ? `Last heard from the house ${formatAgo(latestStatus.received_at)}` : "";
}

async function refresh() {
  try {
    const response = await apiFetch("/status/latest");
    latestStatus = await response.json();
    elError.textContent = "";
  } catch (err) {
    elError.textContent = "Couldn't reach the house - " + err.message;
  }
  render();
}

async function setDesiredState(desiredState) {
  if (!latestStatus || !latestStatus["boot-id"]) {
    elError.textContent = "No boot-id yet - wait for a status update first.";
    return;
  }
  elError.textContent = "";
  try {
    const response = await apiFetch("/desired-state", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ "desired-state": desiredState, "boot-id": latestStatus["boot-id"] }),
    });
    const id = (await response.text()).trim();
    savePending({ id, desiredState, since: Date.now() });
    render();
  } catch (err) {
    elError.textContent = "Couldn't set desired state - " + err.message;
  }
}

elBoost.addEventListener("click", () => setDesiredState("on"));
elCancel.addEventListener("click", () => setDesiredState("off"));

if ("serviceWorker" in navigator) {
  navigator.serviceWorker.register("/sw.js");
}

refresh();
setInterval(refresh, POLL_INTERVAL_MS);
