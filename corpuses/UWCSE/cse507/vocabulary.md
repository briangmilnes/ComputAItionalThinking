# CSE 507 — Computer-Aided Reasoning for Software · Vocabulary

Source: University of Washington CSE 507 (Computer-Aided Reasoning for Software), Autumn 2025 offering (Au'25), taught by Zachary Tatlock; created by Emina Torlak. Lecture slides: <https://gitlab.cs.washington.edu/cse507-25au/cse507-25au-public/-/tree/main/lecture> (lec01–lec15). Terms below are extracted from the lecture PDFs and grouped by topic in roughly lecture order.

## Solver-aided programming (L01–L02)

**Computer-aided reasoning** — Using automated logical reasoning engines (SAT, SMT, model finders) to check, repair, and generate software, rather than reasoning about programs entirely by hand.

**Solver-aided tool** — A verifier or synthesizer that reduces a question about program behavior to a satisfiability problem and dispatches it to a solver.

**Solver-aided programming** — A programming model that integrates a solver into the language, providing constructs for verification, synthesis, and other reasoning queries directly over program code.

**Rosette** — A solver-aided programming language, built as an extension of Racket, that lifts a subset of the host language to operate on symbolic values and compiles queries to SMT.

**Racket** — The Lisp/Scheme-descended host language ("a language for making languages") that Rosette extends with symbolic constructs via macro-based metaprogramming.

**Symbolic value** — A placeholder (e.g. `(define-symbolic x integer?)`) that stands for an arbitrary value of its type; queries reason about all its possible concrete instantiations at once.

**Assertion / assumption** — An `assert` states a property that must hold; an `assume` constrains the symbolic inputs the solver may consider. Together they express the specification.

**Query (verify / solve / synthesize)** — The three solver-aided queries: `verify` finds an input on which the program fails, `solve` finds values that satisfy the assertions, and `synthesize` finds code (fills holes `??`) that makes the program correct for all inputs.

**Reasoning precision (current-bitwidth)** — A Rosette setting controlling whether integers/reals are approximated as k-bit words or treated as infinite-precision; `#f` means precise reasoning.

**Self-finitizing (bounded loops)** — The requirement that loops and recursion terminate under concrete guards or bounds on symbolic data, so that symbolic evaluation does not run forever.

**Lifting** — Rosette's mechanism of extending a host operation to work on symbolic values; unlifted constructs (e.g. mutable hashes) require care because symbolic values may not flow through them safely.

**Solver-aided domain-specific language (SDSL)** — A small language (guest) whose interpreter is written in Rosette, so that verification and synthesis for the guest come "for free" from the host.

**Shallow vs. deep embedding** — Two ways to host a guest language: a library (shallow) embedding reuses host constructs directly, while an interpreter (deep) embedding gives the guest its own explicit semantics.

**Symbolic compiler** — A component that translates a program (and its interpreter) into logical constraints; hand-writing one is the "classic hard way" Rosette automates.

**Symbolic virtual machine (SVM)** — Rosette's engine that symbolically evaluates a program and produces SMT constraints; the technical challenge is doing so efficiently for an interpreter.

**`ite` (if-then-else) value** — A merged symbolic value representing a conditional outcome (e.g. `(ite (= 0 k) 1 2)`), used to encode branches without enumerating paths.

## Propositional logic and SAT (L03)

**Propositional formula** — A formula built from propositional variables and the connectives ¬ (not), ∧ (and), ∨ (or), → (implies), ⟺ (iff).

**Interpretation** — An assignment mapping every variable of a formula to a truth value; written I ⊨ F if F is true under I and I ⊭ F otherwise.

**Model / satisfying interpretation** — An interpretation under which a formula evaluates to true; F is satisfiable iff some interpretation models it.

**Validity** — F is valid iff every interpretation models it; equivalently, F is valid iff ¬F is unsatisfiable (duality of satisfiability and validity).

**Entailment / implication** — F₁ implies F₂ (F₁ ⟹ F₂) iff F₁ → F₂ is valid; a semantic relationship between formulas rather than a connective.

**Equivalence** — Formulas F₁ and F₂ are equivalent iff they have the same truth value under every interpretation.

**Equisatisfiability** — Two formulas are equisatisfiable iff both are satisfiable or both unsatisfiable, even if not equivalent; the property preserved by Tseitin's transformation.

**Normal form** — A syntactic restriction such that every formula has an equivalent formula in that form.

**Negation Normal Form (NNF)** — A form in which negation appears only on atoms (literals), obtained via De Morgan's laws and eliminating →/⟺.

**Disjunctive Normal Form (DNF)** — A disjunction of conjunctions of literals; checking a DNF for satisfiability is trivial but converting to DNF can blow up exponentially.

**Conjunctive Normal Form (CNF)** — A conjunction of clauses, each a disjunction of literals; the standard input form for SAT solvers.

**Literal / clause / atom** — An atom is a variable or a constant (⊤/⊥); a literal is an atom or its negation; a clause is a disjunction of literals.

**De Morgan's laws** — ¬(F∧G) ⟺ ¬F∨¬G and ¬(F∨G) ⟺ ¬F∧¬G, used to push negations inward when converting to NNF.

**Tseitin transformation** — A linear-size conversion of an arbitrary formula to an equisatisfiable CNF by introducing fresh auxiliary variables for subformulas, avoiding the exponential blowup of a direct CNF conversion.

**Resolution** — A proof rule that, from clauses (α ∨ x) and (β ∨ ¬x), derives (α ∨ β); repeated resolution deriving the empty clause proves unsatisfiability.

**Unit resolution / Boolean Constraint Propagation (BCP)** — Repeatedly applying resolution with unit (single-literal) clauses to force assignments until a fixed point; the workhorse of SAT solvers.

**DPLL (Davis–Putnam–Logemann–Loveland, 1962)** — The classic backtracking search procedure for deciding CNF satisfiability: choose a variable, propagate with BCP, and backtrack on conflict.

**Proof by deduction (semantic argument)** — Proving validity/unsatisfiability by applying sound proof rules over an assumed interpretation until a contradiction appears in every branch.

## Modern SAT solving: CDCL (L04)

**Conflict-Driven Clause Learning (CDCL)** — The algorithm at the core of modern SAT solvers, extending DPLL with clause learning and non-chronological backtracking.

**Conflict clause** — A new clause, implied by the formula, that summarizes the cause of a conflict so the solver never revisits the same bad partial assignment.

**Clause learning** — Augmenting the formula with conflict clauses derived during search so the solver prunes future assignments due to the same root cause.

**Implication graph** — A DAG recording the history of decisions and BCP-implied literals; cuts separating decision sources from the conflict define valid conflict clauses.

**Unique Implication Point (UIP)** — A node on all paths from the current decision level's decision to the conflict; the **first UIP** is the one closest to the conflict, giving the shortest useful learned clause.

**Non-chronological backtracking (backjumping)** — Backtracking multiple levels at once, to the asserting level implied by the learned clause, rather than undoing one decision at a time.

**Decision heuristic** — A rule for choosing the next variable to branch on; examples include **DLIS** (Dynamic Largest Individual Sum) and **VSIDS** (Variable State Independent Decaying Sum), which favors variables in recent conflicts.

**Watched literals** — An efficient BCP implementation (from zChaff) that watches two unassigned literals per clause, avoiding a scan of every clause on each assignment.

**Antecedent** — The unit clause that forced an implied literal's assignment; used when resolving to compute the conflict clause.

**Clause deletion** — Periodically discarding learned clauses that are old, long, or irrelevant to keep the solver's database manageable.

## Bounded model checking and MaxSAT (L05)

**Bounded Model Checking (BMC)** — Checking whether a program can violate an assertion within k steps (loop unwindings) by encoding all bounded executions as a formula and asking a SAT solver for a counterexample.

**Counterexample (CEX)** — A concrete execution the solver returns that violates the property; a program-property violation is a real bug, while an unwinding-assertion violation only means k was too small.

**Static Single Assignment (SSA)** — A program form in which every variable is assigned exactly once (fresh versions per assignment), used to turn a program into equations for BMC.

**φ (phi) node** — A gated merge in SSA that selects among versioned values coming from different control-flow paths, encoded as an `ite` in the constraints.

**Unwinding** — Unrolling a loop a fixed number of times and adding an unwinding assertion that flags executions needing more iterations than the bound.

**Finitization / inlining** — Bounding loops and inlining (replacing calls with bodies) to reduce a program to a finite formula suitable for SAT.

**Pseudo-Boolean constraint** — A linear constraint over 0/1 variables (e.g. a₁x₁ + … ≥ b); pseudo-Boolean solvers accept these in addition to CNF.

**MaxSAT / Partial (Weighted) MaxSAT** — An optimization variant of SAT: given hard clauses (must satisfy) and weighted soft clauses, find an assignment satisfying all hard clauses that maximizes the weight of satisfied soft clauses; used e.g. for optimal package installation.

## First-order logic and SMT theories (L06)

**Satisfiability Modulo Theories (SMT)** — Deciding satisfiability of first-order formulas whose symbols are constrained by a background theory (arithmetic, arrays, bitvectors, etc.).

**First-order logic (FOL)** — The logic of terms (constants, functions applied to terms), atoms (predicates applied to terms), connectives, and (in general) quantifiers.

**Signature** — The set of constant, function, and predicate symbols available; logical symbols (connectives, =) vs. non-logical (theory) symbols.

**Theory** — A set of axioms over a signature; its T-models are the first-order structures satisfying those axioms.

**Structure / interpretation (universe)** — M = ⟨U, I⟩ pairs a universe U of values with an interpretation I mapping each symbol to an element, function, or relation over U.

**Satisfiability / validity modulo T** — F is satisfiable modulo T iff some T-model satisfies it; valid modulo T iff every T-model does.

**Quantifier-free (ground) fragment** — The subset of FOL without quantifiers; the fragment most SMT solvers decide efficiently.

**Many-sorted FOL** — FOL that partitions the universe into sorts (types) and assigns types to symbols; the form SMT solvers actually use.

**Theory of equality with uninterpreted functions (EUF, T=)** — The theory in which = is the only interpreted symbol and all functions/predicates are uninterpreted but must respect congruence.

**Theory of arrays (T_A)** — A theory with `read` and `write` operations axiomatized so that reading back a written index yields the written value (read-over-write) and arrays are extensional.

**Theory of fixed-width bitvectors (T_BV)** — A theory of arithmetic and logical operations on k-bit words, modeling machine integers precisely.

**Linear integer / real arithmetic (LIA / LRA)** — Theories of linear constraints over Z or R; LRA is polynomial-time, LIA is NP-complete, and nonlinear multiplication is generally harder.

**Difference logic** — The polynomial-time fragment of linear arithmetic restricted to constraints of the form x − y ≤ c.

**DPLL(T)** — The lazy SMT architecture combining a CDCL SAT solver (Boolean structure) with a theory solver deciding conjunctions of theory literals.

**Polyhedral model** — A geometric view of linear-arithmetic constraint sets (as polyhedra), referenced for compiler-optimization reasoning.

## Theory solvers (L07)

**Theory solver** — A decision procedure for conjunctions of literals in a single theory, invoked by the SAT core in DPLL(T).

**Congruence closure** — The algorithm deciding conjunctive EUF (T=) formulas by computing the smallest congruence relation containing the asserted equalities, then checking disequalities.

**Equivalence relation / equivalence class** — A reflexive, symmetric, transitive relation; its classes partition the terms.

**Congruence relation / congruence class** — An equivalence relation that also respects function application (equal arguments give equal results); congruence classes are the equivalence classes under it.

**Union-find** — The data structure (with find and union operations, `ccp` parent lists) used to represent and merge congruence classes efficiently over a DAG of subterms.

**General Simplex** — The method typically used in practice to decide conjunctions of linear-arithmetic constraints.

## Combining theories (L08)

**Nelson–Oppen combination** — A procedure that combines decision procedures for two theories with disjoint signatures (sharing only =) into a decision procedure for their union.

**Purification** — Rewriting a mixed formula into an equisatisfiable conjunction F₁ ∧ F₂ where each conjunct is pure in one theory, introducing fresh constants for alien subterms.

**Interface / shared constants** — Constants occurring in both purified conjuncts; the theories communicate only by propagating equalities among these shared constants.

**Equality propagation** — The step where each theory solver reports entailed equalities between shared constants to the other, iterating to a fixed point.

**Convex theory** — A theory in which any entailed disjunction of equalities entails one of the disjuncts individually; non-convex theories (e.g. LIA) force case-splitting on disjunctions.

**Stably infinite theory** — A theory in which every satisfiable quantifier-free formula has a model with an infinite universe; a precondition for Nelson–Oppen combination.

## The DPLL(T) framework (L09)

**Boolean abstraction (T2B) and refinement (B2T)** — T2B replaces each theory atom with a fresh Boolean variable to hand the propositional skeleton to the SAT solver; B2T maps a Boolean assignment back to the theory constraints.

**Offline vs. online DPLL(T)** — Offline invokes the theory solver only on full Boolean assignments; online consults it on partial assignments during search, enabling earlier pruning.

**Theory propagation (T-propagation)** — Having the theory solver deduce and communicate further implied literals to the Boolean search, tightening it beyond pure BCP.

**Early pruning** — Calling the theory solver on partial assignments to detect theory-inconsistent prefixes early and avoid exploring doomed subtrees.

**Theory conflict clause** — The negation of a theory-inconsistent assignment (ideally its minimal unsat core) added as a learned clause to the Boolean problem.

**Minimal unsat core** — A minimal subset of the theory literals that is already unsatisfiable, used to produce a short, strong theory conflict clause.

**Delayed Theory Combination (DTC)** — An alternative to Nelson–Oppen that lets the SAT engine guess interface equalities (adding them as fresh Boolean variables) instead of propagating them explicitly between theory solvers.

## Reasoning about programs: Hoare logic (L10–L12)

**Hoare triple** — {P} S {Q}: if statement S starts in a state satisfying precondition P and terminates, the resulting state satisfies postcondition Q.

**Precondition / postcondition** — P constrains the state before executing S; Q asserts what holds after; both are FOL formulas over program variables.

**Partial vs. total correctness** — Partial correctness assumes termination and only constrains terminating runs; total correctness additionally requires that S terminates.

**IMP** — The minimalist imperative language (assignment, sequencing, if, while, skip, abort) used to present Hoare logic.

**Hoare inference rules** — The proof rules (assignment, sequencing, conditional, while, consequence, skip) for deriving triples; they are **sound** and, with an oracle for implications, **relatively complete**.

**Loop invariant** — An assertion preserved by every iteration of a loop, the key ingredient for proving while-loops correct.

**Soundness / relative completeness** — Soundness: every provable triple is valid (⊢ ⟹ ⊨). Relative completeness: every valid triple is provable given an oracle for the underlying FOL implications.

**Safety vs. liveness** — Safety properties say "nothing bad happens" (checkable on finite executions); liveness says "something good eventually happens."

**Weakest precondition (wp)** — wp(S, Q) is the weakest predicate that guarantees Q after executing S; computing it backward over a program is the basis of automated verification.

**Verification condition (VC) generation** — Automating Hoare-logic proofs by mechanically producing FOL implications (from wp / invariants) whose validity, discharged by an SMT solver, establishes correctness.

**Guarded commands** — Dijkstra's nondeterministic language and predicate-transformer semantics underpinning weakest-precondition reasoning.

**Dafny** — A verification-aware imperative/functional programming language (Leino) whose compiler checks correctness against `requires`/`ensures`/`invariant`/`decreases` annotations.

**Auto-active verification** — A verification style (Dafny) combining automatic solving with interactive annotation: the user records design decisions in the program text and the tool discharges the proofs, without step-by-step interactive tactics.

**Boogie** — The intermediate verification language into which Dafny (and similar tools) lower programs before generating verification conditions for the SMT solver.

**Termination metric (`decreases`)** — An annotation giving a well-founded measure that strictly decreases each loop iteration / recursive call, proving termination for total correctness.

## Symbolic execution and concolic testing (L13)

**Symbolic execution** — Running a program on symbolic inputs, computing a symbolic state (variables ↦ symbolic expressions) and, per path, the strongest postcondition; introduced by King (1976).

**Path condition** — The quantifier-free formula over symbolic inputs encoding the branch decisions taken to reach a program point; solving it yields concrete inputs for that path.

**Execution tree / path explosion** — All program paths form an execution tree; the number of paths grows exponentially (path explosion), the central scalability challenge.

**Concolic testing** — Combining **conc**rete and symb**olic** execution: run on concrete inputs, collect the path condition, negate a branch, and solve for inputs driving a new path (DART, CUTE, SAGE, Pex).

**Whitebox fuzzing** — Concolic testing applied to test-input generation, systematically covering paths using the program's internal structure (e.g. SAGE).

**Lazy concretization** — Materializing symbolic heap objects/pointers only when first dereferenced, to model dynamically allocated data structures (JPF, CUTE).

**Environment modeling** — Supplying models or concrete stubs for native / system / library calls that symbolic execution cannot see into.

**Heap modeling** — Representing pointers and dynamically allocated structures symbolically, often using the theory of arrays for bit-precise memory.

**Incremental solving / solution caching** — Reusing solver state and caching results across the many similar path-condition queries to reduce solver load.

**Bounded verification** — Checking that all executions up to a bounded length satisfy a property, contrasted with unbounded (Hoare-style) verification on the cost/confidence spectrum.

## Angelic execution and program synthesis (L14–L15)

**Demonic vs. angelic oracle** — Used demonically, a solver searches for an input that makes the program fail (verification); used angelically, it supplies choices that make an under-specified program succeed.

**Angelic execution / angelic nondeterminism** — Executing a program with `choose` operators whose values an oracle (solver or model finder) selects to satisfy the specification, as if by a benevolent guide.

**Mixed interpretation** — Interleaving ordinary imperative execution with angelic choice, running concrete code while a model finder or SMT solver resolves the nondeterministic choices (e.g. Squander, Kaplan, Leon, PBnJ, PureScala).

**Specification statement** — Morgan's refinement-calculus construct describing a computation by its pre/post relation rather than its code, refined step-wise into an implementation.

**Program synthesis** — Automatically discovering a program P that satisfies a specification φ on all inputs, drawn from a space of candidate programs.

**Deductive synthesis** — Deriving a program from a complete specification by constructive theorem proving (turning a proof of ∀x.∃y.φ(x,y) into code); provably correct but needs sufficient axiomatization.

**Inductive (syntax-guided) synthesis** — Searching a syntactically restricted candidate space (e.g. a grammar/sketch) for a program consistent with a partial specification such as input/output examples.

**Syntax-guided synthesis (SyGuS)** — Formulating synthesis as searching a space defined by a syntactic template plus a semantic specification.

**Sketch** — A partial program with holes (`??`) giving the desired shape; the synthesizer fills the holes to meet the specification.

**Counterexample-Guided Inductive Synthesis (CEGIS)** — The synthesis loop that alternates a synthesizer (find a program correct on current example inputs) with a verifier (find a counterexample input), adding each counterexample until the program is correct on all inputs.

**Enumerative search** — Synthesizing by systematically enumerating candidate programs of increasing size until one satisfies the specification.

**Stochastic search** — Synthesizing by randomly mutating candidate programs, accepting mutations with probability tied to how well they fit, trading guarantees for scalability.

**Superoptimizer** — A synthesizer that searches for the optimal (lowest-cost) instruction sequence equivalent to a given program (e.g. the Denali superoptimizer, SPIRAL).

**E-graph / E-graph matching** — A data structure compactly representing many equivalent expressions (an equivalence graph); Denali builds an E-graph of equivalent programs and searches it for the best one.
