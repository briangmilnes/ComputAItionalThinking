# ComputAItionalThinking

This project builds a reusable agent ruleset plus a large computer-science
vocabulary so that Claude (and other agents) think and speak in precise
computer-science terms when working on coding and verification tasks. The goal is
to remove analogies and metaphors from agent output: concrete language — naming
the mechanism, data structure, or measured outcome — is fast and safe to read,
while figures of speech force the reader to decode the figure before they can
check the claim, which is slow and error-prone. The ruleset states the rules; the
glossaries give the agent the field's actual terms to reach for.

## Repository layout

| Path                                  | What it is                                                                                                      |
| ------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `CLAUDE.md`                           | Thin project file: identity, `project-tz`, and an import of the ruleset below.                                  |
| `ComputAItionalThinkingRules.md`      | The portable agent ruleset — Personas, Language rules (no analogies/metaphors; one term per concept; report status as measurement), a Reference-vocabulary pointer, and the numbered principles (Think Before Coding, Simplicity First, Surgical Changes, Compiler Warnings, Goal-Driven Execution). Any project can adopt it (see below). |
| `ComputAItionalThinkingVocabulary.md` | The merged, deduplicated master glossary — 2859 unique terms from the UW CSE and CMU SCS course vocabularies, terms in both resolved to the clearer definition. Grep here first. |
| `corpuses/`                           | Per-source glossaries and the source material they were extracted from (see below).                            |

### `corpuses/`

| Path               | What it is                                                                                                     |
| ------------------ | ------------------------------------------------------------------------------------------------------------- |
| `corpuses/UWCSE/`  | 15 University of Washington CSE courses. Per-course material plus a merged `vocabulary.md` of 1408 terms.      |
| `corpuses/CMUSCS/` | 17 Carnegie Mellon SCS courses (15-xxx PL / type-theory / logic / verification, 17-xxx SE / analysis). Per-course material plus a merged `vocabulary.md` of 1644 terms. |
| `corpuses/APAS/`   | *Algorithms: Parallel and Sequential* (Acar & Blelloch, CMU 15-210): algorithm, problem, ADT, and work/span cost terminology — `vocabulary.md`, 719 terms — plus the textbook PDF. |
| `corpuses/GTA/`    | *Graph Theory with Applications* (Bondy & Murty, 1976): graph-theory terminology and named theorems — `vocabulary.md`, 295 terms — plus the textbook PDF. |
| `corpuses/SICP/`   | *Structure and Interpretation of Computer Programs* (Abelson & Sussman): programs, procedures, evaluation, and interpreters — `vocabulary.md`, 148 terms. |

Each course directory under `UWCSE/` and `CMUSCS/` holds the downloaded slides/notes
and an extracted `vocabulary.md` (term → 1–2 sentence description), plus a
`classlist.md` marking which courses have publicly readable materials.

## How the vocabulary is used

The glossaries are too large to hold in an agent's context. When an agent uses a
technical term and is unsure of its precise meaning or this project's preferred
phrasing, it greps the glossaries on demand and uses the found definition and
wording instead of improvising a paraphrase — grep the master
`ComputAItionalThinkingVocabulary.md` first, then the per-source glossaries under
`corpuses/`. The "Reference vocabulary" section of `ComputAItionalThinkingRules.md`
lists every glossary by absolute `~/projects/...` path so the pointer resolves
from any project that imports the ruleset.

## How the ruleset is used

`ComputAItionalThinkingRules.md` is the ruleset for any agent working in this
project; `CLAUDE.md` imports it. Another project adopts the same terminology
discipline by adding one line to its own `CLAUDE.md`:
`@~/projects/ComputAItionalThinking/ComputAItionalThinkingRules.md`.

## Provenance and credits

The glossaries are derived from university course materials (UW CSE and CMU SCS
open slides/notes) and the named textbooks: *Algorithms: Parallel and Sequential*
(Acar & Blelloch), *Graph Theory with Applications* (Bondy & Murty), and
*Structure and Interpretation of Computer Programs* (Abelson & Sussman). Each
entry is a term plus a one- or two-sentence definition in standard
software-engineering language, drawn from these primary teaching materials rather
than blog posts or vendor documentation. The included textbook PDFs are retained
for personal reference use only.
