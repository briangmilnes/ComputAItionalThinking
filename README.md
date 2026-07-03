# ComputAItionalThinking

This project builds a reusable `CLAUDE.md` ruleset plus a large computer-science
vocabulary so that Claude (and other agents) think and speak in precise
computer-science terms when working on coding and verification tasks. The goal is
to remove analogies and metaphors from agent output: concrete language — naming
the mechanism, data structure, or measured outcome — is fast and safe to read,
while figures of speech force the reader to decode the figure before they can
check the claim, which is slow and error-prone. The `CLAUDE.md` states the rules;
the glossaries give the agent the field's actual terms to reach for.

## Repository layout

| Path                                    | What it is                                                                                                                             |
| --------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `CLAUDE.md`                             | The agent ruleset: Personas, Language rules (no analogies/metaphors, report status as measurement, precise word sense), a Reference-vocabulary section, and numbered principles (Think Before Coding, Simplicity First, Surgical Changes, Compiler Warnings, Goal-Driven Execution). |
| `ComputAItionalThinkingVocabulary.md`   | The merged, deduplicated master glossary — 2859 unique terms, built from the UW CSE and CMU SCS course vocabularies, with terms in both resolved to the clearer definition. Grep here first. |
| `products/`                             | Per-source glossaries and the source material they were extracted from (see below).                                                  |
| `docs/`                                 | Supplementary term references (see below).                                                                                            |
| `analyses/`                             | Output of analysis scripts run over the corpus (currently a term-pareto corpus log).                                                  |
| `scripts/`                              | Analysis scripts (currently `term-pareto.sh`).                                                                                        |

### `products/`

| Path                | What it is                                                                                                                            |
| ------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `products/UWCSE/`   | 15 University of Washington CSE courses (121, 122, 123, 311, 312, 331, 332, 333, 341, 344, 351, 401, 503, 505, 507). Per-course material plus a merged `vocabulary.md` of 1408 unique terms. |
| `products/CMUSCS/`  | 17 Carnegie Mellon SCS courses (the 15-xxx PL / type-theory / logic / verification series and the 17-xxx SE / analysis courses). Per-course material plus a merged `vocabulary.md` of 1644 unique terms. |
| `products/APAS/`    | *Algorithms: Parallel and Sequential* (Acar & Blelloch, CMU 15-210): algorithm, problem, ADT, and work/span cost-specification terminology — 719 terms — with the textbook PDF. |
| `products/GTA/`     | *Graph Theory with Applications* (Bondy & Murty): graph-theory terminology, with the textbook PDF. The glossary for this source is being generated. |

Each course directory under `UWCSE/` and `CMUSCS/` holds the downloaded slides/notes
and an extracted `vocabulary.md` (term → 1–2 sentence description). Each source
directory also carries a `classlist.md` marking which courses have publicly readable
materials.

### `docs/`

| File                         | What it is                                                                              |
| ---------------------------- | -------------------------------------------------------------------------------------- |
| `docs/PLTERMS.md`            | High-level glossary of programming-languages / software-engineering theory: semantics, type theory, compilers, formal verification. |
| `docs/RustTermsCorrected.md` | A Rust ↔ programming-languages-theory crosswalk.                                        |
| `docs/SICP.md`               | Ground-level vocabulary from *Structure and Interpretation of Computer Programs* (Abelson & Sussman). |

## How the vocabulary is used

The glossaries are too large to hold in an agent's context. When an agent uses a
technical term and is unsure of its precise meaning or this project's preferred
phrasing, it greps the glossaries on demand and uses the found definition and
wording instead of improvising a paraphrase. Grep the master
`ComputAItionalThinkingVocabulary.md` first; fall back to the per-source
glossaries under `products/` and the supplementary references in `docs/` for
narrower vocabularies (algorithm/cost terms in `products/APAS/`, Rust terms in
`docs/RustTermsCorrected.md`, and so on). The "Reference vocabulary" section of
`CLAUDE.md` states this workflow.

## How the `CLAUDE.md` is used

`CLAUDE.md` is the ruleset for any agent working in this project. It sets the
default persona (senior software engineer reasoning about code as abstract data
types with work/span cost specifications), the language rules that keep output
concrete, and the working principles. Another project can adopt these rules by
importing this file with a Claude Code `@import` (e.g. `@ComputAItionalThinking/CLAUDE.md`),
so its agents inherit the same terminology discipline.

## Provenance and credits

The glossaries are derived from university course materials (UW CSE and CMU SCS
open slides/notes) and the named textbooks: *Algorithms: Parallel and Sequential*
(Acar & Blelloch), *Graph Theory with Applications* (Bondy & Murty), and
*Structure and Interpretation of Computer Programs* (Abelson & Sussman). Terms
come from these primary teaching materials, not from blog posts or vendor
documentation; each entry is a term plus a one- or two-sentence definition in
standard software-engineering language. The included textbook PDFs are retained
for personal reference use only.
