# CMU SCS — Vocabulary Term Counts

Number of terms extracted into each `products/CMUSCS/<course>/vocabulary.md`.
Counts are the number of headword entries (`**term** — …` lines) in each file.
Ordered by PL/type-theory/verification/SE relevance; the intro courses are last.

| # | Course | Title | Terms |
|---|--------|-------|------:|
| 1 | 15-312 | Foundations of Programming Languages | 107 |
| 2 | 15-814 | Types and Programming Languages | 121 |
| 3 | 15-812 | Programming Language Semantics | 108 |
| 4 | 15-150 | Principles of Functional Programming | 159 |
| 5 | 15-317 | Constructive Logic | 151 |
| 6 | 15-816 | Substructural Logics | 118 |
| 7 | 15-819 | Computational Type Theory | 86 |
| 8 | 15-414 | Bug Catching: Automated Program Verification | 130 |
| 9 | 15-424 | Logical Foundations of Cyber-Physical Systems | 117 |
| 10 | 17-355 | Program Analysis | 153 |
| 11 | 15-411 | Compiler Design | 124 |
| 12 | 15-745 | Optimizing Compilers | 144 |
| 13 | 17-313 | Foundations of Software Engineering | 119 |
| 14 | 17-654 | Analysis of Software Artifacts | 138 |
| 15 | 15-213 | Introduction to Computer Systems (CSAPP) | 252 |
| 16 | 15-110 | Principles of Computing | 84 |
| 17 | 15-112 | Fundamentals of Programming and Computer Science | 153 |
| — | **TOTALS** | **17 courses** | **2264** |

Columns: **Course/Title** — the CMU SCS course. **Terms** — headword entries in
that course's `vocabulary.md`.

The `vocabulary.md` in this directory is not a concatenation of these — it is a
single deduplicated glossary merging all seventeen into **1645** unique concepts
(one entry per distinct concept, flat and alphabetical).

Note: 15-213's count (252) reflects grouped sub-term headwords (e.g. "cold /
capacity / conflict miss" under one entry), so its raw headword count runs high
relative to its ~200 distinct concepts.
