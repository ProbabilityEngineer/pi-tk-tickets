#!/usr/bin/env bash
set -euo pipefail

repo=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
tk="$repo/vendor/wedow-ticket/tk"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

id=$(cd "$tmp" && "$tk" create "Bundled CLI smoke test" --description "Created by test" --type feature --priority 1)
[[ "$id" =~ ^[a-z0-9]+-[a-z0-9]{4}$ ]]
file="$tmp/.tickets/$id.md"
test -f "$file"
grep -Fq 'status: open' "$file"
grep -Fq '# Bundled CLI smoke test' "$file"
(cd "$tmp" && "$tk" start "$id") | grep -Fq 'in_progress'
(cd "$tmp" && "$tk" add-note "$id" 'Bundled note') | grep -Fq 'Note added'
(cd "$tmp" && "$tk" close "$id") | grep -Fq 'closed'
grep -Fq 'status: closed' "$file"
(cd "$tmp" && "$tk" show "$id") | grep -Fq 'Bundled note'
