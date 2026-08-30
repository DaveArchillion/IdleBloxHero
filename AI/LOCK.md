# AI Task Lock

Current Task: NONE
Current Agent: NONE
Status: IDLE

## Lock Rules

An agent may claim a task only when:

- task status is READY
- no active owner exists
- dependencies are satisfied

When claiming:

Current Task: IBH-XXX
Current Agent: <agent>
Status: CLAIMED

An agent that hits quota/session limits must update:

Status: INTERRUPTED

and write the current state to HANDOFF.md.

Another agent may then take over.
