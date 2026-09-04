#!/usr/bin/env bash
set -euo pipefail

# Run from the repository root. Creates a plugin archive for ChatGPT Work/Codex.
output_file="${1:-dist/project-skill-plugin.zip}"
mkdir -p "$(dirname "$output_file")"
test -f .codex-plugin/plugin.json

zip -qr "$output_file" .codex-plugin skills -x '*/.DS_Store'
printf 'Created plugin archive: %s\n' "$output_file"
