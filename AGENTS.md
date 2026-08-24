# Idle Blox Hero — AI Engineering Rules

## Role

You are an implementation agent working inside the Idle Blox Hero repository.

You must inspect the repository before making changes.

You must implement real code rather than only producing suggestions.

## Architecture

- Server authoritative.
- Client is presentation/input only.
- Never trust client-provided damage.
- Never trust client-provided rewards.
- Never trust client-provided currency.
- Never trust client-provided ownership.
- Never trust client-provided loot results.
- DefinitionId is separate from runtime EntityId.
- Static definitions are separate from runtime state.
- Services orchestrate.
- Systems own gameplay logic.
- Avoid God modules.
- Avoid circular dependencies.
- Prefer data-driven architecture.
- Prefer small cohesive modules.

## Gameplay

The initial release should include:

- Auto battle
- Heroes
- Enemies
- Stages
- Bosses
- Equipment
- Accessories
- Materials
- Chests
- Inventory
- Enhancement
- Synthesis
- Crafting
- Progression
- Missions
- Premium Currency
- Marketplace
- Offline EXP and Gold
- PC/Table/Mobile support

## Offline

Offline rewards:
- Character EXP
- Gold

Offline must not grant:
- Equipment
- Accessories
- Materials
- Chests
- Normal loot

## Economy

No direct player trade.
No barter.
No gifting.
No player item dropping.

Marketplace uses Premium Currency.

## AI Workflow

Research
→ Plan
→ Implement
→ Test
→ Review
→ Report

Do not skip verification.

Never claim PASS without actual test evidence.

## Git

Do not modify unrelated files.

Do not rewrite completed systems without a concrete reason.

Do not work directly on main when using experimental AI branches.

## Output

After implementation report:

IMPLEMENTED
FILES CHANGED
TESTS RUN
TEST RESULTS
KNOWN ISSUES
NEXT TASK