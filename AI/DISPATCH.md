# Idle Blox Hero — AI Dispatch Protocol

## Purpose

Allow different AI agents to continue the same project without depending
on one AI's conversation history.

## Source of Truth

The repository is the source of truth.

AI session history is disposable.

## Agent Order

Preferred workers:

1. Codex
2. Gemini
3. Claude
4. GitHub Copilot
5. OpenCode
6. Aider
7. Cline
8. Roo
9. Windsurf
10. Other available agents

The order is flexible.

Choose the strongest currently available free agent for the task.

## When an Agent Hits a Limit

The agent must:

1. stop making changes
2. update AI/CURRENT.md
3. update AI/HANDOFF.md
4. mark the task INTERRUPTED
5. document completed work
6. document unfinished work
7. document test results
8. document the exact next action

## Takeover

The next agent must:

1. read CURRENT.md
2. read HANDOFF.md
3. inspect git diff
4. inspect relevant files
5. continue unfinished work
6. never restart completed work unnecessarily

## No False Completion

An agent may not mark a task DONE unless:

- implementation exists
- required tests pass
- required verification is complete
- known limitations are documented

## Conflict Rule

Only one agent owns a task at a time.

If ownership is unclear:

STOP.

Do not blindly modify the repository.

## Priority

Correctness
>
Security
>
Architecture
>
Tests
>
Performance
>
Speed
