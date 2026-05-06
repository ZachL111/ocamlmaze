# ocamlmaze

`ocamlmaze` is a compact OCaml repository for algorithms, centered on this goal: Generate mazes, solve shortest paths, and export stable ASCII fixtures.

## Why This Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Ocamlmaze Review Notes

Start with `complexity` and `search depth`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ocamlmaze-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `complexity` and `search depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added OCaml path is deliberately direct, with fixtures doing most of the explaining.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The check exercises the source code and the review fixture. `recovery` is the high score at 252; `stress` is the low score at 93.

## Roadmap

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
