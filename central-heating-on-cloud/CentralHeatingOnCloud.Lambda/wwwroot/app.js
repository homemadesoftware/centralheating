// Talks to the two existing app-facing endpoints on this same API - see
// Routes.cs (MapLatestStatus/MapSetDesiredState) and QUACK.md for the field
// names below (hotwater, boot-id, fulfilled-state-id, received_at).
//
// The API key is entered on first use and kept in this device's
// localStorage (see API_KEY_STORAGE_KEY below) - never hardcoded here, so
// there's nothing sensitive in this file itself.

const API_KEY_STORAGE_KEY = "centralheating.apiKey";
const PENDING_STORAGE_KEY = "centralheating.pendingDesiredStateId";
const POLL_INTERVAL_MS = 15000;

const elKeySetup = document.getElementById("key-setup");
const elKeyInput = document.getElementById("key-input");
const elKeySave = document.getElementById("key-save");
const elKeyError = document.getElementById("key-error");
const elDashboard = document.getElementById("dashboard");
const elState = document.getElementById("state");
const elLastHeard = document.getElementById("last-heard");
const elBoost = document.getElementById("boost");
const elCancel = document.getElementById("cancel");
const elError = document.getElementById("error");
const elChangeKey = document.getElementById("change-key");

let latestStatus = null;
let pollTimer = null;

function getApiKey() {
  return localStorage.getItem(API_KEY_STORAGE_KEY);
}

function setApiKey(key) {
  localStorage.setItem(API_KEY_STORAGE_KEY, key);
}

function clearApiKey() {
  localStorage.removeItem(API_KEY_STORAGE_KEY);
}

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

function showKeySetup(message) {
  stopPolling();
  elDashboard.hidden = true;
  elKeySetup.hidden = false;
  elKeyError.textContent = message || "";
  elKeyInput.value = "";
  elKeyInput.focus();
}

function showDashboard() {
  elKeySetup.hidden = true;
  elDashboard.hidden = false;
  startPolling();
}

async function apiFetch(path, options = {}) {
  const response = await fetch(path, {
    ...options,
    headers: { ...(options.headers || {}), "x-api-key": getApiKey() },
  });
  if (response.status === 403) {
    clearApiKey();
    showKeySetup("That key was rejected - check it and try again.");
    throw new Error("invalid API key");
  }
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
    if (getApiKey()) {
      elError.textContent = "Couldn't reach the house - " + err.message;
    }
    return;
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
    if (getApiKey()) {
      elError.textContent = "Couldn't set desired state - " + err.message;
    }
  }
}

function startPolling() {
  if (pollTimer) return;
  refresh();
  pollTimer = setInterval(refresh, POLL_INTERVAL_MS);
}

function stopPolling() {
  clearInterval(pollTimer);
  pollTimer = null;
}

elBoost.addEventListener("click", () => setDesiredState("on"));
elCancel.addEventListener("click", () => setDesiredState("off"));
elChangeKey.addEventListener("click", () => showKeySetup());

elKeySave.addEventListener("click", () => {
  const key = elKeyInput.value.trim();
  if (!key) {
    elKeyError.textContent = "Enter a key first.";
    return;
  }
  setApiKey(key);
  showDashboard();
});

elKeyInput.addEventListener("keydown", (event) => {
  if (event.key === "Enter") elKeySave.click();
});

if ("serviceWorker" in navigator) {
  navigator.serviceWorker.register("/sw.js");
}

if (getApiKey()) {
  showDashboard();
} else {
  showKeySetup();
}
