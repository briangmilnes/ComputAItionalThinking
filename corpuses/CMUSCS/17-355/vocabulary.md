# 17-355 — Program Analysis · Vocabulary

Source: CMU 17-355 / 17-665 / 17-819 Program Analysis, 2025 offering (Rohan Padhye; materials developed with Jonathan Aldrich and Claire Le Goues). Lecture slides: https://cmu-program-analysis.github.io/2025/ (lecture dates on the slides run Aug–Nov 2025). Terms are ordered by course progression and grounded in the lecture slide text.

## Foundations and motivation (Lecture 1)

**Program analysis** — The systematic examination of a program to determine its properties. Requires precise program representations plus tractable, systematic ways to reason over those representations.

**Static analysis** — Reasoning about program behavior without executing it (tools that inspect source/bytecode). Contrasted with dynamic techniques; also includes inference (statistical/ML models of code).

**Dynamic analysis** — Reasoning based on direct execution of code on test data in a controlled environment, with tools extracting data from the test runs.

**Rice's Theorem** — Any nontrivial property about the language recognized by a Turing machine is undecidable. This is why every interesting analysis must be approximate and cannot be both sound and complete in general.

**Over-approximation** — An analysis that reports all potential defects, so it has no false negatives but is subject to false positives.

**Under-approximation** — An analysis in which every reported defect is a real defect, so it has no false positives but is subject to false negatives.

**False positive / false negative** — A false positive is an error reported where no error exists; a false negative is a real error the analysis fails to report. (Contrasted with true positives and true negatives.)

**Soundness** — An analysis is sound if every claim it makes is true. Whether soundness means over- or under-approximation depends on context (verification tools vs. bug-finding tools).

**Completeness** — An analysis is complete if it makes every true claim. Sound + complete is impossible in general (Rice's theorem), so practical tools aim for one or the other.

**Abstraction** — Eliding the details of a specific implementation to capture only the semantically relevant details and ignore the rest; the core idea underlying every analysis in the course.

## Syntax and semantics (Lecture 2)

**Concrete syntax** — The rules by which programs are expressed as strings of characters, handled by finite automata, context-free grammars, and lexer/parser generators.

**Abstract syntax** — A subset of the parse tree that keeps only statements, expressions, and their operands, ignoring parentheses, semicolons, and keywords.

**Abstract syntax tree (AST)** — A tree representation of source code based on the language grammar; the substrate for simple analyses.

**AST walking** — A simple static analysis that traverses the AST looking for nodes of a particular type and checks the node's neighborhood for a pattern; a "glorified grep" aware of syntax but not semantics.

**Visitor pattern** — A common AST-walker architecture: a Visitor class has a `visitX` method per node type; the default descends the tree, and overriding `visitX` does something interesting for node type X.

**CodeQL** — A query language for code, developed by GitHub, supporting many languages with a library of common patterns; an example of a declarative/query-based approach beyond hand-written AST walkers.

**WHILE language** — The course's demonstration language: assignment, if-then-else, while loops, integer-only variables, and arithmetic/relational expressions with no explicit I/O.

**Operational semantics** — A definition of meaning that specifies how expressions and statements are evaluated depending on their form ("how would I execute this?").

**Axiomatic semantics** — A definition of meaning in terms of assertions about what is true after execution; the basis for Hoare-logic verification.

**Denotational semantics** — A definition of meaning as the mathematical function a program computes.

**Normal form / value** — An expression that does not evaluate any further (e.g. the literals 0, 1, 2, …).

**Judgment** — A formal claim such as `a ⇓ n` ("expression a evaluates to value n"), viewed as a logical proposition provable from the semantics.

**Inference rule** — A notation for defining semantics: if all premises above the line are provable, the conclusion below the line holds.

**Derivation tree** — A proof built from axioms and inference rules whose conclusion is the judgment being established.

**Big-step semantics** — Evaluation-to-normal-form semantics using the ⇓ judgment (`E, a ⇓ n`); suggests a recursive AST interpreter but cannot model intermediate states or non-terminating loops.

**Small-step (structural) operational semantics** — Semantics in which each step is an atomic rewrite (`E, S → ⟨E′, S′⟩`); execution is a possibly-infinite sequence of steps, with `→*` for multi-step. Needed to model intermediate states and concurrency.

**State / environment (E)** — A function `Var → Z` giving the value of each integer variable at a moment during execution.

**Structural induction** — A proof technique that proves a property for all syntactic terms (or all derivations) by covering base cases and inductive cases over the structure; used to prove properties like determinism of WHILE.

## Program representation and dataflow basics (Lecture 3)

**WHILE3ADDR** — A three-address-code intermediate representation of WHILE, simpler and more uniform than the AST, with instructions like `x := y op z`, `goto n`, and `if x opr 0 goto n`; commonly used by compilers.

**Intermediate representation (IR)** — A program representation (here WHILE3ADDR) that is more regular than surface syntax and easier to analyze; AST-to-3-address translation is straightforward.

**Control-flow graph (CFG)** — A graph whose nodes are statements and whose edges connect statements that can execute consecutively; typically weakly connected with one entry and one exit node.

**Dataflow analysis** — Computes universal properties about program state at statically identifiable program points, reasoning about all possible executions (always/never/maybe) rather than specific paths.

**Program point** — A statically identifiable location in the program (e.g. "line 7", "before/after an instruction") at which the analysis records an abstract state.

**Zero analysis** — The course's introductory dataflow analysis, tracking for each variable whether it is definitely zero (Z), definitely non-zero (N), or unknown (⊤); motivates division-by-zero checking.

**Flow function** — A function mapping an abstract state σ to a new abstract state across an instruction I (`f_I`); the "abstract semantics" of that instruction.

## Lattices and the dataflow framework (Lectures 4–6)

**Partial order (⊑)** — The ordering on abstract values where `l1 ⊑ l2` means l1 is at least as precise as l2.

**Join / least upper bound (⊔)** — The "most precise generalization" of two abstract values; a set L is a join-semilattice if `l1 ⊔ l2` always exists and is unique.

**Top (⊤)** — The maximal (least precise) lattice element; `l ⊔ ⊤ = ⊤`.

**Bottom (⊥)** — The minimal lattice element, used as the initial value at un-analyzed points; `⊥ ⊑ l` and `⊥ ⊔ l = l` for all l.

**Complete lattice** — A lattice with both ⊥ and ⊤ defined; lifting a complete lattice (e.g. from values to `Var → L` maps) yields another complete lattice.

**Lifted lattice** — A per-variable lattice built by mapping each variable to a value lattice, with join and ⊑ computed pointwise across variables.

**Fixed point** — A tuple of abstract states `(σ0, …, σn)` unchanged by the whole-program flow function F, i.e. `Σ = F(Σ)`; the solution a dataflow analysis converges to.

**Correctness theorem (dataflow)** — If a dataflow analysis is well designed (finite-height lattice, monotone flow functions), then any fixed point of the analysis is sound.

**Kildall's algorithm / worklist algorithm** — The iterative dataflow solver [Kildall '73, Kam & Ullman '76]: maintain a worklist of CFG nodes, apply flow functions and joins, and re-enqueue successors until a fixed point is reached.

**Worklist processing order** — Any order is valid; some orders are faster in practice. Topological sorts and reverse postorder explore loops inside-out and are preferred.

**Monotonicity** — A flow function is monotone if it preserves the ordering (`σ ⊑ σ′ ⇒ f(σ) ⊑ f(σ′)`); required for termination and for successive whole-program applications to form an ascending chain.

**Ascending chain** — The increasing sequence of states `Σ ⊑ F(Σ) ⊑ F(F(Σ)) ⊑ …` produced by iterating the whole-program flow function from ⊥.

**Lattice height** — The length of the longest ascending chain in a lattice; a finite height guarantees the worklist algorithm terminates.

**Complexity of Kildall's algorithm** — Runs in `O(c·e + n·h)` (roughly), where c is per-node flow-function cost, e edges, n nodes, and h lattice height; termination follows from finite composite-lattice height.

## Classic dataflow analyses (Lecture 5)

**Integer sign analysis** — An extension of zero analysis tracking whether each variable is <0, =0, >0 (and refinements like ≤0, ≥0, ≠0) or unknown.

**Constant propagation** — A dataflow analysis tracking the exact constant value of a variable at a program point when it is constant across all paths (e.g. "x is 42 at line 10").

**Reaching definitions** — A forward, set-based analysis computing which definitions of a variable may reach a given program point; underlies compiler def-use chains.

**Def-use chains** — Links from each definition of a variable to the uses it may reach, computed from reaching definitions.

**Live variables** — A backward, set-based analysis computing which variables may be used in the future (are "live") at a program point; flow functions map from out to in.

**Available expressions** — One of the classic dataflow analyses listed by the course (computing expressions already computed and not since invalidated).

**Very busy expressions** — One of the classic dataflow analyses listed by the course (expressions guaranteed to be evaluated on every path from a point before any operand is redefined).

**Forward vs. backward analysis** — Forward analyses propagate information in execution order (e.g. reaching definitions, constant propagation); backward analyses propagate against execution order (e.g. live variables).

## Soundness and precision (Lecture 7)

**Program trace** — A concrete sequence of configurations `⟨E, pc⟩` produced by executing the program from an initial state; the ground truth an analysis is proven sound against.

**Local soundness** — The property that each flow function correctly over-approximates the concrete effect of its instruction; local soundness plus a fixed point gives global soundness.

**Merge-over-all-paths (MOP)** — The ideal dataflow solution obtained by joining the results of every path reaching a program point.

**Least fixed point (LFP)** — The solution the worklist algorithm actually computes; for monotone frameworks LFP ⊑ MOP, and they coincide when flow functions are distributive.

**Optimal precision (OPT)** — The most precise sound answer at a program point (only over feasible executions); OPT ⊑ MOP ⊑ LFP in the relative-precision ordering, since each abstraction loses precision.

## Interprocedural analysis (Lectures 8–9)

**Intraprocedural analysis** — Analyzing one function body in isolation via its own CFG; models separate compilation but cannot reason across calls.

**Interprocedural analysis** — Analysis that reasons across function-call boundaries, needed for precision when facts flow between caller and callee.

**Interprocedural CFG (ICFG)** — A single CFG connecting call sites to callee entries and returns, with call/return/local flow functions; suffers imprecision by merging information across call sites and modeling infeasible call/return pairs.

**Infeasible path** — A path through the ICFG that cannot occur in any real execution (e.g. entering a function from one call site and returning to a different one); a source of imprecision to eliminate.

**Context sensitivity** — Keeping separate analysis results for a function called in different statically definable "contexts" so information is not merged across call sites.

**Call-string context** — A context represented by the sequence of call sites on the stack (e.g. `[6]`, `[3,11]`); k-limited call strings truncate this to the last k calls to keep the set finite.

**Value context** — A context represented by the incoming abstract state (the argument values) to a function; gives the same precision as arbitrary-length call strings and is guaranteed to terminate, though still expensive.

**k-limiting** — Bounding context length (k-call-strings or k-value-contexts) to keep the number of contexts finite and analysis tractable.

**Worklist of contexts** — The interprocedural solver that iterates over (function, context) pairs, propagating results to callers; complexity `O(C·N·H) = O(E·H)` over the context-sensitive call graph.

**IFDS framework** — A more efficient interprocedural algorithm available when flow functions are distributive; mentioned as the efficient alternative to general context-sensitive analysis.

## Pointer analysis (Lecture 10)

**Pointer analysis** — Analysis of what memory locations pointers may reference; abstract values are alias pairs or points-to relations, with may and must versions, and it is expensive (lattice is `2^(Var×Var)`) and almost always interprocedural.

**Alias analysis** — Computes which pairs of variables `(x, y)` may refer to the same location.

**Points-to analysis** — Computes the set of locations each pointer may point to (`p → q`); the dual formulation of alias information.

**May vs. must analysis** — May-points-to over-approximates possible targets (used for soundness of "could alias"); must-points-to under-approximates guaranteed targets and enables strong updates.

**Strong update** — Overwriting a variable's points-to set when the target is known exactly (a must relationship), versus a weak update that only adds to the set under may-information.

**Andersen's analysis** — A flow-insensitive, subset-constraint (inclusion-based) points-to analysis: emit one subset constraint per instruction over abstract locations and points-to sets, then invoke a constraint solver; worst-case `O(n³)`.

**Flow-insensitive analysis** — An analysis that considers only the instructions (CFG nodes) and ignores control-flow edges/order, trading precision for tractability (as in Andersen's).

**Steensgaard's analysis** — A near-linear unification-based points-to analysis that merges any two locations a pointer might reference into one equivalence class (points-to "sets" become singletons), implemented with union-find in `O(n·α(n))` time and linear space; scales to millions of lines.

**Union-find** — The data structure used by Steensgaard's analysis to maintain equivalence classes of abstract locations, with near-constant `O(α(n))` per operation.

**Field sensitivity** — Distinguishing different object fields (`.f` vs `.g`) rather than treating every field dereference like a generic `*`; improves points-to precision.

**Dynamic memory allocation (allocation-site abstraction)** — Modeling heap objects by their allocation site so `new` expressions get distinct abstract locations in pointer analysis.

**Dynamic dispatch** — Object-oriented method calls whose target depends on the runtime type; pointer/points-to information is needed to resolve them for building call graphs.

## Verification with Hoare logic (Lectures 12–13)

**Assertion** — A statement in a logic (e.g. first-order logic) about program values, used as the language of axiomatic semantics.

**Hoare triple** — `{P} S {Q}`: if precondition P holds and statement S terminates, then postcondition Q holds afterward.

**Precondition / postcondition** — P is what must hold before S executes; Q is what is guaranteed after S executes.

**Partial correctness** — `{P} S {Q}` guarantees Q only if S terminates; termination is not asserted.

**Total correctness** — Written `[P] S [Q]`; additionally guarantees that S terminates.

**Strongest postcondition** — The most precise valid postcondition Q such that any other valid postcondition Q′ is implied by it (`Q ⇒ Q′`); the most useful result of running S from P.

**Weakest precondition (wp)** — The most general precondition `wp(S, Q)` under which S establishes Q; `{P} S {Q}` holds iff `P ⇒ wp(S, Q)`.

**Assignment rule** — `wp(x := e, P) = [e/x]P`: substitute e for x in the postcondition.

**Sequence rule** — `wp(S;T, Q) = wp(S, wp(T, Q))`: compute weakest preconditions right to left.

**Conditional rule** — `wp(if B then S else T, Q) = (B ⇒ wp(S,Q)) ∧ (¬B ⇒ wp(T,Q))`.

**Loop invariant** — An assertion Inv that holds before and after every loop iteration; must be implied by the precondition, preserved by the body (`{Inv ∧ B} S {Inv}`), and together with the exit condition imply the postcondition.

**Proof obligation** — Each of the discharge conditions generated for a Hoare-logic proof (invariant initially true, invariant maintained, invariant plus exit implies postcondition).

**Verification condition generation (VCGen)** — Mechanically producing a single logical formula whose validity implies the correctness of the whole program, making axiomatic semantics practical and solvable by SAT/SMT solvers.

## Symbolic and concolic execution (Lectures 14–15)

**Symbolic execution** — Executing a program on symbolic (rather than concrete) inputs, building formulas over fresh symbolic variables; a generalization of testing that explores paths simultaneously.

**Path condition / path constraint** — The conjunction of branch conditions accumulated along an execution path; solving it yields a concrete test input (witness) that drives that path.

**Symbolic execution tree** — The tree of feasible paths explored, branching at each conditional into the true/false path constraints.

**Dynamic symbolic execution (DSE)** — Symbolic execution that follows concrete executions and forks at branches; sound-but-incomplete for bug finding, and can bound loops (k-limited).

**Static symbolic execution (SSE)** — Symbolic execution over the program without concrete runs, better able to use loop invariants for verification.

**Bounded / k-limited exploration** — Exploring only paths up to a bound (e.g. loops unrolled k < 3 times); unsound for verification but sound-but-incomplete for bug finding under DSE.

**Bugs as reachability** — Converting error checks into reachability problems (`assert(p) → if(!p) ERROR`, null/array-bounds checks), so bug finding becomes finding inputs that reach an ERROR.

**Concolic execution** — Concrete + symbolic execution: instrument the program to collect path constraints during a concrete run, then negate the last clause and solve to derive the next input, repeating; keeps a concrete input in parallel so unmodelable operations (external functions, hard theories) can be replaced by concrete values (a sound under-approximation).

**Concolic tools** — Named systems including DART (Directed Automated Random Testing), CUTE (Concolic Unit Testing Engine), KLEE, SAGE (whitebox fuzzing), Java PathFinder, Angr, PyExZ3, and Jalangi.

## SAT and SMT (Lecture 16)

**Satisfiability (SAT)** — Determining whether a Boolean formula has a satisfying assignment; validity is reduced to satisfiability by checking whether the negation is unsatisfiable. SAT is NP-complete (Cook-Levin).

**Conjunctive normal form (CNF)** — A conjunction of disjunctions of (possibly negated) variables; formulas are converted to CNF using De Morgan's, double-negative, and distributive laws before SAT solving.

**Satisfying assignment / model** — A map from formula variables to Boolean values that makes the formula true; a formula with none is unsatisfiable.

**DPLL** — The Davis-Putnam-Logemann-Loveland SAT algorithm: uses unit propagation, pure literal elimination, and guessing with backtracking; still exponential in the worst case but efficient in practice.

**Unit propagation** — When a clause reduces to a single literal, that literal must be assigned to satisfy the clause; a core DPLL step.

**Pure literal elimination** — A variable appearing with only one polarity can be set to satisfy all its clauses; a DPLL optimization (dropped in DPLL(T)).

**Satisfiability Modulo Theories (SMT)** — Extending SAT to formulas with theories such as integer/real arithmetic, arrays, and uninterpreted functions; solves theories separately and combines them with SAT.

**Theory of uninterpreted functions** — A theory treating `f` as an arbitrary mathematical function, reasoned about via congruence closure.

**Nelson-Oppen combination** — The method that combines decision procedures for different theories by having them communicate through equalities over shared variables.

**DPLL(T)** — The DPLL variant used by SMT solvers: T stands for Theory; it drops pure literal elimination and supports adding theory-learned clauses to the formula.

**Fourier-Motzkin elimination** — A method for solving systems of linear inequalities by eliminating a variable, replacing `A ≤ x ∧ x ≤ B` with `A ≤ B`.

**SMT-LIB / Z3** — The standard input format for SMT solvers and Z3, the widely used SMT solver, as the modern tooling for these formulas.

## Fuzzing and mutation analysis (Lecture 17)

**Fuzz testing** — Generating inputs (often randomly) until the program crashes, to find bugs; the 1990 study found crashes across many Unix utilities.

**Mutation-based fuzzing** — Generating new inputs by randomly mutating seed inputs (bit/byte flips, chunk insert/delete, interesting values) rather than pure random data; e.g. Radamsa, zzuf.

**Code coverage** — A measure of how much of the program (lines, statements, branches, paths) the tests exercise; used as feedback and as a (imperfect) test-effectiveness metric.

**Coverage-guided (grey-box) fuzzing** — Fuzzing that instruments the program for coverage and keeps mutated inputs that reach new branch coverage; exemplified by AFL and ClusterFuzz.

**Oracle** — The mechanism that decides whether an execution constitutes a bug (crash, overflow, infinite loop, race, undefined behavior).

**Sanitizer** — A dynamic bug oracle compiled into the program, such as AddressSanitizer (ASan, memory errors like use-after-free and buffer overflow), LeakSanitizer, ThreadSanitizer (TSan), and UndefinedBehaviorSanitizer (UBSan).

**Fuzzing roadblocks** — Obstacles to coverage progress such as magic bytes, checksums, dependencies in binary formats, complex input syntax/semantics, and stateful applications.

**Mutation testing** — Measuring test-suite effectiveness by injecting small artificial bugs (mutants) into the program and checking whether the tests kill them.

**Mutant / killed mutant** — A version of the program with one small change; a mutant is killed when a test detects the difference in behavior.

**Equivalent mutant** — A mutant that is semantically identical to the original program and therefore impossible to kill, confounding mutation-score measurement.

**PIE model (Propagation-Infection-Execution)** — The reachability conditions for killing a mutant: the input must execute the mutated line, the mutation must infect program state, and the effect must propagate to observable output; if any fails, the mutant is unkillable and can be skipped.

## Concurrency: data races and detection (Lecture 18)

**Sequential consistency** — [Lamport '79] The model in which a concurrent program's behavior is the set of its thread interleavings, giving the shared-memory and program-order abstractions.

**Thread interleaving** — An ordering that merges the steps of concurrent threads into a single sequence; the space of interleavings defines program behavior under sequential consistency.

**Data race** — A pair of concurrent conflicting accesses (at least one a write) to the same memory location not annotated as synchronization.

**Race condition** — A timing-dependent bug due to events, device interaction, or interleaving; distinct from a data race (data races are neither necessary nor sufficient for a race condition but are a good symptom).

**Atomicity violation** — When code meant to execute atomically suffers interference from another thread; fixed by reordering or synchronization (e.g. compare-and-swap).

**Synchronization order** — The ordering imposed by synchronization operations: acquire/release, wait-notify, fork-join, and volatile read/write; accesses ordered by it are not races.

**volatile / std::atomic** — Language annotations (Java `volatile`, C++ `std::atomic<>`) marking a variable as synchronization so accesses to it do not count as data races.

**Lockset analysis (Eraser)** — [Savage et al. '97] A dynamic data-race detector that maintains `LockSet(x)`, the set of locks consistently held on every access to x; if the set ever becomes empty a race is reported. It checks a sufficient condition for data-race-freedom and refines state through phases like read-shared after thread-local initialization.

**Happens-before relation** — [Lamport '78] A partial order over program events induced by program order plus synchronization (e.g. release-before-acquire); two conflicting accesses unordered by happens-before constitute a data race.

**Happens-before race detection** — Dynamic detection that reports a race when two conflicting accesses are not ordered by the happens-before relation; more precise than lockset but more expensive.

**Vector clock** — The data structure used to track the happens-before relation (per-thread logical clocks) when detecting races dynamically.

## Concurrency testing (Lecture 19)

**Concurrency testing** — Testing a concurrent program under different thread interleavings, hoping to hit the buggy interleaving.

**Systematic interleaving exploration** — Deterministic controlled concurrency testing that explores different interleavings systematically for good coverage and deep bugs, versus ad-hoc sleeps/locks or random walks.

**Context switch** — A point where execution switches from one thread to another; the count of context switches an interleaving requires is its bug depth.

**Bug depth** — The number of context switches needed to trigger a concurrency bug; many real bugs have small depth.

**Probabilistic Concurrency Testing (PCT)** — A randomized scheduler that, by exploring interleavings with a small number of context switches, gives probabilistic guarantees of finding bugs of bounded depth.

**Partial-order reduction** — Exploring only interleavings that are semantically non-equivalent, avoiding redundant orderings; connected to model checking and verification.

## AI for program analysis (Lecture 20)

**LLMs augmenting analysis** — Large language models used to augment static analysis (e.g. false-positive filtering), be embedded inside analyzers, or synthesize analyzers/checkers (e.g. KNighter's LLM-synthesized checkers).

**LLM-assisted dynamic analysis** — Using LLMs to guide concolic testing, assist fuzz testing, and synthesize mutants for mutation testing (e.g. LLMorpheus), and to generate property-based tests.

**Verifiable rewards** — Using compilation, static analysis, and unit tests as checkable signals to evaluate/train LLM-generated code (pre-training next-token loss, post-training reinforcement with verifiable rewards, inference-time execution against test suites).

## Program analysis in practice (Lecture 11, guest)

**Annotation-based analysis** — Analysis driven by programmer annotations (e.g. NullAway's `@NonNull`/`@Nullable`) checked like a pluggable type system; the checker enforces invariants such as never dereferencing a `@Nullable` value.

**Constraint-based nullability (NilAway)** — Getting rid of annotations by automatically collecting typing constraints (nilable vs. nonnil) and reporting a contradiction when `nilable(S) ∧ nonnil(S)` holds at a site.

**Impact = Effectiveness × Applicability × Trust** — The practitioner's framing that a tool's real-world success is its impact ($ saved), not just effectiveness (precision/recall); applicability follows the "law of bug finding" (you cannot find bugs in code you do not analyze), and trust erodes when output is noisy.

**Precision and recall (tool effectiveness)** — Precision is the fraction of reported alerts that are real (NilAway ~60%); recall is the fraction of real bugs reported; both measure a tool's effectiveness.
