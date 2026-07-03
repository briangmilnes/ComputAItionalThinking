# CSE 503 — Software Engineering (Program Analysis) · Vocabulary

Source: UW CSE 503 Software Engineering, Winter 2026 offering (Program Analysis theme), instructor Michael Ernst. Schedule and public slides: https://courses.cs.washington.edu/courses/cse503/26wi/schedule/index.html

Scope note: terms are extracted from the slide decks actually posted at the time of collection — lectures 01–05 (introduction, static vs. dynamic analysis, two abstract-interpretation lectures, and the pluggable-type-checking implementation lecture). Later scheduled topics (symbolic execution, testing/test generation, delta debugging, invariants, program repair, empirical SE, ML for SE) had no slides posted yet; where those appear below, they are named as course topics from the week-by-week overview, not yet developed in detail.

## Course framing and motivation (Lecture 01)

**Software engineering** — The complete process of specifying, designing, developing, analyzing, deploying, and maintaining a software system; more than just writing code.
**Program analysis** — Techniques for answering "what does your program do, and how do you know?" by reasoning about a program's behavior, statically or dynamically.
**Requirements engineering** — The software-engineering task of eliciting, specifying, and managing what a system must do.
**Specification** — A statement of intended program behavior; a central question of program analysis is whether a program implements its specification.
**Refactoring** — Restructuring existing code without changing its external behavior, one of the common software-engineering tasks.
**Unit testing** — Executing a unit of code on chosen inputs and checking outputs; an example dynamic analysis for checking a specification.
**Solver-aided reasoning** — Using a constraint/SMT solver to reason about program properties, e.g. to check a specification.
**Fuzzing** — Generating many (often random or mutated) inputs to a program to find crashes or faults; a dynamic analysis for "what does this binary do?"
**Statistical inference of invariants and models** — Inferring likely program properties or behavioral models from observed executions.
**Context-sensitive type checking** — Type analysis that accounts for the calling context, used e.g. to rank autocompletion suggestions.
**Statistical language model** — A probabilistic model of code/text (e.g. bag-of-words, n-grams) used for tasks like method naming or completion.
**n-gram model** — A language model predicting a token from the previous n−1 tokens; used in ML-for-code tasks.
**Autocompletion** — Suggesting which methods/identifiers to offer next, framed here as a program-analysis problem.
**Automated debugging** — Techniques that localize or explain faults automatically; cited as compute-intensive research infrastructure (e.g. 200,000+ CPU hours).

## Static vs. dynamic analysis and evaluation terminology (Lecture 02)

**Static analysis** — Analysis that reasons about a program without executing it, by building an abstraction of run-time states and reasoning over an abstract domain to prove a property; typically sound but conservative.
**Dynamic analysis** — Analysis that reasons about a program from some actual executions, observing concrete behavior at run time; typically precise but unsound (results may not generalize).
**Conservative analysis** — An analysis that errs on the safe side, accounting for abstracted-away state so it never misses a real property it claims to rule out.
**Code review** — Manual human inspection of code; a form of program analysis.
**Code/design review** — Informal peer examination of code or design.
**Informal walkthrough** — A lightweight, unstructured review of code by developers.
**Formal inspection** — A structured, rigorous code review process, required for many safety-critical systems.
**True positive (TP)** — An alarm that corresponds to a real fault in the ground truth.
**False positive (FP)** — An alarm reported where there is actually no fault.
**True negative (TN)** — An "OK" result where the code is genuinely correct.
**False negative (FN)** — An "OK" result that misses a real fault.
**Alarm (positive)** — An analysis output meaning "program might be wrong"; associated with linting.
**OK (negative)** — An analysis output meaning "program is right."
**Ground truth** — The actual correctness of the code, against which analysis results (TP/FP/TN/FN) are judged.
**Precision** — |TP| / (|TP| + |FP|): the fraction of alarms that are real faults.
**Recall** — |TP| / (|TP| + |FN|): the fraction of real faults that are reported.
**Soundness** — An analysis is sound if it has no false negatives (100% recall); every real fault is reported, so an "OK" is trustworthy.
**Completeness** — An analysis is complete if it has no false positives (100% precision); every alarm is real.
**Concrete domain** — The exact run-time values a program manipulates (e.g. 0, 1, 2, 3, …).
**Abstract domain** — A finite/coarse set of approximations of concrete values (e.g. even, odd) over which a static analysis reasons.
**Accuracy** — A correct estimate; guaranteed by a sound analysis (the abstract result does not contradict reality).
**Accuracy vs. precision** — Accuracy = correct estimate; precision = small (tight) estimate. An analysis can be precise yet inaccurate at the same time.
**Type checking** — A static analysis that rejects operations on wrong types of values (also underlies compiler optimizations).
**Rule/pattern-based analysis** — Static analysis that matches code against bug patterns (e.g. PMD, FindBugs).
**Profiling** — A dynamic analysis measuring run-time or memory behavior of executions.
**Monitoring** — Observing a running program to collect behavioral data.
**Test oracle** — The mechanism that decides whether a test's observed output is correct.
**Effective false positive** — (Google practice) An issue where the developer took no positive action after seeing it — including a real fault the developer didn't understand; the target was under 10% effective false positives.

## Synergy and duality of static & dynamic analysis (Lecture 02, Ernst paper)

**Abstract interpretation** — A framework for sound static analysis that "runs" the program over an abstract domain; typically implemented via dataflow analysis.
**Dataflow analysis** — A static analysis that propagates facts through the program using per-statement transfer functions until a fixed point.
**Transfer function** — A function describing how a program statement transforms the (abstract or concrete) state.
**Aggregation** — Combining static and dynamic analysis by using one analysis's output as input to another (dynamic-then-static or static-then-dynamic).
**Profile-directed compilation** — Using dynamic profiles to guide static optimization (loop unrolling, inlining, dispatch reordering).
**Analogous analyses** — Solving the same analysis problem in a different domain (e.g. static vs. dynamic type checking, or static vs. dynamic slicing).
**Hybrid analysis** — A single new analysis that blends static and dynamic techniques, trading off precision against soundness rather than merely aggregating them.
**Concolic execution** — A fine-grained hybrid combining concrete and symbolic execution.
**Model checking** — Exhaustively (or boundedly) exploring a system's states to verify properties; cited as a hybrid/analysis example.
**Bounded model checking** — Model checking restricted to executions up to a bounded length.
**Program slicing** — Determining which computations could affect a value; done statically via reachability over a dependence graph or dynamically via tracing.
**Dependence graph** — A graph of data/control dependences over which static slicing computes reachability.
**Memory checking** — Finding array-bound violations and uses of uninitialized memory (e.g. Purify, Valgrind dynamically; LCLint statically).
**Instrumentation** — Adding checks/probes to a program (or its memory) to observe behavior at run time; e.g. tagged-memory allocated/initialized bits.
**Type safety** — The property that a program has no memory corruption or operations on wrong types of values; checkable statically or dynamically.
**Specification checking** — Verifying a program against a specification: statically via theorem proving, dynamically via assert statements.
**Theorem proving** — Static, logical proof that a program satisfies its specification.
**Specification generation** — Producing specifications: statically by hand or by abstract interpretation, dynamically by invariant detection.
**Invariant detection** — Dynamically inferring likely invariants by reporting properties left unfalsified across observed executions (Ernst 99 / Daikon-style).
**Coverage** — A dynamic measure of what was exercised: statements, branches, paths, procedure calls, types, or method dispatches.
**k-limiting** — A static abstraction that represents each object reachable within ≤ k pointers precisely and approximates more distant objects together.
**Duality (subsets of behavior)** — The view that static analysis focuses on a subset of data structures and dynamic analysis on a subset of executions, and each subset corresponds to one in the other domain.

## Abstract interpretation, lattices, and fixpoints (Lectures 03–04)

**Termination** — A property of an ideal analysis: the analysis must halt; abstract interpretation sacrifices completeness/precision to guarantee it.
**Liveness analysis** — A dataflow analysis determining whether a variable's value may be used later; enables register reallocation.
**Reachability analysis** — Determining which code can execute; used for dead-code elimination.
**Dead-code elimination** — Removing code that can never execute or whose result is never used.
**Code motion** — Moving computations (e.g. loop-invariant code out of a loop) as an optimization.
**Register allocation** — Assigning variables to machine registers, informed by liveness analysis.
**SSA form (static single assignment)** — An intermediate representation where each variable is assigned exactly once, exposing which definitions are read and enabling simplification.
**Abstraction function (α)** — A map α: C → A from the concrete domain to the abstract domain (e.g. {4} ↦ even, {} ↦ bottom).
**Concretization function (γ)** — A map γ: A → C from the abstract domain back to the set of concrete values it represents.
**Set** — An unordered collection of distinct objects.
**Partially ordered set (poset)** — A set with a binary relation that is reflexive, antisymmetric, and transitive.
**Join semilattice** — A partially ordered set in which every pair has a least upper bound (join).
**Meet semilattice** — A partially ordered set in which every pair has a greatest lower bound (meet).
**Lattice** — A partially ordered set that is both a join semilattice and a meet semilattice.
**Least upper bound (lub / join)** — The smallest abstract element above two elements (e.g. lub(even, odd) = ⊤); used to merge information at control-flow joins.
**Greatest lower bound (glb / meet)** — The largest abstract element below two elements.
**Top (⊤)** — The lattice's greatest element, meaning "unknown / could be anything."
**Bottom (⊥)** — The lattice's least element, meaning "no values / the empty set."
**Powerset domain** — An abstract domain whose elements are sets of concrete values (e.g. the powerset of the integers).
**Interval domain** — An abstract domain approximating a variable by a numeric interval [lo, hi].
**Galois connection** — The correctness condition relating α and γ: for all concrete c, c ≤ γ(α(c)), and both α and γ are order-preserving.
**Order preserving (monotone)** — A function that respects the partial order (x ≤ y ⇒ f(x) ≤ f(y)).
**Sound (safe) approximation** — An abstract result that never contradicts the concrete behavior; "sound approximation" and "safe approximation" are synonyms.
**Consistency (of a transfer function)** — The transfer function fA must agree with the concrete function fC: for c and a = α(c), the concretization of fA(a) must over-approximate fC(c) (c′ ≤ c″).
**Monotonicity requirement** — The lub (join) operator must be monotone for the analysis to be sound; a per-statement transfer function alone need not be.
**Fixed-point iteration (fixpoint)** — Repeatedly applying transfer functions and joins until the abstract state stops changing, giving the analysis result (e.g. for a loop).

## Pluggable type-checking implementation (Lecture 05)

**Pluggable type-checking** — Adding stronger, user-defined types (specifications) to a language so a static checker can reveal errors, with no effect on execution.
**Checker Framework** — A framework (checkerframework.org) for building custom type-checkers for full Java, used in industry and research.
**Type qualifier** — An annotation refining a Java base type (e.g. @Present, @MaybePresent); a type = type qualifier + Java base type.
**Base type** — The underlying Java type to which a qualifier is attached (e.g. Optional<String>).
**Type hierarchy (subtyping)** — The ordering among qualifiers, where lower types have fewer values and more properties (e.g. @Present ≤ @MaybePresent).
**Type rules** — Rules specifying which operations are illegal (e.g. Optional.get() may only be called on a @Present receiver).
**Type introduction** — Rules assigning types to newly created values (e.g. Optional.of(...) yields @Present, ofNullable(...) yields @MaybePresent).
**Flow-sensitive type refinement** — Giving an expression a more specific type after a run-time test (e.g. inside `if (x.isPresent())`, x is @Present).
**Type inference** — Automatically deducing qualifiers so the programmer need not write them all.
**Default qualifier** — The qualifier assumed when none is written (e.g. @MaybePresent for Optional).
**NullPointerException** — The Java run-time error the Optional type and null checkers aim to prevent at compile time.
**Optional<T>** — Java 8 wrapper type whose contents may be present or absent; misuse rules are enforceable by a type system.
**@Present / @MaybePresent** — The Optional Checker's qualifiers distinguishing an Optional guaranteed present from one that may be empty.
