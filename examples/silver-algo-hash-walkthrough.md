# Silver Algo Hash Flow Walkthrough

I use this file as a small checklist before changing the OCaml implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 138 | watch |
| stress | search depth | 150 | ship |
| edge | boundary pressure | 105 | watch |
| recovery | complexity | 208 | ship |
| stale | input width | 172 | ship |

Start with `recovery` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
