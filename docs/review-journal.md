# Review Journal

The repository goal stays the same: generate mazes, solve shortest paths, and export stable ASCII fixtures. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its algorithms focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input width`, score 111, lane `watch`
- `stress`: `search depth`, score 93, lane `hold`
- `edge`: `boundary pressure`, score 137, lane `watch`
- `recovery`: `complexity`, score 252, lane `ship`
- `stale`: `input width`, score 173, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
