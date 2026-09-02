#!/usr/bin/env bash
# IBH-002 syntax validation using luac after stripping Luau-specific type syntax.
# Note: luac validates Lua 5.2 syntax; this is a fallback when the Luau compiler
# is not installed in the environment.
set -e

LUAC=$(which luac 2>/dev/null || find /nix -name "luac" -type f 2>/dev/null | head -1)

if [ -z "$LUAC" ]; then
  echo "SKIP: luac not found — cannot validate syntax"
  exit 0
fi

FILES=(
  "src/Shared/Data/Rarity/RarityDefinitions.lua"
  "src/Shared/Data/Hero/HeroDefinitions.lua"
  "src/Shared/Data/Enemy/EnemyDefinitions.lua"
  "src/Shared/Data/DataRegistry.lua"
)

for file in "${FILES[@]}"; do
  if [ ! -f "$file" ]; then
    echo "FAIL: $file — file not found"
    exit 1
  fi

  temp_file=$(mktemp)
  # Remove the simple export type blocks and function parameter annotations
  # used by this task before passing the source to the Lua 5.2 parser.
  awk '
    /^export type / { in_type = 1; next }
    in_type && /^}/ { in_type = 0; next }
    !in_type { print }
  ' "$file" | sed -E 's/: (string|number)//g' > "$temp_file"

  if "$LUAC" -p "$temp_file"; then
    echo "PASS (luac fallback): $file"
  else
    echo "FAIL (luac fallback): $file"
    rm -f "$temp_file"
    exit 1
  fi
  rm -f "$temp_file"
done
