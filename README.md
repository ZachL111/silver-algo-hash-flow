# silver-algo-hash-flow

`silver-algo-hash-flow` is a OCaml project in algorithms. Its focus is to package an OCaml local lab for hash analysis with windowed input fixtures, late-data behavior checks, and documented operating limits.

## Reason For The Project

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how input width and boundary pressure should influence a review result.

## Silver Algo Hash Flow Review Notes

Start with `complexity` and `boundary pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/silver-algo-hash-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `complexity` and `boundary pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Boundaries

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
