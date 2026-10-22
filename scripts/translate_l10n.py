#!/usr/bin/env python3
"""Translate missing l10n keys with a local model served by VoxyAI.

VoxyAI (https://voxyai.io) serves local models through an OpenAI-compatible
API. Turn on Settings > Coding Tools > "Serve local models to developer tools".

Pass --model with a model installed in VoxyAI that is good at translation.
Run without --model to list the models VoxyAI has available.

Usage:
    flutter gen-l10n                                            # writes untranslated_messages.json
    python3 scripts/translate_l10n.py                           # list available models
    python3 scripts/translate_l10n.py --model <id> --dry-run    # preview
    python3 scripts/translate_l10n.py --model <id> --locales de,fr,ja
    flutter gen-l10n                                            # regenerate Dart classes

Reads:
    lib/l10n/app_en.arb                (template)
    untranslated_messages.json         (produced by `flutter gen-l10n`)

Writes:
    lib/l10n/app_<code>.arb            (in place; only adds missing keys)

Environment:
    VOXYAI_MODEL     model id, used when --model isn't passed
    VOXYAI_URL       API base URL (default http://localhost:11436/v1)
    VOXYAI_API_KEY   only needed if you set an access key in VoxyAI
    L10N_REST        rest between strings, as a multiple of each string's
                     time (default 0.5; 0 turns resting off)

Keeping the Mac cool: a full run is thousands of strings of nonstop GPU work,
so the script rests between strings (longer when the Mac is warm or on
battery) and pauses when macOS reports serious heat or the battery drops to
20%.
"""
from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path

VOXYAI_URL = os.environ.get("VOXYAI_URL", "http://localhost:11436/v1").rstrip("/")
# Any value works unless an access key is set in VoxyAI's Coding Tools settings.
VOXYAI_API_KEY = os.environ.get("VOXYAI_API_KEY", "voxyai")

REPO_ROOT = Path(__file__).resolve().parent.parent
L10N_DIR = REPO_ROOT / "lib" / "l10n"
TEMPLATE = L10N_DIR / "app_en.arb"
REPORT = REPO_ROOT / "untranslated_messages.json"

# Locale code -> human-readable language name (used in the prompt).
LANG_NAMES = {
    "ar": "Arabic", "ca": "Catalan", "cs": "Czech", "da": "Danish",
    "de": "German", "el": "Greek", "es": "Spanish", "es_ES": "European Spanish",
    "es_MX": "Mexican Spanish", "fi": "Finnish", "fr": "French",
    "fr_CA": "Canadian French", "he": "Hebrew", "hi": "Hindi", "hr": "Croatian",
    "hu": "Hungarian", "id": "Indonesian", "it": "Italian", "ja": "Japanese",
    "ko": "Korean", "ms": "Malay", "nl": "Dutch", "no": "Norwegian",
    "pl": "Polish", "pt": "Portuguese", "pt_BR": "Brazilian Portuguese",
    "pt_PT": "European Portuguese", "ro": "Romanian", "ru": "Russian",
    "sk": "Slovak", "sv": "Swedish", "th": "Thai", "tr": "Turkish",
    "uk": "Ukrainian", "vi": "Vietnamese", "zh": "Simplified Chinese",
    "zh_Hant": "Traditional Chinese",
}

# Regional variants whose generated class extends the base language's class,
# so a missing key shows the base translation (es, fr, pt), not English.
# Translating them only matters where the regional wording differs.
# zh_Hant is not here: its base, zh, is Simplified Chinese.
INHERITING_LOCALES = {"es_ES", "es_MX", "fr_CA", "pt_BR", "pt_PT"}

# Hebrew uses old ISO code "iw" in the .arb filename even though
# `flutter gen-l10n` reports it as "he".
LOCALE_TO_FILE = {"he": "app_iw.arb"}

REST_RATIO = float(os.environ.get("L10N_REST", "0.5"))
BATTERY_REST_RATIO = max(REST_RATIO, 1.0)
WARM_REST_RATIO = max(REST_RATIO, 2.0)
LOW_BATTERY_PERCENT = 20
PAUSE_CHECK_SECONDS = 30
# NSProcessInfo.thermalState: nominal, fair, serious, critical
THERMAL_NAMES = ["cool", "warm", "hot", "critically hot"]


def arb_path(locale: str) -> Path:
    return L10N_DIR / LOCALE_TO_FILE.get(locale, f"app_{locale}.arb")


def load_arb(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def save_arb(path: Path, data: dict) -> None:
    # Two-space indent + trailing newline matches the existing files' style.
    path.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


def mac_conditions() -> tuple[int, bool, int]:
    """(thermal state 0-3, on battery, battery percent). Unknowns read as safe,
    so this is a no-op on other operating systems."""
    if sys.platform != "darwin":
        return 0, False, 100

    state = 0
    try:
        out = subprocess.run(
            ["osascript", "-l", "JavaScript", "-e",
             'ObjC.import("Foundation"); $.NSProcessInfo.processInfo.thermalState'],
            capture_output=True, text=True, timeout=10).stdout.strip()
        state = int(out)
    except (OSError, ValueError, subprocess.TimeoutExpired):
        pass

    on_battery, percent = False, 100
    try:
        out = subprocess.run(["pmset", "-g", "batt"],
                             capture_output=True, text=True, timeout=10).stdout
        on_battery = "Battery Power" in out
        match = re.search(r"(\d+)%", out)
        if match:
            percent = int(match.group(1))
    except (OSError, subprocess.TimeoutExpired):
        pass
    return state, on_battery, percent


def pause_reason() -> str | None:
    """Why translating must stop for now, or None."""
    state, on_battery, percent = mac_conditions()
    if state >= 2:
        return f"the Mac is {THERMAL_NAMES[state]}"
    if on_battery and percent <= LOW_BATTERY_PERCENT:
        return f"battery at {percent}%, plug in to continue"
    return None


def wait_until_safe(before_pause) -> None:
    """Blocks while the Mac is too hot or the battery too low."""
    reason = pause_reason()
    if not reason:
        return
    before_pause()
    print(f"    Paused: {reason}. Checking again every {PAUSE_CHECK_SECONDS}s...")
    while pause_reason():
        time.sleep(PAUSE_CHECK_SECONDS)
    print("    Resuming.")


def rest_after(seconds_worked: float) -> None:
    """Lets the GPU cool between strings: longer when warm or on battery."""
    state, on_battery, _ = mac_conditions()
    if state >= 1:
        ratio = WARM_REST_RATIO
    elif on_battery:
        ratio = BATTERY_REST_RATIO
    else:
        ratio = REST_RATIO
    time.sleep(seconds_worked * ratio)


def voxyai_request(path: str, payload: dict | None = None, timeout: int = 300) -> dict:
    req = urllib.request.Request(
        f"{VOXYAI_URL}{path}",
        data=json.dumps(payload).encode("utf-8") if payload is not None else None,
        headers={
            "Authorization": f"Bearer {VOXYAI_API_KEY}",
            "Content-Type": "application/json",
        },
    )
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return json.loads(resp.read().decode("utf-8"))


def check_server(model: str | None) -> None:
    """Stops early, with the fix, when VoxyAI isn't serving, no model was
    chosen, or the chosen model isn't installed."""
    try:
        models = voxyai_request("/models", timeout=10)
    except urllib.error.HTTPError as e:
        sys.exit(f"VoxyAI answered HTTP {e.code}: {e.read()[:200]!r}")
    except (urllib.error.URLError, OSError):
        sys.exit(f"Can't reach VoxyAI at {VOXYAI_URL}. Open VoxyAI and turn on "
                 "Settings > Coding Tools > Serve local models to developer tools.")
    ids = [m["id"] for m in models.get("data", [])]
    available = "\n  ".join(ids or ["(no models installed)"])
    if not model:
        sys.exit("Choose a model suited to translation with --model <id>.\n"
                 f"Models available in VoxyAI:\n  {available}")
    if model not in ids:
        sys.exit(f"Model {model!r} isn't available in VoxyAI. Available:\n  {available}")


def translate(model: str, prompt: str) -> str:
    body = voxyai_request("/chat/completions", {
        "model": model,
        "messages": [{"role": "user", "content": prompt}],
        "temperature": 0.2,
        "max_tokens": 2048,
    })
    return (body["choices"][0]["message"].get("content") or "").strip()


PLACEHOLDER_RE = re.compile(r"\{[A-Za-z_][A-Za-z0-9_]*\}")


_LLM_TAIL_RE = re.compile(
    r"\n\n+\(?\s*(?:Note|Notes?|Comment|Translator's note|FYI)\b.*",
    re.DOTALL | re.IGNORECASE,
)


def clean_translation(raw: str, original: str, language: str) -> str:
    """Strip common LLM noise: reasoning blocks, quotes, code fences, prefixes, trailing notes."""
    # Reasoning models (e.g. Qwen3) may emit a <think> block before the answer.
    s = re.sub(r"<think>.*?</think>", "", raw, flags=re.DOTALL).strip()
    if s.startswith("```"):
        s = re.sub(r"^```[A-Za-z]*\n?", "", s)
        s = re.sub(r"\n?```$", "", s)
        s = s.strip()
    # Strip a single layer of wrapping quotes.
    if len(s) >= 2 and s[0] == s[-1] and s[0] in ('"', "'", "“", "”"):
        s = s[1:-1].strip()
    # Drop common prefixes like "Translation:" / "German translation:".
    s = re.sub(rf"^(?:{re.escape(language)}\s+)?(Translation|Translated|Result|Output)\s*[:\-]\s*",
               "", s, flags=re.IGNORECASE)
    s = _LLM_TAIL_RE.sub("", s).strip()
    # Drop trailing period only if the source didn't have one.
    if s.endswith(".") and not original.endswith("."):
        s = s[:-1]
    return s


def build_prompt(language: str, key: str, value: str, description: str | None,
                 placeholders: list[str]) -> str:
    lines = [
        f"Translate the following English UI string into {language}.",
        "",
        f"Key: {key}",
    ]
    if description:
        lines.append(f"Context: {description}")
    if placeholders:
        ph = ", ".join("{" + p + "}" for p in placeholders)
        lines.append(
            f"This string contains placeholders that MUST be preserved verbatim: {ph}"
        )
    lines += [
        f"English: {value}",
        "",
        "Rules:",
        "- Output ONLY the translated string, with no quotes, prefix, or explanation.",
        "- Preserve any {placeholder} tokens exactly as written.",
        "- If the string uses ICU plural syntax like {count, plural, =1{...} other{...}},",
        "  keep that structure and keywords, and translate only the text inside.",
        "- Keep brand names such as GitHub and GistHunt unchanged.",
        "- Match the tone of a short UI label or message.",
        "",
        f"{language} translation:",
    ]
    return "\n".join(lines)


def placeholders_for(meta: dict | None) -> list[str]:
    if not meta:
        return []
    ph = meta.get("placeholders") or {}
    return list(ph.keys())


def validate_placeholders(translation: str, expected: list[str]) -> bool:
    """True iff translation contains exactly the expected {placeholder} tokens.

    Rejects both missing and hallucinated placeholders. Hallucinated tokens are
    the dangerous case — Flutter's gen-l10n will synthesize a parameterized
    method signature from any {x} in a locale string, breaking call sites.
    """
    found = set(PLACEHOLDER_RE.findall(translation))
    expected_set = {"{" + p + "}" for p in expected}
    return found == expected_set


def main() -> int:
    parser = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--model", default=os.environ.get("VOXYAI_MODEL"),
                        help="VoxyAI model id to translate with (or set VOXYAI_MODEL); "
                             "omit to list available models")
    parser.add_argument("--locales", default="",
                        help="Comma-separated locales to process; default = all in report")
    parser.add_argument("--include-regional", action="store_true",
                        help="Also translate regional variants that inherit from their "
                             f"base language ({', '.join(sorted(INHERITING_LOCALES))})")
    parser.add_argument("--dry-run", action="store_true",
                        help="Print translations without writing .arb files")
    parser.add_argument("--report", default=str(REPORT),
                        help=f"Path to untranslated_messages.json (default: {REPORT})")
    args = parser.parse_args()

    check_server(args.model)

    if not TEMPLATE.exists():
        print(f"error: template arb not found at {TEMPLATE}", file=sys.stderr)
        return 1
    report_path = Path(args.report)
    if not report_path.exists():
        print(f"error: report not found at {report_path}\n"
              f"  run `flutter gen-l10n` first (l10n.yaml has untranslated-messages-file).",
              file=sys.stderr)
        return 1

    template = load_arb(TEMPLATE)
    report = json.loads(report_path.read_text(encoding="utf-8"))

    wanted = set(filter(None, args.locales.split(","))) if args.locales else None
    def selected(loc: str) -> bool:
        if wanted:
            return loc in wanted
        # English variants fall back to the English template; nothing to translate.
        if loc.startswith("en"):
            return False
        return args.include_regional or loc not in INHERITING_LOCALES

    locales = [loc for loc in report if selected(loc)]
    if not locales:
        print("nothing to do (no locales match)")
        return 0

    total = sum(len(report[loc]) for loc in locales)
    print(f"Translating {total} string(s) across {len(locales)} locale(s) "
          f"using {args.model} via VoxyAI")

    failures = 0
    for locale in locales:
        language = LANG_NAMES.get(locale, locale)
        target = arb_path(locale)
        if not target.exists():
            print(f"  [{locale}] skip: {target.name} not found")
            continue
        data = load_arb(target)
        added = 0

        def save_progress() -> None:
            if added and not args.dry_run:
                save_arb(target, data)

        for key in report[locale]:
            if key in data:
                continue  # already there from a prior partial run
            value = template.get(key)
            if value is None:
                print(f"  [{locale}] skip {key}: not in template")
                continue
            meta = template.get(f"@{key}")
            description = (meta or {}).get("description")
            placeholders = placeholders_for(meta)

            wait_until_safe(save_progress)
            started = time.monotonic()
            prompt = build_prompt(language, key, value, description, placeholders)
            try:
                raw = translate(args.model, prompt)
            except (urllib.error.URLError, OSError, KeyError) as e:
                print(f"  [{locale}] VoxyAI error on {key}: {e}", file=sys.stderr)
                failures += 1
                continue
            translation = clean_translation(raw, value, language)
            if not translation:
                print(f"  [{locale}] empty result for {key}, skipping", file=sys.stderr)
                failures += 1
                continue
            if placeholders and not validate_placeholders(translation, placeholders):
                print(f"  [{locale}] WARNING: placeholders missing in {key!r} -> "
                      f"{translation!r}; falling back to English", file=sys.stderr)
                translation = value
                failures += 1

            print(f"  [{locale}] {key}: {value!r} -> {translation!r}")
            data[key] = translation
            added += 1
            if added % 5 == 0:
                save_progress()
            rest_after(time.monotonic() - started)

        if added and not args.dry_run:
            save_arb(target, data)
            print(f"  [{locale}] wrote {added} key(s) to {target.name}")
        elif added:
            print(f"  [{locale}] (dry-run) would write {added} key(s) to {target.name}")

    if failures:
        print(f"\nDone with {failures} warning(s)/failure(s).")
    else:
        print("\nDone.")
    return 0 if failures == 0 else 2


if __name__ == "__main__":
    sys.exit(main())
