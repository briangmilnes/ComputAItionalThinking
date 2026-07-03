# PLTERMS

A working glossary of programming-language and software-engineering terms as
actually used by computer scientists — semantics, type theory, compilers, and
formal verification. No object-oriented pattern-book vocabulary, no agile
process jargon. Each entry is one precise line stating what the term denotes.

Status: seed list, 50 terms. Curated, not exhaustive; corrections and
additions expected.

## Lambda calculus & evaluation

1. **Free / bound variable** — an occurrence is bound if a λ (or other binder) encloses it; otherwise it is free in the term.
2. **Alpha-conversion** — renaming a bound variable without changing meaning; makes capture-avoidance explicit.
3. **Beta-reduction** — applying a function by substituting the argument for the bound variable: `(λx.e) a → e[a/x]`.
4. **Capture-avoiding substitution** — substitution that renames binders as needed so a free variable is never accidentally captured.
5. **Confluence (Church–Rosser)** — if a term reduces two ways, both results can be reduced to a common term; makes normal forms unique.
6. **Normal form** — a term with no remaining reducible expression (redex); WHNF (weak head normal form) stops at the outermost constructor/λ.
7. **Call-by-value / call-by-name / call-by-need** — evaluate the argument first / substitute the unevaluated argument / substitute but memoize (lazy).
8. **Strictness** — a function is strict in an argument if demanding its result forces that argument; strictness analysis recovers this statically.
9. **Fixed-point combinator** — a term `Y` with `Y f = f (Y f)`, giving recursion without a named self-reference.
10. **Continuation-passing style (CPS)** — a program form where control flow is made explicit as a function (the continuation) called with each result.

## Types

11. **Parametric polymorphism** — a single definition typed uniformly over all types (`∀α. α → α`); no runtime type inspection.
12. **Hindley–Milner** — the type system with principal types and complete inference via unification (the ML/let-polymorphism core).
13. **Unification** — solving a set of type equations for a most general substitution; the engine of type inference.
14. **Principal type** — the most general type of a term, of which every other valid type is an instance.
15. **Algebraic data type** — a type built from sums (variants) and products (fields); pattern matching is its elimination form.
16. **Subtyping & variance** — `S <: T` lets an `S` stand in for a `T`; type constructors are covariant, contravariant, or invariant in each parameter.
17. **Type class** — a set of overloaded operations indexed by type, resolved by dictionary passing (Rust traits are the same idea).
18. **Higher-kinded type** — a type parameterized by a type constructor (`F[_]`), not just by a type.
19. **Existential type** — a type hiding a witness (`∃α. …`); the basis of abstract data types and closures-as-values.
20. **Rank-N polymorphism** — quantifiers nested to the left of arrows, so a function can take a still-polymorphic function as an argument.
21. **Dependent type** — a type that mentions a value (`Vec n`), letting types express arbitrary propositions about data.
22. **Refinement type** — a base type carved down by a predicate (`{x:Int | x > 0}`), checked by an SMT solver.
23. **Gradual typing** — a discipline mixing static and dynamic checking with a sound boundary (casts/contracts) between them.
24. **Linear / affine type** — a value that must be used exactly once (linear) or at most once (affine); the theory behind ownership.
25. **Progress & preservation** — the two lemmas of type soundness: a well-typed term is not stuck, and reduction preserves its type.

## Semantics & logic

26. **Operational semantics** — meaning given as a reduction relation; small-step (one redex at a time) or big-step (term to final value).
27. **Denotational semantics** — meaning given by mapping each term to a mathematical object (e.g. a domain element).
28. **Domain / least fixed point** — a partial order with limits in which recursive definitions are solved as least fixed points.
29. **Hoare triple** — `{P} c {Q}`: if precondition `P` holds and `c` terminates, postcondition `Q` holds afterward.
30. **Weakest precondition** — `wp(c, Q)`, the least-restrictive `P` guaranteeing `Q` after `c`; the basis of verification-condition generation.
31. **Loop invariant** — an assertion true on every entry to a loop's body; the inductive hypothesis that discharges the loop.
32. **Separation logic** — a Hoare logic with a separating conjunction `P * Q` for disjoint heap regions; scales reasoning to pointers and aliasing.
33. **Curry–Howard correspondence** — propositions are types and proofs are programs; type checking is proof checking.
34. **Bisimulation** — a relation witnessing that two systems match each other's transitions step for step; the standard notion of behavioral equivalence.
35. **Coinduction** — the dual of induction: reasoning about infinite/ongoing structures (streams, processes) by greatest fixed points.
36. **Totality / termination** — a function is total if it returns on all inputs; termination is the halting side, checked by a well-founded measure.

## Analysis & compilation

37. **Abstract interpretation** — sound static analysis by executing a program over an abstract domain that over-approximates real values.
38. **Dataflow analysis** — computing facts (liveness, reaching definitions) at each program point as a fixpoint over the control-flow graph.
39. **Control-flow graph** — basic blocks as nodes, possible transfers as edges; the substrate for most analyses.
40. **Static single assignment (SSA)** — an IR where each variable is assigned once; φ-nodes merge values at join points.
41. **Dominator** — node `d` dominates `n` if every path to `n` goes through `d`; the frame for loop detection and SSA construction.
42. **Register allocation** — assigning unlimited virtual registers to a finite physical set, classically as graph coloring of an interference graph.
43. **Escape analysis** — determining whether a value outlives its creating scope; if not, it can be stack-allocated or unboxed.
44. **Partial evaluation** — specializing a program to known (static) inputs, producing a residual program in the remaining (dynamic) inputs.
45. **Defunctionalization** — replacing higher-order functions with a first-order data type of closures plus an apply function.
46. **Macro hygiene** — a macro expansion that cannot capture or be captured by identifiers at the use site; names respect lexical scope.

## Verification & reasoning tools

47. **Decision procedure / SMT** — an algorithm deciding satisfiability in a theory (arithmetic, arrays, bit-vectors); SMT solvers combine several.
48. **Model checking** — exhaustively (often symbolically) checking that a finite-state system satisfies a temporal-logic property.
49. **Symbolic execution** — running a program on symbolic inputs, accumulating path conditions to reason about many concrete runs at once.
50. **Formal verification** — a machine-checked proof that an implementation meets a specification (in this project: Verus proving a Rust spec).
