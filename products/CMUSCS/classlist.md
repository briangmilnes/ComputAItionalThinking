# CMU SCS — Class List (PL / Type Theory / Logic / Verification / SE)

Carnegie Mellon University, School of Computer Science. Courses relevant to
programming languages, type theory, logic, semantics, formal verification,
program analysis, compilers, and software engineering. CMU hosts most course
pages openly on `*.cs.cmu.edu`. "Latest offering" = the most recent quarter
with a live, real page; slide/notes availability was confirmed by opening the
actual pages anonymously (no login), except row 1 (see Notes).

## Readable-now box — latest offering, no login required

```
┌──────────────────────────────────────────────────────────────────────────┐
│  PUBLIC SLIDES (last offering)          PUBLIC NOTES / LECTURE-BOOKS       │
│  ─────────────────────────────          ────────────────────────────────  │
│  15-814  Types & Programming Langs      15-312  Foundations of PL  (PFPL)  │
│  15-414  Bug Catching / Verification    15-812  PL Semantics              │
│  15-424  Logical Found. of CPS          15-150  Functional Programming     │
│  17-355  Program Analysis               15-317  Constructive Logic         │
│  15-745  Optimizing Compilers           15-816  Substructural Logics       │
│  17-313  Foundations of Software Eng    15-819  Computational Type Theory   │
│  15-213  Intro to Computer Systems      15-411  Compiler Design            │
│  17-654  Analysis of SW Artifacts('08)                                     │
└──────────────────────────────────────────────────────────────────────────┘
  CMU's PL/logic tradition (Harper, Pfenning, Crary, Platzer, Aldrich) rests
  on freely published lecture-note books — notably Harper's PFPL — so "notes"
  here often means a full typeset book, not scratch handouts.
```

## Full list (most-relevant-to-PL/verification/type-theory/logic first)

| # | Course | Title | Latest | Homepage | Public? | Schedule/slides URL | Instructor | Covers |
|---|--------|-------|--------|----------|---------|---------------------|-----------|--------|
| 1 | 15-312 | Foundations of Programming Languages | F'23 (Qatar); Harper frozen S'18 | https://web2.qatar.cmu.edu/cs/15312/ | notes: Y (unconfirmed click-through) | homepage `#schedule` | G. Reis (F23); hist. Harper/Crary | PL design, semantics, implementation via type theory in SML; based on Harper's *PFPL* |
| 2 | 15-814 | Types and Programming Languages | F'24 | https://www.cs.cmu.edu/~janh/courses/814/24/ | slides: Y | https://www.cs.cmu.edu/~janh/courses/814/24/schedule/ | J. Hoffmann | Lambda calculus, System T/F, PCF, recursive/dynamic types, parametric polymorphism, session/substructural types |
| 3 | 15-812 | Programming Language Semantics | S'24 catalog; materials S'18 | https://symbolaris.com/course/pls18.html | notes: Y | https://symbolaris.com/course/pls18-schedule.html | A. Platzer (S18) | Denotational/operational/axiomatic semantics; dynamic & Hoare logic, uniform substitution, soundness/completeness |
| 4 | 15-150 | Principles of Functional Programming | Su'26 | https://www.cs.cmu.edu/~15150/ | notes: Y (HTML + slide PDFs) | https://www.cs.cmu.edu/~15150/lect.html | — | FP in SML; types, induction, correctness proofs, work/span parallel cost analysis |
| 5 | 15-317 | Constructive Logic | S'23 (Pfenning) | http://www.cs.cmu.edu/~fp/courses/15317-s23/ | notes: Y | http://www.cs.cmu.edu/~fp/courses/15317-s23/schedule.html | F. Pfenning | Intuitionistic logic, natural deduction, proofs-as-programs, sequent calculus/cut elimination, logic programming |
| 6 | 15-816 | Substructural Logics | F'16 | https://www.cs.cmu.edu/~fp/courses/15816-f16/ | notes: Y (+ combined book PDF) | https://www.cs.cmu.edu/~fp/courses/15816-f16/schedule.html | F. Pfenning | Linear/ordered/affine logics, focusing, structural rules, classical linear logic, applications to computation |
| 7 | 15-819 | Advanced Topics in PL Theory (Computational Type Theory) | S'21 | http://www.cs.cmu.edu/~rwh/courses/chtt/ | notes: Y | http://www.cs.cmu.edu/~rwh/courses/chtt/#schedule | R. Harper | Nuprl-style computational type theory via logical relations / PER semantics, up to dependent types |
| 8 | 15-414 (/614) | Bug Catching: Automated Program Verification and Testing | F'25 | https://www.cs.cmu.edu/~15414/ | slides: Y (~18/20) | https://www.cs.cmu.edu/~15414/schedule.html | M. Fredrikson | Deductive verification (Why3), dynamic logic, model checking (CTL), proving programs vs. a spec |
| 9 | 15-424 (/624/824) | Logical Foundations of Cyber-Physical Systems | F'22 | https://www.cs.cmu.edu/~smitsch/courses/lfcps22/index.html | slides: Y (deck zip) | https://lfcps.org/lfcps/lfcps-slides.zip | S. Mitsch (orig. Platzer) | Differential dynamic logic (dL), hybrid programs, proving CPS safety with KeYmaera X |
| 10 | 17-355 (/665/819) | Program Analysis | S'25 | https://cmu-program-analysis.github.io/2025/ | slides: Y | https://cmu-program-analysis.github.io/2025/#schedule | R. Padhye (Aldrich '17–'19) | Dataflow, abstract interpretation, alias/interprocedural analysis, symbolic execution; build real analysis tools |
| 11 | 15-411 (/611) | Compiler Design | F'20 | https://www.cs.cmu.edu/afs/cs/academic/class/15411-f20/www/ | notes: Y | .../15411-f20/www/schedule.html | S. Goldstein | Build a full optimizing compiler: parsing, type-check, IR, SSA, register allocation, optimization, codegen |
| 12 | 15-745 | Optimizing Compilers | F'25 | https://www.cs.cmu.edu/~15745/www/ | slides: Y | https://www.cs.cmu.edu/afs/cs/academic/class/15745-f25/www/lectures.html | T. Mowry | Data-flow analysis, SSA, loop/pointer analysis, machine-level optimizations |
| 13 | 17-313 (/627; ex-15-313) | Foundations of Software Engineering | S'26 | https://cmu-313.github.io/ | slides: Y | https://cmu-313.github.io/ | M. Hilton, J. Sunshine | Modern SE practice: requirements, architecture, testing, process, teamwork, deployment |
| 14 | 17-654 (/754) | Analysis of Software Artifacts | S'08 (archive) | https://www.cs.cmu.edu/~aldrich/courses/654-sp08/ | slides: Y (archived) | https://www.cs.cmu.edu/~aldrich/courses/654-sp08/ | J. Aldrich (2008) | Static analysis, model checking, testing metrics, object modeling — MSE predecessor to 17-355 |
| 15 | 15-213 (/503) | Introduction to Computer Systems (CSAPP) | Su'26 | https://www.cs.cmu.edu/~213/ | slides: Y | http://www.cs.cmu.edu/~213/schedule.html | B. Railing | Programmer's view of systems: data representation, machine code, memory hierarchy, linking, virtual memory, concurrency |

Columns: **Public?** — whether an anonymous visitor can open the latest
offering's materials (`slides: Y` = decks; `notes: Y` = notes/lecture-book PDFs;
`N` = walled).

## Notes

- **15-312 (row 1)** — the one soft spot: latest live homepage is Fall 2023 (Qatar, Reis); its `#schedule` table didn't render through fetch, so a notes-PDF click-through was not confirmed open. Solid fallbacks: Harper's Pittsburgh page (https://www.andrew.cmu.edu/course/15-312/, frozen S'18) and Crary's S'05 (https://www.cs.cmu.edu/~crary/312/, public note PDFs). The course rests on Harper's freely published *PFPL*.
- **15-814 (row 2)** — Harper's own F'21 version (https://www.cs.cmu.edu/~fp/courses/15814-f21/) is also public if you want his framing.
- **15-812 (row 3)** — still catalog-listed (S'24) but no dedicated 2024 homepage; newest real materials site is Platzer's S'18 (note PDFs on lfcps.org, confirmed open).
- **15-317 (row 5)** — a newer F'24 Qatar offering (Reis) exists but open PDF access wasn't confirmed; Pfenning S'23 has confirmed-open per-lecture PDFs.
- **15-819 (row 7)** — rotating "advanced topics" number; title changes each offering. Latest with a confirmed live page + public notes is Harper's Computational Type Theory (S'21). Also live: Harper's Homotopy Type Theory (F'13), Hoffmann's Resource Analysis (ra19/ra20).
- **15-411 (row 11)** — F'20 (Goldstein) is the newest offering with a public course-hosted notes page; AFS `/www/` PDFs are world-readable (verified). Newer terms run on private Canvas.
- **15-424 (row 9)** — slides public as a single companion-site zip (lfcps.org) plus lecture videos, not per-lecture PDFs. Platzer left CMU; F'22 (Mitsch) is the last CMU instance.
- **17-654 (row 14)** — distinct MSE course, still catalog-listed, but only Aldrich's S'08 archive is live; subject matter continued by the 17-355 line.
- Everything marked **Y** except row 1 was verified by fetching a materials PDF/zip or schedule page and seeing it open without a login.
