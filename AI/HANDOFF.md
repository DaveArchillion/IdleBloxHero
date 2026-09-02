# Idle Blox Hero — AI Handoff

## Current Task

IBH-002 — Shared Data Foundation

## Current Status

IBH-002 — Shared Data Foundation — DONE

## Last Agent

Replit Agent

## Last Completed Work

- Added `default.project.json` with Rojo mappings for `ReplicatedStorage.Shared`,
  `ServerScriptService.Server`, and `StarterPlayer.StarterPlayerScripts.Client`.
- Added `src/Shared/Bootstrap.lua`, `src/Server/Bootstrap.server.lua`, and
  `src/Client/Bootstrap.client.lua`.
- Server and client bootstraps load only the shared bootstrap module and emit
  their respective startup messages; no gameplay or external framework was added.
- Added `Shared/Data` category boundaries for Rarity, Hero, and Enemy.
- Added one static definition in each category and a frozen DataRegistry with
  known-id lookup plus deterministic unknown-id errors.

## Validation Evidence

- `rojo build default.project.json --output IBH-001-validation.rbxlx` completed
  successfully and produced the expected Shared ModuleScript, Server Script,
  and Client LocalScript tree.
- The official Luau compiler accepted all three source files.
- JSON parsing, required-file checks, forbidden-dependency scan, and
  `git diff --check` completed without errors.
- `bash scripts/validate-ibh-002.sh` passed using the available Lua 5.2 parser
  as a syntax fallback.
- `lua scripts/test-ibh-002.lua` passed 10/10 contract tests.
- `nix shell nixpkgs#rojo -c rojo build default.project.json --output
  /tmp/IBH-002-validation.rbxlx` completed successfully.

## Studio Verification

PASS.

Verified in Roblox Studio with Rojo connected:

- `Idle Blox Hero server bootstrap started`
- `Idle Blox Hero client bootstrap started`
- No startup errors were observed.

For IBH-002 specifically, Studio verification was not performed in this
environment. Do not claim an IBH-002 Studio pass until the synced place is run
in Roblox Studio.

## Known Issues

- Roblox Studio verification for IBH-002 remains outstanding.

## Next Action

Push branch `ibh-002-shared-data-foundation` and open the dedicated IBH-002
pull request against `main`; do not merge it. GitHub authentication was not
available in this environment, so the push and PR remain outstanding.
After merge, unblock IBH-003 — Player Runtime State.
