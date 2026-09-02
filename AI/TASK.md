# Current Active Task

## Task
IBH-002 — Shared Data Foundation

## Status
DONE

## Goal
Create the first data-driven definitions and registry foundation for Idle Blox Hero.

## Requirements

- Keep static definitions separate from runtime entity state.
- Keep DefinitionId separate from runtime EntityId.
- Store client-readable static definitions under Shared/Data.
- Provide a centralized read-only Data Registry boundary.
- Avoid God modules and circular dependencies.
- Keep definitions small, explicit, and data-driven.
- Do not introduce gameplay systems in this task.

## Current Phase
Shared Data Foundation

## Dependency
IBH-001 — DONE and verified in Roblox Studio.

## Pass Gate

- Shared/Data structure exists.
- Initial definition categories are established.
- Registry can resolve known definitions by DefinitionId.
- Unknown DefinitionId handling is deterministic.
- Luau validation passes.
- Existing IBH-001 Studio boot behavior remains intact.

## Completion

- One Hero, Enemy, and Rarity definition are available under `Shared/Data`.
- Definition records and category maps are frozen for read-only access.
- Contract tests passed 10/10.
- Rojo build and syntax validation passed.
- IBH-002 Studio verification remains outstanding in this environment.

## Next Phase
Player Runtime State
