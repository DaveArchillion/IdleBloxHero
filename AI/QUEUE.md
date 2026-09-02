# Idle Blox Hero — AI Task Queue

## Task Lifecycle

READY
→ CLAIMED
→ IMPLEMENTING
→ TESTING
→ REVIEW
→ DONE

Alternative states:

BLOCKED
INTERRUPTED
REJECTED

## Rules

- Only one agent should actively own a task at a time.
- An interrupted task may be taken over by another agent.
- A task is not DONE without verification evidence.
- Never skip a failing dependency task.
- Do not start a lower-priority task when a blocking dependency exists.

---

## Priority Queue

### IBH-001
Title: Roblox Project Foundation

Status: DONE
Priority: P0
Owner: None

Goal:
Create the minimum Roblox/Rojo project scaffold.

Pass Gate:
- Rojo project file exists
- source folders are valid
- server boot path exists
- client boot path exists
- shared path exists
- project syncs to Roblox Studio
- server starts without runtime errors

Verification:
- Rojo build passed.
- Roblox Studio sync passed.
- Server bootstrap started successfully.
- Client bootstrap started successfully.
- No startup errors observed.

---

### IBH-002
Title: Shared Data Foundation

Status: DONE
Priority: P0
Owner: Replit Agent

Depends On:
- IBH-001 — DONE

Goal:
Create the first data-driven definitions and registry foundation.

Verification:
- Shared/Data category boundaries created.
- One Hero, Enemy, and Rarity definition added.
- DataRegistry known-id and deterministic unknown-id behavior tested.
- Static definitions and registry frozen for read-only access.
- Luau syntax validation, Rojo build, and git diff check passed.
- Roblox Studio verification remains outstanding.

---

### IBH-003
Title: Player Runtime State

Status: BLOCKED
Priority: P0
Owner: None

Depends On:
- IBH-001
- IBH-002

---

### IBH-004
Title: Persistence Boundary

Status: BLOCKED
Priority: P0
Owner: None

Depends On:
- IBH-003

---

### IBH-005
Title: Hero Runtime

Status: BLOCKED
Priority: P0
Owner: None

Depends On:
- IBH-003

---

### IBH-006
Title: Enemy Runtime

Status: BLOCKED
Priority: P0
Owner: None

Depends On:
- IBH-003

---

### IBH-007
Title: Playable Combat Vertical Slice

Status: BLOCKED
Priority: P0
Owner: None

Depends On:
- IBH-005
- IBH-006

Pass Gate:
Player Join
→ Hero
→ Enemy
→ Target
→ Movement
→ Attack
→ Damage
→ Death
→ EXP
→ Gold
→ Level Up
→ Next Enemy
