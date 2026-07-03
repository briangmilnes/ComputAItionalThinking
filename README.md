# PL-SE-language

This repository is designed to get your AI agent to speak in the terms of
computer science — specifically **programming-languages and software-engineering**
terminology as the field's actual practitioners use it. It curates precise,
terse glossaries drawn from authoritative sources, with the object-oriented
pattern-book jargon and agile-process noise deliberately filtered out.

The approach is general and extensible: alongside the canonical texts, the
project ingests **open university course materials** — any school that leaves
its lecture slides/notes public (UW CSE and CMU SCS to start, expandable to
others) — downloads them, and extracts a terse vocabulary from each course.
The set of sources grows with whatever courses we can download.

## What's here

Glossaries and term lists, built from primary sources:

- `docs/PLTERMS.md` — a high-level glossary of PL/SE theory: semantics, type
  theory, compilers, formal verification.
- `docs/SICP.md` — ground-level vocabulary from *Structure and Interpretation
  of Computer Programs* (Abelson & Sussman), chapter by chapter.
- `docs/RustTermsCorrected.md` — a Rust ↔ PL-theory crosswalk (imported from
  the CSTs project).
- `docs/UWCSE/classlist.md` — University of Washington CSE courses relevant to
  PL/SE/verification, marking which have publicly readable slides/notes.
- `docs/CMUSCS/classlist.md` — Carnegie Mellon SCS courses (the 15-xxx PL /
  type-theory / logic / verification series and 17-xxx SE / analysis), same.
- `products/UWCSE/<course>/` and `products/CMUSCS/<course>/` — for each course
  with open materials: the downloaded slides/notes and an extracted
  `vocabulary.md` (term → 1–2 sentence description).

## Method

Terms come from primary teaching materials — textbooks and university lecture
slides/notes — not from blog posts or vendor documentation. Each entry is a
term plus a one- or two-sentence definition in standard software-engineering
language. When a source is walled or dead, that's recorded rather than
guessed around.

## Process

This repository is GRASE-managed (see `CLAUDE.md`): artifacts are traceable to
rounds and sender/recipient pairs, and work flows through the `prompts/`,
`plans/`, `reports/`, `logs/`, `analyses/`, and `docs/` directories.
