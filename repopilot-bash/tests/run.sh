#!/usr/bin/env bash
set -euo pipefail
script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cli="$script_dir/../bin/repopilot"
tmp="$(mktemp -d)"
trap 'rm -rf -- "$tmp"' EXIT
mkdir -p "$tmp/project"
cat > "$tmp/project/go.mod" <<'EOF2'
module example.org/demo

go 1.22
EOF2
printf 'KEY=replace_me\n' > "$tmp/project/.env.example"
"$cli" scan "$tmp/project" > "$tmp/scan.txt"
grep -q 'Go' "$tmp/scan.txt"
grep -q 'go test' "$tmp/scan.txt"
"$cli" init-env "$tmp/project" > "$tmp/dry.txt"
[[ ! -e "$tmp/project/.env" ]]
"$cli" init-env "$tmp/project" --apply > /dev/null
[[ -f "$tmp/project/.env" ]]
if "$cli" init-env "$tmp/project" --apply >/dev/null 2>&1; then echo 'Expected non-overwrite failure' >&2; exit 1; fi
"$cli" report "$tmp/project" "$tmp/report.txt" >/dev/null
[[ -f "$tmp/report.txt" ]]
if "$cli" report "$tmp/project" "$tmp/report.txt" >/dev/null 2>&1; then echo 'Expected report overwrite failure' >&2; exit 1; fi
"$cli" --version | grep -q 'RepoPilot'
echo 'RepoPilot tests passed.'
