# UW CSE — Class List (PL / SE / Verification)

University of Washington, Paul G. Allen School of Computer Science &
Engineering. Courses relevant to programming languages, software engineering,
compilers, formal verification, and the theory/systems foundations under them.
"Latest offering" = the most recent quarter with a live, real course page; the
slide/notes availability below was confirmed by opening the actual pages
anonymously (no UW NetID), not guessed.

Purpose: pick which courses' materials to read and turn into definition lists.

## Readable-now box — latest offering, no login required

Courses whose most-recent offering has materials an anonymous visitor can open:

```
┌──────────────────────────────────────────────────────────────────────────┐
│  PUBLIC SLIDES (last offering)          PUBLIC NOTES ONLY (last offering)  │
│  ─────────────────────────────          ────────────────────────────────  │
│  CSE 507  CAR for Software (SMT)         CSE 505  Concepts of PL  ★theory   │
│  CSE 401  Compiler Construction          CSE 341  Programming Languages     │
│  CSE 503  Software Eng / Analysis        CSE 331  Software Design & Impl     │
│  CSE 311  Foundations of Computing I                                        │
│  CSE 312  Foundations of Computing II    WALLED / DEAD (login or empty)      │
│  CSE 332  Data Structures & Parallel     ──────────────────────────────    │
│  CSE 351  Hardware/Software Interface    CSE 501  Impl of PL (empty stub)   │
│  CSE 333  Systems Programming            CSE 599W Systems Verification      │
│  CSE 344  Data Management                CSE 599F Formal Verification       │
└──────────────────────────────────────────────────────────────────────────┘
  ★ CSE 505 is the strongest PL-theory content, but only its HTML lecture
    notes are public — the slide decks are NetID-walled. Read the notes.
  Most on-point + fully public + slide-rich: CSE 507, CSE 401, CSE 503.
```

## Full list (most-relevant-to-PL/SE first)

| # | Course | Title | Latest offering | Homepage | Public? | Schedule / slides URL | Instructor | Covers |
|---|--------|-------|-----------------|----------|---------|-----------------------|-----------|--------|
| 1 | CSE 505 | Concepts of Programming Languages | Spring 2025 | https://sites.google.com/cs.washington.edu/cse505-25sp | notes: Y (slides walled) | https://courses.cs.washington.edu/courses/cse505/23wi/notes/notes/week01/ | J. Wilcox & Z. Tatlock | Operational/Hoare semantics, lambda calculus, type systems (STLC, System F), inductive types, compiler correctness |
| 2 | CSE 507 | Computer-Aided Reasoning for Software | Autumn 2025 | https://sites.google.com/cs.washington.edu/cse507-25au | slides: Y | https://gitlab.cs.washington.edu/cse507-25au/cse507-25au-public/-/tree/main/lecture | Z. Tatlock | SAT/SMT solvers, finite model finding, verification, bug-finding, program synthesis |
| 3 | CSE 341 | Programming Languages | Spring 2026 | https://courses.cs.washington.edu/courses/cse341/26sp/ | notes: Y (few slide PDFs) | https://courses.cs.washington.edu/courses/cse341/26sp/calendar.shtml | S. Reges | FP/paradigms via OCaml, Racket, Ruby; closures, ADTs, static vs dynamic typing, scope, semantics |
| 4 | CSE 401 (/M501) | Introduction to Compiler Construction | Spring 2026 | https://courses.cs.washington.edu/courses/cse401/26sp/ | slides: Y (decks A–S) | https://courses.cs.washington.edu/courses/cse401/26sp/calendar/lecturelist.html | G. Bernstein | Lexing, LR/LL parsing, ASTs, semantic checks, IRs, x86-64 codegen, dataflow, SSA, register allocation |
| 5 | CSE 503 | Software Engineering (Program Analysis) | Winter 2026 | https://courses.cs.washington.edu/courses/cse503/26wi/ | slides: Y | https://courses.cs.washington.edu/courses/cse503/26wi/schedule/index.html | M. Ernst | Static/dynamic analysis, abstract interpretation, test generation, program repair, slicing, model checking |
| 6 | CSE 331 | Software Design & Implementation | Summer 2026 | https://courses.cs.washington.edu/courses/cse331/26su/ | notes: Y (decks are Google Slides) | https://courses.cs.washington.edu/courses/cse331/26su/topics/ | J. Wilcox | Specifications, reasoning about correctness, testing, data abstraction (Java/TypeScript) |
| 7 | CSE 501 | Implementation of Programming Languages | Autumn 2020 (stub) | https://courses.cs.washington.edu/courses/cse501/ | N (empty; priors walled) | — | R. Bodik | Compilers/runtimes for imperative, OO, functional languages |
| 8 | CSE 599W | Systems Verification (special topics) | Spring 2016 | https://courses.cs.washington.edu/courses/cse599w/16sp/ | N (walled) | — | Z. Tatlock, Xi Wang | Provably-correct compilers, OSes, browsers, distributed systems (reading course) |
| 9 | CSE 599F | Formal Verification of Computer Systems | Spring 2006 | https://courses.cs.washington.edu/courses/cse599f/06sp/ | N (walled) | — | unknown | Verification conditions, decision procedures, SAT, predicate abstraction, CEGAR |
| 10 | CSE 311 | Foundations of Computing I | Summer 2026 | https://courses.cs.washington.edu/courses/cse311/26su/ | slides: Y (PDF+PPTX) | https://courses.cs.washington.edu/courses/cse311/26su/calendar/lecturelist.html | Elkin | Propositional/predicate logic, proofs, induction, sets, relations, regex/FSMs, limits of computation |
| 11 | CSE 312 | Foundations of Computing II | Summer 2026 | https://courses.cs.washington.edu/courses/cse312/26su/ | slides: Y (PDF+PPTX) | https://courses.cs.washington.edu/courses/cse312/26su/calendar/calendar.html | Zhou | Combinatorics, discrete probability, random variables, randomness in computing |
| 12 | CSE 332 | Data Structures and Parallelism | Summer 2026 | https://courses.cs.washington.edu/courses/cse332/26su/ | slides: Y (PDF+PPTX) | https://courses.cs.washington.edu/courses/cse332/26su/calendar.html | Whitmeyer | Balanced trees, hashing, heaps, graphs, sorting, asymptotics, parallelism, P vs NP |
| 13 | CSE 351 | The Hardware/Software Interface | Autumn 2025 | https://courses.cs.washington.edu/courses/cse351/25au/ | slides: Y | https://courses.cs.washington.edu/courses/cse351/25au/schedule.html | Hsia, Hu | Number representation, C, x86-64 assembly, memory management, caches, HLL implementation |
| 14 | CSE 333 | Systems Programming | Summer 2026 | https://courses.cs.washington.edu/courses/cse333/26su/ | slides: Y | https://courses.cs.washington.edu/courses/cse333/26su/schedule.html | S. Pardeshi | C/C++ systems programming, explicit memory management, pointers/structs, OS interaction, concurrency |
| 15 | CSE 344 | Introduction to Data Management | Spring 2026 | https://courses.cs.washington.edu/courses/cse344/26sp/ | slides: Y | https://courses.cs.washington.edu/courses/cse344/26sp/calendar/calendar.html | D. Suciu | Relational model, SQL, relational algebra, query optimization, transactions, parallel data processing |

Columns: **Public?** — can an anonymous visitor (no UW NetID) open the
lecture materials of the latest offering. `slides: Y` = slide decks readable;
`notes: Y` = lecture notes readable but decks walled/absent; `N` = login-walled
or empty.

## Caveats

- **CSE 505** (top PL-theory pick): slides are Google Drive links requiring a CSE NetID; every week also links public HTML lecture notes on courses.cs.washington.edu (verified). Read the notes.
- **CSE 507**: cleanest fully-public verification course — slides in a public GitLab repo (lec01–lec15 confirmed).
- **CSE 501**: dead as a public resource — 2020 (Bodik) offering is an empty "content forthcoming" stub; earlier quarters redirect to NetID login. If grad-compiler material is the goal, **CSEP 501** (professional-masters Compiler Construction) is a better public lead — worth a follow-up.
- **CSE 599W / 599F**: genuinely PL/verification-relevant special topics, but their entire course trees now redirect to NetID login — nothing anonymously readable (confirmed course-specific, not a site outage). No recent CSE 599 covers PL/verification; those topics moved to the permanent 505/507 numbers.
- **CSE 341**: newest offering (Summer 2026, Wortzman) is a Google Site whose lecture subpage 404s anonymously; Spring 2026 (Reges) reported instead — public HTML notes, mostly notes not decks.
- **CSE 331**: downloadable files are PDF handouts; presentation decks are Google Slides "view-by-link" — classified notes-only.
- **CSE 344**: Summer 2026 site under construction; Spring 2026 (Suciu) is the latest with confirmed public slide PDFs.
- **CSE 351**: two newest offerings moved lectures behind EdStem; Autumn 2025 is the latest with anonymously downloadable slide PDFs.
- **Summer-2026 courses (311/312/332/333)**: schedules only partially populated mid-summer, but early lectures already have live public PDF/PPTX files (confirmed).
- Panopto video recordings (351/344) require UW login — does not affect the slide answers above.
