#!/usr/bin/env bash
set -euo pipefail

root="${1:-.}"

skill_files=()
while IFS= read -r line; do
  skill_files+=("$line")
done < <(find "$root" -type f -name 'SKILL.md' | sort)

if [[ ${#skill_files[@]} -eq 0 ]]; then
  echo "ERROR: No SKILL.md files found."
  exit 1
fi

failures=0

for skill_file in "${skill_files[@]}"; do
  skill_dir="$(dirname "$skill_file")"
  skill_dir_name="$(basename "$skill_dir")"

  # Extract `name:` from YAML frontmatter (first matching line).
  frontmatter_name="$(
    awk '
      NR == 1 && $0 != "---" { exit 0 }
      NR > 1 && $0 == "---" { exit 0 }
      /^name:[[:space:]]*/ {
        sub(/^name:[[:space:]]*/, "", $0)
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", $0)
        gsub(/^"|"$/, "", $0)
        print $0
        exit 0
      }
    ' "$skill_file"
  )"

  if [[ -z "$frontmatter_name" ]]; then
    echo "ERROR: Missing frontmatter 'name' in $skill_file"
    failures=$((failures + 1))
    continue
  fi

  if [[ "$frontmatter_name" != "$skill_dir_name" ]]; then
    echo "ERROR: Skill name mismatch in $skill_file"
    echo "  frontmatter name: $frontmatter_name"
    echo "  directory name:   $skill_dir_name"
    failures=$((failures + 1))
  else
    echo "OK: $skill_file (name matches directory: $frontmatter_name)"
  fi
done

if [[ $failures -gt 0 ]]; then
  echo "Skill validation failed with $failures error(s)."
  exit 1
fi

echo "Skill validation passed."
