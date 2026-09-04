#!/usr/bin/env bash
set -euo pipefail

# Run from the repository root. Creates one upload-ready ZIP per Claude skill.
output_dir="${1:-dist/claude-skills}"
mkdir -p "$output_dir"
output_dir="$(cd "$output_dir" && pwd)"

for skill_dir in skills/thai-*/; do
  skill_name="${skill_dir%/}"
  skill_name="${skill_name##*/}"
  test -f "$skill_dir/SKILL.md"
  (
    cd skills
    zip -qr "$output_dir/$skill_name.zip" "$skill_name"
  )
done

printf 'Created upload-ready Claude ZIP files in %s\n' "$output_dir"
