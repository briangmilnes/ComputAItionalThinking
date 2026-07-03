# 15-414 — Bug Catching: Automated Program Verification and Testing · Vocabulary

Source: CMU 15-414/15-614, *Bug Catching: Automated Program Verification*, Fall 2025 (Matt Fredrikson). Slides and lecture notes: https://www.cs.cmu.edu/~15414/ (schedule: https://www.cs.cmu.edu/~15414/schedule.html). Terms are drawn from the 21 posted per-lecture slide/note PDFs and ordered by course progression.

## Part 0 — Motivation and overview (Lecture 1)

**functional correctness** — The property that a program's behavior matches a precise specification of what it should do; establishing it requires writing a specification, giving code a mathematical meaning, and using logic to prove implementation matches specification.
**algorithms vs. code** — The distinction that we execute code, not algorithms: a correct algorithm (e.g. binary search) can still be a buggy program because of concrete effects like integer overflow (`(low+high)/2` going negative) and undefined behavior.
**specification** — A precise, declarative, logical statement of intended behavior, against which an implementation is proved; contrasted with incomplete test cases and inconsistent, labor-intensive code review.
**verification condition (VC)** — A purely logical proposition, extracted from a program plus its contracts, whose validity establishes the program's correctness; automated theorem provers discharge VCs.
**deductive verification** — Proving a program meets its specification by reducing correctness to logical propositions (VCs) and discharging them with automated theorem provers; the WhyML/Why3 approach used throughout the course.
**Why3** — A deductive-verification platform combining the WhyML programming language (derived from OCaml) with a verification toolchain that generates VCs and dispatches them to automated provers (Z3, CVC, Alt-Ergo) or interactive provers (Coq).
**automated theorem prover / decision procedure** — A back-end solver that decides validity/satisfiability of the VCs a verifier produces; the basic verifier pipeline translates programs into proof obligations, encodes them as satisfiability, and solves them with a decision procedure.
**undecidability (of verification)** — The fact that most deep program properties are undecidable, so there is no push-button silver bullet: the prover needs "hints" (invariants, variants) from the programmer, and finding the right hints is hard.
**dependent types** — An alternative verification tradition (Agda, Coq) in which proofs are expressed as programs or searched for by programs; contrasted with the imperative/logical-contracts approach of this course.
**model checking** — Fully automatic techniques for finding bugs or proving their absence by exhaustive state-space search against a temporal-logic specification, yielding diagnostic counterexamples and requiring no manual proofs.
**state-space explosion** — The core difficulty of model checking: the number of reachable states grows exponentially in the number of atomic components, addressed by partial-order reduction, bounded model checking, symbolic representations, and abstraction & refinement.
**counterexample** — A concrete execution (trace) witnessing that a program violates its specification; model checkers produce these as diagnostic output.

## Part I — Reasoning about programs with contracts (Lectures 2–4)

**logical contract** — A specification attached to a function or loop, expressed as logical formulas (precondition, postcondition, invariant, variant), enabling compositional reasoning: callers rely only on the contract, not the function body.
**precondition (requires)** — A requirement imposed on every caller of a function that must hold on entry; the caller must establish it, and the function body may assume it.
**postcondition (ensures)** — What a caller may assume about a function's result and effects on return, referring to the return value via `\result`/`result`; checked at every return and forming an abstraction boundary that localizes reasoning.
**assertion** — A condition stated at a program point that must be true there; once established it may be assumed subsequently, and it can serve as a lemma that makes the difference between prover success and failure even when logically redundant.
**loop invariant** — An assertion checked just before each loop-guard test that must hold initially (initialization) and be re-established after each iteration (preservation); on exit one may assume the invariant together with the negated guard.
**strengthening the loop invariant** — Adding facts to an invariant so it becomes provable (analogous to generalizing an induction hypothesis), e.g. the Fibonacci loop needs `a = fib(i)` strengthened with `b = fib(i+1)`.
**variant (termination metric)** — A quantity (typically a nonnegative integer expression) that strictly decreases on each loop iteration or recursive call, guaranteeing termination; required for pure functions usable in contracts.
**pure (nonexecutable) specification** — A specification function or predicate with no observable effect, used only to state correctness; specifications are usually purely logical formulas that say what a function accomplishes while abstracting away how.
**axiomatic specification** — Describing a function's defining properties directly as axioms (e.g. `fib 0 = 0`, `fib 1 = 1`, `fib(n+2) = fib(n+1) + fib(n)`) rather than by an explicit definition.
**inconsistent / vacuous specification** — A set of axioms or an invariant that derives a contradiction (inconsistent, equivalent to `false`) proves everything, including wrong VCs; a vacuously-true specification (equivalent to `true`) says nothing. Why3's `--smoke-detector` searches for such inconsistencies.
**WhyML** — Why3's programming language (derived from OCaml), supporting both functional and imperative code with `let ref` mutable bindings, `while` loops with `invariant`/`variant`, and `requires`/`ensures` contracts.
**data-structure invariant** — A logical property a data structure must always satisfy; assumed at a function's entry (like a precondition) and re-proved at its exit (like a postcondition), and may be temporarily violated in between.
**abstraction (model) function** — A specification-level function mapping a concrete representation to an abstract value used in contracts (e.g. `sequence q = q.front ++ reverse q.back` for a two-list queue), so clients reason about abstract behavior while the implementation stays efficient.
**abstract vs. concrete state** — The separation between the high-level model a client reasons about and the efficient representation the implementation uses, connected by a representation invariant.
**persistent vs. ephemeral data structure** — Persistent (immutable) structures cannot be mutated in place and dominate functional programming; ephemeral (mutable) structures are modified in place and dominate imperative programming.
**amortized cost** — Averaged per-operation cost over a sequence of operations; e.g. the two-list functional queue achieves constant amortized enqueue/dequeue.
**implicit proof obligation** — A hidden VC generated by a language construct: pattern matches must be exhaustive, `div`/`mod` require a nonzero divisor, array accesses require in-bounds indices, and structures with invariants require the invariant.
**ghost code / ghost variable** — Specification-only code, fields, or variables that exist purely for verification, do not affect the computation's result, and are erased before execution (ghost data may only feed other ghost computations).
**erasure** — The guarantee that deleting all ghost fields and computations leaves the program's observable behavior unchanged.
**`old` (pre-state reference)** — An annotation referring to the value of a mutable object at function entry, used to state frame conditions such as "the array is unchanged" (`a = old a`).
**testing alongside verification** — Running the code (e.g. `why3 execute`) or asserting strict test postconditions to catch over-strict preconditions, over-lax postconditions, or prover weakness that a "Verified" result can mask.

## Part II — Semantics and dynamic logic (Lectures 5–8)

**abstract syntax** — The grammar of programs and formulas studied independently of parsing and type-checking, e.g. arithmetic expressions `e ::= c | x | e1+e2 | ...`.
**state / store (ω)** — A map assigning an integer to every program variable; `ω(x) = c` means the state maps `x` to `c`, and `ω[x ↦ c]` denotes the updated state.
**expression evaluation (ω⟦e⟧)** — The value of expression `e` in state `ω`, defined by structural recursion, distinguishing syntactic operators from their mathematical meaning.
**program as a state relation (ω⟦α⟧ν)** — The meaning of a program as a relation between a prestate `ω` and poststate `ν`; a relation rather than a function so it can model nontermination (no poststate) and nondeterminism (several poststates).
**assignment semantics** — `ω⟦x ← e⟧ν` holds iff `ν = ω[x ↦ ω⟦e⟧]`; the state is updated at `x` with the value of `e`.
**sequential composition** — `α ; β` runs `α` then `β`; its relation is the composition of the two relations via an intermediate state.
**semantic equivalence** — Two programs are equivalent when they denote the same state relation, e.g. `x←x+2` equals `x←x+1 ; x←x+1`.
**test / guard (?P)** — A program that does nothing if `P` holds in the current state and has no poststate ("aborts") otherwise; `skip ≜ ?true` and `abort ≜ ?false`, and tests model preconditions/assumptions.
**while-loop semantics (bounded unrolling)** — `while P α` defined via an indexed relation counting iterations: zero iterations require the guard false, and `n+1` requires the guard true, one body execution, then `n` more.
**Hoare logic / Hoare triple** — The classical formulation `P {α} Q` (precondition, program, postcondition); generalized by separation logic (heaps) and concurrent separation logic, and expressible in dynamic logic as `P → [α]Q`.
**dynamic logic** — The course's program logic, inspired by modal logic, in which programs appear inside modal operators over states; its axioms decompose program structure until only an arithmetic formula (the VC) remains.
**box modality [α]P** — "In every poststate reachable by `α`, `P` holds"; the partial-correctness / safety modality, true when `α` need not terminate but any final state satisfies `P`.
**diamond modality ⟨α⟩P** — "In some poststate reachable by `α`, `P` holds"; the total-correctness / liveness modality, requiring `α` to terminate in a state satisfying `P`.
**validity (⊨ P)** — A formula is valid if it is true in every state; the box/diamond axioms are justified by showing them valid against the semantics.
**partial vs. total correctness** — Partial correctness (`[α]P`) guarantees `P` only if `α` terminates (a safety property); total correctness (`⟨α⟩P`) additionally requires termination (a liveness property), established via variants.
**determinism** — A program is deterministic if each prestate has at most one poststate; in a deterministic language `⟨α⟩P → [α]P` is valid.
**assignment axiom** — The sound rule `[x←e]P(x) ↔ ∀x'. x'=e → P(x')`, which renames `x` to a fresh `x'` (the naive `x=e → P` is unsound because `x=x+1` is contradictory).
**uniform / capture-avoiding substitution** — Substituting an expression for a variable while renaming bound or updated variables so none is captured; underlies the assignment axiom and quantifier instantiation.
**sequential-composition axiom** — `[α;β]P ↔ [α][β]P`, decomposing a compound program by nesting modalities.
**test and conditional axioms** — `[?P]Q ↔ (P → Q)`, `⟨?P⟩Q ↔ (P ∧ Q)`, and `[if P α β]Q ↔ (P → [α]Q) ∧ (¬P → [β]Q)`.
**nondeterministic dynamic logic** — The standard "dynamic logic" using nondeterministic choice `α ∪ β` and nondeterministic repetition `α*` in place of conditionals and while-loops.
**nondeterministic choice (α ∪ β)** — Executes either branch; axiom `[α∪β]P ↔ [α]P ∧ [β]P`.
**nondeterministic repetition (α\*)** — Executes `α` some `n ≥ 0` times; `while P α` is encoded as `(?P ; α)* ; ?¬P`.
**necessity modality (□P)** — "P is valid" expressed inside the logic (`ν ⊨ P` for every state `ν`), with axiom `□P → [α]P`; the inspiration for the box modality.
**loop-invariant rule (for repetition)** — `[α*]Q ← J ∧ □(J → [α]J) ∧ □(J → Q)`: an invariant `J` that holds initially, is preserved by one iteration, and implies the postcondition; specializing to `while` gives the standard init/preservation-under-guard/guard-false-implies-post rule.
**induction axiom for repetition (computational induction)** — `[α*]Q ↔ Q ∧ [α*](Q → [α]Q)`, proved valid by induction on the iteration count; the source of the loop-invariant rule.

## Part II continued — Semantics in Why3, arrays, induction (Lectures 6, 9–11)

**Kleene algebra / regular expressions** — The algebraic structure of regular expressions (`r ::= a | 1 | r·s | 0 | r+s | r*`) with laws (units, associativity, idempotent iteration) mirrored in the language of programs; encoded in WhyML and specified axiomatically.
**Brzozowski derivative (∂ₐr)** — A regular expression such that `aw ∈ L(r)` iff `w ∈ L(∂ₐr)`, computable by structure on `r`, enabling left-to-right matching without guessing splits; `nullable r` tests whether `ε ∈ L(r)`.
**theory of arrays** — An axiomatic model of arrays with a `read a i` operation and a non-mutating `write a i v` constructor (which denotes a new array), abstracting mutable arrays for logical reasoning.
**read-over-write axioms** — The two defining array axioms: `i = k → read (write a i v) k = v` and `i ≠ k → read (write a i v) k = read a k`.
**array extensionality** — `(∀i. read a i = read a' i) ↔ a = a'`: two arrays are equal exactly when they agree at every index; needed to prove `write a i (read a i) = a`.
**array bounds obligation** — A concrete access `a[e]` translates to `read a e` with precondition `0 ≤ e < length a`, and `a[e] ← e'` to a fresh `a' ← write a e e'` with the same bound.
**mathematical (explicit) induction** — Encoding an induction proof in Why3 as a recursive `let rec lemma` with a variant, whose base case (`n = 0`) and inductive step (assuming the recursive call's postcondition for `n−1`) yield the universally-quantified conclusion.
**Peano's axioms** — The axiomatization of the naturals (`0`, injective successor `S`, equality axioms, and the induction axiom `P(0) ∧ (∀n. P(n) → P(S n)) → ∀n. P(n)`).
**structural induction** — Induction following the constructors of a recursively-defined data type (e.g. lists, `nat = Zero | Succ nat`) using pattern matching and a variant on the structure.
**complete (strong) induction** — Induction where the hypothesis may assume the property for all smaller values; provided by Why3's `int.Induction`, instantiated by cloning an abstract module with a concrete predicate.
**module cloning** — Instantiating an abstract Why3 module (e.g. `int.SimpleInduction`) by supplying concrete definitions, turning its abstract axioms into discharged proof obligations.
**axiom of convergence** — The diamond counterpart of induction proving termination: with a variant predicate `V(n)`, a state satisfying `V(0)` is reachable if each iteration can decrease `n` from `V(n)` (`n>0`) toward `V(n−1)`.
**variant expression (with big steps)** — A generalization of the variant predicate to an expression paired with an invariant, closely matching Why3's VC generator for `while` loops and permitting decreases larger than one.

## Part II continued — Postconditions, sequents (Lectures 12–13)

**weakest precondition wp(α)Q** — The weakest formula guaranteeing `[α]Q`: sufficient for `Q` and implied by any correct precondition; logically equivalent to `[α]Q` and the dominant approach in verifiers like Why3.
**strongest postcondition sp(α)P** — The strongest formula implied by running `α` from a state satisfying `P`; `ν ⊨ sp(α)P` iff some `ω ⊨ P` reaches `ν`. It encapsulates symbolic execution and propagates forward.
**predicate transformer** — Compositional equations for `wp`/`sp`, e.g. `wp(α;β)Q = wp(α)(wp(β)Q)`, `wp(α∪β)Q = wp(α)Q ∧ wp(β)Q`, `wp(?P)Q = P → Q`; `sp` composes in the opposite order.
**symbolic execution** — Forward analysis tracking symbolic values through a program; captured by the strongest postcondition and used in model checking and compiler optimization.
**sequent (Γ ⊢ Δ)** — A judgment with antecedents (assumptions) `Γ` and succedents (goals) `Δ`, valid iff `⋀Γ → ⋁Δ`; how Why3 presents a proof task, with multiple succedents interpreted disjunctively.
**sequent calculus** — Gentzen's proof system with a left and right inference rule for each connective and quantifier, breaking antecedents and succedents down; devised to establish the consistency of first-order logic and arithmetic.
**left / right rules** — Per-connective rules: a right rule decomposes an operator in the succedent, a left rule in an antecedent (e.g. `∧R` proves both conjuncts, `→R` assumes the antecedent to prove the consequent).
**identity and cut rules** — `id` closes a proof when an antecedent matches a succedent; `cut` introduces a lemma `P` (proved in one branch, assumed in the other) but obstructs automatic bottom-up search since `P` ranges over infinitely many formulas.
**cut elimination (Gentzen's Hauptsatz)** — The theorem that the cut rule is redundant — every proof with cut has a cut-free proof — which entails the calculus's consistency.
**soundness and completeness (of a proof system)** — Soundness: every provable sequent is valid; completeness: every valid formula is provable (`⊨ P` implies `⊢ P`), which holds for the sequent calculus over an arbitrary nonempty domain.
**quantifier rules and freshness** — `∀R`/`∃L` introduce a fresh constant not occurring elsewhere; `∀L`/`∃R` instantiate with an expression via capture-avoiding substitution; contraction lets a universal antecedent be instantiated more than once.
**classical vs. intuitionistic reasoning** — Classical logic permits multiple succedents and law-of-excluded-middle "hedging" (e.g. `P ∨ (P → Q)`); constructive/intuitionistic logic requires a single succedent and a witness for `∃`, deciding which disjunct of `∨` holds.

## Part III — Automated reasoning: certificates, SAT/SMT (Lectures 14–16)

**proof certificate** — Evidence produced with a computation's result that a small, trusted checker can validate at runtime, shifting trust from an untrusted solver to the verified checker (accept ⇒ instance-wise correct; reject ⇒ fall back).
**solver vs. checker** — The solver is the untrusted, heuristic primary computation; the checker is a small verified component that validates each result via its certificate, shrinking the trusted computing base.
**Bézout certificate** — A gcd certificate `(g, x, y)` with `g = ax + by`, `g | a`, `g | b`, verified by checking the identity and divisibilities; produced by the extended Euclidean algorithm.
**bipartiteness / odd-cycle certificate** — "Yes": a 2-coloring separating every edge; "No": a closed walk of odd length (odd cycle), which cannot be 2-colored — proved via a path-parity lemma.
**fuel** — An explicit decreasing integer bound consumed once per iteration, used as a trivial variant to make an untrusted solver's termination easy to prove; parallels certificates in shifting trust away from solver code.
**satisfiability (SAT)** — Deciding whether a propositional (or CNF) formula has a satisfying assignment; the tractable propositional core that verifiers ultimately reduce VCs to.
**satisfiability modulo theories (SMT)** — Deciding satisfiability of formulas over objects from infinite domains (arithmetic, arrays, uninterpreted functions), beyond plain propositional SAT.
**first-order theory (signature Σ, axioms A)** — A theory defined by a signature of constant/function/predicate symbols plus a set of closed axioms, relative to which formulas are judged.
**T-validity / T-satisfiability / T-decidability** — A Σ-formula is `T`-valid if every model of `T`'s axioms satisfies it, `T`-satisfiable if some model of `T` satisfies it, and `T` is decidable if an algorithm always decides validity.
**common theories** — Bit-vector arithmetic (fixed-width sequences, arithmetic modulo `2ⁿ`, a finite domain), Presburger arithmetic (0, 1, `+`, `=`, with an induction schema), and the theory of arrays.
**quantifier-free conjunctive fragment** — The syntactic restriction the array/EUF decision procedures target — no quantifiers, only conjunction and negated atoms — chosen to avoid case analysis.
**equality with uninterpreted functions (EUF)** — The theory of `=` plus arbitrary function symbols, with reflexivity, symmetry, transitivity, and functional congruence as axioms; array `read` is modeled as an uninterpreted function.
**functional congruence** — The axiom `x = y → f(x) = f(y)` (generalized to n-ary functions): equal arguments yield equal function values.
**congruence closure** — The unique smallest congruence relation containing a given set of equalities; computing it decides conjunctive quantifier-free EUF satisfiability (unsat iff some negated equality `s ≠ t` has `s` and `t` in the same class).
**union-find** — The data structure implementing congruence closure efficiently by merging equivalence classes and propagating congruences.
**theory combination (T1 ⊕ T2)** — Deciding satisfiability over the union of two theories' signatures and axioms; checking each theory independently is unsound (each part satisfiable, the whole unsatisfiable).
**Nelson-Oppen procedure** — The combination method underlying modern SMT solvers: purify the formula into per-theory pure parts, then propagate equalities between shared variables between the theory solvers until saturation; requires quantifier-free, infinite-domain theories sharing only `=`.
**purification** — The Nelson-Oppen step that replaces mixed-theory ("alien") subterms with fresh variables equated to them, splitting a formula into per-theory pure formulas.
**convex vs. nonconvex theory** — A theory is convex if any conjunction implying a disjunction of equalities implies one of them individually; the integers are nonconvex, forcing case-splitting on disjunctions of equalities.
**DPLL(T)** — The architecture pairing a DPLL SAT search with theory solvers, where disjunctions of equalities from nonconvex theories are resolved by case-splitting.

## Part III continued — Temporal logic and model checking (Lectures 17–21)

**Kripke structure** — A set of states with a transition relation, a labeling of atomic propositions in each state, and initial states; a computation structure additionally requires the state set to be finite and every state to have a successor.
**transition system / computation path** — The state-transition graph a program induces, and an infinite sequence of states `s0, s1, ...` with each `si ↷ si+1`; the trace is the sequence of labels along a path.
**linear temporal logic (LTL)** — A linear-time logic interpreted over individual traces; `K ⊨ P` iff every trace of `K` satisfies `P`.
**LTL operators (X, □, ◇, U)** — Next (`XP`: `P` at the next state), globally (`□P`: `P` at all future states), eventually (`◇P`: `P` at some future state), and until (`P U Q`: `P` holds until `Q` becomes true).
**safety vs. liveness** — Safety ("nothing bad ever happens," e.g. `□(¬c1 ∨ ¬c2)` for mutual exclusion) vs. liveness ("something good eventually happens," e.g. `□(t1 → ◇c1)`).
**language inclusion formulation** — `K ⊨ P` iff `L(K) ⊆ L(P)`, i.e. every behavior (infinite word over atomic propositions) of `K` is allowed by `P`; checked via `L(K) ∩ complement(L(P)) = ∅`.
**ω-automata / Büchi automata** — Automata over infinite words, introduced because DFAs/NFAs accept only finite words; a nondeterministic Büchi automaton is like an NFA but accepts a run iff it visits an accepting state infinitely often.
**Büchi acceptance (visit F infinitely often)** — The acceptance condition distinguishing Büchi automata from NFAs; since the state set is finite, acceptance reduces to whether the infinitely-visited states intersect the accepting set.
**product automaton / closure under intersection** — A construction intersecting two Büchi automata (with a 0/1/2 copy scheme ensuring both accepting sets are hit infinitely often), used to build `L(K) ∩ complement(L(P))`.
**emptiness checking** — Deciding whether a Büchi automaton's language is empty, equivalent to finding a reachable strongly connected component (or cycle) containing an accepting state.
**strongly connected component (SCC) / accepting cycle** — A set of mutually reachable states; a reachable SCC (or cycle) containing an accepting state witnesses a nonempty language and yields a counterexample.
**nested depth-first search (NDFS)** — A linear-time emptiness algorithm interleaving an outer DFS that finds reachable accepting states and an inner DFS that seeks a cycle back to them.
**reachability** — The recurring reduction target of model checking: finding a path from an initial state to an accepting or bad state in an automaton/graph.
**computation tree logic (CTL)** — A branching-time temporal logic interpreted at states, where path quantifiers range over the tree of all computations; it has a simpler model-checking algorithm than LTL.
**branching-time vs. linear-time** — CTL reasons about the tree of possible futures whereas LTL reasons along single paths; the two logics are incomparable in expressiveness (e.g. `AF AG P` and `AG EF P` have no LTL equivalents).
**path quantifiers (A, E)** — CTL's universal (`A`, "for all paths from this state") and existential (`E`, "for some path"), each paired with a temporal operator to form `AX/EX`, `AG/EG`, `AF/EF`, `AU/EU`.
**CTL fixpoint characterization** — Each CTL temporal operator is a least fixpoint (`EF`, `AF`, `EU`, `AU`) or greatest fixpoint (`EG`, `AG`) of a monotone successor function over sets of states, with unfolding axioms like `EGP ↔ P ∧ EX EGP`.
**denotation ⟦ϕ⟧** — The set of states in which a CTL formula holds; the model-checking algorithm computes it recursively over formula structure using successor functions `τ_EX`/`τ_AX` and fixpoint iteration.
**Knaster-Tarski theorem** — Every monotone function on a powerset has least and greatest fixpoints, computable by iterating from `∅` (up) or the full set (down); on a finite state space the iteration terminates.
**CTL model-checking complexity** — Linear in the state space and formula size, `O(|K|·|ϕ|)` where `|K| = |W| + |↷|`.
**bounded model checking (BMC)** — Under-approximating the reachable state space by unrolling all loops to a fixed depth `k` and treating bounded paths symbolically; finds bugs within the bound but cannot prove their absence beyond it.
**loop unwinding** — The axiom `[while Q α]P ↔ [if Q {α; while Q α}]P`, applied `k` times (with remaining loops replaced by `skip`) to make a program loop-free for BMC; truncation adds unwinding assertions whose violation signals either a bug or too-small `k`.
**software transition structure** — Turning a program `α` into a Kripke-style structure over control locations paired with states, using a control-flow transition relation `ϵ(α)` whose edges are labeled by statements.
**predicate abstraction** — Building an abstract transition structure over program locations paired with subsets of a chosen set of atomic predicates, distinguishing only the traces relevant to the property; abstract edges are decided by validity of a dynamic-logic formula reducible to arithmetic.
**overapproximation** — The abstract structure includes a corresponding trace for every concrete trace, so properties proved of it transfer to the concrete program, though some abstract behaviors may be infeasible.
**spurious counterexample / refinement** — An abstract counterexample with no feasible concrete execution, arising from overapproximation; it must be checked and, if spurious, ruled out by refining the abstraction (choosing better predicates) — the CEGAR loop.
