# UW CSE — Vocabulary Term Counts

Number of terms extracted into each `products/UWCSE/<course>/vocabulary.md`.
Counts are the number of headword entries (`**term** — …` lines) in each file.
Ordered by PL/SE relevance; the intro sequence (121/122/123) is appended last.

| # | Course | Title | Terms |
|---|--------|-------|------:|
| 1 | CSE 505 | Concepts of Programming Languages | 134 |
| 2 | CSE 507 | Computer-Aided Reasoning for Software | 125 |
| 3 | CSE 341 | Programming Languages | 137 |
| 4 | CSE 401 | Introduction to Compiler Construction | 163 |
| 5 | CSE 503 | Software Engineering (Program Analysis) | 103 |
| 6 | CSE 331 | Software Design & Implementation | 96 |
| 7 | CSE 311 | Foundations of Computing I | 148 |
| 8 | CSE 312 | Foundations of Computing II | 87 |
| 9 | CSE 332 | Data Structures and Parallelism | 145 |
| 10 | CSE 351 | The Hardware/Software Interface | 168 |
| 11 | CSE 333 | Systems Programming | 218 |
| 12 | CSE 344 | Introduction to Data Management | 142 |
| 13 | CSE 121 | Intro to Computer Programming I | 81 |
| 14 | CSE 122 | Intro to Computer Programming II | 95 |
| 15 | CSE 123 | Intro to Computer Programming III | 100 |
| — | **TOTALS** | **15 courses** | **1942** |

Columns: **Course/Title** — the UW CSE course. **Terms** — headword entries in
that course's `vocabulary.md`. CSE 121's live offerings are EdStem-walled, so it
was extracted from the public CSE 142 (Building Java Programs) archive; see that
file's source line.

The `vocabulary.md` in this directory is not a concatenation of these — it is a
single deduplicated glossary merging all fifteen into **1409** unique concepts
(one entry per distinct concept, flat and alphabetical).
