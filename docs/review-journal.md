# Review Journal

The review surface for `silver-algo-hash-flow` is deliberately narrow: one fixture, one scoring rule, and one local check.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its algorithms focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input width`, score 138, lane `watch`
- `stress`: `search depth`, score 150, lane `ship`
- `edge`: `boundary pressure`, score 105, lane `watch`
- `recovery`: `complexity`, score 208, lane `ship`
- `stale`: `input width`, score 172, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
