#!/usr/bin/env python3
"""Create bug tracking issues. Run by create-bug-issues.yml workflow."""
import os
import subprocess
import sys

REPO = os.environ["REPO"]

ISSUES = [
    {
        "title": "Bug: August wrongly returns 30 days in DateTime.c",
        "body": (
            "## Description\n\n"
            "In `Common/DateTime.c`, the `case 8` branch (August) returns 30 days "
            "instead of the correct 31.\n\n"
            "```c\n"
            "case 8 :   // Aug\n"
            "    return 30;  // BUG: August has 31 days\n"
            "```\n\n"
            "## Impact\n\n"
            "- Date rollover in `AddSecondsToDateTime` is wrong for any transition "
            "that crosses the end of August.\n"
            "- The \"Day+\" upper-bound check in `HandleMenuCommand` will allow day 31 "
            "to be set in August, but the stored date will behave incorrectly when "
            "used for scheduling.\n\n"
            "## Fix\n\n"
            "Change the return value from `30` to `31` for `case 8`."
        ),
        "labels": ["bug"],
    },
    {
        "title": "Bug: Month rollover off-by-one in AddSecondsToDateTime",
        "body": (
            "## Description\n\n"
            "In `Common/DateTime.c`, the month rollover check uses `>= 12` instead "
            "of `> 12`:\n\n"
            "```c\n"
            "if (result->month >= 12)   // BUG: should be > 12\n"
            "```\n\n"
            "Month 12 is December. With `>= 12`, any time addition that causes the "
            "month to land on December immediately wraps to January of the next year, "
            "making it impossible to represent any time in December.\n\n"
            "## Fix\n\n"
            "Change the condition to `> 12`."
        ),
        "labels": ["bug"],
    },
    {
        "title": "Bug: Wrong bit set when writing hours in RTC1307.c (24-hour mode)",
        "body": (
            "## Description\n\n"
            "In `pico-central-heating/RTC1307.c`, the hours register write clears "
            "bit 7 and then immediately sets it back:\n\n"
            "```c\n"
            "buffer[3] = (EncodeAsBcd(dateTime->hours) & 0x7F) | 0x80; // 24 hour\n"
            "```\n\n"
            "The DS1307 hours register layout:\n"
            "- **Bit 6** is the 12/24-hour select (0 = 24-hour mode)\n"
            "- **Bit 7** is unused and must be 0\n\n"
            "Setting bit 7 violates the datasheet. The comment says \"24 hour\" but "
            "that refers to bit 6, not bit 7. The code accidentally works today "
            "because BCD-encoded hours 0-23 never set bit 6, so the 12/24-hour "
            "select bit stays 0. However, it is non-compliant and fragile.\n\n"
            "## Fix\n\n"
            "Replace `& 0x7F | 0x80` with `& 0x3F` to clear both bit 6 (forcing "
            "24-hour mode) and bit 7 (keeping the reserved bit clear)."
        ),
        "labels": ["bug"],
    },
    {
        "title": "Bug: malloc result not checked in Display.c",
        "body": (
            "## Description\n\n"
            "In `pico-central-heating/Display.c`, the result of `malloc` is not "
            "checked for `NULL`:\n\n"
            "```c\n"
            "imageBuffer = (unsigned char*)malloc(imageSize);\n"
            "// No NULL check here\n"
            "```\n\n"
            "The equivalent code in `main.c` correctly checks for allocation failure. "
            "On the Pico, heap space is limited; if the allocation fails, subsequent "
            "`Paint_NewImage` / display calls will dereference a null pointer and crash.\n\n"
            "## Fix\n\n"
            "Add a null check after `malloc` and handle the error (e.g., log a fault "
            "and halt, or return an error code), matching the pattern already used in `main.c`."
        ),
        "labels": ["bug"],
    },
    {
        "title": "Bug: Hardware_EnableTimer matches empty slots via cookie == 0 sentinel",
        "body": (
            "## Description\n\n"
            "In `pico-central-heating/PicoEntryPoint.c`, `Hardware_EnableTimer` uses:\n\n"
            "```c\n"
            "if (timers[i].cookie == 0 || timers[i].cookie == cookie)\n"
            "```\n\n"
            "Cookie `0` is the \"empty slot\" sentinel. This condition will match an "
            "unregistered (empty) slot and enable it with no callback set. When the "
            "timer fires it will invoke a null function pointer, causing a hard fault.\n\n"
            "`Hardware_RegisterForTimer` uses the same pattern intentionally (to find "
            "an empty slot to fill). `EnableTimer` should only ever match an "
            "already-registered cookie.\n\n"
            "## Fix\n\n"
            "Remove the `timers[i].cookie == 0` condition from `Hardware_EnableTimer`, "
            "leaving only `timers[i].cookie == cookie`."
        ),
        "labels": ["bug"],
    },
    {
        "title": "Dead code: main.c Waveshare demo coexists with production entry point",
        "body": (
            "## Description\n\n"
            "`main.c` is a Waveshare ePaper bring-up demo (\"Ali is cool\"). It is "
            "excluded from the build by a `#main.c` comment in `CMakeLists.txt`. It "
            "contains its own `main()` and `check_reboot_button()`, whose signature "
            "is forward-declared (but never called) in `PicoEntryPoint.c`. This "
            "creates confusion about which entry point is authoritative.\n\n"
            "## Fix\n\n"
            "Either delete `main.c` or move it to an `Archive/` directory to make "
            "clear it is not production code."
        ),
        "labels": ["dead code"],
    },
    {
        "title": "Dead code: Reboot button never launched in PicoEntryPoint.c",
        "body": (
            "## Description\n\n"
            "In `pico-central-heating/PicoEntryPoint.c`, `check_reboot_button` is "
            "forward-declared at the top of the file, but "
            "`multicore_launch_core1(check_reboot_button)` is never called. The "
            "reboot-button feature from `main.c` was never wired into the real "
            "entry point.\n\n"
            "## Fix\n\n"
            "Either wire up the reboot button by adding "
            "`multicore_launch_core1(check_reboot_button);` in the appropriate place, "
            "or remove the forward declaration if the feature is not needed."
        ),
        "labels": ["dead code"],
    },
]


def issue_exists(title: str) -> bool:
    result = subprocess.run(
        ["gh", "issue", "list", "--repo", REPO, "--state", "open",
         "--search", title, "--json", "title", "-q", ".[].title"],
        capture_output=True, text=True,
    )
    return title in result.stdout


def create_issue(title: str, body: str, labels: list) -> bool:
    args = ["gh", "issue", "create", "--repo", REPO,
            "--title", title, "--body", body]
    for label in labels:
        args += ["--label", label]
    r = subprocess.run(args, capture_output=True, text=True)
    if r.returncode == 0:
        print(f"Created: {title}")
        print(r.stdout.strip())
        return True
    # Labels may not exist yet — retry without labels
    args_no_labels = ["gh", "issue", "create", "--repo", REPO,
                      "--title", title, "--body", body]
    r2 = subprocess.run(args_no_labels, capture_output=True, text=True)
    if r2.returncode == 0:
        print(f"Created (no labels): {title}")
        print(r2.stdout.strip())
        return True
    print(f"ERROR creating '{title}': {r2.stderr.strip()}", file=sys.stderr)
    return False


def main():
    failed = False
    for issue in ISSUES:
        if issue_exists(issue["title"]):
            print(f"Already exists: {issue['title']}")
            continue
        if not create_issue(issue["title"], issue["body"], issue.get("labels", [])):
            failed = True
    sys.exit(1 if failed else 0)


if __name__ == "__main__":
    main()
