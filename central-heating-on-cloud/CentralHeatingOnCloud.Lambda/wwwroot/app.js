// Talks to the two existing app-facing endpoints on this same API - see
// Routes.cs (MapLatestStatus/MapSetDesiredState) and QUACK.md for the field
// names below (hotwater, boot-id, fulfilled-state-id, received_at).
//
// The API key is entered on first use and kept in this device's
// localStorage (see API_KEY_STORAGE_KEY below) - never hardcoded here, so
// there's nothing sensitive in this file itself.

const API_KEY_STORAGE_KEY = "centralheating.apiKey";
const PENDING_STORAGE_KEY = "centralheating.pendingDesiredStateId";
const LAST_CONFIRMED_STORAGE_KEY = "centralheating.lastConfirmed";
const POLL_INTERVAL_MS = 15000;
const ZONE_KEYS = ["z1", "z2", "z3", "z4", "z5"];
const ACTUATOR_KEYS = ["o1", "o2", "o3", "o4", "o5", "o6", "hw", "boiler"];

const elKeySetup = document.getElementById("key-setup");
const elKeyInput = document.getElementById("key-input");
const elKeySave = document.getElementById("key-save");
const elKeyError = document.getElementById("key-error");
const elDashboard = document.getElementById("dashboard");
const elState = document.getElementById("state");
const elTemperature = document.getElementById("temperature");
const elLastCommand = document.getElementById("last-command");
const elLastHeard = document.getElementById("last-heard");
const elScreenZones = document.getElementById("screen-zones");
const elScreenActuators = document.getElementById("screen-actuators");
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

function loadLastConfirmed() {
  const raw = localStorage.getItem(LAST_CONFIRMED_STORAGE_KEY);
  return raw ? JSON.parse(raw) : null;
}

function saveLastConfirmed(lastConfirmed) {
  localStorage.setItem(LAST_CONFIRMED_STORAGE_KEY, JSON.stringify(lastConfirmed));
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

function renderCell(key) {
  const on = latestStatus[key] === "on";
  const span = document.createElement("span");
  span.className = "cell" + (on ? " on" : "");
  span.textContent = key.toUpperCase();
  return span;
}

function renderScreen() {
  elScreenZones.replaceChildren(...ZONE_KEYS.map(renderCell));
  elScreenActuators.replaceChildren(...ACTUATOR_KEYS.map(renderCell));
}

function render() {
  if (!latestStatus) {
    elState.textContent = "…";
    elTemperature.textContent = "";
    elLastHeard.textContent = "";
    return;
  }

  let pending = loadPending();
  const hotwaterOn = latestStatus["hotwater"] === "on";

  if (pending && latestStatus["fulfilled-state-id"] === pending.id) {
    saveLastConfirmed({ desiredState: pending.desiredState, at: Date.now() });
    savePending(null);
    pending = null;
  }

  if (pending) {
    const waitedSeconds = Math.round((Date.now() - pending.since) / 1000);
    elState.textContent = waitedSeconds < 60 ? `Turning ${pending.desiredState}…` : `Requested ${pending.desiredState} ${formatAgo(pending.since / 1000)}, house hasn't confirmed yet`;
  } else {
    elState.textContent = hotwaterOn ? "Hot water: on" : "Hot water: off";
  }

  const temperature = latestStatus.temperature;
  elTemperature.textContent = temperature && temperature !== "NO_READING" ? `${temperature}°C` : "";

  const lastConfirmed = loadLastConfirmed();
  elLastCommand.textContent = !pending && lastConfirmed ? `Last command (hot water ${lastConfirmed.desiredState}) succeeded, confirmed ${formatAgo(lastConfirmed.at / 1000)}` : "";

  elLastHeard.textContent = latestStatus.received_at ? `Last heard from the house ${formatAgo(latestStatus.received_at)}` : "";

  renderScreen();
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
