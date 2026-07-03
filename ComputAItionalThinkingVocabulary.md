# ComputAItional Thinking — Deduplicated Computer-Science Vocabulary

A single deduplicated glossary merging the University of Washington CSE and Carnegie Mellon SCS course vocabularies into 2859 unique terms, with terms appearing in both glossaries resolved by choosing the clearer definition.

**"one of" vs. "each of" type** — A "one of" type (variant/option) holds exactly one of several alternatives; an "each of" type (tuple/record) holds all its components at once.
**#define / macro** — Defines a symbol the preprocessor substitutes textually; function-like macros take arguments and must guard against precedence bugs with parentheses.
**10x engineer** — The disputed notion of an outlier "rock-star" developer far more productive than peers; discussed skeptically alongside team-composition effects.
**2D list** — A list of lists used to represent a grid or table of rows and columns; element `grid[r][c]` selects row r, column c.
**A/B testing** — Comparing two variants in production by splitting users, to measure the effect of a change empirically.
**abort** — An unintentional, unrecoverable exception that terminates a program; also the IMP statement that halts execution.
**Absorption laws** — p ∨ (p ∧ q) ≡ p and p ∧ (p ∨ q) ≡ p.
**abstract assembly** — A three-address, temporary-based instruction form with an unbounded supply of temporaries and simple operations (moves, binops, loads/stores, jumps), used as the IR for analysis, optimization, and instruction selection before real registers are assigned.
**abstract binding tree (ABT)** — An abstract syntax tree enriched with binding information: arguments may be abstractors `x.t` that bind variables within a subtree, giving a uniform account of free/bound variables, α-equivalence, and capture-avoiding substitution.
**abstract class** — A class containing at least one pure virtual method; it cannot be instantiated and must be extended and overridden.
**abstract data type (ADT)** — A type defined by its operations rather than its representation, independent of any implementation; introduced by Barbara Liskov.
**abstract domain** — A finite or coarse set of approximations of concrete values (e.g. even/odd, or numeric intervals) over which a static analysis reasons.
**abstract grammar** — A BNF-style specification of an AST's node types, describing the IR's data structures rather than concrete syntax.
**abstract interpretation** — A framework for sound static analysis that "runs" a program over an abstract domain, typically implemented via dataflow analysis.
**abstract machine** — A transition-system dynamics whose states are structured objects (e.g. a control stack paired with an expression) rather than bare expressions, stepping one transition at a time until a final state; used to model control and execution precisely.
**abstract state (obj)** — How clients should think about an object (e.g. a mathematical List), independent of the fields; specifications are written in terms of it.
**abstract state space exploration** — The view of static analysis as systematically and exhaustively examining an abstraction of a program's state space, where the abstraction covers all program information.
**abstract summary** — A function summary that symbolically represents a function's effect on an abstract input (e.g. `x:α → result:α`) rather than enumerating concrete input cases.
**abstract syntax** — The grammar of programs studied independently of parsing, keeping only statements, expressions, and operands while ignoring parentheses, keywords, and other concrete-syntax conveniences.
**abstract syntax tree (AST)** — A tree (first-order term over operators of fixed arity) capturing the hierarchical structure of a program after parsing/elaboration, eliminating the ambiguity of concrete syntax; the substrate for many analyses.
**abstract type** — A type named in a signature without exposing its definition, so clients cannot depend on its representation; enables reimplementation without client changes.
**abstract vs. concrete state** — The separation between the high-level model a client reasons about and the efficient representation the implementation uses, connected by a representation invariant.
**abstraction** — Eliding the details of a specific implementation to capture only the semantically relevant aspects, and reasoning at the appropriate level of detail; the core idea underlying every program analysis and much of design.
**abstraction and composition** — The two organizing themes of language design: abstractions hide information and enforce guarantees, and composition combines programs without breaking those abstractions.
**abstraction barrier** — A specification viewed as the boundary between client and implementer; clients depend only on the spec, yielding changeability and modularity.
**abstraction function** — A function α mapping each concrete program state to a lattice element, relating concrete execution to analysis results (e.g. `α(0)=Z`, `α(n≠0)=NZ`), lifted from values to tuples.
**abstraction function (AF)** — A mathematical function mapping an ADT's concrete field values to the abstract object they represent; a reasoning tool, defined only when the rep invariant holds.
**abstraction function (α)** — In abstract interpretation, a map α: C → A from the concrete domain to the abstract domain (e.g. {4} ↦ even).
**accepting (final) state** — A state (drawn as a double circle) in which an automaton accepts the input read so far.
**access modifiers (public / private / protected)** — Visibility levels controlling who may access a member: public (everyone), private (the class itself / self), protected (the class and its subclasses).
**accessor / mutator (getter / setter)** — Member functions that read (getter) or modify (setter) an object's private data.
**accumulator** — An extra parameter that carries the result-so-far through a tail-recursive function or fold, replacing a mutable loop variable.
**accuracy** — A correct estimate; guaranteed by a sound analysis. Distinct from precision (tightness): an analysis can be precise yet inaccurate.
**ACID** — The guarantees of a transaction: Atomicity (all or none), Consistency (preserves invariants), Isolation (appears to run alone), Durability (committed effects survive crashes).
**Ackermann's function** — A fast-growing total function that is not primitive recursive, yet definable in System T because the recursor may return values of higher-order type.
**action** — A label on a process-calculus transition: a signal (write), a query (read), or the silent action ε; complementary actions interact when two processes take them together.
**action table / goto table** — The two parts of an LR parse table: the action table (state × terminal) gives shift/reduce/accept/error, the goto table (state × nonterminal) gives the next state after a reduction.
**actor** — An external entity (user or system) that interacts with the system under design; may be primary, supporting, or offstage.
**ad hoc vs. parametric polymorphism** — Strachey's distinction: ad hoc polymorphism supplies different implementations at different types (e.g. `+` on ints vs. floats), whereas parametric polymorphism uses one implementation behaving uniformly at all types (e.g. the identity function).
**ad-hoc polymorphism** — Reusing one name for different implementations chosen by type (e.g. operator overloading); a dispatch mechanism, not genuine genericity.
**Adapter** — A structural design pattern that wraps one interface to present another, needed under nominal typing to make same-shaped but incompatible types interoperate.
**adaptive / online** — Adaptive: an algorithm runs faster as the input nears sorted; online: it can begin before the whole input is available (insertion sort is both).
**additive vs. multiplicative connectives** — In linear logic, additive connectives (`&`, `⊕`, units `⊤`, `0`) share the context between premises and encode choice, whereas multiplicative connectives (`⊗`, `⊸`, unit `1`) split the context and encode simultaneous combination.
**address** — The unique index of a byte in memory; memory is conceptually one large byte-addressed array numbered from 0.
**address space** — The domain of all addresses a process may use; each process is given the illusion of its own private virtual space (up to 2^64 bytes on 64-bit).
**Address Space Layout Randomization (ASLR)** — A security feature randomizing the base of the stack and shared-library locations to make buffer-overflow exploits harder.
**address translation** — Mapping a virtual address to a physical address, performed by the memory management unit using page tables.
**address-of (&)** — An operation taking the address of a large-type expression without dereferencing it, used to unify field access, pointer dereference, and array indexing when computing a location.
**address-of (&) and dereference (*)** — `&x` yields the virtual address of `x`; unary `*` accesses the memory a pointer refers to.
**address-taken analysis** — A fast, ultra-conservative, flow- and context-insensitive pointer analysis assuming any pointer can point to any variable whose address is ever taken; O(n) but very imprecise.
**addressing mode** — How an instruction computes an operand's memory address, e.g. `D(Rb,Ri,S)` = Reg[Rb] + Reg[Ri]×S + D.
**addressing mode `D(Rb,Ri,S)`** — The general x86-64 memory-operand form computing `Mem[Reg[Rb] + S·Reg[Ri] + D]` from a displacement, base register, scaled index register, and scale S ∈ {1,2,4,8}.
**adequacy** — The theorem that a typed term steps iff its type-erasure steps; type information does not affect run-time behavior.
**adjacency list** — A graph representation storing, per vertex, a list of its neighbors; Θ(|V|+|E|) space.
**adjacency matrix** — A |V|×|V| matrix whose (v,w) entry records whether/with what weight edge (v,w) exists; Θ(|V|²) space, O(1) edge lookup.
**adjoint logic / modes** — A framework combining several substructural layers as modes — ordered, linear, unrestricted — ranked by how many structural rules each admits and connected by shift modalities.
**administrative redex** — A spurious introduction/elimination pair (e.g. `let val x' = return x in M`) produced by naive call-by-value/call-by-name translations, which refined translations avoid.
**admissibility (uniform substitution)** — The side condition that a substitution σ is U-admissible when the variables it introduces free are disjoint from the bound variables at each operator, preventing variable capture and making the substitution sound.
**admissibility of cut** — The lemma that whenever `Γ ⊢ A` and `Γ, A ⊢ C` are (cut-free) provable, so is `Γ ⊢ C`; proved by nested induction on the cut formula and the premise derivations, and expressing that the left rules are not too strong.
**admissible adjoints corollary** — Under U-admissibility, the adjoint interpretation is insensitive to state changes off the bound set, letting the uniform-substitution lemma push through binders.
**admissible vs. derivable rule** — A rule is derivable if its conclusion has a fixed closed-form derivation from its premises (valid under any extension of the rule set); it is admissible if its conclusion is derivable whenever its premises are, but not by one uniform derivation, and may be lost when the logic is extended.
**advance-notice semantics** — A rejected repetition semantics for games requiring Angel to announce the iteration count up front, which reveals too much and misses valid strategies.
**affine array index** — An array subscript of the form `c0 + c1·x1 + … + cn·xn` over loop variables and symbolic constants; the tractable class over which reuse and dependence analysis operate.
**affine logic** — The substructural logic admitting weakening (resources may be discarded) but not contraction; it sits between linear and structural logic.
**affine type system** — A substructural type system with weakening but not contraction, so every variable is used at most once.
**aggregate** — A SQL function mapping many values to one: count, sum, avg, min, max.
**aggregation (analysis)** — Combining static and dynamic analysis by feeding one analysis's output as input to another.
**Agile / Agile Manifesto** — A family of iterative practices valuing individuals and interactions over process, working software over documentation, customer collaboration over contract negotiation, and responding to change over following a plan.
**alarm / OK** — Analysis outputs: an alarm (positive) means "program might be wrong"; OK (negative) means "program is right."
**algebraic data type (variant / inductive data type)** — A type defined recursively by listing the constructors that create its values, combining union with recursion (e.g. `nat := zero | succ nat`); the list and tree are canonical examples.
**algebraic datatype** — A type defined as a sum of value constructors, each optionally carrying data; the basis for lists, trees, options, and user-defined structured data.
**algebraic simplification** — Replacing an operation by a cheaper equivalent using algebraic identities (e.g. `B+0 ⇒ B`, or a multiply by a constant by a shift).
**algorithm** — A high-level, language-independent, step-by-step description of a process for solving a problem.
**algorithmic equivalence checking** — A syntax-directed algorithm that decides definitional equivalence of well-typed terms, terminating by induction on the type (and on neutral terms), sound and complete with respect to definitional equivalence.
**algorithms vs. code** — The distinction that we execute code, not algorithms: a correct algorithm can still be a buggy program because of concrete effects like integer overflow and undefined behavior.
**alias (SQL)** — A short name bound to a table in the FROM clause via `AS`, used to qualify attribute references.
**alias analysis** — Determining which pairs of pointers/variables may refer to the same memory location; essential because memory optimizations are sound only between accesses that provably do not alias.
**aliasing** — Two references pointing at the same object; harmless for immutable data but able to break reasoning when the shared object is mutated.
**alignment** — Placing data at an address that is a multiple of its size; a struct's alignment is the largest field alignment, and both its start and size must be multiples of it.
**allocated vs. free block** — In a heap allocator, a block currently in use by the application (carrying a payload) versus one available for allocation, distinguished by an allocated bit.
**allocation-based alias analysis** — Inferring non-aliasing from allocation sites: pointers produced by different `alloc`/`alloc_array` calls cannot alias; interprocedural since allocation may occur in another function.
**almost-equal comparison (epsilon)** — Testing two floating-point numbers for approximate equality by checking that their absolute difference falls below a tiny threshold ε, rather than using `==`, which is unreliable for approximated floats.
**alpha-equivalence (α-conversion)** — The congruence equating terms that differ only in the names of their bound variables; terms are identified up to α-equivalence, so a bound variable can always be chosen fresh.
**alphabet (Σ)** — A nonempty finite set of characters (terminals); `Σ*` is the set of finite strings over it, with ε the empty string.
**alternative conjunction / with (A & B)** — Additive conjunction (external choice), provable when A and B are each achievable from the same current resources, but forcing a choice of one on use.
**ambiguous dependence** — A data dependence through pointers or memory that cannot be resolved statically even with pointer analysis, forcing the scheduler to be conservative or to reorder speculatively.
**ambiguous grammar** — A grammar in which some string has more than one parse (leftmost derivation); ambiguity is a property of grammars, not languages, and is resolved by the parser.
**Amdahl's Law** — With sequential fraction S, speedup is 1/(S+(1−S)/P), so overall parallelism is bounded by 1/S.
**Amdahl's law** — The maximum overall speedup from optimizing a fraction P of a program by factor S is `1/((1−P) + P/S)`; it formalizes why optimizing a small part yields limited overall gain.
**amortized complexity** — The maximum total steps over M consecutive worst-case operations divided by M, spreading occasional expensive operations across many cheap ones.
**amortized cost** — Averaged per-operation cost over a sequence of operations (e.g. the two-list functional queue achieves constant amortized enqueue/dequeue).
**analogous analyses** — Solving the same analysis problem in a different domain (e.g. static vs. dynamic type checking, or static vs. dynamic slicing).
**analysis maturity model** — A five-level scale for an organization's adoption of static analysis, from typed languages and ad-hoc tool use up to continual optimization of the analysis infrastructure.
**Andersen's (inclusion-based) points-to analysis** — A flow- and context-insensitive analysis with one points-to node per location that emits an inclusion (subset) constraint per statement and iterates to a fixed point; worst-case O(n³).
**andmap / ormap** — Higher-order predicates testing whether all / any list elements satisfy a predicate, stopping early like short-circuit `and`/`or`.
**Angel** — The existential/verifying player in a hybrid game, who resolves the diamond (angelic) choices and tries to reach the goal; a `⟨α⟩P` formula asserts Angel has a winning strategy.
**angelic execution (angelic nondeterminism)** — Executing a program with `choose` operators whose values an oracle (solver/model finder) selects to satisfy the specification.
**annotation-based analysis** — Analysis driven by programmer annotations (e.g. `@NonNull`/`@Nullable`) checked like a pluggable type system, enforcing invariants such as never dereferencing a nullable value.
**anonymous function (lambda)** — A function written inline without a name (`fun x -> ...`, `λx. t`); an abstraction that binds x in its body and is itself a value.
**answer substitution** — In logic programming, the binding of the query's free variables reported on success (read existentially), in lieu of the full derivation.
**antecedent** — In a SAT solver, the unit clause that forced an implied literal's assignment, used when computing the conflict clause.
**antecedent / succedent** — The left side of a sequent (an assumption available for use) and the right side (the proposition to be verified/derived).
**anticipated (very-busy) expressions** — Expressions whose value will definitely be evaluated on every path forward from a point before their operands change; a backward analysis marking where a computation may be safely hoisted, driving partial-redundancy elimination.
**ANY / ALL** — SQL predicates comparing a value against some (`ANY`) or every (`ALL`) element of a subquery result.
**append (`@`)** — The infix list-concatenation operation; `L1 @ L2` takes time proportional to the length of `L1` and is associative.
**append operator (@)** — The OCaml operator concatenating two lists; O(n) because the first list is copied.
**application** — The elimination form of a function, written by juxtaposition `f e`; evaluated by reducing the function, then (call-by-value) the argument, then substituting the argument into the body.
**application (lambda calculus)** — A function call t₁ t₂; the only lambda-term form that can step, via β-reduction.
**application binary interface (ABI)** — The standard (e.g. System V/AMD64) governing binary interoperation: calling convention, register roles, and stack discipline.
**apply** — A procedure that calls a given function on a list of arguments.
**approaches to concurrency** — Process-based (kernel-interleaved flows with private address spaces), event-based (one address space, flows interleaved via I/O multiplexing), and thread-based (kernel-interleaved flows sharing one address space).
**architectural style** — A named, reusable organization of components and connectors with known properties and tradeoffs (e.g. pipe-and-filter, layered, client-server, publish-subscribe, repository, microservices).
**architectural tactic** — A design decision targeted at improving a specific quality attribute (availability, performance, security), resembling a design pattern but aimed at a quality rather than at structure.
**architectural view** — A representation of the architecture from one perspective (module, component-and-connector, allocation); different views and notations are chosen to suit the documentation's purpose.
**architecture vs. design** — Architectural questions concern system-wide structure and quality attributes; design questions concern local implementation within a component.
**argument/return registers** — The registers the ABI designates to pass the first several arguments (x86-64: %rdi, %rsi, %rdx, %rcx, %r8, %r9) and to return the result (%rax); excess arguments are passed on the stack.
**arithmetic (integer) overflow** — A calculation producing a result unrepresentable in the fixed width; C and Java silently wrap, leaving a bad value.
**arithmetic right shift** — A right shift that replicates the sign (most-significant) bit on the left, preserving sign for signed values.
**arithmetic/logical instructions** — Two-operand `addq`/`subq`/`imulq`/`andq`/`orq`/`xorq` and shifts, plus one-operand `incq`/`decq`/`negq`/`notq`.
**Armstrong's Axioms** — The inference rules (reflexivity, augmentation, transitivity) for deriving all functional dependencies implied by a given set.
**array** — A contiguous, fixed-size block of same-typed elements with O(1) indexed access; in C it has no bounds checking and does not know its own length.
**array bounds checking** — The runtime checks that an index satisfies `0 ≤ i < length` (and the base is non-null) before access, raising a memory exception otherwise.
**array bounds obligation** — A verification proof obligation: a concrete access `a[e]` translates to `read a e` with precondition `0 ≤ e < length a`, and an update to a fresh `write` with the same bound.
**array extensionality** — The axiom `(∀i. read a i = read a' i) ↔ a = a'`: two arrays are equal exactly when they agree at every index.
**array of pointers** — A layout where each element points to a separately allocated array, contrasted with a contiguous array of arrays.
**array representation of a heap** — Storing a complete tree in an array with 1-based indexing so node i has parent i/2, children 2i and 2i+1, needing no explicit links.
**array-to-pointer decay** — An array argument is promoted to a pointer to its first element and passed by value, so a callee can modify contents but not the caller's pointer.
**array-update assignment axiom** — `[a(e) := ẽ]p(a) ↔ p(aₑẽ)`: reasoning about an array store replaces free occurrences of the array by its patched version, sidestepping aliasing via case splits on index equality.
**arrays as functions** — Modeling an array as a function `ℤ → ℤ`, so a program state maps variables to `ℤ ∪ (ℤ → ℤ)` and array stores become function updates.
**ascending chain** — The increasing sequence of states `Σ ⊑ F(Σ) ⊑ F(F(Σ)) ⊑ …` produced by iterating a monotone whole-program flow function from ⊥; its finiteness (bounded lattice height) guarantees termination.
**ASCII** — A 1-byte-per-character encoding of English text, digits, and symbols.
**ASCII / text encoding** — A mapping assigning each text character a number so that text can be stored and manipulated as binary.
**ASLR (address space layout randomization)** — A defense that randomizes stack and other addresses each run so an attacker cannot predict buffer or code locations.
**assembler** — The tool that translates assembly into machine-code object files.
**assert (macro)** — A C macro that aborts the program if its condition is false; disabled by defining `NDEBUG`.
**assertion** — A condition stated at a program point that must be true there; once established it may be assumed subsequently, and it can serve as a lemma even when logically redundant.
**assignable vs. variable** — An assignable is a mutable storage cell accessed by `get`/`set` commands; a variable is an immutable binding. Conflating them is invalid under concurrency, since two fetches may see different contents.
**assignment axiom** — In dynamic logic, `[x := e]P(x) ↔ P(e)` (equivalently `∀x'. x'=e → P(x')` to avoid capture): proving a property after an assignment reduces to substituting the assigned term into the postcondition.
**assignment operator (operator=)** — The C++ `=` assigning into an already-constructed object; should guard self-assignment and return `*this` for chaining.
**assignment rule (Hoare)** — The rule for how an assignment transforms an assertion: backward it is the substitution `Q[x ↦ e]`; forward it renames the mutated variable's old value.
**assignment rule (weakest precondition)** — `wp(x := e, P) = [e/x]P`: the weakest precondition of an assignment substitutes the assigned expression for the variable in the postcondition.
**assignment semantics** — The relational meaning `ω⟦x ← e⟧ν` holding iff `ν = ω[x ↦ ω⟦e⟧]`; the state is updated at x with the value of e.
**association list** — A list of (key, value) pairs used to specify a map; two association lists are "the same" when they answer every key identically.
**associativity** — The algebraic property `g(a,g(b,c)) ≅ g(g(a,b),c)`; when a combining operation is associative, the order of pairwise combination is irrelevant, enabling parallel reduction.
**associativity (algebraic)** — The operator property (x+y)+z = x+(y+z) that a parallel reduction requires so partial results can be combined in any grouping.
**associativity (cache)** — The number E of lines per cache set, determining how many places a memory block may occupy within its set.
**associativity (operator grouping)** — Whether an operator groups left-to-right or right-to-left (subtraction left, exponentiation right); encoded by the ordering of nonterminals in a grammar.
**assume-and-check annotations** — Programmer-written annotations giving the dataflow value expected for each parameter and result; the callee is checked against them and each call site verified to obey them — more precise than default assumptions, more efficient than whole-program analysis.
**AST walking (bug-pattern matching)** — A simple static analysis (often a Visitor) that traverses the abstract syntax tree, matching nodes of a given type and checking their local neighborhood against a pattern; a "semantic grep" aware of syntax but not semantics.
**asymptotic analysis** — Predicting how running time grows on large inputs without executing the code, assuming primitive operations take constant time and ignoring constant factors and low-order terms.
**asymptotic complexity categories** — The standard growth classes: O(1), O(log n), O(n), O(n log n), O(n²), O(n³), O(nᵏ), O(kⁿ).
**async-signal-safe function** — A function safe to call in a signal handler because it is reentrant or non-interruptible (e.g. `write`, `_exit`, `waitpid`); `printf`, `malloc`, and `exit` are not safe.
**asynchronous communication** — A message-passing model where a send succeeds immediately and is buffered while a receive blocks; obtained from a synchronous calculus by rewriting a send as a spawn plus a forward, adding no expressiveness.
**asynchronous exception (interrupt)** — An exception caused by an event external to the processor (timer, I/O, network packet); its handler returns to the next instruction.
**asynchronous vs. synchronous connectives (focusing)** — Andreoli's classification: a connective is negative/asynchronous if its right rule can always be applied independently of the rest of the sequent (`&`, `↑`), and positive/synchronous otherwise (`⊗`, `⊕`, `1`, `↓`).
**AT&T vs. Intel syntax** — Two assembly notations; AT&T puts the destination operand last, Intel puts it first.
**atomic memory operations** — Hardware read-modify-write instructions (test-and-set, compare-and-swap, exchange-and-add) that prevent data races and are used to build mutexes and semaphores.
**atomic proposition** — A true-or-false statement that cannot be broken into simpler statements.
**atomicity** — The property of an operation appearing to happen as one indivisible, uninterruptible step, never exposing an intermediate state.
**atomicity violation** — A concurrency bug in which code meant to execute atomically suffers interference from another thread; fixed by reordering or synchronization.
**attack surface** — The set of points where an attacker can attempt to enter or extract data; reduced by input validation and by banning dangerous APIs.
**attribute (column, field)** — A named component of a relation, e.g. `Name` or `Salary`.
**attribute (field / property)** — A named piece of data stored on an object/instance and accessed with dot notation; the per-instance state a class bundles with its methods.
**attribute-level constraint** — A constraint attached to one attribute, e.g. `NOT NULL`, `UNIQUE`, or a single-column `CHECK`.
**auto / range-based for** — C++11 `auto` infers a variable's type from its initializer; `for (auto& x : container)` iterates a sequence binding each element by reference.
**auto-active verification** — A verification style (Dafny) combining automatic solving with interactive annotation in the program text, without step-by-step tactics.
**autocommit** — A mode in which each SQL statement is its own transaction, committed immediately.
**autocompletion** — Suggesting which methods/identifiers to offer next, framed as a program-analysis problem.
**automated debugging** — Techniques that localize or explain faults automatically.
**automated theorem prover** — A back-end solver that decides validity/satisfiability of the verification conditions a verifier produces (e.g. Z3, CVC, Alt-Ergo); the pipeline encodes proof obligations as satisfiability and discharges them.
**automaton** — A recognizer: a machine that accepts an input string if it belongs to the language and rejects it otherwise.
**auxiliary variable (ghost)** — An extra variable added to a model or proof purely to enable reasoning (arithmetic ghosts, ghosts of time, differential ghosts), which does not affect the original system's observable behavior.
**available expressions** — A forward "must" dataflow analysis finding expressions already computed and not since invalidated on all paths to a point; the meet is intersection, and it enables common-subexpression elimination.
**average / expected complexity** — The average number of steps over random inputs of size n.
**average memory access time (AMAT)** — AMAT = hit time + miss rate × miss penalty.
**axiom** — An inference rule with no premises; an unconditionally true base case.
**axiom of convergence** — The diamond counterpart of induction proving termination: with a variant predicate `V(n)`, a state satisfying `V(0)` is reachable if each iteration can decrease n from `V(n)` toward `V(n−1)`.
**axiom vs. axiom schema** — An axiom is a single concrete valid formula; an axiom schema is an infinite family of instances (instantiated instead by uniform substitution).
**axiomatic (compositional) reasoning** — Giving one reasoning principle (axiom) per program operator that reduces a property of a compound program to a logical combination of properties of its subprograms.
**axiomatic semantics** — A definition of a program's meaning in terms of assertions about what is true after execution; the basis for Hoare-logic verification.
**axiomatic separation (systems vs. games)** — The result that certain axioms (K, I, C, B, V, G) behave differently for hybrid games than for hybrid systems, pinpointing the difference adversarial choice introduces.
**axiomatic specification** — Describing a function's defining properties directly as axioms (e.g. `fib 0 = 0`, `fib 1 = 1`, `fib(n+2) = fib(n+1)+fib(n)`) rather than by an explicit definition.
**axiomatics** — The method of internalizing semantic relations into universal, syntactic, reusable axioms so that reasoning about programs becomes syntactic manipulation.
**axioms as concrete data** — The consequence that, with uniform substitution, all axioms and axiomatic rules become finitely many concrete formulas rather than infinite schemata.
**axioms of probability** — Probabilities are non-negative, the whole sample space has probability 1, and the probability of a union of disjoint events is the sum of their probabilities.
**B+ tree** — A perfectly balanced index tree whose leaves hold the keys; with fan-out m a lookup costs about log_m N block reads, kept balanced by splitting/merging.
**back edge** — A CFG edge `t → h` whose head h dominates its tail t; every back edge lies in at least one loop, and back edges drive loop detection and iterative-analysis convergence.
**backlog / connection queue** — The queue of pending client connections a listening socket holds; the OS refuses new connections once it is full.
**backtracking / subgoal ordering / clause ordering** — In logic-program search, on subgoal failure the engine returns to the most recent choice point to try another clause; subgoals are attempted left-to-right and clauses in presentation order, and these orderings affect termination and the solutions found.
**Backus–Naur Form (BNF)** — A recursive notation of productions defining a language's structure (e.g. `e := n | x | e + e`); first used for ALGOL 60, also used to specify abstract grammars.
**backward reasoning** — Filling in a Hoare triple's precondition by pushing the desired postcondition upward, producing the weakest precondition.
**backward vs. forward chaining** — Two proof-search directions tied to atom polarity: making atoms negative yields goal-directed backward chaining (goal to subgoals, Prolog-style); making atoms positive yields forward chaining (deriving new facts from premises, Datalog-style).
**bad interleaving** — A race condition (other than a data race) exposing a bad intermediate state, e.g. using a stale index while another thread resizes a structure.
**balanced tree** — A tree in which each subtree holds roughly half the remaining data, giving depth O(log n) and enabling logarithmic-span operations.
**Barendregt numerals** — An alternative numeral encoding representing n as a sequence of F-tagged Church pairs ending in the identity combinator, making case analysis (`ifz`) easy to program.
**base case** — The non-recursive starting instance of an inductive proof or recursive definition, proved or handled directly (e.g. P(0), nil, or n = 0).
**base case / recursive case** — The two parts of a recursive definition: the base case returns a direct answer for the simplest input and stops the recursion, while the recursive case reduces the problem toward the base case and calls the function again.
**base class / derived class** — The parent and child in C++ inheritance (Java's superclass and subclass).
**base type** — The underlying language type to which a type qualifier is attached (e.g. `Optional<String>` under `@Present`).
**basic block** — A maximal straight-line sequence of instructions with a single entry at the top and single exit at the bottom (no internal jumps or jump targets); the unit of local analysis and a CFG node.
**basic loop induction rule (`ind0`)** — The rule proving `[α*]P` from P holding initially and `P → [α]P` (that P is inductive), derived from the induction axiom and Gödel generalization.
**basic, hypothetical, and general judgments** — The forms of judgment expressible in a logical framework; the hypothetico-general form (dependent function classes) is central to defining many logical systems.
**Bayes' theorem (Bayes' rule)** — Inverts conditioning: P(A|B) = P(B|A)·P(A)/P(B), used to update a prior into a posterior after observing evidence.
**behavioral specification** — Any property of terms closed under head expansion — determined by how a program behaves rather than what it is; types induce such specifications, but there are more specifications than types.
**behavioral subtyping** — B is a subtype of A only if it provides all of A's methods, each with the same or a stronger spec (weaker preconditions, stronger postconditions).
**Bekić's Lemma** — The reduction of a simultaneous least fixed point of interdependent monotone operators to an iterated sequence of least fixed points, via a diagonalization lemma.
**Belady / "best" algorithm** — The locally optimal eviction/spill rule of evicting the value whose next use is farthest in the future; realizable only statically.
**benchmark-based metric** — A metric interpreted by comparison against typical values collected from a reference set, rather than in absolute terms.
**benign effect** — A side effect (e.g. a locally created, garbage-collected ref cell) that produces no observable change, so the code still behaves purely functionally.
**Bernoulli distribution** — A single trial succeeding with probability p; a 0/1 variable with mean p and variance p(1−p).
**best case / worst case** — The inputs that make an algorithm perform the fewest or the most basic operations, used to bound its running time.
**best-case complexity** — The minimum number of steps an algorithm takes over all inputs of size n.
**beta and eta rules (βη)** — β rules express computation (an elimination cancels against a matching introduction); η rules express the unicity/universal-property conditions that fully determine a negative type's elements.
**beta-equivalence (β-conversion)** — The least reflexive, symmetric, transitive, compatible relation containing β-reduction (together with α-conversion); a notion of equality of terms by calculation.
**beta-normal form (β-normal form)** — A β-irreducible term (no β-reduction applies); β-normalization reduces to normal form, but not every term has one and some reduction sequences diverge.
**beta-reduction (β-reduction)** — The computation step replacing `(λx.M) N` by `[N/x]M`, firing when a destructor meets a constructor; the sole rule of calculation in the λ-calculus and "the engine of computation."
**beta-value reduction (β-value reduction)** — The call-by-value law `(fn x:t => e) v ≅ [v/x]e`, valid only once the argument has been reduced to a value.
**biased notation (bias)** — Storing a float's exponent as an unsigned value offset by a bias (127 for single precision) so Exp = E − bias.
**biconditional (↔)** — The connective "if and only if"; p ↔ q is true exactly when p and q have the same truth value.
**bidirectional typechecking** — Splitting typing into checking (`M ⇐ A`, both term and type given) and synthesis (`M ⇒ A`, type inferred from the term); the programming-language reading of verifications.
**big-endian** — Byte order with the most-significant byte at the lowest address (SPARC, PowerPC, network byte order).
**big-O classes** — Standard growth classes: O(1) constant, O(n) linear, O(n²) quadratic, O(log n) logarithmic, O(n log n), O(2ⁿ) exponential.
**big-O notation** — The classification `f is O(g)` meaning there exist constants c and N with `|f(n)| ≤ c|g(n)|` for all n ≥ N; abstracts away constant factors and low-order terms, with only the dominant term mattering.
**Big-O — O(g(n))** — The set of functions asymptotically ≤ g(n); an asymptotic upper bound.
**Big-Omega — Ω(g(n))** — The set of functions asymptotically ≥ g(n); an asymptotic lower bound.
**big-step (evaluation / natural) semantics** — A dynamics inductively relating an expression directly to its final value (`e ⇓ v`), suppressing intermediate states; close to an efficient recursive interpreter.
**big-step operational semantics** — Semantics relating a state directly to its final valuation, (v, c) ⇓ v′, in a single evaluation step.
**Big-Theta — Θ(g(n))** — A tight bound Ω(g) ∩ O(g): within a constant factor of g both above and below for large n.
**bijection** — A function that is both injective and surjective, pairing each domain element with exactly one codomain element.
**binary (base 2)** — The base-2 number system, using only 0 and 1.
**binary heap** — A priority queue kept in a complete binary tree maintaining the heap property; Θ(log n) insert and deleteMin.
**binary relation** — A set of ordered pairs relating elements; properties include reflexive, symmetric, and transitive, and it may be pictured as a directed graph.
**binary search** — Searching a sorted array by repeatedly examining the middle element and discarding the half that cannot contain the key; Θ(log n).
**binary search tree** — A sorted binary tree in which every key in a node's left subtree is less and every key in its right subtree is greater; supports logarithmic lookup when balanced.
**binary search tree (BST)** — A binary tree obeying the order property (all left-subtree keys smaller, all right-subtree keys larger than a node), giving comparison-based descent.
**binary tree** — A recursively defined structure (empty, or a node with left and right subtrees); a common target for structural induction with functions like size and height.
**binder** — The `λx` part of an abstraction, whose scope is the body.
**binding** — An association of an identifier with a value; a `let x = e` definition evaluates e and extends the environment to bind x.
**binding and scope** — A binding is the point at which a variable is introduced (e.g. by λ or `let`); its scope is the region of the program over which that binding is in force, and a use refers to the nearest enclosing binding.
**binomial coefficient (n choose k)** — C(n,k) = n!/(k!(n−k)!), the number of k-element subsets of an n-element set.
**binomial distribution** — The number of successes in n independent Bernoulli(p) trials; mean np, variance np(1−p).
**binomial theorem** — The identity expanding (x+y)^n as a sum of binomial-coefficient-weighted terms.
**bipartiteness / odd-cycle certificate** — A "yes" 2-coloring separating every edge, or a "no" closed walk of odd length (odd cycle) which cannot be 2-colored, verified via a path-parity lemma.
**birthday problem / collisions** — The analysis of how likely two of n items share a value among m possibilities, underpinning hashing collision analysis.
**bit** — A binary digit (0 or 1), the smallest unit of data.
**bit vector** — A width-w sequence of bits operated on bitwise; can represent a subset of {0,…,w−1}, with bit j set iff j is in the set.
**bitmask** — A chosen bit vector combined with data via &, |, or ^ to set, clear, keep, or flip selected bits.
**bitwise AND / OR / NOT / XOR (`& | ~ ^`)** — Operators applied bit-by-bit to integral operands viewed as bit vectors, corresponding to set intersection, union, complement, and symmetric difference.
**bitwise operators** — Boolean operations (AND, OR, XOR, NOT) applied to bit vectors one position at a time.
**black height** — The number of black nodes on any path from a given node down to an empty leaf; the red-black invariant requires this count be equal on all such paths.
**black hole** — A pseudo-value marking a `fix`-bound variable under evaluation; if the recursion depends on itself before unrolling, reaching the black hole aborts gracefully rather than looping forever.
**black-box vs. white-box testing** — Black-box (functional) tests derive inputs from the specification without knowledge of internals; white-box (structural) tests use knowledge of code structure to drive coverage.
**block (disk page)** — The unit the disk reads and writes; a query processor always reads one entire block at a time.
**block (Ruby)** — A chunk of code passed to a method with `{ }` or `do...end`; a closure that may take parameters between `|...|`.
**block (scope)** — A region of program text (e.g. delimited by braces) that introduces a new lexical scope.
**block / payload (allocator)** — The allocator manages the heap as variable-sized blocks; the payload is the usable portion returned to the program.
**block header / footer (boundary tag)** — A one-word header storing a heap block's size and allocated bit; a replicated footer (boundary tag) enables constant-time backward coalescing.
**block nested-loop join** — A nested-loop join that reads R in chunks of (M−2) pages to reduce passes over S.
**block offset** — The low-order address bits locating the requested bytes within a cache block.
**blocking (cache blocking / tiling)** — Restructuring a computation into sub-blocks that fit in cache (e.g. B×B matrix tiles) to exploit temporal locality and cut misses.
**blocking call** — A call that does not return until it can proceed (connect, read awaiting data, accept awaiting a connection); the default behavior.
**Blum's Size Theorem** — The result that in any expressive total language there are functions whose shortest implementation is enormously larger than a λ-calculus implementation, because a total-language program embeds its own termination proof.
**BNF (Backus–Naur Form)** — A common notation for context-free grammars, with bracketed non-terminals, `::=` for productions, and `|` for alternatives.
**Boogie** — The intermediate verification language into which Dafny and similar tools lower programs before generating verification conditions.
**Boolean abstraction (T2B) / refinement (B2T)** — T2B replaces each theory atom with a fresh Boolean variable for the SAT solver; B2T maps a Boolean assignment back to theory constraints.
**Boolean algebra** — Boole's algebraic encoding of logic with True = 1 and False = 0, the basis for bit-level operations.
**Boolean expression (SQL)** — A WHERE/ON condition built with AND, OR, NOT over comparisons.
**bootstrapping** — Starting a generated program by linking it with a small C driver that sets up the process and calls the compiled entry point.
**Bottom (⊥)** — The minimal lattice element, used as the initial value at un-analyzed program points; `⊥ ⊑ l` and `⊥ ⊔ l = l` for all l.
**bottom-up parsing** — Parsing that builds the tree from the leaves up, matching right-hand sides while scanning left-to-right; reconstructs a rightmost derivation in reverse.
**bottom-up parsing (shift-reduce, LR)** — Parsing that builds the parse tree from the leaves up, shifting tokens onto a stack and reducing by grammar rules; LR(1), SLR, and LALR are increasingly practical table-driven variants.
**bound (may-bound) variables (BV)** — The variables a program may write on some execution path (bound by assignments, quantifiers, or modalities); contrasted with must-bound variables, written on every path.
**bound variable** — A variable governed by (in the scope of) a quantifier or binder.
**bound-effect lemma** — If `(ω, ν) ∈ ⟦α⟧` then ω = ν off `BV(α)`: a program changes only its bound (may-written) variables.
**boundary / special values** — A testing heuristic of trying special inputs (null, empty, zero, endpoints) where bugs commonly hide.
**boundary-value analysis** — Selecting extreme or unique cases at or around boundaries of preconditions or decision points (zero-length inputs, very long inputs, null references), which tend to reveal off-by-one and boundary errors.
**bounded / k-limited exploration** — Exploring only paths up to a bound (e.g. loops unrolled fewer than k times); unsound for verification but sound-but-incomplete for bug finding.
**bounded model checking (BMC)** — Under-approximating the reachable state space by unrolling all loops to a fixed depth k and treating bounded paths symbolically; finds bugs within the bound but cannot prove their absence beyond it.
**bounded verification** — Checking that all executions up to a bounded length satisfy a property, contrasted with unbounded Hoare-style verification.
**bounds checking** — Verifying at run time that array indices are in range; present in Java, absent in C/C++.
**box modality [α]P** — "In every poststate reachable by α, P holds"; the partial-correctness/safety modality, dual to diamond (`[α]P ≡ ¬⟨α⟩¬P`).
**Boyce-Codd Normal Form (BCNF)** — A relation is in BCNF if for every nontrivial FD X → Y that holds, X is a superkey; the algorithm decomposes violators, eliminating anomalies.
**branch coverage** — The fraction of conditional branches (both then and else) executed by some test.
**branch prediction** — The processor's guessing of branch outcomes to keep deep pipelines busy.
**branching-time vs. linear-time** — Branching-time logic (CTL) reasons about the tree of possible futures, whereas linear-time logic (LTL) reasons along single paths; the two are incomparable in expressiveness.
**breadth-first search (BFS)** — A traversal visiting vertices in increasing distance from a start using a queue; Θ(|V|+|E|); finds unweighted shortest-path distances.
**Brent's theorem** — An expression with work w and span s can be evaluated on p processors in time bounded by `max(w/p, s)`; it bounds achievable speedup given the work and span.
**brute-force algorithm** — An approach that enumerates every candidate solution and checks each against the problem's constraints; simple to write but often exponential and impractical.
**Brzozowski derivative (∂ₐr)** — A regular expression such that `aw ∈ L(r)` iff `w ∈ L(∂ₐr)`, computable by structure on r, enabling left-to-right matching without guessing splits.
**bucket / counting sort** — For integers in a known range 0..k−1, index each value into a bucket and read the buckets in order; Θ(n + k), stable, not in place.
**buffer** — An array used to temporarily store data, often user input.
**buffer overflow** — Writing past the bounds of a fixed-size (often stack) buffer, e.g. via `gets`/`strcpy`/`scanf %s`, potentially overwriting the saved return address and letting an attacker redirect execution; a leading cause of security vulnerabilities.
**buffer pool (main memory)** — The M pages of main memory available to hold disk blocks during query processing.
**buffering** — stdio copies data into an in-process buffer drained on flush, buffer-full, newline, close, or exit; batches small I/O but risks data loss on crash.
**bug depth** — The number of context switches needed to trigger a concurrency bug; many real bugs have small depth.
**bugs as reachability** — Converting error checks into reachability problems (`assert(p) → if(!p) ERROR`), so bug finding becomes finding inputs that reach an ERROR.
**Builder** — A creational pattern using a mutable helper object to assemble an immutable value piece by piece (e.g. `StringBuilder`).
**buildHeap (Floyd's method)** — Turning an arbitrary array into a valid heap by percolating down each node from the last internal node to the root, in Θ(n) total.
**by-need evaluation (memoization)** — The maximally lazy dynamics that evaluates a bound expression at most once and reuses (memoizes) the result, sharing the work of evaluation.
**by-value (eager) vs. by-name (lazy)** — Two evaluation disciplines: by-value evaluates a function's argument to a value before substituting; by-name substitutes the unevaluated argument, letting variables range over computations. The distinction is invisible without non-termination.
**byte** — A group of 8 bits; the fundamental addressable unit of memory.
**byte ordering (endianness)** — The convention for ordering the bytes of a multi-byte word in memory, significant when data crosses machines via network or files.
**bytecode** — A compiled virtual-machine instruction format (e.g. for the JVM) interpreted rather than run as native machine code.
**Bézout certificate** — A gcd certificate `(g, x, y)` with `g = ax + by`, `g | a`, `g | b`, verified by checking the identity and divisibilities; produced by the extended Euclidean algorithm.
**Bézout's theorem** — For integers a, b, gcd(a, b) can be written as sa + tb for some integers s, t.
**Büchi acceptance (visit F infinitely often)** — The acceptance condition distinguishing Büchi automata from NFAs: a run is accepted iff it visits an accepting state infinitely often, reducing (since states are finite) to whether the infinitely-visited states intersect the accepting set.
**C** — A small, procedural, low-level language (Ritchie, 1972) for system software; typed but unsafe and portable across architectures.
**C preprocessor (cpp)** — A stateful text search-and-replace stage transforming source before compilation, processing `#`-directives.
**C standard library (glibc)** — The standard C library on Linux; part ordinary functions and part wrappers around POSIX/OS system calls.
**C string** — A null-terminated (`\0`) array of one-byte characters (`char*`); has no methods, but `string.h` provides utilities.
**C++ as a superset of C** — C is roughly a subset of C++, so C code still compiles, though mixing C and C++ idioms is bad style.
**cache** — A smaller, faster storage device that stages a subset of the data held in a larger, slower device, exploiting locality to serve most references quickly.
**cache block (line)** — The fixed-size unit (B = 2ᵇ bytes) of several consecutive elements transferred between two levels of the memory hierarchy; spatial locality arises because one miss brings in a whole line.
**cache block / line** — The fixed-size unit of transfer between cache and memory; an entire block is brought in on a miss.
**cache blocking (tiling)** — Restructuring a computation into cache-sized sub-blocks (tiles) so data is reused before eviction, cutting misses; e.g. B×B matrix-multiply tiles.
**cache blocking / cache-friendly code** — Reordering memory accesses (e.g. blocked matrix multiply) to reuse cache blocks while resident, maximizing locality.
**cache hit / miss** — A hit finds the requested block already in the cache; a miss must fetch it from the next level, incurring the miss penalty.
**cache organization (S, E, B)** — A cache described by S = 2ˢ sets, E lines per set, and B = 2ᵇ bytes per block, for total data size S·E·B; the address splits into tag, set index, and block offset.
**cache parameters** — Block size, cache size, associativity (blocks per set), and number of sets that define a cache's geometry.
**cache-friendly code** — Code that minimizes inner-loop misses by reusing data (temporal locality) and using stride-1 access (spatial locality).
**Caesar cipher** — A classical encryption scheme that shifts each letter of the plaintext by a fixed amount; easily broken, used to introduce the idea of a cipher.
**call / ret** — `call` pushes the return address and jumps to a procedure; `ret` pops it into the program counter to resume the caller.
**call graph** — A directed graph recording which procedures call which; interprocedural analyses partition it at cut points and its edges depend on resolving dynamic dispatch.
**call stack** — The stack of saved caller states (each frame holding the caller's environment/continuation or saved registers and locals) that lets control and locals be restored on return and makes recursion work.
**call-by-name** — An evaluation strategy applying β-reduction before evaluating the argument; the basis of laziness.
**call-by-name (lazy evaluation)** — An evaluation discipline that passes arguments unevaluated, substituting the unevaluated computation so variables range over general (possibly divergent) expressions.
**call-by-need** — The maximally lazy strategy (Haskell's) that passes arguments unevaluated but memoizes a thunk's value on first force, so it is evaluated at most once and shared.
**call-by-push-value (CBPV)** — Levy's calculus, obtained by polarizing natural deduction, that splits types into positive value types and negative computation types and compositionally embeds both call-by-value and call-by-name, choosing eager vs. lazy per connective.
**call-by-reference** — Passing a parameter that aliases the caller's argument so changes propagate back; C simulates it with pointers, C++ with references.
**call-by-value** — The default where a parameter receives a copy (or the evaluated value) of the argument, so changing the parameter does not affect the caller's variable.
**call-by-value (eager evaluation)** — An evaluation discipline that reduces a function's argument to a value before substituting it into the body; variables range only over values.
**call-string context** — An interprocedural analysis context represented by the sequence of call sites on the stack; k-limited call strings truncate to the last k calls to keep the context set finite.
**call/cc (and throw)** — First-class control operators: callcc(k.M) captures the current continuation (evaluation context) and binds it to k, while throw abandons the current context and resumes a captured one; the computational reading of classical proof by contradiction.
**caller / callee** — In a procedure call, the calling procedure is the caller and the called procedure is the callee.
**caller-saved / callee-saved registers** — Registers the caller must save before a call if needed afterward (caller-saved) versus registers the callee must preserve across the call (callee-saved).
**caller-saved vs. callee-saved registers** — Caller-saved registers may be freely clobbered by a callee, so the caller must preserve any live values across a call; callee-saved registers must be preserved by the callee, which saves and restores them if it uses them.
**calling convention** — The ABI rules by which caller and callee pass control and data: arguments in registers, return value in a fixed register, and register-saving responsibilities.
**calling convention (ABI)** — The agreed protocol for procedure calls (argument-passing registers then stack, return-value register, register save responsibilities, stack alignment) that code must obey to interoperate.
**candidate family** — For open terms, an assignment giving each context an open candidate that shrinks as the context grows; the Kripke-indexed form of a computability candidate.
**candidate for computability** — A predicate on closed terms of a type that is closed under head expansion; the general notion abstracting hereditary-termination and hereditary-normalization predicates in Tait's method.
**canonical and neutral forms (LF)** — LF's syntax-directed judgments for canonical (long βη-normal) and neutral (elimination-headed) kinds, families, and objects, eliminating the need for a separate equivalence checker.
**canonical form (value)** — The terminal result of evaluating an expression (E ⇓ E₀); types are explained in terms of their canonical members and evaluation is deterministic.
**canonical forms lemma** — A characterization of the closed values of each type (e.g. a value of nat is a numeral, of a function type a λ-abstraction); the bridge between statics and dynamics in the progress proof.
**canonical-forms method** — Defining the judgments of computational type theory (A type, M ∈ A, and equality) by requiring that the objects evaluate to canonical types and members.
**canonicity** — Normalization at the base type: every closed program of type nat evaluates to some numeral.
**canvas** — The two-dimensional drawing surface on which a graphics program renders shapes, text, and images.
**canvas coordinates** — The canvas's coordinate system, whose origin is at the top-left corner with x increasing rightward and y increasing downward.
**capture** — The error in which a free variable of a substituted term falls under a binder, changing its meaning; substitution is undefined where capture would occur and is repaired by renaming bound variables.
**capture-avoiding substitution** — Substitution that renames binders as needed so a free variable in the substituted term is not accidentally captured.
**capture/recapture** — Estimating the number of undetected defects from the overlap between defects found by two independent inspectors, via Lincoln–Petersen analysis (N = n₁·n₂/m).
**car / cdr** — The historic Lisp names for the head and tail of a list.
**cardinality (set size)** — The number of elements of a set, |A|; extended to infinite sets via bijections (countable vs. uncountable).
**cardinality estimation** — Estimating the number of tuples each intermediate query result produces, computed bottom-up to estimate plan cost.
**Cartesian product (cross product)** — Combining every tuple of one relation with every tuple of another; a join with no matching condition.
**case expression** — An expression that evaluates a scrutinee, matches its value against patterns in order, and evaluates the corresponding branch; the elimination form for sum/datatype values.
**casting** — Converting a value from one type to another; type-safe casts perform a real conversion, while C/C++ casts can reinterpret raw bits, change width, or change interpretation.
**CBPV stack machine (eval/retn/cont)** — An ordered operational semantics for CBPV with predicates eval(M), retn(T), and cont(K), whose continuation frames form a stack; application pushes a value, giving the system its name.
**Celf** — The implementation of the Concurrent Logical Framework, whose execution applies rules by forward chaining until no rule applies (quiescence).
**Central Limit Theorem (CLT)** — As n → ∞, the standardized sum or average of n i.i.d. random variables converges in distribution to a normal, regardless of the original shape.
**chain of equivalences** — A proof transforming one proposition into another by applying known equivalence laws one step at a time.
**chain rule (multiplication rule)** — Expresses a joint event's probability as a product of conditionals, e.g. P(A∩B) = P(A)·P(B|A).
**chaining (proof search)** — The focusing strategy of, once a proposition is in focus, continuing to decompose it and its subformulas as long as they keep the focused polarity, without pausing to consider other propositions.
**change control board** — A body that reviews and approves proposed changes (e.g. new feature requests) against project constraints during planning.
**channel names** — The unique names carried by each antecedent and the succedent in the session-typed sequent calculus, resolving which of several providers a process addresses; cut shares a fresh private channel.
**channel restriction (νa.P)** — Binding a symbol a privately within a process P so that, by α-equivalence, it is an unguessable secret inaccessible to outside processes; the means of preventing interference.
**characterization by type ("free theorems")** — Using parametricity to determine a polymorphic function's behavior from its type alone, e.g. proving every closed f : ∀t. t→t equals the identity.
**Chebyshev's inequality** — Bounds deviation from the mean using variance: P(|X − 𝔼[X]| ≥ a) ≤ Var(X)/a².
**checked exception** — An exception the compiler forces the programmer to either catch or declare (e.g. Java's `FileNotFoundException`); contrasted with unchecked (runtime) exceptions.
**checked vs. unchecked error** — A checked error is detected and signalled during execution (division by zero, a type-tag mismatch), keeping the state unstuck; an unchecked error is one the static semantics rules out in advance.
**Checker Framework** — A framework for building custom pluggable type-checkers for full Java, used in industry and research.
**checking (semantic analysis)** — The compiler pass(es) that filter out grammatically valid but illegal programs and annotate the AST with types and symbol information.
**checklist (review)** — A short structured list of likely error sources and priority items that focuses reviewers, makes inspections systematic, and counters reviewer fatigue.
**Chernoff bound** — An exponentially decaying tail bound for sums of independent random variables, far tighter than Markov or Chebyshev.
**chip and conquer** — Recursion T(n) = T(n−c) + f(n): each call shrinks the input by a constant amount.
**choice axiom ([∪])** — The dynamic-logic axiom [α ∪ β]P ↔ ([α]P ∧ [β]P): a property holds after a nondeterministic choice iff it holds after each branch.
**choice sequent** — In staged proof search, the sequent reached once all invertible rules are exhausted, where a genuine nondeterministic choice (∨R, ⊃L, id) must be made.
**Chomsky hierarchy** — The nested classification of languages: regular ⊂ context-free ⊂ context-sensitive ⊂ recursively-enumerable, each tied to a grammar and machine class.
**chordal graph** — A graph in which every cycle of length ≥ 4 has a chord; interference graphs of SSA-form programs are chordal, and chordal graphs can be optimally colored in polynomial time.
**Church booleans** — The λ-encoding true = λx.λy.x and false = λx.λy.y, so a Boolean applied to two arguments selects between them exactly like a conditional.
**Church encoding** — Representing data (booleans, naturals) purely as lambda terms, e.g. true := λt.λf.t.
**Church numerals** — The λ-encoding of a natural number n as λs.λz. sⁿ z, iterating its first argument n times over its second; arithmetic is defined by iteration.
**Church's law** — Harper's framing of the claim that the λ-calculus can express every computable function on the naturals, presented as a scientific law about the nature of computation.
**Church–Rosser theorem** — The theorem that β-reduction is confluent (M ≡β M′ iff they share a common reduct), which implies each term has at most one β-normal form.
**Church–Turing thesis (Church's thesis)** — The claim that the effectively computable partial functions are exactly those implementable by Turing machines, equivalently in the λ-calculus, so all Turing-equivalent languages have the same expressive power.
**circuit (hardware)** — A physical arrangement of components that redirects electrical voltage to perform a computational action; the substrate that implements logic gates.
**circular array** — An array-backed queue where indices wrap modulo the array length, reusing freed front slots and resizing when full.
**CISC / RISC** — Complex Instruction Set Computing adds many specialized instructions (x86-64); Reduced Instruction Set Computing keeps a small regular set (ARM, RISC-V).
**CISC vs. RISC** — x86 is a Complex Instruction Set Computer (many instructions and formats); ARM/RISC-V are Reduced Instruction Set Computers (few instructions and addressing modes).
**clash** — A failed uniform-substitution attempt where admissibility is violated (a substituted variable would be captured by a binder or modality); the substitution is rejected rather than applied unsoundly.
**class** — A programmer-defined type describing the state and behavior of its instances; in Python "class" and "type" are synonyms, and a class is created with the `class` keyword.
**class / object** — A class is a user-defined type with member functions and data; an object is an instance of a class.
**class variable (@@)** — A single variable shared across all instances of a Ruby class; analogous to a Java static field.
**classical linear logic (CLL)** — Girard's original one-sided-sequent formulation ⊢ A₁,…,Aₙ in which the comma is a par disjunction, with an involutive linear negation and De Morgan dualities.
**classical logic** — A logic that accepts the law of excluded middle and the Boolean view that every proposition is either true or false.
**classical sequent calculus (multiple conclusions)** — Gentzen's encoding of classical logic obtained by allowing multiple persistent succedents (Γ ⟹ Δ), read as "the conjunction of Γ entails the disjunction of Δ," sufficient to derive excluded middle.
**classical vs. intuitionistic reasoning** — Classical reasoning permits multiple succedents and law-of-excluded-middle "hedging" (e.g. P ∨ (P → Q)); intuitionistic reasoning requires a single succedent and a witness for existentials.
**classification / regression / clustering** — Three kinds of machine-learning task: classification predicts a discrete category, regression predicts a numeric value, and clustering groups similar data without labels.
**clausal function definition** — A function defined by several clauses fn p1 => e1 | … | pn => en, where an argument value is matched against each pattern in turn.
**clause deletion** — Periodically discarding learned clauses that are old, long, or irrelevant to keep a SAT solver's database manageable.
**clause learning** — Augmenting the formula with conflict clauses derived during search so the solver prunes future assignments due to the same root cause.
**clear-box (glass-box) testing** — Choosing test cases by looking at the actual code so tests exercise its specific structure; contrasted with black-box testing from the spec alone.
**client-server** — A model/architectural style separating service-requesting clients from service-providing servers, typically communicating over a network; the basis of network applications.
**client/server model** — A pattern where a server receives connections from clients that establish connections to it.
**closed expression** — An expression with no free variables.
**closed-form solution** — A non-recursive formula for a recurrence (e.g. W(n) = n·c₁ + c₀), often found by unrolling the recurrence or proving a guess by induction.
**closure (attribute set) (X⁺)** — The set of all attributes functionally determined by X; used to test whether an FD holds or whether X is a superkey.
**closure (F\*)** — A transfer-function operation, absent from iterative dataflow, F* = ⋀ₙ Fⁿ, summarizing 0, 1, 2, … trips around a loop's back edge in one step; used to build region summaries.
**closure (function value)** — A function value consisting of a λ-expression together with the environment of bindings present when the function value was defined.
**closure (functions)** — The pairing of a function's code with the environment in effect when it was defined, so free variables resolve to their defining-time bindings.
**closure (LR items)** — The operation that, given a set of LR items, adds all items `[B ::= . γ]` for nonterminals B just after a dot, to a fixed point.
**clustered vs. unclustered index** — An index is clustered if the data file is physically sorted by its search key (one per table); clustering strongly affects an index-based selection's I/O cost.
**cmp / test** — Instructions setting condition codes without storing a result: `cmp` computes a subtraction, `test` computes a bitwise AND.
**co-natural numbers** — The coinductive dual of the naturals (generator gen, observation pred), admitting an infinite element ω = succ(ω); illustrates extending Tait's method to coinductive types.
**coalescing (live ranges)** — Merging the live ranges of two variables connected by a copy that do not otherwise interfere, eliminating the copy.
**coalescing (memory allocation)** — Merging a freed block with adjacent free blocks to avoid false external fragmentation, done in constant time with boundary tags, either immediately or deferred.
**coalescing (memory)** — Merging a newly freed block with adjacent free blocks into one larger block to combat fragmentation.
**code cache / hot vs. cold code** — A software cache of dynamically compiled chunks; frequently executed "hot" code justifies aggressive optimization while "cold" code is left interpreted or evicted, guided by the 80/20 principle and a cost model.
**code coverage** — A measure of how much of a program (statements, branches, paths) a test suite exercises; used as fuzzing feedback and as an imperfect test-effectiveness metric.
**code injection attack** — Placing executable bytes in an input buffer and overwriting the return address to point at them so a ret runs the injected code.
**code motion** — Hoisting a loop-invariant computation out of the loop so it runs once rather than every iteration.
**code optimization** — Improving performance (fewer instructions, memory stalls, and branches) without changing observable program behavior.
**code review** — A person other than the author reasoning through code (or manual inspection) to catch defects; standard industry practice and a form of program analysis.
**code shape** — The systematic way a compiler lowers each source construct into target code while maintaining chosen invariants (e.g. "expression result in %rax").
**code tracing** — Reading a program by hand and simulating its execution step by step to determine its output, without running it.
**CodeQL** — GitHub's declarative query language for code, supporting many languages with a library of common patterns, an example of a query-based alternative to hand-written AST walkers.
**codomain** — The set B of allowed outputs of a function f: A → B.
**cohesion** — The degree to which the elements inside a module belong together and serve a single purpose; high cohesion is a design goal.
**coincidence lemma** — The result that a term's, formula's, or program's meaning depends only on its free variables, so states agreeing on those variables give the same value/truth/runs; foundational for substitution soundness.
**coinductive type (ν(t.τ))** — A negative type that is the greatest type consistent with the destructor unfold; its elements are determined by how they behave when observed and may be infinite (e.g. conat).
**cold / capacity / conflict miss** — The three miss classes: compulsory (cold) misses on first reference to a block, capacity misses when the working set exceeds the cache, and conflict misses when too many active blocks map to the same set.
**collapsing of connectives** — The phenomenon that identifying antecedents up to exchange makes previously distinct ordered connectives indistinguishable (the two implications, the two products) while additive connectives are unaffected.
**combination** — An unordered selection of k objects from n distinct objects, counted by the binomial coefficient.
**combination testing** — Testing combinations of boundary values, since some errors surface only when two or more variables are simultaneously at their boundaries.
**combinator** — A closed λ-expression with no free variables (e.g. I, K, B, Y); more generally a higher-order function that lifts operations to functions without naming an argument.
**command / return** — In Modernized Algol, a command performs storage effects and yields a value via ret(e); commands are sequenced by bnd and encapsulated by cmd, and dcl allocates an assignable with stack discipline.
**command language** — A language of statements (skip, assignment, sequencing, while) whose semantics is a transformer over valuations.
**comment** — A note the programmer writes in source code to explain it; ignored by the compiler and not executed (e.g. `// ...` or `/* ... */` in Java).
**common subexpression elimination (CSE)** — Detecting a repeated computation whose operands are unchanged and reusing the earlier result.
**common theories (SMT)** — The frequently-used SMT theories: fixed-width bit-vector arithmetic (modulo 2ⁿ), Presburger arithmetic (0, 1, +, =), and the theory of arrays.
**common-subexpression elimination (CSE)** — Detecting an expression computed more than once on a path with unchanged operands and reusing the first result instead of recomputing; relies on available-expressions analysis.
**commutative laws** — p ∨ q ≡ q ∨ p and p ∧ q ≡ q ∧ p.
**compactness** — The theorem that Γ ⊨ A iff some finite subset of Γ entails A, so a proof can use only finitely many assumptions; its failure in dynamic logic yields incompleteness.
**comparison function** — A function reporting x < y, x = y, or x > y; the only information a comparison sort may use.
**comparison-sort lower bound Ω(n log n)** — No comparison-based sort can beat Θ(n log n) worst case, proved via decision-tree height and log(n!) = Θ(n log n).
**compile time vs. run time** — Static properties deducible before execution versus dynamic properties apparent only while a program runs.
**compiler** — A program that translates code from one representation into an equivalent program in another (e.g. source to machine code), often optimizing.
**compiler correctness** — The property that a compiler preserves semantics: source and compiled programs evaluate to the same result (e.g. the verified compiler CompCert).
**compiler pass** — One of the sub-compilers a full compiler is decomposed into; each transforms one representation into another.
**compiler phases (passes)** — The successive stages of a compiler—lexing, parsing, elaboration, static checking, IR generation, optimization, instruction selection, register allocation, code emission—structured as a pipeline.
**complement (event)** — The event that a given event does not occur; its probability is 1 minus the event's probability.
**complement (set)** — For a universe, the set of elements not in A.
**complementary counting** — Counting the outcomes you do not want and subtracting from the total, when the complement is easier to count.
**complete lattice** — A partial order in which every subset has a least upper bound (join) and greatest lower bound, with both ⊥ and ⊤ defined; the setting for fixpoint constructions.
**complete tree** — A binary tree with every level full except possibly the bottom, filled left-to-right; guarantees height Θ(log n).
**completeness** — A type system or analysis is complete if it never rejects a correct program / has no false positives (100% precision).
**completeness (of a logic)** — The property that every valid formula is provable (⊨ ⊆ ⊢); together with soundness it makes provability and validity coincide.
**completeness (of an analysis)** — The property that every defect an analysis reports is real (no false positives), typically achieved by under-approximation; sound and complete together is impossible in general.
**completeness of termination (uninterpreted case)** — The theorem that for termination assertions with first-order pre/postconditions and uninterpreted symbols, validity and provability coincide, proved via computation sequences and compactness.
**complex number type** — A built-in numeric type representing complex numbers with real and imaginary parts (e.g. `2+3j`).
**complexity class** — A set of problems whose most efficient algorithm shares a bound on running time or memory.
**complexity of Kildall's algorithm** — The worklist dataflow solver runs in roughly O(c·e + n·h) (per-node cost c, e edges, n nodes, lattice height h); termination follows from finite lattice height.
**composite (multi-attribute) key** — A key formed from a combination of attributes when no single attribute is unique.
**composite number** — An integer greater than 1 that is not prime.
**composition (function)** — Combining functions so the output of one feeds the input of the next, (g ∘ f)(x) = g(f(x)); the composition of two bijections is a bijection.
**composition axiom ([;])** — The dynamic-logic axiom [α; β]P ↔ [α][β]P, decomposing a sequential composition into nested modalities.
**compositionality** — The lemma that the meaning of a substituted type [A/X]B under a candidate assignment equals the meaning of B under the assignment extended with A's candidate; a key step in the polymorphism proofs.
**compound proposition** — A proposition built from simpler propositions combined with logical connectives.
**computation as ordered inference** — Encoding machines (finite-state transducers, Turing machines) as ordered inference so each computation step is one inference.
**computation tree logic (CTL)** — A branching-time temporal logic interpreted at states, whose path quantifiers (A, E) range over the tree of all computations, with a simpler model-checking algorithm than LTL.
**computation-sequence semantics (CS(α))** — The semantics assigning each program the set of finite ;-sequences of atomic assignments/tests it could run; its transitions match the transition semantics.
**computational (semantic) type theory** — The presentation of type theory in which types specify the behavior of programs and the computational semantics is primary, contrasted with the axiomatic/formal presentation.
**computational thinking** — The language-agnostic skill of formulating a problem and its solution so the steps can be carried out by an information-processing agent, through decomposition, abstraction, pattern recognition, and algorithm design; the organizing theme of the introductory programming courses.
**computer network (LAN / WAN / internet)** — A hierarchy of hosts and links: LANs span a building, WANs span the world, and an internet joins networks via routers, the global IP Internet built on TCP/IP.
**computer science (discipline)** — The field concerned with algorithms and with how computers are used to solve problems across many domains, spanning programming, theory, systems, and applications.
**computer science ethics** — The study of the consequences of applying computing in the real world, including data collection, automated decision-making, bias, explainability, and accountability.
**computer-aided reasoning** — Using automated logical reasoning engines (SAT, SMT, model finders) to check, repair, and generate software.
**concatenation** — Joining two strings (or languages) end to end.
**concatenation / fuse (•) and twist (◦)** — Ordered multiplicative conjunctions: x • y ("fuse") asserts x immediately followed by y, and x ◦ y ("twist") is its order-reversed variant; their right rules split the context into two adjacent segments.
**concentration inequality** — Any bound showing a random variable is close to its expectation with high probability (Markov, Chebyshev, Chernoff).
**concolic execution** — Concrete + symbolic execution: a program is instrumented to collect path constraints during a concrete run, then the last clause is negated and solved to derive the next input, keeping a concrete input so unmodelable operations use concrete values.
**concolic testing** — Combining concrete and symbolic execution: run on concrete inputs, collect the path condition, negate a branch, and solve for inputs driving a new path.
**concolic tools** — Systems implementing concolic/dynamic-symbolic execution, e.g. DART, CUTE, KLEE, SAGE, Java PathFinder, Angr, PyExZ3, and Jalangi.
**concrete domain** — The exact run-time values a program manipulates (e.g. 0, 1, 2, 3, …).
**concrete state (representation)** — The actual fields of a record and the data stored in them — what an ADT's implementer manipulates.
**concrete syntax** — The representation of programs as strings of characters, given by a context-free grammar and disambiguated by precedence, associativity, and parenthesization; contrasted with abstract syntax.
**concurrency** — Working on multiple tasks with overlapping (not necessarily simultaneous) execution, and the correct management of shared resources among them.
**concurrency testing** — Testing a concurrent program under different thread interleavings, hoping to hit the buggy interleaving.
**Concurrent Algol (CA)** — Modernized Algol extended with channel allocation, process spawning, and message emit/receive, its global state understood as a π-calculus process with dynamically classified messages.
**Concurrent Logical Framework (CLF)** — A metalanguage from the polarized adjoint formulation of intuitionistic linear logic with dependent types, supporting linear/ordered hypothetical judgments and a forward-chaining operational reading (implemented in Celf).
**concurrent processes / multitasking** — Processes whose executions overlap in time; a single core interleaves them and they can interfere with one another.
**concurrent programming** — Writing programs whose logical flows overlap in time, hard because reasoning about all possible event orderings is error-prone.
**concurrent server architectures** — Designs for serving many clients at once: process-per-client, thread-per-client, and event-driven.
**concurrent vs. parallel** — Two flows are concurrent if they overlap in time; a single core simulates parallelism by time-slicing, while multiple cores give true parallelism.
**cond** — A Scheme multi-way conditional trying a sequence of tests and returning the expression for the first true one.
**condition codes** — Processor status flags (carry, zero, sign, overflow) set by arithmetic and cmp/test instructions and read by conditional jumps.
**condition codes (CF, ZF, SF, OF)** — Single-bit CPU flags set as a side effect of arithmetic, recording carry-out (unsigned overflow), a zero result, a negative result, and signed overflow.
**conditional axiom ([if])** — The dynamic-logic axiom [if P α β]Q ↔ (P → [α]Q) ∧ (¬P → [β]Q), splitting a conditional into guarded properties of its branches.
**conditional compilation** — `#ifdef`/`#ifndef`/`#else`/`#endif` directives including or excluding code based on defined symbols.
**conditional constant propagation** — An SSA-based analysis that assumes blocks are unexecuted and variables constant until proven otherwise, letting it prune unreachable blocks that ordinary constant propagation cannot.
**conditional distribution / conditional expectation** — The distribution (or expected value) of one random variable given a specified value of another; conditional expectation is itself a random variable.
**conditional independence** — Events that are independent once a third event is conditioned on, even if not independent unconditionally.
**conditional move (cmov)** — An instruction implementing if (test) dest = src without branching, usable only when both branches are side-effect-free because it evaluates both.
**conditional probability** — P(A|B) = P(A∩B)/P(B); reweights the sample space to the outcomes where B holds.
**conditional rule (weakest precondition)** — The weakest-precondition rule wp(if B then S else T, Q) = (B ⇒ wp(S,Q)) ∧ (¬B ⇒ wp(T,Q)).
**confidence interval** — A data-computed range containing the true parameter with a stated probability, derived via concentration inequalities or the CLT.
**conflict (transactions)** — A pair of operations that cannot be swapped without possibly changing the result (read-write, write-read, or write-write on the same element).
**conflict clause** — A new clause, implied by the formula, summarizing the cause of a conflict so the solver never revisits the same bad partial assignment.
**conflict serializability** — A schedule is conflict-serializable if reachable from a serial one by swapping non-conflicting adjacent operations; implies serializability but is stricter.
**Conflict-Driven Clause Learning (CDCL)** — The algorithm at the core of modern SAT solvers, extending DPLL with clause learning and non-chronological backtracking.
**confluence (Church–Rosser theorem)** — The order of β-reductions does not affect the final result; divergent reductions can always be rejoined.
**confluence / weak confluence** — Confluence is the property that any two reduction sequences from a common term can be brought back together; weak confluence (every one-step split is reconcilable) implies confluence for strongly-normalizing terms.
**congruence** — The property that every syntactic construct respects extensional equivalence, so replacing a subexpression by an equivalent one yields an equivalent whole.
**congruence closure** — The unique smallest congruence relation containing a given set of equalities; computing it decides conjunctive quantifier-free EUF satisfiability.
**congruence mod n (≡ mod n)** — a ≡ b (mod n) iff n | (b − a); a and b have the same remainder mod n.
**congruence relation / congruence class** — An equivalence relation that also respects function application (equal arguments give equal results); its classes are congruence classes.
**congruence rule** — A small-step rule lifting a sub-step to a larger term (e.g. stepping the left side of a sequence).
**congruence rules** — Rules permitting a reduction to fire inside a subterm (e.g. from M ⇒ M′ conclude fst M ⇒ fst M′), needed to reduce a redex buried in a larger term.
**conjunction (∧)** — The connective "and"; p ∧ q is true exactly when both are true.
**conjunctive normal form (CNF)** — An AND of ORs of literals; the standard input form for SAT solvers, built from the false rows of a truth table.
**connected graph** — A graph with a path between every pair of vertices (weakly connected if this holds only ignoring edge directions).
**connection / socket** — A connection is a point-to-point, full-duplex, reliable byte stream between two processes; a socket is a connection endpoint the application sees as a file descriptor.
**cons (::)** — The list constructor prepending an element to a list; x::L takes constant time.
**cons operator (::)** — The list-construction operator prepending one element to a list; O(1).
**conservative analysis** — An analysis that errs on the safe side, accounting for abstracted-away state so it never misses a real property it claims to rule out.
**conservative coalescing (Briggs / George)** — Register coalescing performed only when it cannot make a colorable interference graph uncolorable: Briggs merges if the merged node has < k neighbors of degree ≥ k; George merges if every neighbor of one already has degree < k or interferes with the other.
**consistency** — The theorem that ⟹ ⊥ is not derivable, so no proposition is both provable and refutable; a minimal requirement for a logic.
**consistency (transfer function)** — The abstract transfer function must agree with the concrete function: the concretization of its result must over-approximate the concrete result.
**consistency and determinacy** — The theorem that hybrid games are determined and their logic consistent: from each state exactly one player has a winning strategy for a goal (⊨ ¬⟨α⟩¬φ ↔ [α]φ).
**consistency of second-order arithmetic** — The result that termination of System F implies the consistency of second-order arithmetic, so by Gödel's theorem its proof must use methods beyond mere behavioral specifications.
**consistent locking** — Always holding the same designated lock whenever reading or writing a given location; the field→lock mapping must be documented and followed.
**constant folding** — Evaluating constant expressions at compile time (e.g. replacing 4 + 5 with 9) so the computation is not performed at runtime.
**constant propagation** — Replacing a variable known to hold a constant with that constant at its use sites.
**constant-propagation lattice (UNDEF / constant / NAC)** — A per-variable lattice with top = UNDEF (unseen), a middle row of every integer constant, and bottom = NAC (Not A Constant), an infinite lattice of finite height and a non-distributive framework.
**constraint** — A rule the DBMS checks on every update (attribute-level, tuple-level, or referential-integrity).
**constraint-based nullability (NilAway)** — Nullability checking without annotations that automatically collects nilable/nonnil typing constraints and reports a contradiction when nilable(S) ∧ nonnil(S) holds at a site.
**construct validity** — Whether a metric actually measures the attribute it claims to measure.
**construction** — The primitive notion (an algorithm/program, taken as a basic human faculty) from which computational type theory's meaning explanations start; expressions evaluate deterministically to canonical forms.
**constructive content of a proof** — Information a proof carries beyond mere validity, e.g. a proof that a path exists also records the actual edges traversed.
**constructive logic** — A logic whose proofs describe effective, mechanically executable constructions (algorithms), emphasizing effectiveness over classical truth.
**constructivism** — The stance that constructive reasoning refines rather than refutes classical principles (rejecting unrestricted excluded middle) while admitting a computational interpretation.
**constructor** — The special method a class runs when an instance is created (Python's `__init__`), used to initialize the new object's attributes.
**constructor (ctor)** — A C++ member function initializing a newly-created object; named for the class, with no return type; may be overloaded by parameters.
**constructor (data type)** — A named tag that builds a value of an inductive/variant type (capitalized in OCaml); may carry data and be used in patterns; values are equal only when built identically.
**constructor limitations** — Constructors cannot return an existing object, return a different class, or carry a descriptive name; factory functions overcome these.
**container** — An object storing a collection of elements; sequence containers (vector, list, deque) and associative containers (map, set).
**containerization** — Lightweight virtualization (e.g. Docker) giving sub-second boot and shareable, fully-configured images used consistently across development and deployment.
**containment-of-values assumption** — Assuming one join attribute's value set is contained in the other's when estimating join cardinality.
**context sensitivity** — Keeping separate interprocedural analysis results for a function called in different statically distinguishable contexts, so information is not merged across call sites.
**context switch** — The kernel mechanism saving one process/thread's state and restoring another's, passing control between them.
**context switch (process)** — The kernel mechanism that passes control between processes by saving one process's registers and restoring another's registers and address space.
**context switch (thread interleaving)** — A point where execution switches from one thread to another; the number an interleaving requires is its bug depth.
**context-free grammar (CFG)** — A finite set of productions over terminals and nonterminals with a start symbol; specifies syntax with power for nesting and recursion, stronger than regular expressions.
**context-free language** — A language specifiable by a CFG and recognizable by a pushdown automaton; the level used for parsers.
**context-sensitive summary** — A map from input dataflow information to output dataflow information capturing a function's effect, applied at each call and giving different results for different call contexts.
**context-sensitive type checking** — Type analysis that accounts for the calling context, used e.g. to rank autocompletion suggestions.
**contingency** — A proposition that can be either true or false depending on its variables.
**continuation** — A representation of the remaining computation ("what is left to do"), passed explicitly as an extra argument or reified as a first-class control-stack value captured and later resumed.
**continuation type (¬A)** — A connective with no introduction rule whose values are runtime-captured evaluation contexts (holes of type A); the type of a continuation.
**continuation-passing style (CPS)** — A programming technique threading a continuation through a computation to give a direct handle on future computation, enabling tail-recursive rewrites and backtracking search.
**continuations and exceptions** — Control features that explicit control stacks (the K machine) make easy to express, motivating that machine over structural dynamics.
**continuations as first-class control** — callcc/throw letting a computation escape its local context like an exception but lexically scoped and first-class; an impure control effect inconsistent with dependent type theory.
**continuity correction** — An adjustment (shifting boundaries by ±0.5) when approximating a discrete distribution by a continuous normal one.
**continuous dynamics** — The physical part of a cyber-physical system: state evolving continuously over time according to differential equations (the plant).
**continuous integration / continuous deployment (CI/CD)** — Automatically building and testing every change and releasing frequently, often several times per day, with incremental rollout and quick rollback.
**continuous program (differential-equation system)** — The hybrid-program construct x′ = f(x) & Q denoting continuous evolution following an ODE for any duration, restricted to the region where Q holds.
**continuous random variable** — A random variable taking values on a continuum, described by a probability density function rather than point masses.
**continuous uniform distribution** — A variable equally likely to fall anywhere in [a,b], with constant density 1/(b−a).
**contraction** — The structural rule merging two copies of an antecedent into one (Γ, A, A ⊢ C gives Γ, A ⊢ C); it permits an assumption to be reused and is what complicates cut admissibility.
**contradiction** — A proposition that is always false.
**contrapositive** — For p → q, its contrapositive ¬q → ¬p; a statement and its contrapositive are logically equivalent.
**control equivalence** — Two operations are control-equivalent if one executes iff the other does (their blocks execute together); it delimits where an instruction can be moved non-speculatively.
**control-flow graph (CFG)** — A directed graph whose nodes are basic blocks and whose edges represent possible transfers of control; the structure over which dataflow, dominance, and scheduling analyses run.
**controllability constraint** — A condition ensuring a controller still has a safe action available given the worst-case state it may sample, needed to bridge event- and time-triggered control models.
**controller monitor** — A ModelPlex runtime monitor that checks whether a proposed control decision complies with the verified controller model before it is applied.
**convergence axiom (C)** — The diamond-modality loop-progress principle: if a nonnegative measure can always be decreased by one round, the loop reaches its goal; the counterpart of induction proving termination.
**convergence rule** — The total-correctness proof rule derived from the convergence axiom, using a well-founded decreasing variant to prove a repetitive diamond ⟨α*⟩P.
**converse** — For an implication p → q, its converse q → p.
**convex theory** — A theory in which any entailed disjunction of equalities entails one disjunct; non-convex theories (e.g. LIA) force case-splitting.
**convex vs. nonconvex theory** — A theory is convex if any conjunction implying a disjunction of equalities implies one of them individually; the integers are nonconvex, forcing case-splitting on equality disjunctions.
**copy constructor (cctor)** — `Point(const Point& other)` building a new object as a copy; invoked on initialization from another object or on by-value pass/return.
**copy propagation** — Replacing uses of a variable just copied from another (`x := y`) with the original variable.
**copy-on-write (COW)** — Sharing pages read-only (e.g. across fork) and deferring the actual copy until a write fault occurs.
**correct-by-construction runtime validation** — The guarantee that synthesized runtime monitors are themselves verified, so passing them provably implies the safety established for the model.
**correctness** — Satisfying the spec: for every input meeting the precondition, the output meets the postcondition.
**correctness theorem (dataflow)** — The result that if a dataflow analysis is well designed (finite-height lattice, monotone flow functions), then any fixed point of the analysis is sound.
**correlated subquery** — A subquery referencing an attribute from the outer query, re-evaluated for each outer row.
**correlation** — A normalized covariance (dividing by the product of standard deviations) giving a unitless linear association between −1 and 1.
**cost graph** — A series-parallel directed graph modeling a computation's structure by sequential and parallel composition; work is its node count and span its longest source-to-sink path.
**cost model parameters** — B(R) = blocks holding R, T(R) = tuples, V(R,A) = distinct values of R.A, M = memory pages; cost is measured in disk I/Os.
**cost semantics** — A formal account of a program's work and span via cost graphs (a cost dynamics e ⇓ᶜ v), letting one reason about time complexity abstractly and independently of any schedule.
**cost-annotated evaluation** — A big-step judgment e ⇓ⁿ v (or e ⇓ⁿ ○ for an aborted derivation of size n) that records cost and distinguishes stuck from diverging computations, yielding a type-safety statement equivalent to progress and preservation.
**count(\*)** — Counts all rows in a group; `count(attr)` counts non-null entries, `count(DISTINCT attr)` distinct non-null entries.
**countable set** — A set that is finite or can be put in bijection with the naturals (i.e. can be listed).
**counterexample** — A single instance disproving a universally quantified statement, or a concrete execution the solver returns that violates a property.
**Counterexample-Guided Inductive Synthesis (CEGIS)** — A synthesis loop alternating a synthesizer (program correct on current examples) with a verifier (find a counterexample), adding each until correct on all inputs.
**coupling** — The degree of interdependence between modules; low coupling is a design goal because it localizes the impact of change.
**covariance** — Cov(X,Y) = 𝔼[XY] − 𝔼[X]𝔼[Y], measuring the linear co-variation of two variables; zero for independent variables.
**covariance matrix** — A matrix collecting the pairwise covariances of a random vector, describing multivariate spread via its eigenstructure.
**coverage** — A dynamic measure of what an execution exercised: statements, branches, paths, procedure calls, types, or dispatches.
**coverage-guided (grey-box) fuzzing** — Fuzzing that instruments the program for coverage and keeps mutated inputs that reach new branch coverage; exemplified by AFL and ClusterFuzz.
**CPE (cycles per element)** — A performance measure where Cycles = CPE·n + overhead, with CPE the slope of the cycles-versus-elements line.
**CPS contract** — A specification pairing a precondition (assumption) with a postcondition (guarantee) for a cyber-physical-system program, expressed as A → [α]P and refined onto program parts.
**CRC cards** — Class-Responsibility-Collaboration cards recording each class's name, responsibilities, and collaborators, used to distribute functionality, enhance cohesion, and reduce coupling.
**CREATE TABLE** — A statement defining a new persistent table with its attribute types and constraints.
**critical edge** — A CFG edge from a block with multiple successors to a block with multiple predecessors; such edges must be split so φ-resolving copies (or PRE insertions) have a safe home.
**critical path** — The longest latency-weighted dependence chain (or longest source-to-sink path in a cost graph); its length is the span and lower-bounds achievable running time even with unlimited parallelism.
**critical section** — A region operating on shared data that only one thread may execute at a time, atomically.
**cross-product construction** — A construction combining two DFAs into one recognizing the intersection or union of their languages.
**CTL fixpoint characterization** — The account of each CTL temporal operator as a least fixpoint (EF, AF, EU, AU) or greatest fixpoint (EG, AG) of a monotone successor function over sets of states, with unfolding axioms like EGP ↔ P ∧ EX EGP.
**CTL model-checking complexity** — Model checking CTL is linear in the state space and formula size, O(|K|·|ϕ|).
**cumulative distribution function (CDF)** — F(x) = P(X ≤ x), defined for any random variable, non-decreasing from 0 to 1.
**current file position / lseek** — The per-open offset where the next read or write occurs, changed by lseek.
**curried function** — A multi-argument function expressed as a function returning a function, applied one argument at a time (e.g. `(+)` : `int -> int -> int`).
**curry / uncurry** — Conversions between the tupled form of a two-argument function and its curried form.
**currying** — Representing a multi-argument (tuple-taking) function as a chain of single-argument functions returning functions, with → associating to the right.
**Curry–Howard correspondence** — The correspondence in which propositions are types, proofs are programs (proof terms), introduction rules are constructors, elimination rules are destructors, and proof reduction is computation.
**cut** — A partition of a graph's vertices into S and V−S; an edge crosses the cut if its endpoints lie on opposite sides.
**cut as parallel composition (spawn)** — Reading cut, taken as first-class, as spawning two concurrent processes connected by a fresh private channel, with cut-reduction steps as message exchange along it.
**cut elimination (Gentzen's Hauptsatz)** — The metatheorem that any proof using cut can be transformed into a cut-free proof of the same sequent, entailing the subformula property and the calculus's consistency.
**cut formula / side formula** — In a cut, the cut formula is the proposition cut (its principal cases mirror local-soundness reductions), while side-formula cases permute the cut.
**cut reduction** — The local reduction of a cut whose premises end in matching right and left rules into cuts on subformulas; under the process interpretation it becomes the engine of computation (message exchange).
**cut set** — A set of nodes separating the entry from a point p; partial-redundancy elimination completes a cut set (making every cut-set node compute the expression) to remove redundancy.
**cut theorem** — If edge set A is part of some MST and (S, V−S) is a cut A does not cross, adding the least-weight crossing edge keeps A part of an MST.
**cut-free sequent calculus** — The calculus without the cut rule (identity restricted to atoms), in which every rule has the subformula property, essential for systematic proof search.
**CWE (Common Weakness Enumeration)** — A community catalog of software weakness types used as a reference for classes of vulnerabilities.
**cyber-physical system (CPS)** — A system combining cyber (discrete computational control) and physical (continuous dynamics) capabilities to solve problems neither part could alone, e.g. cars, aircraft, and robots.
**cycle** — A path that returns to its start (v0 = vk with k > 0).
**cyclomatic complexity** — A metric counting the number of linearly independent paths through a program's control flow, used as a proxy for code complexity and testing effort.
**cylindrical algebraic decomposition (CAD)** — Collins's algorithm implementing quantifier elimination for arbitrary polynomial degree by decomposing space into sign-invariant cells; the practical (doubly-exponential) QE method.
**Dafny** — A verification-aware imperative/functional language (Leino) whose compiler checks correctness against `requires`/`ensures`/`invariant`/`decreases` annotations.
**dangling pointer** — A pointer still referring to memory that has been freed; using it is undefined behavior.
**data abstraction** — Giving clients only operations (public) and hiding the data (private), achieved via procedural abstraction over the representation.
**data analysis** — Using computational and statistical methods to gain insight from data, involving modeling and parsing data to answer questions.
**data anomalies** — Problems of a redundant table: redundancy (repeated data), update anomaly (a change needs many row updates), and deletion anomaly (deleting one fact loses another).
**data bias** — Skew in a model's training data that the trained model reproduces ("garbage in, garbage out"); a central fairness concern in machine learning.
**data dependence** — An ordering constraint requiring one computation to run before another because it consumes a value the other produces; classified as flow/true (read-after-write, RAW), anti (WAR), and output (WAW), with WAR and WAW removable by renaming. Dependencies force serial ordering and determine a computation's span.
**data hazards (RAW / WAR / WAW)** — Ordering constraints between instructions sharing a resource: read-after-write, write-after-read, write-after-write; preserved when reordering.
**data invariant** — A property of a type's representation the implementation guarantees (e.g. a fraction always in lowest terms), enforced by controlling construction.
**data member** — A variable belonging to a class (conventionally named with a trailing underscore), typically kept private.
**data model** — A mathematical definition of data; the relational model is one of several (semi-structured, key-value, graph, object-oriented).
**data prefetching** — Compiler-inserted prefetch instructions that bring data into cache ahead of use to hide miss latency, driven by locality analysis (what to prefetch) and scheduling (when).
**data race** — A pair of concurrent conflicting accesses to the same memory location, at least one a write, not ordered by synchronization; a good symptom of, but neither necessary nor sufficient for, a race condition.
**data representation** — Encoding different kinds of information — numbers, text, colors, images — as bits through successive layers of abstraction.
**data sizes and alignment** — Each type has a byte size and an alignment requirement; code must select size-correct instructions (movl vs movq) and lay out data with padding to satisfy alignment.
**data structure** — An organization of data plus the family of algorithms that implement an ADT over it.
**data types (SQL)** — Attribute types such as `CHAR(n)`, `VARCHAR(n)`, `INT`, `FLOAT`, `DATETIME`; statically enforced except in SQLite.
**data-precedence graph (DPG)** — The dependence graph an instruction scheduler consumes, with true (RAW) edges and separate anti (WAR) edges; its roots seed the ready list.
**data-structure invariant** — A logical property a data structure must always satisfy (e.g. "the array is sorted"); assumed on entry to an operation like a precondition, re-established on exit like a postcondition, and may be temporarily violated in between, hiding representation from clients.
**database** — A collection of files storing related data (e.g. a payroll or products database).
**database architectures** — Deployment tiers: single-client/single-server (SQLite in the app), 2-tier client-server, and 3-tier (adding an application server).
**database consistency** — An invariant that should always hold on the data; correct transactions preserve it.
**Database Management System (DBMS)** — A large program that efficiently manages a large database and lets it persist (e.g. PostgreSQL, SQLite, Oracle).
**dataflow analysis** — A family of static analyses that compute, at each program point, facts holding over all possible executions by iteratively solving transfer-function equations over the control-flow graph until a fixed point is reached.
**dataflow framework** — The tuple (F, V, ∧) of a value domain V, a family of transfer functions F, and a meet operator, unifying a class of dataflow problems so correctness, precision, and convergence can be reasoned about once for the whole family.
**dataflow graph** — A graph representing how data flows between computations; derivative in traditional compilers but definitive in ML systems like PyTorch.
**dataflow lattice** — The partially ordered set of dataflow facts equipped with a meet (join) operation; analyses combine information at control-flow merge points via the lattice, whose finite height guarantees termination.
**datatype declaration** — A definition (e.g. `datatype PrimColor = Red | Green | Blue`) introducing a new type together with its value constructors.
**datatype generativity** — The rule that each evaluation of a datatype declaration (including each functor application) yields a fresh, distinct type, preventing unsound mixing of look-alike types.
**de Bruijn indices** — A name-free representation of bound variables in which each variable is the natural number counting the enclosing binders up to its own, eliminating the need to choose bound-variable names.
**De Morgan dualities** — In classical linear logic, the dual pairs under linear negation: ⊗/⅋, 1/⊥, ⊕/&, 0/⊤, and !/?; each connective is defined via its dual.
**De Morgan's laws** — ¬(p ∨ q) ≡ ¬p ∧ ¬q and ¬(p ∧ q) ≡ ¬p ∨ ¬q; used to push negations inward (e.g. into NNF).
**dead-code elimination** — Removing instructions whose results are never used (as determined by liveness/neededness analysis) and unreachable code; used throughout optimization, e.g. to clean up after strength reduction and copy propagation.
**dead-code elimination (DCE)** — Removing code that can never execute or whose result is never used (and has no side effects).
**deadlock** — A state in which threads wait for events that can never occur — typically a cycle of wait-for dependencies from inconsistent lock ordering; avoided by acquiring locks in a fixed order, cycle detection, or forced release.
**debugging** — The systematic process of locating and fixing errors in a program.
**decidability of equality** — The theorem `∀n,k. n = k ∨ ¬(n = k)`, proved by nested induction; a decision procedure for equality is extracted from the coverage and disjointness of the eq/neq judgments.
**decidability of real arithmetic (Tarski)** — Tarski's theorem that the first-order theory of real-closed fields is decidable, because it admits quantifier elimination.
**decidability of type checking via equivalence** — In dependent type systems, decidability of type checking reduces to decidability of definitional equivalence, motivating a decision procedure for βη-equivalence.
**decidable / decision procedure** — A problem is decidable (solvable, computable) if some total procedure — its decision procedure — answers every instance correctly.
**decision heuristic** — A rule for choosing the next SAT variable to branch on (e.g. DLIS, or VSIDS which favors variables in recent conflicts).
**decision problem** — A well-defined yes/no question about well-specified instances (e.g. primality).
**decision procedure for intuitionistic propositional logic** — The problem of deciding, for each A, whether `⟹ A`; naive induction fails because premises can exceed conclusions, motivating restricted calculi and loop-checking.
**decision tree** — A tree modeling a comparison sort where each internal node is a comparison and each of the n! leaves is a permutation; its height is the worst-case comparison count.
**decision tree (machine learning)** — A classifier in which each internal node tests a feature against a threshold and each leaf carries a label, used to categorize inputs.
**declaration vs. definition** — A declaration describes a thing defined elsewhere (e.g. a prototype); a definition is the thing itself (allocates storage / provides code). Exactly one definition may exist.
**declarative specification** — A spec saying what the answer looks like (e.g. "return x such that b + x = a") without saying how to compute it.
**decomposition** — Splitting a relation into pieces guided by a functional dependency; a good (lossless) decomposition is recoverable by rejoining.
**decorating (annotating) the AST** — Adding derived information such as types to AST nodes via extra fields, a parallel IR, or a side map.
**decorator** — A higher-order function that wraps another function to extend or modify its behavior, applied with `@`-syntax at the wrapped function's definition.
**decreaseKey / increaseKey** — Lowering (or raising) the priority of a heap item at a known index, then percolating to restore the heap property.
**deductive synthesis** — Deriving a program from a complete specification by constructive theorem proving (turning a proof of ∀x.∃y.φ into code).
**deductive verification** — Proving a program meets its specification by reducing correctness to logical verification conditions and discharging them with automated theorem provers.
**def / use; gen / kill (transfer-function sets)** — The variables an instruction defines (writes) and uses (reads), from which dataflow transfer functions are phrased as GEN (facts a block creates) and KILL (facts it destroys), e.g. `out[b] = Gen[b] ∪ (in[b] − Kill[b])`.
**def-use chain** — An IR augmentation linking each definition to all its uses and each use back to its definition(s).
**default assumptions** — The simplest interprocedural strategy: assume fixed starting dataflow values for parameters and results (e.g. ⊤), then verify each call and return respects them; efficient but imprecise.
**default constructor** — A constructor taking no arguments; needed e.g. to create arrays of objects.
**default qualifier** — The type qualifier assumed when none is written (e.g. `@MaybePresent` for `Optional`).
**defect density** — Defects per thousand lines of code, used to compare software quality across systems.
**defect prevention** — Building quality in through requirements, design, architecture, process, and coding practices rather than testing it in after the fact.
**defect tracking** — Systematically recording issues (bugs, feature requests, queries) in a database, providing a basis for measurement, division of effort, and accountability.
**defects per hour** — A measure of inspection efficiency (defects found per hour of effort); inspection is empirically more efficient at defect detection than testing.
**defense in depth** — The security principle of never relying on a single defense: assume every other protection has failed and this component is the last standing.
**defensive copying (copy-on-read / copy-on-write)** — Making a private copy of mutable data as it enters or leaves an ADT so no external aliases arise.
**definability / undefinability** — A function is definable in a language if some expression computes it; System T defines exactly the functions provably total in Peano arithmetic, yet some total computable functions remain undefinable.
**define-struct** — A Racket form creating a record type with named fields, auto-generating a constructor, predicate, and accessors.
**definite loop** — A loop that repeats a known, fixed number of times (typically a `for` loop); contrasted with an indefinite loop.
**definition-use (DU) / use-definition (UD) chains** — Links from each definition of a variable to all its uses (DU) and from each use to all its reaching definitions (UD); computed from reaching definitions, they let analyses traverse directly between related defs and uses but can cost O(N·M) space.
**definitional equivalence (formal equality)** — The inductively defined judgment `Γ ⊢ M ≡ M' : A` on well-typed terms, postulating β (computation) and η (unicity) rules for product and function types.
**definitive vs. derivative IR** — A definitive IR defines the program being compiled; a derivative IR is built from it for a specific analysis and discarded when the definitive form changes.
**degree / indegree / outdegree** — The number of edges touching a vertex; for directed graphs, the counts of incoming and outgoing edges.
**delayed evaluation** — A function body is not evaluated until the function is called, unlike a `let` definition which is evaluated immediately.
**Delayed Theory Combination (DTC)** — An alternative to Nelson–Oppen that lets the SAT engine guess interface equalities as fresh Boolean variables instead of propagating them explicitly.
**DELETE** — Removes one, several, or all tuples from a table per a WHERE condition.
**demand paging** — Bringing pages into physical memory only when actually referenced, treating physical memory as a cache of virtual memory.
**Demon** — In a hybrid game, the universal/adversarial player who resolves the `[α]` (demonic) choices and tries to prevent the goal; corresponds to the box modality.
**Demon's controls (∩, ×)** — Demonic choice `α ∩ β ≡ (αᵈ ∪ βᵈ)ᵈ` and demonic repetition `α× ≡ ((αᵈ)*)ᵈ`, definable from Angel's operators via duality.
**demonic vs. angelic oracle** — Used demonically, a solver searches for an input making the program fail (verification); used angelically, it supplies choices making an under-specified program succeed.
**denormalized numbers** — The IEEE case E = 0, M ≠ 0 representing values near zero, closing the gap between 0 and the smallest normalized number.
**denotation** — The value a denotational semantics assigns to a program, written with the ⟦·⟧ brackets.
**denotation ⟦ϕ⟧** — The set of states in which a CTL formula holds; the model-checking algorithm computes it recursively over formula structure using successor functions and fixpoint iteration.
**denotational semantics** — Defining a program's meaning as a mathematical function from syntax (the AST) to a value.
**denotational semantics of games** — The meaning of a hybrid game as the winning-region functions on sets of goal states, defined by simultaneous induction with the game-logic formula semantics; compositional, and computed as a fixpoint of monotone set operators.
**dense vs. sparse graph** — Dense: |E| ∈ Θ(|V|²); sparse: |E| ∈ Θ(|V|).
**density vs. mass** — For continuous variables, probability comes from integrating a density over a region (any single point has probability 0), unlike discrete point masses.
**deoptimization** — Transferring control from compiled code back to the interpreter when a rare block is reached, reconstructing interpreter state from a small deopt map.
**dependence graph** — A graph of data/control dependences over which static program slicing computes reachability.
**dependence testing** — Deciding whether two affine array references in a loop nest access the same element for some legal iteration vectors — an integer-linear-programming (NP-complete) problem in which a test must conservatively assume dependence when unsure.
**dependency DAG** — The directed acyclic graph of targets and sources make uses; a target is rebuilt only if older than or missing relative to a source.
**dependency graph** — A derivative IR showing which instructions depend on which, used to decide legal reorderings (scheduling).
**dependent function type (Π)** — `Π A₁ A₂` with `lam`/`app` and βη equations, whose codomain type `A₂ x` may depend on the argument `x : A₁`.
**dependent sum type (Σ)** — The dependent pair type, in a negative variant (projections `fst`/`snd` with βη) and a positive variant (elimination by `split`), whose second component's type depends on the first.
**dependent types** — Types that may mention program values, so proofs are expressed as programs (Agda, Coq); an alternative verification tradition to imperative logical contracts.
**depth** — The length of the longest path from a tree's root to a leaf, computed recursively as one plus the maximum of the children's depths.
**depth-first search (DFS)** — A traversal fully exploring one neighbor's subtree before the next, using a stack or recursion; Θ(|V|+|E|); its back edges reveal cycles.
**derivable vs. admissible rule** — A rule is derivable if its conclusion has a fixed derivation from its premises using existing rules (and stays valid under any extension); admissible if provability of its premises always yields provability of its conclusion, but not by one uniform derivation, so it must be re-proved when the language grows.
**derivation** — Generating a string by repeatedly applying productions from the start symbol; a leftmost/rightmost derivation always expands the leftmost/rightmost nonterminal.
**derivation (derivation tree)** — A tree of inference-rule instances whose root is the derived judgment and whose leaves are axioms (or assumed premises); the evidence that a judgment holds.
**derived axiom / rule** — An axiom or rule proved from previously-sound axioms and rules within the calculus, hence itself sound without a fresh semantic argument.
**descending chain / lattice height** — A strictly decreasing sequence of lattice values; the height is the length of the longest such chain, and a finite descending chain guarantees a monotone analysis terminates.
**descriptor table / open file table / v-node table** — The per-process descriptor table points into the shared open file table (each entry holding a file position and reference count), which points into the shared v-node table (holding stat info).
**design by contract** — Specifying a contract of pre- and postconditions between a service client and its implementation, so the system works if both parties meet their obligations and responsibility is assigned accordingly.
**design intent / annotations for concurrency** — Programmer intent about which lock protects which state and object ownership, made explicit through tool annotations to enable modular, incremental assurance.
**design pattern** — A named, reusable solution to a recurring (often object-oriented) design problem, described by its name, problem, solution, and consequences, providing a shared design vocabulary (e.g. Strategy, Observer, Singleton).
**design-by-invariant** — Designing a controller and its loop invariant together so the invariant is provable by construction, rather than reverse-engineering an invariant afterward.
**destinations / destination-passing style** — Encoding an ordered context linearly by tagging each proposition with left/right destination parameters, letting a linear framework represent ordered substructural operational semantics.
**destructor (dtor)** — A C++ member (`~Point()`) invoked automatically when an object is deleted or goes out of scope; the place to release owned resources.
**determinacy / consistency (of games)** — The theorem that hybrid games are determined and the logic consistent: from each state exactly one player has a winning strategy for a goal, and a goal and its negation cannot both hold.
**determinism / determinacy** — A transition system is deterministic if each state (each non-value expression) has at most one successor; in a deterministic language `⟨α⟩P → [α]P` is valid.
**deterministic finite automaton (DFA)** — A finite automaton with at most one transition per state and symbol and no ε-edges; runs without backtracking, so it is preferred for speed.
**deterministic parallelism** — The property of pure functional programs that their extensional behavior is independent of scheduling decisions during parallel evaluation.
**developer motivation** — Models of what drives productive work (Maslow's hierarchy, Herzberg's satisfiers/dissatisfiers, autonomy–mastery–purpose); extrinsic rewards can crowd out intrinsic motivation.
**DevOps** — Integrating development and operations to enable frequent, reliable releases through automation of build, test, and deployment.
**DFA minimization** — Reducing a DFA to the unique minimum-state DFA for its language.
**dGL axiomatization (Hilbert calculus)** — The sound proof calculus for differential game logic: axioms for the modalities plus rules monotonicity M, fixpoint FP, and induction ind (FP and ind capturing least/greatest-fixpoint reasoning about repetition).
**diagonalization** — Cantor's technique constructing an element differing from every entry of a supposed list, proving a set uncountable.
**diamond axioms** — The diamond-modality counterparts of the box axioms; note that a test under diamond gives a conjunction (`⟨?Q⟩P ↔ Q ∧ P`) rather than the box's implication.
**diamond modality (⟨α⟩P)** — "Some run of α reaches a state satisfying P"; the total-correctness / liveness / reachability modality, requiring α to terminate in a P-state, dual to the box via `[α]P ≡ ¬⟨α⟩¬P`.
**dictionary** — An abstract data type mapping keys to values with `empty`, `insert`, and `lookup`; implemented over ordered keys via association lists or binary search trees.
**dictionary (map) ADT** — A collection of key/value pairs with comparable, non-repeatable keys, supporting insert, find, and delete.
**difference (−)** — Returns tuples in one relation but not another; the basis for negation and non-monotone queries.
**difference logic** — The polynomial-time fragment of linear arithmetic restricted to constraints x − y ≤ c.
**differential cut (DC)** — A proof rule that soundly adds an already-proved invariant C to an ODE's evolution-domain constraint, strengthening the domain to enable further invariant proofs.
**differential dynamic logic (dL)** — The logic for specifying and proving properties of hybrid programs, extending first-order real arithmetic with box `[α]P` and diamond `⟨α⟩P` modalities over hybrid programs.
**differential effect axiom (DE)** — Reduces reasoning after an ODE by turning `x'` into `f(x)` (the differential-assignment lemma), exposing the state's derivative for invariant reasoning.
**differential game invariant** — The game analogue of a differential invariant, proving properties of a differential game against an adversarial continuous player.
**differential game logic (dGL)** — The logic for hybrid games, `dGL = dL + duality`, extending differential dynamic logic with a duality operator; strictly more expressive than dL, its modalities refer to winning strategies rather than reachability.
**differential game refinement** — A relation/technique for proving one differential game is safely refined by another, transferring winning strategies.
**differential ghost (DG)** — A proof rule that soundly introduces an auxiliary differential variable `y` with its own ODE `y' = g`, adding a dimension whose evolution makes an otherwise-unprovable invariant provable.
**differential hybrid game** — A hybrid game whose continuous dynamics is a differential game, where the players also compete over the evolution of an ODE.
**differential invariance chart** — The systematic classification of which formula shapes (equalities, open/closed inequalities, conjunctions, disjunctions) are differential invariants and how to prove each.
**differential invariant (DI)** — A formula preserved along all solutions of an ODE because its differential (Lie derivative) has the right sign, proving properties of ODEs without solving them.
**differential invariant axiom (DI)** — The axiom `[x'=f(x)]F ← (F ∧ [x'=f(x)](F)')`: F stays true along the ODE if its differential is (weakly) of the correct sign throughout the evolution domain.
**differential of a term / formula** — The syntactic derivative `(e)'` (or `(F)'`) from the differential operator, which under an ODE `x' = f(x)` gives the time-derivative by substituting `f(x)` for `x'`.
**differential weakening (DW)** — A proof rule concluding `[x'=f(x) & Q]P` directly when the evolution-domain constraint Q already implies P, since the ODE cannot leave Q.
**differential-algebraic ghost** — A ghost variable introduced together with an algebraic relation constraining it, used to reason about quantities like reciprocals within an ODE proof.
**Dijkstra's algorithm** — Single-source shortest path for non-negative weights: repeatedly extract the nearest unfinalized vertex from a priority queue and relax its neighbors; Θ(|E| log |V|).
**direct proof** — Proving p → q by assuming p and deriving q through valid steps.
**direct-mapped cache** — A cache where each block maps to exactly one set (associativity 1) via (block number) mod (number of sets).
**directed acyclic graph (DAG)** — A directed graph with no cycles; required input for topological sort and used to depict dependencies.
**directed graph** — A graph whose edges are ordered pairs of vertices (directed connections).
**directory / pathname** — A directory is a file of entries mapping names to files (always containing `.` and `..`); an absolute pathname starts at root `/`, a relative one at the current working directory.
**dirty (inconsistent) read** — Reading a value written by an uncommitted transaction.
**disassembler** — A tool (`objdump -d`) that reconstructs assembly instructions from object or machine code.
**discarding failed runs** — In a hybrid program, runs whose tests fail are aborted and not considered further (backtracking), so tests constrain which runs are possible.
**discharge / scope of a hypothesis (label u)** — Implication introduction introduces a hypothesis under a fresh label available only above that inference; the hypothesis is discharged there, and violating the scope makes the system inconsistent.
**discrete assignment** — `x := e`, which instantaneously sets variable `x` to the value of term `e` in a hybrid program.
**discrete dynamics** — The control-decision part of a cyber-physical system: instantaneous, jump-like state changes (assignments, tests) made by the controller.
**discrete mathematics of software** — The observation that, because software is built from discrete math, continuous-engineering quality strategies (divide-and-conquer, overengineering, redundancy) fail: small bugs mushroom, redundant copies fail simultaneously, and modularity is defeated.
**discrete random variable** — A random variable taking values in a countable set, described by a probability mass function.
**discrete uniform distribution** — Assigns equal probability to each of a finite set of values (e.g. a fair die).
**disjoint-set (union-find)** — A structure tracking connected components and testing in near-constant time whether two vertices are in the same set (used by Kruskal's).
**disjunction (∨)** — The inclusive "or"; p ∨ q is true when at least one of p, q is true.
**disjunction property** — The theorem that if `⟹ A ∨ B` then `⟹ A` or `⟹ B`, provable because with no antecedents only a right disjunction rule can conclude A ∨ B.
**disjunction ⊕ / falsehood 0 (additive)** — Additive disjunction (internal choice), true if either A or B is achievable from the current resources with the provider deciding which; 0 is the unprovable nullary additive disjunction, whose left rule lets any goal succeed from an impossible state.
**disjunctive normal form (DNF)** — An OR of ANDs of literals; trivial to check for satisfiability but a direct conversion can blow up exponentially; built from the true rows of a truth table (minterm expansion).
**disk / SRAM / DRAM** — Static RAM (fast, for cache), dynamic RAM (main memory, refreshed), and disk (large, slow, non-volatile).
**distance and direction vectors** — The distance vector `j − k` gives how many iterations separate a dependence's source and sink; the direction vector records its sign ("=", "<", ">") per loop level.
**DISTINCT** — A modifier removing duplicate tuples from a result, converting bag to set semantics.
**distinguishing strings method** — The pigeonhole argument proving a language irregular: infinitely many strings must reach different states but a finite DFA has too few, forcing a collision.
**distributed computing** — Networking many separate computers and assigning different processes to different machines to gain efficiency beyond what one computer can provide.
**distributed hybrid system (DHS)** — A hybrid system extended with distributed/dimension-changing dynamics: DHS = HS + distributed.
**distributive laws** — p ∧ (q ∨ r) ≡ (p ∧ q) ∨ (p ∧ r), and its dual.
**distributivity** — A dataflow framework is distributive if `f(x ∧ y) = f(x) ∧ f(y)`; distributive frameworks compute exactly the meet-over-all-paths solution, while merely-monotone ones may be less precise but still safe.
**diverging program** — A program that does not terminate.
**divide and conquer** — Recursion T(n) = a·T(n/b) + f(n): split into a subproblems of size n/b, solve recursively, and combine.
**divides (|)** — For integers x, y, x | y iff y = kx for some integer k.
**division theorem** — For integer a and positive d, unique integers q and r with a = dq + r and 0 ≤ r < d.
**dL semantics** — The compositional definition assigning each hybrid program a reachability relation over states and each formula the set of states in which it is true.
**DMA (direct memory access)** — A transfer in which a device controller moves data directly into main memory and interrupts the CPU on completion.
**DNS (Domain Name System)** — A hierarchy of name servers and a protocol resolving a domain name into one or more IP addresses.
**DNS / domain name** — The Domain Name System, a worldwide distributed database mapping human-friendly domain names to IP addresses.
**DOALL vs. DOACROSS loop** — A DOALL loop has fully independent iterations (no cross-iteration dependence) and pipelines to the resource bound; a DOACROSS loop has recurrences (cross-iteration dependences) that limit achievable parallelism.
**domain** — The set A of inputs of a function f: A → B.
**domain / attribute type** — Each attribute has a type; a value violating it (e.g. a string where INT is required) is not allowed.
**domain of discourse** — The set of all values the variables in a predicate may take; roughly their "type."
**domain restriction** — Limiting the domain of discourse to a smaller set, or encoding that restriction inside a quantified statement (→ for ∀, ∧ for ∃).
**dominance** — Block b dominates d if every path from the CFG entry to d passes through b; strictly dominates if additionally b ≠ d.
**dominance / dominator** — Node d dominates node n if every path from entry to n passes through d (strictly, if additionally d ≠ n); dominance determines where definitions are guaranteed in scope and is computed by a distributive forward analysis with meet = intersection.
**dominance frontier** — For a node n, the set of nodes where n's dominance just stops (n dominates a predecessor of the node but not the node itself); φ-functions for a variable are placed exactly at the (iterated) dominance frontiers of its definitions.
**dominating term** — The fastest-growing term of an operation-count expression, which alone determines the complexity class for large n (so n² + 100000n is O(n²)).
**domination laws** — p ∨ T ≡ T and p ∧ F ≡ F.
**dominator tree** — The tree induced by the dominance relation (each block's parent is its immediate dominator), like a tree of nested scopes.
**double dispatch** — Selecting a method by the runtime types of two objects, by chaining two dynamic dispatches (`e.perform(p)` calls back `p.process(this)`).
**double free** — Calling free twice on the same block, a form of memory corruption.
**double hashing** — Open addressing using a second hash function g, probing i, i+g(k), i+2g(k), … (mod length).
**double negation** — ¬¬p ≡ p.
**double-negation (hiding computational content)** — Because a proof of ¬A carries no computational content, replacing A by ¬¬A "hides" the witness; classically A and ¬¬A are equivalent, but intuitionistically ¬¬A does not imply A.
**double-negation translation (CLL into ILL)** — Interpreting a classical linear sequent intuitionistically as deriving a contradiction, parametric in an atom p; connectives without an intuitionistic counterpart (like ⅋) are handled by negate–dualize–negate, related to CPS conversion.
**down-shift ↓ (thunk / force)** — In call-by-push-value, `↓A⁻` is the value type of a suspended computation (a thunk): `thunk M` introduces it and `force V` runs it.
**DPLL** — The Davis–Putnam–Logemann–Loveland SAT algorithm using unit propagation, pure-literal elimination, and guessing with backtracking; exponential in the worst case but efficient in practice.
**DPLL (Davis–Putnam–Logemann–Loveland)** — The classic backtracking search deciding CNF satisfiability: choose a variable, propagate with BCP, backtrack on conflict.
**DPLL(T)** — The lazy SMT architecture combining a CDCL SAT solver (Boolean structure) with a theory solver deciding conjunctions of theory literals.
**DRAM cache** — The use of physical DRAM as a fully associative, write-back cache for virtual pages on disk, organized around the enormous (>1 ms) disk miss penalty.
**DROP TABLE** — Deletes an entire table.
**dual use** — The property that software or a feature built for a legitimate purpose can also be repurposed for harm, raising ethical responsibility in design.
**duality (subsets of behavior)** — The view that static analysis focuses on a subset of data structures and dynamic on a subset of executions, each corresponding to one in the other domain.
**duality operator (ᵈ)** — The single game operator added to hybrid programs that swaps the roles of Angel and Demon (like turning the board 180°), turning hybrid programs into hybrid games.
**duck typing** — Accepting any object that responds appropriately to the messages used, regardless of its declared class.
**duplicate elimination** — The extra step turning a bag result into a set (needed for set-semantics union, projection, etc.).
**dynamic (JIT) compilation** — An interpreter/compiler hybrid that translates to binary at run time, supporting cross-module optimization and specialization from runtime information; a JIT keeps an interpreter loop, a code cache, profile data, an optimizer, and a cache manager.
**dynamic analysis** — Reasoning about a program by observing its execution on test inputs; defined by a property of interest, an instrumentation mechanism, and the inputs run, giving precise information that does not cover all executions.
**dynamic checking** — Checks performed while a program runs, as in dynamically typed languages that do little static checking.
**dynamic classification** — Defining `exn` as a type of dynamically classified values: an exception declaration allocates a fresh class (a run-time effect), so by α-equivalence the class name is an unguessable secret shared only between raisers and handlers.
**dynamic dispatch** — Selecting the method to invoke at runtime based on the receiver's actual type, typically via a vtable pointer in the object.
**dynamic logic** — A modal program logic whose modalities `[α]P` and `⟨α⟩P` talk about program behavior; its axioms decompose program structure until only an arithmetic formula (the verification condition) remains.
**dynamic memory allocation** — Requesting a memory block at run time whose size or lifetime is not known in advance and which persists until explicitly freed.
**dynamic memory allocation (allocation-site abstraction)** — Modeling heap objects in pointer analysis by their allocation site, so each `new` gets a distinct abstract location.
**dynamic memory allocator** — A component managing the heap as variable-sized allocated and free blocks; explicit allocators (`malloc`/`free`) require the application to free, while implicit allocators reclaim automatically via garbage collection.
**dynamic scope** — Resolving a variable by the run-time chain of active calls rather than program text; rare today but used by most shell scripts.
**dynamic semantics (dynamics)** — The part of a language definition specifying how programs execute, given as a structural operational (small-step) semantics, an evaluation (big-step) semantics, or an abstract machine.
**dynamic symbolic execution (DSE)** — Symbolic execution that follows concrete executions and forks at branches; sound-but-incomplete for bug finding and able to bound loops.
**dynamic typing** — A discipline in which type clashes are checked rather than unchecked errors: every ill-typed operation transitions to `error` at run time, preserving progress (and hence safety) without a static type discipline.
**dynamic typing as static typing** — The observation that a dynamically typed language is a mode of use of a statically typed one with a single recursive sum type of tagged values, so static typing subsumes dynamic typing without paying for tags where unneeded.
**dynamic-programming instruction selection** — A bottom-up selection assigning each subtree the cheapest cost over matching patterns, yielding an optimal tiling under a cost model.
**dynamically typed language** — A language checking types at run time, so variables carry no declared types and may hold different types over time.
**E-graph / E-graph matching** — A data structure compactly representing many equivalent expressions; a superoptimizer builds one of equivalent programs and searches it for the best.
**eager vs. lazy evaluation** — Eager (call-by-value) evaluates a function's argument to a value before substituting; lazy (call-by-name/need) substitutes the unevaluated argument, letting variables stand for general computations.
**early pruning** — Calling a theory solver on partial assignments to detect theory-inconsistent prefixes early and avoid exploring doomed subtrees.
**edge classification (tree / back / forward / cross)** — DFS labels each edge: tree (to an unvisited node), back (to an ancestor, indicating a cycle), forward (to a finished descendant), or cross.
**edit–compile–link–load–execute workflow** — The C build pipeline: edit source, compile+assemble into object files, link with libraries into an executable, load, then execute.
**eigenvariable / parameter condition** — The freshness side condition requiring the parameter introduced by ∀I (and ∃E) to be genuinely new and not escape its scope; violating it is unsound.
**EINTR** — An error code meaning a system call was interrupted by a signal and should be retried.
**elaboration** — The compiler pass translating a parse tree into a simpler abstract syntax, resolving concrete-syntax conveniences (e.g. `x += e` into `x = x + e`) and optionally renaming variables to remove shadowing.
**element (∈)** — x ∈ A means x is a member of the set A.
**element judgment (a elem)** — The judgment that `a` is an element of the (unspecified) domain of quantification, whose derivations must be well-formed for `A(t)` to be a well-formed proposition.
**ELF (Executable and Linkable Format)** — The unified binary format for relocatable, executable, and shared object files.
**elimination form / elimination rule** — The way a value of a type is consumed (e.g. application for functions, projection for products, `case` for sums, the recursor for naturals); a connective's elimination rules specify how to use it and are derived from its introduction rules.
**emptiness checking** — Deciding whether a Büchi automaton's language is empty, equivalent to finding a reachable strongly connected component (or cycle) containing an accepting state.
**empty / void type (0)** — The type corresponding to falsehood ⊥, with no constructor; its destructor `abort` turns a term of type 0 into a term of any type but never actually computes.
**empty groups** — `GROUP BY` never produces a group with `count(*) = 0`; zero-count cases need extra work (e.g. an outer join).
**empty set (∅)** — The set with no elements.
**empty string (ε)** — The string of length zero.
**encapsulation** — Bundling data together with the methods that operate on it inside a class, hiding the representation and exposing only an interface.
**encapsulation (networking)** — Nesting one protocol layer's packet as the payload of the layer below (HTTP inside TCP inside IP inside Ethernet).
**encapsulation (OOP)** — Hiding an object's implementation details and restricting access to its internals, associating behaviors (methods) with data.
**encryption** — Transforming readable plaintext into obfuscated ciphertext using a key so that only intended parties can recover it; reversed by decryption.
**end-to-end test** — A test exercising almost all of the code at once, making failures harder to debug because the search space is large.
**endianness** — The convention for ordering a multi-byte value's bytes: big-endian puts the most significant byte at the lowest address, little-endian (x86-64) the least significant.
**entailment / consequence (Γ ⊨ φ)** — φ true in all models of Γ; in first-order logic it coincides with provability from Γ.
**entailment / implication (logic)** — F₁ implies F₂ iff F₁ → F₂ is valid; a semantic relationship between formulas rather than a connective.
**entity** — A single object; the same idea as an object in programming.
**entity set** — A collection of entities of the same type (like a class); each becomes a relation, and may be a subclass of another entity set.
**Entity-Relationship (E/R) diagram** — A pen-and-paper diagram of entity sets, attributes, and relationships, used to design a schema before writing SQL.
**enumerated type** — A variant type whose constructors carry no data (e.g. `type color = Red | Blue | Green`).
**enumerative search** — Synthesizing by systematically enumerating candidate programs of increasing size until one satisfies the specification.
**environment** — The set of bindings in effect at a point; expressions are evaluated in the current environment.
**environment (η)** — The finite map from local variables to their current values (in scope at a program point); read by lookup and updated by assignment, and captured as part of a closure.
**environment modeling** — Supplying models or concrete stubs for native/system/library calls that symbolic execution cannot see into.
**ephemeral vs. persistent propositions** — An intrinsic attribute of a substructural proposition: ephemeral (linear) propositions are consumed by inference, while persistent (unrestricted) ones may be used arbitrarily often and are never consumed ("truth is ephemeral; validity is forever").
**eq? / eqv? / equal?** — Scheme's equality predicates in increasing looseness: pointer identity, simple-value equality, and deep structural comparison.
**equality (equivalence relation)** — A user-defined `equal` should behave like mathematical `=`: reflexive, symmetric, and transitive.
**equality reflection** — The rule, in an equational/semantic logical framework, internalizing an equality type/class into a judgmental equality; it supports induction on derivations but requires explicit equality rules.
**equality type vs. identity type** — The extensional equality type (with equality reflection and uniqueness of identity proofs, validating function extensionality) versus the intensional identity type, which shares formation/introduction (`refl`) but has a different elimination and does not validate function extensionality.
**equality with uninterpreted functions (EUF)** — The theory of `=` plus arbitrary function symbols, with reflexivity, symmetry, transitivity, and functional congruence as axioms; array `read` is modeled as an uninterpreted function.
**equally likely outcomes (uniform probability)** — A model where every outcome has the same probability, so an event's probability is favorable/total.
**equisatisfiability** — Two formulas are equisatisfiable iff both are satisfiable or both unsatisfiable, even if not equivalent; preserved by Tseitin's transformation.
**equivalence axiom** — An axiom stated as a biimplication that rewrites a formula about a program into a structurally simpler one (structurally simpler even when textually longer).
**equivalence of models** — The theorem that regular expressions, DFAs, and NFAs all recognize exactly the regular languages.
**equivalence relation / equivalence class** — A reflexive, symmetric, transitive relation; its classes partition the elements.
**equivalence-class (partition) testing** — Partitioning the input domain by an equivalence relation so all inputs in a class are expected to behave the same, then testing one representative per class.
**equivalent mutant** — A mutant semantically identical to the original program and therefore impossible to kill, confounding mutation-score measurement.
**erasure (ghost code)** — The guarantee that deleting all ghost fields and computations leaves a program's observable behavior unchanged.
**erasure (type information)** — Understanding a polymorphic language's dynamics by tacitly removing type information (type labels off abstractions, trivializing type abstraction/application), so no type substitution is needed at run time.
**errno** — The global variable a failing system-level function sets to indicate the cause of the error, decoded to a message by `strerror`.
**errno / perror** — `errno` is a global set to an error code on failure; `perror` prints a message plus the human-readable error for it.
**error** — An incorrect state at execution time caused by a fault (e.g. a buffer overflow, corrupted data, or deadlock arising during a run).
**ESC/Java** — The Extended Static Checker for Java: a tool checking JML Hoare-logic specifications and finding null dereferences and array errors; unlike a hand proof it is deliberately unsound (checks only one loop iteration), so it raises confidence rather than guaranteeing correctness.
**escape analysis / scalar replacement** — Escape analysis finds objects that do not escape a method or thread, enabling stack allocation, replacement of their fields by local scalars (scalar replacement), and synchronization removal; partial escape analysis applies these on the common path and reconstructs objects on rare branches.
**estimation** — Predicting project parameters (effort, duration, cost), iteratively re-estimated as a project proceeds because early estimates are highly uncertain.
**estimator** — A rule (function of the data) used to estimate an unknown parameter; itself a random variable.
**Euclidean algorithm** — Computes gcd(a, b) via gcd(a, b) = gcd(b, a mod b) with base case gcd(a, 0) = a; the extended version also computes the Bézout coefficients.
**eval** — A procedure that evaluates a quoted list as code, exploiting Scheme's uniform treatment of code and data.
**evaluation** — The process by which a well-typed expression is reduced via zero or more steps to a value, an exception, or nontermination.
**evaluation context (C[ ])** — A term with a single hole; congruence is refactored into a judgment "C evctx" plus one rule `M ⇒ M′ ⟹ C[M] → C[M′]`.
**evaluation relation (⇓)** — The big-step relation; (v, c) ⇓ v′ reads "(v, c) evaluates to final state v′".
**evaluation strategy** — A discipline choosing which redex to reduce next, determining evaluation order (e.g. call-by-value vs. call-by-name).
**event** — A subset of the sample space; a collection of outcomes to which a probability is assigned.
**event handler** — A function invoked when a specific event occurs, such as a key press, mouse click, or timer tick.
**event loop** — The framework loop that repeatedly waits for events and redraws the screen, driving an interactive animation or GUI.
**event-driven programming** — Structuring a program as an event loop (get next event → dispatch to a handler), avoiding locks but splitting sequential logic into handlers carrying task state.
**event-triggered control** — A control design where the controller reacts precisely when a physical event (a condition on the continuous state) occurs, modeled by evolution-domain constraints that stop the ODE at the event boundary.
**evolution domain constraint** — The formula Q in `x' = f(x) & Q` that the state must satisfy throughout continuous evolution; the ODE may evolve only while Q remains true.
**exact (computational) equality** — Equality of two terms in a type defined semantically via parametricity/logical similarity, with reflexivity being the parametricity theorem itself; the course's culminating notion of program equality.
**exception** — A transfer of control to the OS kernel in response to an event, dispatched through an exception table indexed by an exception number.
**exception (hardware / OS)** — A hardware/software transfer of control to the kernel in response to an event (divide-by-zero, page fault, I/O completion, ctrl-C), dispatched via the exception table.
**exception (language)** — A value signaling a runtime error that can be declared, raised, and handled and may carry data; `raise E` signals it rather than returning, and `e₁ handle E => e₂` recovers.
**exception (thrown)** — In a high-level language, an object signaling a runtime error or invalid input that interrupts normal control flow; it is thrown and then caught (handled) or propagated, letting code fail fast rather than continue in a bad state.
**exception table** — A table indexed by a per-event exception number whose entries point to the corresponding handlers.
**exceptional control flow (ECF)** — The mechanism by which the system reacts to events by transferring control; the basis for context switches, system calls, and signals.
**exceptions (control and data aspects)** — The control aspect: a computation completes by returning normally or by raising, with a normal and an exceptional continuation. The data aspect: a raised value has type `exn`.
**exchange** — The structural rule permitting antecedents to be reordered; adding exchange to ordered logic yields linear logic (collapsing the ordered multiplicatives while leaving the additives unchanged).
**exclusive or (⊕, XOR)** — p ⊕ q is true exactly when p and q have different truth values.
**exec** — The system call a forked child uses to replace its program with a new one (a shell forks then execs the requested program).
**executable** — The final linked binary program that can be loaded and run.
**execution latency** — The number of cycles before an instruction's result becomes available to dependent instructions; the latency-weighted dependence chain forms the critical path bounding a schedule.
**execution trace** — The (finite or infinite) sequence of ⟨program point, memory⟩ pairs a program passes through on a given input; the formal ground truth against which analysis soundness is defined.
**execution tree / path explosion** — All program paths form an execution tree; the number of paths grows exponentially, the central scalability challenge of symbolic execution.
**execve** — The system call that replaces the current process's code, data, and stack with a new program, keeping the PID and open files and never returning on success.
**exhaustive search** — Systematically exploring every candidate in a solution space, typically implemented as recursion with an accumulator; the basis of brute-force and backtracking algorithms.
**exhaustiveness** — Whether a match covers all possible cases; OCaml warns when patterns are not exhaustive.
**existential generalization** — The inference rule concluding ∃x P(x) from P(c) for a particular c.
**existential quantifier (∃)** — ∃x P(x) asserts there is at least one x in the domain for which P(x) is true; expressed in SQL by `EXISTS` and in Ruby by `any?`.
**existential type (∃t.σ)** — The type of an interface to an abstract type; a package bundles a representation type τ with an implementation, and a client `open`s it to use the operations without knowing τ.
**EXISTS / NOT EXISTS** — SQL predicates testing whether a subquery returns a non-empty or empty set; the natural way to express existential and universal quantification.
**exit code (EXIT_SUCCESS / EXIT_FAILURE)** — The integer status a process returns on termination (0/1 conventionally), readable by the parent.
**exit status** — The integer a process returns via `exit` (0 = normal), decoded from `wait` with macros like WIFEXITED/WEXITSTATUS.
**EXP (exponential time)** — The complexity class of problems whose only known algorithms take time exponential in the input size; considered intractable in practice.
**expectation (expected value, 𝔼[X])** — The long-run average value of a random variable, Σ x·P(X=x) for discrete X; a weighted mean.
**explicit** — A C++ keyword on a one-argument constructor disabling its use as an implicit conversion.
**explicit free list** — A doubly linked list of only the free blocks (pointers stored in free payloads), making allocation linear in the number of free blocks.
**exponential / of course (!A, "bang")** — Girard's modality allowing an antecedent A to be used arbitrarily often; it precisely separates MALL from full intuitionistic linear logic and factors the ordinary function space as `A → B = (!A) ⊸ B`. In classical linear logic it has a dual `?A` carrying weakening and contraction.
**exponential distribution** — Models the waiting time until the next Poisson event; the continuous memoryless distribution, rate λ, mean 1/λ.
**exponential rules (promotion, dereliction, weakening, contraction)** — The four rules governing `!A`: promotion (provable only when all antecedents are banged), dereliction (dropping the bang to use A), and weakening and contraction on `!A`.
**exponential time** — Running time O(2^(nᵖ)); the regime of brute-force approaches.
**expression** — A piece of code that computes a value (e.g. `1 + 4 * 5`); the simplest expression is a literal, and expressions combine via operators.
**expression DAG** — A directed acyclic graph abstraction of a basic block's expressions that shares identical subexpressions; adequate for pure expressions but awkward across assignments because a variable's value depends on time.
**expression evaluation (ω⟦e⟧)** — The value of expression e in state ω, defined by structural recursion, distinguishing syntactic operators from their mathematical meaning.
**expression problem** — The tension (Wadler) between grouping code by data type versus by operation; compilers usually group by pass since operations change more often than node types.
**extended relational algebra** — Relational algebra augmented with grouping/aggregation so full SQL (e.g. `HAVING`) needs no extra operator.
**extensional equality class** — In a semantic logical framework, an equality class governing objects of a sort with a unicity rule ("any two witnesses are equal") whose elimination derives the corresponding equality judgment, making equality at function type extensional.
**extensional equivalence** — The equivalence relation on well-typed expressions of the same type: both produce the same value, raise the same exception, or loop forever, and functions map equivalent arguments to equivalent results.
**extensionality** — The property (which the λ-calculus's data representations lack) that functions agreeing on all relevant arguments are equal.
**external / internal choice (& / ⊕ as processes)** — The process reading of the additive connectives: with & the client drives the choice (sends fst/snd), with ⊕ the provider sends the label; the two have identical computation rules with reversed roles.
**external choice (N)** — The n-ary labeled product `N{lᵢ : Aᵢ}` whose client chooses and sends a label and whose provider offers all branches with `case`; "external" because the client decides, giving an object/module-signature style interface.
**external fragmentation** — Free memory scattered in holes between allocated blocks, so no single hole fits a request even though total free space suffices.
**external linkage / extern** — The default for globals and functions, making a name visible to other translation units; `extern` declares a variable defined in another file.
**external validity** — Whether results obtained from a metric or study generalize beyond the specific context in which they were collected.
**external-memory algorithm** — An algorithm designed to minimize disk I/O because data does not fit in main memory.
**Extreme Programming (XP)** — Kent Beck's agile methodology bundling practices such as test-driven development, pair programming, continuous integration, and an open workspace.
**F-algebra / F-coalgebra (Lambek's Lemma)** — Viewing a lattice as a category, an F-closed (pre-fixed) point is an F-algebra and an F-consistent (post-fixed) point an F-coalgebra; μ(F) is the initial algebra and ν(F) the final coalgebra, and both are fixed points.
**f-string** — A formatted string literal prefixed with `f` in which `{expression}` fields are replaced by the values of the enclosed expressions.
**facade** — A design element providing a single simplified interface to a larger body of code or subsystem.
**fact** — Something known true about the variables at a point in the code, collected by reading along a path to a return statement.
**factorial (n!)** — The number of orderings of n distinct objects, n·(n−1)···2·1.
**factory function** — A named function that constructs and returns an ADT instance, hiding the concrete class and letting the implementation change.
**fail fast** — The practice of halting execution immediately when an input is invalid (e.g. by throwing an exception) rather than continuing in a corrupted state.
**failure** — The effect of an error on system capability, e.g. a crash, an attacker gaining control, unresponsiveness, or incorrect output.
**false positive / false negative** — A false positive is a reported defect that is not real; a false negative is a real defect the analysis misses. Over-approximating analyses avoid false negatives (sound), under-approximating ones avoid false positives (complete).
**false positive / false negative rate (testing)** — In a test, the chance of a positive result when the condition is absent (FP) and of a negative result when present (FN).
**falsehood (⊥, absurdity)** — The nullary disjunction: no introduction rule, and an elimination (ex falso quodlibet) concluding any C from ⊥.
**family of an induction variable** — The set of induction variables whose value is, at each assignment, a linear function of a given basic induction variable; the unit over which strength reduction operates.
**family of types (functionality)** — A type `Bₓ` depending on `x : A` is an A-indexed family of types: if `M ∈ A` then `[M/x]B type`, and equal arguments yield equal types (functionality); the semantic basis of Π and Σ.
**fast (modular) exponentiation** — Computing large modular powers efficiently by repeated squaring.
**fault** — A synchronous, unintentional but possibly recoverable exception (e.g. a page fault); the handler re-executes the faulting instruction or aborts.
**fault injection** — A security-testing technique that perturbs the data entering an interface (wrong type, zero length, NULL, out-of-sync, high volume) so mishandling code behaves insecurely, then seeks an exploit for the exposed fault.
**favor composition over inheritance** — The guideline (Bloch) to give a class a field of another type rather than subclassing it, avoiding inheritance's equality/behavior pitfalls.
**featurization** — Converting raw data into numeric features a model can process, such as turning words into embeddings or images into arrays of pixel values; a stage of the machine-learning pipeline.
**fencepost loop** — A "loop-and-a-half" pattern that performs the first repeated action once before the loop so a separator is placed between items but not after the last (like fence posts between rails).
**Fermat's Little Theorem** — A result about a^(p−1) mod p for prime p, a building block for RSA.
**fflush / setbuf** — `fflush` forces a stream's buffer out; `setbuf(stream, NULL)` turns buffering off.
**field access (. and ->)** — `.` accesses a field of a struct value; `->` accesses a field through a struct pointer (`p->x` is `(*p).x`).
**field offset and struct layout** — Each field's byte offset within a struct, computed by laying fields out left-to-right with alignment padding; the offset is used to compute a field's address during access.
**file (Unix model)** — A sequence of bytes; even I/O devices and kernel structures are represented as files.
**file descriptor** — A small integer returned by `open` identifying an open file; 0/1/2 are stdin/stdout/stderr.
**file metadata (stat)** — Per-file data (type, permissions, hard-link count, owner, size, timestamps) read via `stat`/`fstat`.
**file sharing** — Two descriptors referencing the same file via distinct open-file-table entries, each with its own position; `fork` instead makes child and parent share entries and bumps reference counts.
**file system** — Software managing fixed-size disk blocks to provide the file abstraction; formatting designates a superblock (type, size, root directory, free list) and records remaining blocks as free.
**file types** — Regular files (arbitrary bytes), directories (name-to-file maps), and sockets, plus pipes, symbolic links, and device files.
**filibuster game** — The example `⟨(x := 0 ∩ x := 1)*⟩ x = 0` that appears non-determined, resolved by requiring Angel to stop repeating so games have well-defined winners.
**filter** — The higher-order function keeping exactly the elements of a collection that satisfy a given predicate, preserving order.
**filter (pack)** — Keeping only the elements satisfying a predicate; parallelized (pack) via a map of flags, a prefix sum for positions, then a placing map.
**finite geometric series** — The closed form Σ aⁱ (i=0..L) = (aᴸ⁺¹−1)/(a−1), used to sum per-level work in the tree method.
**finite state automaton (FSA)** — A machine of finitely many states with a start state, final states, and labeled transitions, used to recognize regular languages.
**finiteness property** — Γ has a model iff every finite subset does; equivalent to compactness.
**finitization / inlining** — Bounding loops and inlining calls to reduce a program to a finite formula suitable for SAT.
**FIRST / FOLLOW / NULLABLE** — Three fixed-point grammar analyses: terminals that can begin a string from A, terminals that can follow A, and whether A can derive ε.
**first-class citizens (first-class values)** — Values that can be stored, passed as parameters, and returned; in functional languages, functions themselves are first-class.
**first-order function** — A function whose arguments and results are ordinary data values (integers, lists, trees), not functions.
**first-order logic (FOL)** — The logic of terms (constants, functions applied to terms), atoms (predicates), connectives, and quantifiers.
**first-order logic of real arithmetic (FOLR)** — Propositional logic extended with interpreted arithmetic terms and comparisons and quantifiers over reals/integers; a static logic (formulas simply true or false in a state), decidable by quantifier elimination.
**first-order rendition** — The effective translation of a diamond modality over a single computation sequence into an equivalent first-order formula.
**first-order theory (signature Σ, axioms A)** — A theory defined by a signature of constant/function/predicate symbols plus a set of closed axioms, relative to which formulas are judged (T-valid, T-satisfiable, T-decidable).
**fixed point (dataflow analysis)** — A tuple of abstract states unchanged by the whole-program flow function (`Σ = F(Σ)`); the solution a dataflow analysis converges to (not every fixed point is the desired one).
**fixed point (of a function)** — A function f with `f = h f`; general recursion asks for a fixed point of h, realized by the Y combinator.
**fixed-length representation** — Because storage is finite, data is stored in fixed-size chunks (1, 4, 8 bytes) with leading zeros filled in.
**fixed-point (fixpoint)** — A value unchanged by a function; iterative dataflow/abstract-interpretation analyses repeatedly apply transfer functions and joins until the state stops changing.
**fixed-point combinator (Y combinator)** — A combinator satisfying Y F ≈ F (Y F), enabling recursion by letting a function refer to itself without names.
**fixed-width integer types** — C99 `stdint.h` types like `int32_t`/`uint8_t` guaranteeing an exact bit width.
**flaky test / nondeterminism** — Tests that pass or fail inconsistently due to nondeterministic behavior, timing, or environment, undermining suite reliability.
**flat table** — A relation may not contain sub-tables; attribute values are atomic.
**floating point** — A representation of real numbers in base-2 scientific notation, trading exact representation for a wide range.
**floating-point number** — A numeric type representing real numbers with a fractional part, stored only approximately, so exact equality tests between floats are unreliable.
**flow / context / field / path sensitivity** — Axes of analysis precision: flow-sensitive respects statement order (per-point results), context-sensitive distinguishes calling contexts, field-sensitive treats each aggregate field separately, and path-sensitive treats branches as mutually exclusive paths.
**flow function (transfer function)** — A function mapping the abstract state before an instruction or block to the state after it (`f_I`); the abstract semantics of that instruction, defined case-by-case on the statement form, with a block's function the composition of its statements'.
**flow-insensitive analysis** — An analysis that considers only the instructions and ignores control-flow edges/order, trading precision for tractability (as in Andersen's pointer analysis).
**flow-sensitive type refinement** — Giving an expression a more specific type after a run-time test (e.g. inside `if (x.isPresent())`, x is `@Present`).
**focus judgment** — An added judgment form `[A]` for a proposition in focus, under the presupposition that at most one proposition is in focus; entered by focusing on a positive succedent or negative antecedent and lost at a shift.
**focusing** — A proof-search refinement chaining a maximal sequence of non-invertible choices on one focused formula into a single phase, collapsing redundant search; sound (erasing focus yields an ordinary proof) and complete.
**fold (fold_left / fold_right)** — Generalized reduce taking an initial accumulator and a combining function, able to build a result of a different type than the list elements; direction controls processing order.
**fold (foldl / foldr)** — Higher-order functions combining a collection's elements with a base value using a binary function, left-to-right (foldl) or right-to-left (foldr); the two are not extensionally equivalent in general.
**fold / unfold** — The isomorphism mediators for a recursive type: `fold` maps the unrolling into the recursive type and `unfold` back; under eager dynamics `fold(e)` is a value only if e is, under lazy dynamics always.
**fopen / fclose / fread / fwrite / fprintf / fscanf** — The C stdio functions to open, close, read, write, and format streams.
**for-any (sublist) fact** — An assertion summarizing many indexed facts at once (e.g. `S[i] ≠ y for any 0 ≤ i < j`), needed to reason about arrays.
**for-each (nested-loop) semantics** — The meaning of a SQL query: iterate over each row (or combination), test the condition, and output matching tuples.
**foreign key** — One or more attributes uniquely identifying a row in another table; declared with `REFERENCES` and pointing to a unique (usually primary) key.
**fork** — The system call that creates a child process with a separate copy of the parent's address space and open descriptors, returning 0 to the child and the child's PID to the parent (it "returns twice").
**fork / join** — Fork schedules a subtask to run in parallel; join blocks until it finishes and returns its result, preventing a race on unfinished results.
**ForkJoin framework** — A standard library implementing divide-and-conquer parallelism (RecursiveTask/RecursiveAction run via a ForkJoinPool) so raw threads need not be managed.
**fork–join parallelism** — A model in which independent subcomputations are forked and reunited at a well-nested join point that consumes their values, as in divide-and-conquer; the join may be static (fixed task count) or dynamic.
**formal (axiomatic) type theory** — The presentation of type theory as a formal system admitting many interpretations, whose role is pragmatic: writing programs and building proof checkers; contrasted with the computational/semantic presentation.
**formal inspection** — A structured, rigorous code-review process, required for many safety-critical systems.
**formal language** — Any subset of Σ*, the finite-length strings over a fixed finite alphabet Σ; the mathematical notion abstracted from grammar and pattern matching.
**formal technical review** — A structured inspection with defined participation, advance preparation, a moderator-led documented process, and formal follow-up; finds more bugs but costs more than lighter reviews.
**formal verification** — A formal proof that a program meets its specification, often tool-supported, typically expensive, and usually focused on functional attributes.
**formalizing a specification** — Translating an imprecise English description into precise math (usually a recursively defined function) by studying examples.
**forward chaining / saturation** — The bottom-up interpretation deriving new facts from premises (all atoms positive, the basis of Datalog), running until saturation — the state in which no rule produces a new fact — after which the finite database is merely queried.
**forward reasoning** — Filling in a Hoare triple's postcondition by pushing facts downward through the code, producing the strongest postcondition.
**forward sequent calculus (Γ → A)** — A calculus writing `Γ → A` for "Γ was actually used to derive A"; sound and complete in the generalized form that any provable sequent has a subset actually used.
**forward vs. backward analysis** — Forward analyses propagate `out[b] = f(in[b])` meeting predecessors' outputs (e.g. reaching definitions); backward analyses propagate `in[b] = f(out[b])` meeting successors' inputs (e.g. liveness).
**forward vs. backward chaining** — Making all atoms positive yields bottom-up, Datalog-style forward chaining (deriving facts from premises until the goal appears); making all atoms negative yields goal-directed, Prolog-style backward chaining.
**forwarding (fwd c a)** — The proof term for the general identity rule, splicing two channels together by forwarding every communication on one to the other and vice versa; operationally a forwarder identifies its two channels and disappears.
**Fourier-Motzkin elimination** — A method for solving systems of linear inequalities by eliminating a variable, replacing `A ≤ x ∧ x ≤ B` with `A ≤ B`.
**FPC** — PCF extended with unrestricted recursive types `rec(t.τ)`; sufficient to encode the untyped λ-calculus, so divergence is unavoidable once recursive types are admitted.
**fractal** — A self-similar geometric figure drawn with recursion, such as the Sierpinski triangle, where each part resembles the whole.
**fragile base class / tight coupling** — Subclassing binds a subclass tightly to a superclass's internal details, so superclass changes silently break subclasses.
**frame (control-stack frame)** — A single element of the control stack representing a pending computation with a hole (e.g. `ap(−; e₂)`), typed by an input and output type; stacks are typed by matching consecutive frame types.
**free / open source software** — Software distributed with source and the freedoms to use, study, modify, and share; associated with community development, varied motivations, and the "many eyes" quality argument.
**free and bound variables** — An occurrence of a variable is bound if it lies within the scope of a binder for it and free otherwise; the free variables (FV) are those occurring unbound, a term with none is closed, and changing a free variable's name changes meaning.
**free list** — The structure tracking free allocator blocks: implicit (linked by size arithmetic), explicit (linked by pointers), or segregated (lists by size class).
**free variable** — A variable referenced where no enclosing binder or quantifier binds it (not a parameter or local); resolved by the enclosing environment.
**fresh variable** — A bound-variable name chosen distinct from every other variable currently in use; the α-equivalence convention guarantees one always exists.
**friend function** — A nonmember function/class granted access to a class's non-public members by a `friend` declaration.
**front end / back end** — The compiler front end ingests programs and decides whether they are legal (scanning, parsing, checking); the back end optimizes and generates target code.
**fuel** — An explicit decreasing integer bound consumed once per iteration, used as a trivial variant to make an untrusted solver's termination easy to prove.
**fully associative cache** — A cache in which any block may be placed in any line; used for the DRAM cache because of its huge miss penalty.
**function (f: A → B)** — A mapping assigning to every element of the domain A exactly one element of the codomain B.
**function composition (∘)** — The higher-order operator with `(f ∘ g)(x) ≅ f(g x)`.
**function patching / update (fₓᵇ)** — The function equal to f everywhere except mapping x to b; used to give semantics to an array store, sidestepping aliasing.
**function pointer** — A value denoting a function's address, allowing indirect calls, so functions can be passed and stored like data.
**function prototype** — A declaration of a function's name, parameter types, and return type, letting the compiler check calls before the definition appears.
**function template / class template** — A template applied to a function or class; the compiler infers or is given the type argument.
**function type** — A negative type whose introduction form is λ-abstraction and whose elimination form is application, characterized by how it behaves when applied to an argument; corresponds to implication under Curry–Howard.
**function type (arrow type)** — T₁ → T₂, the type of a function taking a T₁ and returning a T₂; STLC's inductive type constructor.
**functional congruence** — The axiom `x = y → f(x) = f(y)` (generalized to n-ary functions): equal arguments yield equal function values.
**functional correctness** — The property that a program's behavior matches a precise specification of what it should do; establishing it requires a specification, a mathematical meaning for the code, and a proof that implementation matches specification.
**functional dependency (FD)** — An assertion X → Y that any two tuples agreeing on X agree on Y.
**functional language** — A language (Lisp/OCaml/Scheme) that computes by evaluating functions and avoids mutable state; descends from Church's lambda calculus.
**functional requirement** — A statement of behavior the system must exhibit: the outputs it must produce for given inputs and events.
**functor** — A function from structures to structures, i.e. a parameterized module, used to avoid duplicating closely related structure code.
**fundamental theorem (of a logical relation)** — The theorem a logical relation is designed to satisfy: every well-typed term (under any suitable substitution for its free variables) satisfies the predicate/relation assigned to its type; its proof "writes itself" once the actions on candidates are defined.
**Fundamental theorem of arithmetic** — Every integer greater than 1 has a unique prime factorization.
**fusion law** — An equivalence letting two passes be merged into one, e.g. `map g (tabulate f n) ≅ tabulate (g ∘ f) n`, avoiding an intermediate structure.
**fuzz testing** — Generating inputs (often randomly) until the program crashes, to find bugs.
**fuzzing** — Generating many (often random or mutated) inputs to a program to find crashes or faults; a dynamic analysis.
**fuzzing roadblocks** — Obstacles to coverage progress such as magic bytes, checksums, dependencies in binary formats, complex input syntax/semantics, and stateful applications.
**gadget** — A short existing instruction sequence ending in `ret`; return-oriented programming places gadget addresses on the stack so each `ret` chains to the next.
**Galois connection** — The correctness condition relating abstraction α and concretization γ: for all concrete c, c ≤ γ(α(c)), with both order-preserving.
**game form vs. winning condition** — The game α defines only the rules/choices; the surrounding modal formula's postcondition φ defines when, and for which player, the game is won.
**Gantt chart / network plan** — Scheduling tools that lay out activities over time and model task dependencies for planning and progress tracking.
**garbage collection** — Automatic reclamation of heap storage no longer reachable, used by languages such as Java, OCaml, and Lisp.
**GCD test / Lamport's test** — The GCD test reports a possible array dependence for `Σ aᵢxᵢ = c` only if gcd(a₁,…,aₙ) divides c (ignoring bounds); Lamport's test handles a single index with equal coefficients, giving the distance when it is an integer within bounds.
**GEN / KILL / IN / OUT** — The generic dataflow sets: facts generated (and not killed) in a block, facts killed, and facts holding on entry and exit; `OUT = GEN ∪ (IN − KILL)`.
**general recursion (fix)** — The construct `fix[τ](x.e)`, which unrolls to `[fix.../x]e`, permitting arbitrary self-reference (and hence divergence) at any type; more expressive than primitive recursion.
**General Simplex** — The method typically used in practice to decide conjunctions of linear-arithmetic constraints.
**generalization / strengthening** — Replacing a postcondition by a stronger loop invariant that holds initially, is preserved, and implies the goal; a correct invariant is usually stronger than the property ultimately wanted.
**generalizing the induction hypothesis** — Strengthening the statement to be proved (e.g. quantifying over an accumulator) so an otherwise-failing induction goes through; no general recipe exists.
**generativity** — The property that each `open` of an existential package introduces a fresh, distinct abstract type, realized by renaming the bound type variable; abstract types are held abstract only during type checking, with no run-time cost.
**generator** — The introduction form `gen[σ](e; x.e₁)` for a coinductive type: a state machine that, on demand, yields the next observation; the dual of the recursor.
**generics** — The modern term for parametric polymorphism; analogous to Java's `ArrayList<E>` type parameter.
**geometric distribution** — The number of independent Bernoulli(p) trials up to and including the first success; memoryless, mean 1/p.
**get() / release() / reset()** — Smart-pointer operations: `get()` returns the raw pointer without giving up ownership, `release()` relinquishes ownership, `reset()` deletes the current pointer and adopts a new one.
**getaddrinfo** — The modern, reentrant, protocol-independent function converting host/service strings into a list of socket address structures, replacing gethostbyname.
**getaddrinfo()** — The POSIX call resolving a hostname and service into a linked list of `addrinfo` results, freed with `freeaddrinfo`.
**getelementptr** — LLVM's typed pointer-arithmetic instruction that computes an address into an aggregate while preserving array-subscript and structure-index information for later analysis.
**ghost code / ghost variable** — Specification-only code, fields, or variables that exist purely for verification, do not affect the result, and are erased before execution (ghost data may only feed other ghost computations).
**Girard's method** — Overcoming impredicativity by letting a type variable range not over type expressions but over all type candidates (a postulated set), enlarging the range of significance to behavioral specifications.
**global (intraprocedural) optimization** — Optimization across basic blocks within one flow graph (e.g. global CSE, global constant propagation, loop optimizations).
**global / external / local symbols** — Global symbols are defined by a module and visible to others; external symbols are referenced but defined elsewhere; local (`static`) symbols are confined to their module.
**global common subexpression elimination (GCSE)** — Using available expressions across basic blocks: if a recomputed expression is already available, redirect the redundant use to the earlier result, often by copying each reaching evaluation to a fresh temporary.
**global scheduling** — Instruction scheduling that moves instructions across basic-block boundaries, using control equivalence, dominance, and (possibly speculative) code motion guided by estimated path frequencies.
**global soundness / global completeness** — The whole-proposition counterparts of local soundness/completeness: using a verification of A to derive C gains no information over deriving C directly (soundness), and any use of A can be turned into a verification of A (completeness).
**glossary / domain model** — A shared vocabulary and conceptual model of the problem domain, built to resolve terminology, designation, and structure inconsistencies among stakeholders.
**goal stack (Ω) / success continuation** — An ordered list of the subgoals still to be solved after the current one, letting the conjunction rule be rewritten with a single premise; it makes subgoal ordering explicit and plays the role of a success continuation.
**goal-directed proof construction** — Backward-chaining execution: a query (goal) is matched, in clause order, against clause conclusions, generating subgoals from the premises.
**goto (LR operation)** — The operation that advances the dot past a grammar symbol in every item of an LR state and takes the closure, producing the next state.
**goto (statement)** — A C statement transferring control directly to a label, mirroring the assembly-level jump.
**grammar** — A generator: a system for producing exactly the strings of a language and no others.
**graph** — A structure G = (V, E) of vertices connected by edges, which may be directed or undirected, weighted or unweighted.
**graph (data structure)** — A collection of nodes connected by edges with fewer restrictions than a tree — any node may connect to any other — optionally carrying weights and directions, used to model maps, networks, and relationships.
**graph coloring** — Assigning one of k colors (registers) to each interference-graph node so no adjacent nodes share a color; k-colorability is NP-complete for k > 2, so a simplify/select heuristic removes low-degree nodes onto a stack, then pops and colors.
**graphics primitives** — The basic drawing operations of a graphics library — lines, rectangles, ovals, polygons, and text — each parameterized by position, fill, and outline.
**greatest common divisor (gcd)** — gcd(a, b) is the largest integer dividing both a and b.
**greatest lower bound (glb / meet)** — The largest abstract element below two elements in a lattice.
**greedy algorithm** — An algorithm that commits to a locally optimal choice at each step; it may fail to find a solution requiring backtracking.
**greedy coloring** — Coloring interference-graph nodes in an elimination order, each with the lowest color not used by its already-colored neighbors; optimal on chordal graphs.
**greedy schedule** — A schedule that assigns as many processors as possible to available work at every time step.
**ground truth** — The actual correctness of the code, against which analysis results (TP/FP/TN/FN) are judged.
**GROUP BY** — Partitions rows into groups by attributes/expressions and applies aggregates per group; like `DISTINCT` plus aggregation.
**guard / constraint / fact (PREfix model)** — Along a symbolically executed path, the guard is what must hold for the path to be taken, constraints are the preconditions for successful execution, and facts are what is known to be true; together they form a function summary.
**guarded commands** — Dijkstra's nondeterministic language and predicate-transformer semantics underpinning weakest-precondition reasoning.
**Gödel generalization rule (G)** — From a valid P infer `[α]P`: if P holds always, it holds after every run of α; the rule discards the surrounding context.
**Gödel numbering** — An effective encoding of expressions as natural numbers, from which the expression can be recovered.
**Halstead volume** — A size/complexity metric derived from counts of operators and operands in the code.
**halting problem** — Deciding whether an arbitrary program halts on a given input; proved undecidable.
**handle** — The location and production at which a reduction should occur in a rightmost derivation step.
**handle (exception)** — The construct `e₁ handle E => e₂` that evaluates e₂ if e₁ raises exception E and otherwise behaves like e₁; used for graceful error recovery.
**handle (shift-reduce parsing)** — In shift-reduce parsing, the substring on the stack that matches a production's right-hand side and is the correct next reduction; recognizing handles is the core problem of bottom-up parsing.
**happens-before race detection** — Dynamic detection reporting a race when two conflicting accesses are unordered by the happens-before relation; more precise than lockset analysis but more expensive.
**happens-before relation** — A partial order over program events induced by program order plus synchronization (e.g. release-before-acquire); two conflicting accesses unordered by it constitute a data race.
**harmony** — The balance in which a connective's elimination rules are neither too strong nor too weak relative to its introduction rules, so the rules may be read as a definition; established locally by local soundness and local completeness (identity expansion and cut reduction).
**hash function** — A function mapping a key to an integer index; should be fast, scatter keys uniformly, and use the whole table. A pairwise-independent hash family gives provable collision-probability guarantees.
**hash function / hash table** — A hash function deterministically maps a value to an integer; a hash table uses it to store and retrieve key–value data in roughly constant time.
**hash join** — A join building a hash table on one input and probing it with the other; usually O(n) but can degrade to O(n²).
**hash table** — A dictionary using a fixed-size array plus a hash function to map keys to indices, giving average-case Θ(1) insert/find/delete (worst case Θ(n)); also used to implement joins and grouping.
**hash-consing (memoization of types)** — Storing already-constructed types in a table and reusing them so each structural type has a unique representation, making equality an O(1) pointer comparison.
**HAVING** — Filters groups by a condition on aggregates or grouping attributes, after `GROUP BY`.
**hazard** — The product of failure probability and severity, equivalent to risk exposure; severity is the cost of a failure to stakeholders.
**head / tail** — The first element of a list (`List.hd`) and the rest of the list (`List.tl`); constant-time operations.
**head expansion** — Closure of a computability predicate under reverse execution: if the predicate holds of M and `M' ↦ M`, then it holds of M'; valid because the predicate speaks only of a term's evaluation behavior.
**head reduction / weak head reduction** — Performing one β-reduction at the outermost level of a term; the deterministic evaluation strategy (at most one reduction per closed term) corresponding to lazy execution, which must be followed if a normal form is to be reached.
**header (natural loop)** — The single entry node of a natural loop, which dominates every node in the loop.
**header / footer (boundary tags)** — Bookkeeping words storing an allocator block's size and allocated bit; boundary tags let the allocator coalesce with neighbors in both directions.
**header file (.h)** — A file included via `#include` holding a module's interface declarations, never definitions.
**header guard** — The `#ifndef NAME_H_ / #define NAME_H_ / #endif` idiom preventing a header from being included more than once per translation unit.
**heap** — A large pool of memory for dynamically-allocated data, managed explicitly (malloc/free) and grown by the allocator via `sbrk`.
**heap modeling** — How heap storage is abstracted in pointer analysis: heap-merged (all heap is one location), allocation-site (one abstract location per allocation site), or shape analysis (recognizing lists, trees, DAGs).
**heap property** — The heap ordering invariant: in a min heap every node's priority ≤ its children's; in a max heap every node's ≥ its children's.
**heap sort** — Build a max heap, then repeatedly deleteMax placing each maximum at the shrinking end of the array; Θ(n log n).
**helper function** — An auxiliary function introduced to break a problem into subproblems or carry extra state, often localized via `let`.
**hereditary (canonizing) substitution** — A type-directed substitution that re-canonizes on the fly (returning the canonization of `[M/x]N` rather than an unreduced application), indexed by the spine of the substituting term's type; well-defined by a lexicographic induction.
**hereditary termination** — A type-indexed family of predicates strengthening mere termination: a hereditarily terminating function yields a hereditarily terminating result on hereditarily terminating arguments; defined by induction on type structure and used in the normalization proof.
**heuristics (query optimization)** — Rule-of-thumb transformations that always help, such as pushing selections below joins.
**hexadecimal (base 16)** — A base-16 notation (0–9, A–F, prefix 0x) where each hex digit maps to exactly 4 bits.
**Heyting arithmetic** — Intuitionistic arithmetic over the natural numbers (the constructive counterpart of Peano arithmetic).
**higher-order abstract syntax** — Representing a binder's scope by an actual metalanguage function, so bound variables are metalanguage variables and object-language substitution is the framework's own substitution.
**higher-order function** — A function that takes other functions as parameters or returns them as results.
**histogram** — A statistic refining T(R) and V(R,A) per value range; 1-d histograms mitigate the uniformity assumption, 2-d the independence assumption.
**Hoare logic** — A formal system of rules (assignment, sequence, conditional, loop) for reasoning about program correctness via pre- and postconditions; a foundation for static-analysis and verification tools, generalized by separation logic and expressible in dynamic logic.
**Hoare logic (Floyd–Hoare logic)** — A proof system of rules relating a precondition, a command, and a postcondition; the rules are sound and, with an oracle for implications, relatively complete. Due to Hoare and Floyd.
**Hoare triple** — The notation `{P} S {Q}`: if precondition P holds and statement S terminates, then postcondition Q holds afterward.
**Horn clauses** — The restricted fragment for logic programs (definite clauses and goals built from atoms, conjunction, implication, and quantifiers); backward chaining over Horn clauses corresponds exactly to focusing with negative atoms.
**HTTP** — Hypertext Transfer Protocol: an application-layer request/response protocol over TCP in which a client requests a resource and the server returns its bytes or an error.
**HTTP request / method / GET** — A request is `METHOD request-uri HTTP/version` plus headers and an optional body; methods include GET, POST, and HEAD.
**HTTP response / status code** — A response is `HTTP/version status reason` plus headers and body; the status code's first digit categorizes it (2xx success, 4xx client error, 5xx server error).
**hybrid analysis** — A single analysis blending static and dynamic techniques, trading precision against soundness rather than merely aggregating them.
**hybrid game** — A game whose rules, choices, and dynamics are described in hybrid-program notation, giving two players (Angel and Demon) competing control over the dynamics.
**hybrid program** — The programming language of differential dynamic logic for describing hybrid systems, with assignment, test, ODE, sequential composition, nondeterministic choice, and nondeterministic repetition; everything is nondeterministic, analogous to regular expressions.
**hybrid system** — A mathematical model of a system with interacting discrete and continuous dynamics (discrete control decisions plus differential equations): HS = discrete + ODE.
**hypergeometric distribution** — The number of successes in draws made without replacement from a finite population with a fixed number of successes.
**hypothetical and general judgment (Γ ≫ J)** — The extension of the categorical judgments to open terms under a context Γ; a hypothetical judgment asserts a judgment holds functionally in its assumptions (the general/generic judgment form being central to defining logical systems).
**hypothetical judgment** — A judgment `Γ ⊢ J` (or `J₁,…,Jₙ ⊢ J`) established under assumptions/antecedents; reasoning under hypotheses is discharged by substitution, and a sequent is its sequent-calculus presentation.
**i.i.d. (independent and identically distributed)** — Mutually independent random variables sharing the same distribution; the standard setting for the CLT and estimation.
**I/O latency / hiding latency** — The delay of I/O (especially disk); hiding it by doing other work while one task blocks is a main motivation for concurrency.
**I/O redirection / dup2** — Making a descriptor refer to a different open file; `dup2(oldfd, newfd)` copies oldfd's open-file entry into newfd, as the shell does for `>` redirection.
**IDE (integrated development environment)** — An editor-plus-interpreter tool for writing, running, and debugging programs (e.g. Thonny), holding the saved source and running the code.
**idempotent laws** — p ∨ p ≡ p and p ∧ p ≡ p.
**identity as forwarding** — In the proofs-as-processes reading, the identity rule is a forwarder process that globally unifies (identifies) its two channels and then disappears.
**identity elimination** — The theorem that identity restricted to atomic propositions suffices: `A ⊢ A` is cut-free provable for any compound `A` by iterated identity expansion.
**identity expansion / identity theorem** — The check that the identity `A ⊢ A` at a compound proposition can be rebuilt using only identities at its subformulas; verifies the left/elimination rules are strong enough (not too weak), and in its global form shows `Γ, A ⟹ A` is derivable for every proposition, the counterpart of local completeness.
**identity laws** — p ∧ T ≡ p and p ∨ F ≡ p.
**identity rule (id)** — The judgmental sequent rule `Γ, A ⊢ A` (initial sequent) concluding a succedent from a matching antecedent, restricted to atomic propositions in cut-free systems; a proof branch closes when a succedent also appears among the antecedents, linking the left and right judgments.
**idiom** — The typical, conventional way a computation is expressed in a given language.
**IEEE 754** — The 1985 standard specifying floating-point representation and operation results for portability across CPUs.
**IFDS framework** — An efficient interprocedural dataflow algorithm available when the flow functions are distributive; the practical alternative to general context-sensitive analysis.
**immutability** — The property that a value can never change once created (OCaml lists, Java `String`s), eliminating whole classes of bugs.
**immutable vs. mutable ADT** — Immutable ADTs never change after construction and can be shared freely; mutable ADTs allow methods to change state, requiring RI re-checking.
**Impact = Effectiveness × Applicability × Trust** — The practitioner's framing that a program-analysis tool's real-world success is effectiveness (precision/recall) times applicability ("you cannot find bugs in code you do not analyze") times trust (which erodes when output is noisy), not effectiveness alone.
**Impagliazzo's Five Worlds** — Five hypothetical worlds (Algorithmica, Heuristica, Pessiland, Minicrypt, Cryptomania) describing computation and cryptography depending on how P vs NP and one-way/public-key functions resolve.
**imperative specification** — A spec saying how to compute the answer by laying out the exact steps; code is then written straight from the spec.
**implication (code reasoning)** — The claim that some fact follows from other known facts; checking correctness reduces to proving the postcondition follows from the facts at each return.
**implication (→)** — The connective "if…then"; p → q is false only when p is true and q is false. p is the hypothesis, q the conclusion.
**implication (⊃)** — The connective `A ⊃ B`, true when `B` holds under the hypothesis `A`; introduced by discharging that hypothesis (⊃I) and eliminated by modus ponens (⊃E); corresponds under Curry–Howard to the function type.
**implicit conversion to unsigned** — In an expression (including comparisons) mixing signed and unsigned operands, the signed operand is silently converted to unsigned, producing surprising results.
**implicit free list** — A heap organization tracking all blocks (allocated and free) via each block's size field, so allocation is linear in the total number of blocks.
**implicit leading 1** — The normalized IEEE mantissa's leading 1 is not stored, giving one extra bit of precision.
**implicit parameter** — The unstated receiver argument (`self`/`this`) every method carries, which drives dynamic dispatch.
**implicit proof obligation** — A hidden verification condition generated by a language construct: pattern matches must be exhaustive, `div`/`mod` require a nonzero divisor, array accesses require in-bounds indices, and structures with invariants require the invariant.
**impredicative (first-class) polymorphism** — Parametric polymorphism where type variables may be instantiated with any type, including polymorphic ones; System F's style.
**impredicativity** — The self-referential character of System F's `∀`, which may be instantiated at any type including one built from itself; a source of foundational concern (proved consistent by Girard) that blocks defining a type interpretation by naive induction on type structure.
**IN / NOT IN** — SQL predicates testing membership or non-membership of a value in a subquery result.
**in-order traversal** — Visiting a non-empty binary tree's left child, then its root, then its right child; used to flatten a tree to a list and to define when a tree is sorted.
**in-place sort** — A sort using only Θ(1) extra space by swapping within the given array (selection, insertion, in-place heap sort).
**incompleteness of first-order DL** — The theorem that first-order dynamic logic has no effective sound-and-complete calculus, shown via failure of compactness in DL.
**inconsistent / vacuous specification** — A set of axioms or an invariant that derives a contradiction (inconsistent, equivalent to `false`) proves everything including wrong obligations; a vacuously-true specification (equivalent to `true`) says nothing.
**inconsistent system** — A deduction system in which every proposition is derivable; useless for proof (natural deduction becomes inconsistent if hypothesis-scope restrictions are violated).
**incremental solving / solution caching** — Reusing solver state and caching results across many similar path-condition queries to reduce solver load.
**indefinite loop** — A loop whose number of iterations is not known in advance (typically a `while` loop); contrasted with a definite loop.
**independence (of events)** — Two events are independent if P(A∩B) = P(A)·P(B); one occurring gives no information about the other.
**independence assumption** — Assuming distinct predicates or attributes are statistically independent when combining their selectivities.
**independence of random variables** — X and Y are independent when their joint PMF/density factors into the product of the marginals.
**independence principle** — In adjoint logic, the invariant that a stronger-mode succedent may not depend on weaker-mode antecedents; it fixes the shift rules and forces three cut rules instead of four.
**index** — An auxiliary file speeding access to data by a search key, giving direct access to reduce I/Os.
**index-based selection** — Answering a selection through an index rather than a full scan; its cost depends on whether the index is clustered.
**indicative vs. optative mood** — The indicative mood states facts true of the environment as-is; the optative mood states the desired environment once the machine is present (to-be). Requirements are written in optative mood at the environment–machine interface to avoid implementation bias.
**indicator random variable** — A 0/1 variable equal to 1 exactly when a specified event occurs; its expectation equals that event's probability, central to linearity-of-expectation arguments.
**induction and coinduction principles** — Dual proof principles: the least fixed point yields rule induction (to show `μ(F) ⊆ A`, show `A` is F-closed), the greatest yields coinduction (to show `A ⊆ ν(F)`, show `A` is F-consistent).
**induction axiom (I)** — The sound loop-induction principle `[α*]P ↔ P ∧ [α*](P → [α]P)` of (differential) dynamic logic, valid by induction on the iteration count and the source of the loop-invariant rule; contrast the unsound naive `[α*]P ↔ P ∧ (P → [α]P)`.
**induction hypothesis** — Within an inductive proof, the assumption that the property holds for the smaller case(s), from which the inductive step derives it for the current case.
**induction over →*** — Proving a property of all reachable states by inducting over paths: base case for initial states, inductive case for "add one more step".
**induction rule (natE)** — The elimination rule for the type of natural numbers: prove `C(n)` by proving the base `C(0)` and the step `C(s x)` under the parametric hypothesis `C(x)`; computationally the recursor, and exactly proof by mathematical induction.
**induction rule for loops (ind)** — The rule `J ⊢ [α]J` (the invariant is inductive/preserved) underlying loop reasoning, generalized to `[α*]` via Gödel generalization.
**induction variable** — A variable that changes by a fixed amount each loop iteration: basic (only in-loop updates `X = X ± c`) or derived (a linear function `c1·B + c2` of a basic one); recognizing induction variables enables strength reduction.
**induction-variable elimination / loop-test replacement** — Removing a basic induction variable used only to compute other induction variables and the loop test, by rewriting the test on a derived variable and cleaning up with copy propagation and dead-code elimination.
**inductive (syntax-guided) synthesis** — Searching a syntactically restricted candidate space for a program consistent with a partial specification such as input/output examples.
**inductive definition** — A collection of inference rules defining one or more judgments as the least (strongest) assertion closed under the rules; the least fixed point of the monotone operator that closes a set under the rules.
**inductive definition (inductive set)** — A set built from base cases (always in the set) and inductive cases (in the set whenever their premises are), generating the whole set from the base upward.
**inductive hypothesis** — The assumption that the claim holds for an arbitrary k (or for the smaller substructures), used to prove the next case.
**inductive invariant** — An invariant provable directly by induction over →: it holds initially and is preserved by every step. Not all invariants are inductive.
**inductive step** — The part of a proof establishing the claim for a recursive constructor / successor case, using the inductive hypothesis.
**inductive type (μ(t.τ))** — A positive type that is the least type closed under its constructor `fold`, whose elements are exactly those built by finitely many applications of the type operator (e.g. `nat = μ(t. unit + t)`).
**inductively defined proposition** — A relation (like →* or the step relation) defined by inference rules whose conclusions are propositions.
**infeasible path** — A path through a control-flow (or interprocedural) graph that cannot occur in any real execution (e.g. entering a function from one call site and returning to a different one); a source of imprecision to eliminate.
**inference rule** — A schema `J1 … Jn / J` asserting that the conclusion `J` may be derived whenever the premises `J1,…,Jn` are; a rule with no premises is an axiom, and rules inductively define judgments.
**infinitary / relative / arithmetical completeness** — The positive completeness results that hold for dynamic logic despite its incompleteness: sound-and-complete infinitary axiomatizations exist, as do relative/arithmetical completeness results (completeness modulo an oracle for arithmetic).
**infinite recursion / stack overflow** — Recursion that never reaches a base case, growing the call stack without bound until it is exhausted and the program crashes.
**infinity / NaN** — Special IEEE encodings (E all ones): ±infinity for overflow and Not-a-Number for undefined results such as 0/0.
**inflationary semantics** — Defining a game repetition's winning region `ςα*(X)` as the union of iterated winning regions over all ordinals, until the construction stabilizes.
**information hiding** — Encapsulating design decisions (especially those likely to change, or a structure's helper components/invariants) behind a stable interface so that changes do not ripple through the system and clients cannot violate the hidden invariants.
**inheritance** — Defining a class as a subclass of an existing superclass so that it acquires the superclass's attributes and methods and may extend or override them.
**initialization checking** — The static-semantic property that every variable is defined before it is used; specified as a may-property so that any possible use of an undefined variable is rejected.
**initiation interval (II)** — The constant number of cycles between the starts of successive iterations of a software-pipelined loop; minimizing it (NP-complete in general) lower-bounds per-iteration time.
**inject** — Ruby's fold method: with no seed it behaves like `reduce`, and with a seed like `foldl`.
**inlining** — Substituting a function's body into its callers, eliminating call overhead and exposing further optimizations across the former call boundary, at the cost of code size.
**inner class** — A class defined inside another class so its implementation stays hidden from outside clients while remaining accessible to the enclosing class.
**inner join / JOIN … ON** — The explicit join syntax `FROM A JOIN B ON <cond>`, equivalent to listing tables in FROM with the condition in WHERE.
**INSERT** — Adds one or more (persistent) tuples to a table.
**insertion policy (LIFO / FIFO / address-ordered)** — Where a newly freed block goes in an explicit free list: at the front, at the back, or in address order (which studies show fragments less).
**insertion sort** — Maintain a sorted prefix and insert each next element leftward; Θ(n²) worst, Θ(n) best; in place, stable, adaptive, and online.
**inspection checklist** — A short (about seven items) list focusing reviewers on likely error sources, priority issues, and historical problems; started from a known source and refined by experience, and used to make inspections systematic and counter reviewer fatigue.
**inspection roles** — The defined participants of a formal review: the moderator (organizes and keeps it on track, impartial), the recorder/scribe (logs defects), the reader (presents and interprets the material, distinct from the author to reveal ambiguities), and the author.
**instance** — The actual data currently in a relation (the set of tuples).
**instance (of a class)** — A particular object produced by calling a class, having its own attribute values (e.g. `'abc'` is an instance of `str`).
**instance (of a type)** — A type obtained by substituting concrete types for the type variables of a polymorphic type; a polymorphic expression may be used at any instance.
**instance variable (@)** — A per-object Ruby variable, prefixed with `@`, coming into existence when first assigned in a method.
**instruction scheduling** — Reordering independent instructions to keep the processor pipeline/functional units busy and hide operation latencies while respecting resource, data-, and control-dependence constraints; the core problem is NP-hard.
**instruction selection** — Mapping the machine-independent IR onto concrete target instructions; fast if greedy, NP-hard optimally.
**Instruction Set Architecture (ISA)** — The contract between hardware and software: visible state (program counter, registers, memory) plus the instruction set and each instruction's effect.
**instruction set architecture (ISA)** — The processor-design contract a programmer must understand — the instruction set and registers — distinct from the microarchitecture that implements it.
**instruction-level parallelism (ILP)** — Executing several instructions per cycle across a CPU's multiple functional units, exploited by loop unrolling and scheduling.
**instrumentation** — Inserting probes into source, bytecode, or binary (via code transformation) to collect information about a program run; the measured event should be far longer than the instrumentation overhead to be trustworthy.
**integer (floor) division** — The division operator (`//`) that discards the fractional part, rounding toward negative infinity.
**integer division** — Division of two integers that discards the fractional remainder and yields an integer (e.g. `14 / 4` is `3` in Java).
**integer sign analysis** — A dataflow analysis tracking whether each variable is `<0`, `=0`, `>0` (with refinements `≤0`, `≥0`, `≠0`) or unknown; an extension of zero analysis.
**integration test** — A test checking that units work correctly together, where many real-world bugs live.
**integration testing** — Testing the interactions and protocols between modules once combined, done incrementally to avoid risky "big bang" integration.
**inter-process communication (IPC)** — Mechanisms by which isolated processes communicate: pipes, sockets, shared memory, lockfiles, and RPC.
**interactive vs. sequential computation** — The shift from programs where one player resolves all choices to games where some choices help and others hinder (adversarial or multi-agent settings).
**intercalation** — The proof-search reading of verifications: working "toward the middle," applying introduction rules from below and elimination rules from above.
**interface (module)** — A module's set of public functions, typedefs, and globals, specified in its header file.
**interface / shared constants** — Constants occurring in both purified conjuncts of a Nelson–Oppen combination; theories communicate only by propagating equalities among them.
**interference (concurrency)** — In a process calculus, the problem that a third process can "steal" a synchronization intended between two others; it contains essentially all the difficulties of concurrent programming, and is prevented by private channel restriction.
**interference (register allocation)** — Two temporaries/pseudo-registers interfere when they cannot share a register because their live ranges overlap at some point.
**interference graph** — An undirected graph with a node per variable/live-range and an edge whenever two are simultaneously live, so they cannot share a register.
**interleaving** — The unpredictable order in which concurrent threads' or commands' operations execute; naturally expressible in small-step but not big-step semantics.
**intermediate representation (IR)** — A machine- and source-independent internal program form (often RISC-like) sitting between the AST and target assembly, over which analyses and optimizations run, enabling one optimizer to serve many front and back ends.
**internal choice (⊕)** — The n-ary labeled sum `⊕{lᵢ : Aᵢ}` whose provider chooses and sends a label and whose client receives and branches with `case`; "internal" because the provider decides.
**internal definition** — A `define` nested inside another `define`, the preferred way to write local helper functions in Racket.
**internal fragmentation** — Wasted space inside an allocated block when the payload is smaller than the block (e.g. due to alignment or headers).
**internal linkage / static** — The `static` specifier at global scope restricts a definition's visibility to its own file.
**internal vs external fragmentation** — Internal fragmentation is payload smaller than block size (header/alignment/policy overhead); external fragmentation is enough total free memory but no single free block large enough.
**interpretation (I)** — The fixed assignment of meanings to function and predicate symbols against which a formula's validity (`I ⊨ φ`) is judged.
**interpretation (logic)** — An assignment mapping every variable of a formula to a truth value; written I ⊨ F when F is true under I.
**interpreter** — A program (a recursive function over program syntax) that executes source or intermediate code directly; more portable but generally slower than native execution.
**interpreter pipeline** — The stages parse → elaborate → execute → format: a parser produces an AST, an elaborator validates it against the statics producing an ABT, an executor runs it per the dynamics, and a formatter renders the result; a compiler is one strategy for implementing the executor.
**interpreter vs. procedural pattern** — Two ways to organize operations over an inductive type: the interpreter pattern groups by expression type, the procedural pattern by operation.
**interprocedural analysis** — Analysis that reasons across function-call boundaries (across whole flow graphs), needed because most real errors span multiple functions and facts flow between caller and callee.
**interprocedural CFG (ICFG)** — A single control-flow graph connecting call sites to callee entries and returns (effectively inlining calls), with call/return/local flow functions; more precise than default assumptions but imprecise where it merges call-site information and models infeasible call/return pairs, and it does not scale.
**interrupt** — An asynchronous exception caused by an event external to the processor (e.g. I/O completion, Ctrl-C); the handler returns to the next instruction.
**intersection (∩)** — The set of elements in both A and B; in relational algebra, tuples common to two relations.
**intersection closure** — The lemma that the intersection of two pre-fixpoint solutions is again a solution, yielding the least one.
**interval domain** — An abstract domain approximating a variable by a numeric interval [lo, hi].
**intervals / graph depth** — The nesting depth of a reducible flow graph equals the depth of its intervals; iterative dataflow needs about depth + 2 passes (average depth ≈ 2.75, independent of program length).
**intraprocedural analysis** — Analyzing one function body in isolation via its own CFG; models separate compilation but cannot reason across calls.
**introduction and elimination forms** — The constructors that produce values of a type (introduction form, e.g. λ-abstraction, pairing, injection, zero/successor) and the operators that consume them (elimination form, e.g. application, projection, case, the recursor).
**introduction rule** — A logical rule specifying how to conclude (introduce) a connective, thereby defining its meaning (e.g. ∧I concludes `A ∧ B` from `A` and `B`); under Curry–Howard the value constructor.
**intuitionism** — Brouwer's view that mathematics is the carrying out of effective mental constructions, so a proposition is asserted only when we possess a construction (proof) for it, rather than by appeal to absolute external truth; logic is grounded in constructive mathematics.
**intuitionistic (Martin-Löf) type theory** — A codification of Brouwer's constructivism in which computable constructions are classified by types specifying their abstract properties; simultaneously a constructive mathematics and a comprehensive theory of computation.
**intuitionistic meaning of the connectives (BHK interpretation)** — The informal definition of truth by construction: a proof of `A ∧ B` is a proof of each; of `A ∨ B`, a proof of one disjunct; of `A ⊃ B`, a construction transforming a proof of `A` into one of `B`; of `∃x.A`, a witness with a proof; of `∀x.A`, a construction mapping each element to a proof.
**invariant** — A property that holds in every reachable state of a system (the "safe" states).
**invariant detection** — Dynamically inferring likely invariants by reporting properties left unfalsified across observed executions (Daikon-style).
**inverse** — For an implication p → q, its inverse ¬p → ¬q.
**inversion** — Reasoning that, given a derivable judgment, enumerates exactly the rules that could have concluded it and recovers their premises; zero possible rules yields a contradiction, one yields a subderivation.
**inversion phase and focusing phase** — The two alternating phases of a focusing proof: an inversion phase decomposes all invertible connectives down to a stable sequent (a confluent don't-care choice), then a focusing/chaining phase decomposes one chosen proposition until focus is lost.
**inversion staging (right-inversion / left-inversion / choice)** — Three mutually dependent sequent forms that stage proof search as: decompose right-invertibles, then left-invertibles, then reach a choice sequent, and repeat.
**invertible rule** — A rule whose premises hold iff its conclusion does, so it can be applied bottom-up in search without backtracking; the basis of focusing's inversion phase.
**iostream** — The C++ standard-library header declaring the stream objects; C++ standard headers are included without a `.h` suffix.
**IP (Internet Protocol)** — The network-layer protocol routing packets across interconnected networks; every host has a unique IP address and routers forward hop by hop.
**IP / UDP / TCP** — IP provides unreliable host-to-host packet delivery and the naming scheme; UDP adds unreliable process-to-process datagrams; TCP adds reliable process-to-process byte streams over connections.
**IP address (IPv4 / IPv6)** — A host's numeric identifier: IPv4 is 32 bits in dotted-decimal (subject to exhaustion); IPv6 is 128 bits in colon-separated hextets.
**IP address / dotted-decimal / network byte order** — A 32-bit (IPv4) host identifier stored big-endian (network byte order) and written as four dot-separated decimal bytes; IPv6 uses 128-bit addresses.
**irregular language** — A language no DFA (hence no regular expression) can recognize, such as { 0^k 1^k : k ≥ 0 }.
**iso-recursive types** — The formulation in which a recursive type and its unrolling are isomorphic rather than equal, with explicit `fold`/`unfold` witnessing the isomorphism (inductive under eager dynamics, coinductive under lazy).
**ite (if-then-else) value** — A merged symbolic value representing a conditional outcome, used to encode branches without enumerating paths.
**iterable** — A type whose elements can be visited one at a time by a for-each loop, such as a list, string, set, or range.
**iterated dominance frontier** — The fixed point of taking dominance frontiers (each inserted φ-function is itself a definition); it gives the minimal set of φ placements, computed on the fly by the defsites worklist algorithm.
**iterated winning region** — The transfinite iteration `ςα⁰(X) = X`, `ςα^{κ+1}(X) = X ∪ ςα(ςα^κ(X))` with unions at limit ordinals; the explicit inflationary construction of a game repetition's semantics.
**iterative algorithm (dataflow)** — The standard dataflow solver: initialize each node's output (to Top for interior nodes), then repeatedly recompute inputs via the meet and outputs via transfer functions until no value changes (a fixed point); the worklist algorithm is its efficient refinement.
**iterative and incremental development (IID)** — Building a system in repeated cycles that add and refine functionality (rooted in Shewhart's plan-do-study-act cycles), addressing risk through feedback.
**iterative development** — A problem-solving strategy of first building a simpler or partial version of a solution and then incrementally extending it to the full solution.
**iterative vs concurrent server** — An iterative server handles one request at a time; a concurrent server uses multiple flows to serve several clients at once.
**iterator** — A per-container object or method that steps through a collection's elements while hiding its underlying structure, over the half-open range `[begin, end)`.
**IV&V** — Independent Verification and Validation, in which a separate test organization implements part of the test plan.
**J (identity elimination)** — The eliminator for the intensional identity type, whose computation rule fires on `refl`; the identity type `Id_A` is "the least reflexive relation" on `A`, a formulation flagged as circular because it is defined uniformly, independently of `A`.
**Java Modeling Language (JML)** — A notation for writing pre-/postconditions and invariants as annotations (`requires`, `ensures`, `loop_invariant`, `\result`, `\forall`) in Java source, checked by tools such as ESC/Java.
**Java Virtual Machine (JVM)** — A virtual machine that executes Java bytecode, adding a layer between source-like code and the hardware.
**JDBC** — The Java client interface used to connect an application to a database server.
**jmp and conditional jumps** — Unconditional `jmp` and condition-code-driven jumps (`je`/`jne`/`jl`/`jg`…) that implement control flow as goto-style branches.
**join** — An operation linking records from different tables, often via a key/foreign-key relationship; in relational algebra (⋈) a Cartesian product followed by a selection, with eq-join, theta-join, and natural join variants.
**join (least upper bound, ⊔)** — The operation merging two abstract values at a control-flow confluence, yielding the least element that is an upper bound of both (the "most precise generalization"); commutative, associative, and idempotent.
**join node** — A node with multiple predecessors (forward) or successors (backward) where the meet/join operator combines the several incoming dataflow values.
**join semilattice** — A partially ordered set in which every pair has a least upper bound (join).
**joint distribution** — The combined distribution of two or more random variables, giving probabilities of their values simultaneously.
**JSDoc** — The `/** ... */` comment format in which TypeScript specs are written, using tags `@param`, `@requires`, `@returns`, `@modifies`, `@effects`.
**judgment** — An assertion that a property holds of an object (e.g. `A true`, `M : A`, `Γ ⊢ e : τ`, `a ⇓ n`); the basic unit that inference rules inductively define, and that we may come to know.
**judgment vs. proposition** — Following Martin-Löf, the objects of inference are judgments about propositions (e.g. `A true`, `A eph`) rather than propositions themselves; keeping the two strictly separate is a cornerstone of the judgmental method.
**judgmental vs. propositional rules (structural rules)** — Identity and cut are judgmental (structural) rules concerned only with the nature of the hypothetical judgment; the right/left rules are propositional, defining individual connectives.
**jump table / indirect jump** — A table of code addresses indexed by a value, used with an indirect jump to compile a switch statement efficiently.
**JUnit** — A unit-testing framework for Java that provides method annotations (e.g. `@Test`) and assertion methods for writing and running automated tests.
**K axiom (modal modus ponens)** — `[α](P → Q) → ([α]P → [α]Q)`: the modal distribution axiom, distributing the box modality over implication (with a dual diamond form).
**K machine (control stacks)** — An abstract machine for call-by-value PCF whose states pair a control stack with an expression (`K ▷ e` evaluating `e`, `K ◁ v` returning `v` to `K`), avoiding the search rules of structural dynamics and making control features easy to express.
**k-limiting** — Bounding context length (k-call-strings or k-value-contexts, or unrolling loops to depth k) to keep the number of contexts/paths finite and analysis tractable.
**Kanban board** — A visual board showing work items moving through stages (to-do, in-progress, done) to manage flow and limit work in progress.
**kernel** — Code with complete control over hardware, responsible for exception handling, device drivers, process scheduling, memory management, and resource protection.
**key** — One or more attributes that uniquely identify a row of a table.
**KeYmaera X** — The hybrid-systems theorem prover implementing the differential-dynamic-logic uniform-substitution calculus, in which CPS models are designed and proved.
**kinds, families, objects** — The logical framework's three levels: kinds classify type families, families (types) classify objects; in the equational reformulation, classes, the universe `Sort`, and objects.
**Kleene algebra / regular expressions** — The algebraic structure of regular expressions (`r ::= a | 1 | r·s | 0 | r+s | r*`) with its laws (units, associativity, idempotent iteration), mirrored in the algebra of programs.
**Kleene fixed-point theorem** — Result used to show the fixed point defining a loop's denotation exists, salvaging denotational semantics for non-terminating-capable languages.
**Kleene star (closure)** — The operator A* denoting zero or more concatenated repetitions of strings from A.
**Knaster–Tarski theorem** — Every monotone function on a powerset (complete lattice) has least and greatest fixed points, computable by iterating from `∅` (up) or the full set (down); on a finite state space the iteration terminates.
**Kripke logical relations** — A generalization of Tait's method to open terms in which computability predicates are indexed by a possible world (a variable context) and must be monotone with respect to world extension.
**Kripke structure** — A set of states with a transition relation, a labeling of atomic propositions at each state, and initial states; a computation structure additionally requires the state set to be finite and every state to have a successor.
**Kruskal's algorithm** — Builds an MST by repeatedly adding the globally lowest-weight edge that does not create a cycle; O(|E| log |V|) using union-find.
**l-value (destination)** — The left-hand side of an assignment (`d ::= x | *d | d[e] | d.f`) that denotes a location to write, as opposed to an ordinary expression that denotes a value.
**LALR parsing** — Look-Ahead LR: a space-efficient LR variant (merging LR(1) states with identical cores) that is the basis of common parser generators.
**LALR(1)** — An LR(1) variant merging states differing only in lookahead, giving far smaller tables; used by YACC, Bison, and CUP.
**lambda abstraction (λ-abstraction)** — The expression `λx. e` (written `fn x => e`, `lam(x.e)`) denoting an anonymous function with parameter `x` and body `e`; the introduction form for the function type / implication, binding `x` in `e`.
**lambda calculus** — Church's 1936 formalism characterizing computation via functions (variable, abstraction, application); Turing complete, and the mathematical foundation of functional programming.
**lambda calculus (λ-calculus)** — Church's minimal calculus of variables, abstraction, and application, with β-reduction as its sole computation rule; a universal model of computation and the simplest setting for studying functional programming.
**Lambek calculus** — Lambek's (1958) ordered logic for describing the syntax of natural language, in which hypotheses are kept in order; parsing becomes proof construction and proofs are parse trees.
**landing pad** — Transforming `while p do body` into `if p { preheader; repeat body until ¬p }` so a preheader executes only when the loop is actually entered, making speculative hoisting safe.
**language** — A set of strings over an alphabet, possibly empty or infinite; an infinite language can be specified finitely.
**language inclusion formulation** — `K ⊨ P` iff `L(K) ⊆ L(P)`, i.e. every behavior of the system is allowed by the specification; checked via `L(K) ∩ complement(L(P)) = ∅`.
**Las Vegas vs. Monte Carlo algorithms** — A Las Vegas algorithm is always correct but has random running time; a Monte Carlo algorithm runs in bounded time but may be wrong with small probability.
**latency and pipeline hazards** — Latency is the delay before an instruction's result is available; a hazard is a pipeline stall arising when a dependent instruction issues too soon. Scheduling reorders code to avoid hazards.
**lattice** — A set of abstract elements with a partial order `⊑` ("at least as precise as"), a join `⊔`, a bottom `⊥` (unanalyzed/least element), and a top `⊤` (least precise/greatest element); the value structure of a dataflow analysis.
**law of excluded middle vs. proof by contradiction** — The intuitionistically crucial distinction between proving `A` by assuming `¬A` and deriving a contradiction (rejected) and proving `¬A` by assuming `A` and deriving a contradiction (accepted); classically indistinguishable.
**law of implication** — p → q ≡ ¬p ∨ q.
**law of the excluded middle** — The classical principle `A ∨ ¬A`, rejected in general by intuitionists because we may possess neither a proof of `A` nor a refutation of it.
**law of the excluded middle (via continuations)** — A program of type `τ + τ cont` (`letcc(ret. l · letcc(x. throw(r · x; ret)))`) that "changes its mind" by backtracking through a captured continuation, illustrating the Curry–Howard reading of first-class control as classical logic.
**law of the unconscious statistician (LOTUS)** — Computes 𝔼[g(X)] as Σ g(x)·P(X=x) directly from the PMF, without first finding the distribution of g(X).
**law of total probability** — For a partition A₁,…,Aₖ of the sample space, P(E) = Σ P(E|Aᵢ)·P(Aᵢ).
**layered architecture** — A style organizing the system into layers where each provides services to the one above and depends only on those below, improving modifiability and portability.
**laziness** — Evaluating a function argument only if actually needed (Haskell's call-by-name variant) rather than eagerly.
**laziness / lazy evaluation** — Demand-driven computation that evaluates only as much of a data structure as needed, enabling potentially infinite data; side-steps the eager call-by-value default.
**lazy concretization** — Materializing symbolic heap objects/pointers only when first dereferenced, to model dynamically allocated data structures.
**lazy product (τ1 & τ2) / parallel bind** — The type of two encapsulated computations evaluated in parallel; its elimination form `parbnd` evaluates both and binds their eager pair at the join point.
**leader** — The first instruction of a basic block: the first instruction overall, any branch target, or any instruction after a branch.
**leaf (tree)** — A tree node with no children (both subtrees empty); the base case of many recursive tree algorithms.
**leaq** — Load-effective-address: sets the destination to the address computed by an addressing-mode expression without touching memory or condition codes; used for pointers and for `x + k·y` arithmetic.
**leaq (load effective address)** — An instruction computing `D(Rb,Ri,S)` and storing the resulting address (or arithmetic result) in a register without accessing memory.
**least (μ) and greatest (ν) fixed point** — `μ(F)` is the intersection of all pre-fixed points (the strongest property closed under `F`); `ν(F)` is the union of all post-fixed points (the weakest property consistent with `F`), yielding induction and coinduction respectively.
**least fixed point (LFP)** — The solution an iterative/worklist dataflow analysis actually computes (the largest of the fixed points a monotone framework admits from `⊥`); for monotone frameworks `LFP ⊑ MOP`, coinciding when flow functions are distributive.
**least privilege** — The principle that an application should always execute with the minimum privileges possible, so a single bug does less damage.
**least upper bound (lub / join)** — The smallest abstract element above two elements; used to merge information at control-flow joins.
**least-fixpoint characterization of repetition** — `ςα*(X)` as the smallest pre-fixpoint `⋂{Z : X ∪ ςα(Z) ⊆ Z}`, ensuring a player wins a game loop only by well-founded repetition; the demonic dual is the greatest fixpoint.
**left and right rules** — In the sequent calculus, per-connective rules where a right rule decomposes an operator in the succedent (from the introduction rules) and a left rule decomposes one in an antecedent (from flipping the elimination rules).
**left factoring** — Rewriting productions sharing a common prefix into a separate nonterminal so the parser can defer the choice until after the prefix.
**left recursion** — A rule `A ::= A α` that causes infinite recursion in a recursive-descent parser and must be rewritten to right recursion plus a tail nonterminal.
**left recursion (and left factoring)** — A grammar rule `A → A α` that causes non-termination in top-down parsers and must be eliminated; left factoring additionally factors shared rule prefixes so a recursive-descent/LL(1) parser can decide with one lookahead symbol.
**left shift (`x << y`)** — Shifts `x` left `y` positions, discarding high bits and filling zeros on the right; computes `x·2ʸ`.
**left-deep / right-deep / bushy plans** — Shapes of join trees; optimizers commonly limit the search space to left-deep plans.
**leftmost derivation** — A derivation that always expands the leftmost nonterminal first; top-down parsers construct leftmost derivations, and multiple distinct ones show a grammar is ambiguous.
**leftmost-outermost / normal-order reduction** — The reduction strategy that always reduces the leftmost, outermost redex; it is complete, finding a normal form whenever one exists.
**lemma** — An established correctness property (or needed mathematical fact) that can be cited when proving the correctness of later functions or theorems.
**let expression** — A construct `let val … in e end` introducing local bindings visible only within the body `e`.
**letcc / throw** — `letcc(x.e)` binds the current continuation to `x` within `e`; `throw(e; k)` abandons the current control state and resumes the reified continuation `k`; together they give first-class control.
**level of abstraction** — How close an IR sits to the source (high-level) versus the machine (low-level); mid-level IRs balance the two for target-independent optimization.
**lexeme** — The actual character string in the source that a token matches.
**lexical analysis (lexing / tokenizing)** — The first compiler pass, scanning the raw character stream and grouping it into tokens (identifiers, keywords, literals, operators) governed by regular expressions, discarding whitespace and comments.
**lexical class** — The category a token belongs to (operator, keyword, identifier, integer constant); each keyword and operator is its own distinct class.
**lexical scope (static scope)** — Resolving a variable by the textual (nested) structure of the program, determinable before execution; used by Java and OCaml.
**lexicographically positive dependence** — A dependence whose direction vector is positive in its first non-"=" component; loop interchange is legal only if all dependences remain lexicographically positive after the swap.
**library / archive (.a)** — A pre-assembled collection of object files; a static-library archive is linked with `-L<path> -l<name>`.
**Lie derivative (Sophus Lie)** — The classical total derivative of a quantity along a vector field; a differential invariant is the logical formulation of Lie's characterization of invariance under an ODE.
**lifted lattice** — A per-variable lattice built by mapping each variable to a value lattice, with join and `⊑` computed pointwise; lifting a complete lattice yields another complete lattice.
**lifting** — Rosette's mechanism of extending a host operation to work on symbolic values; unlifted constructs require care because symbolic values may not flow safely through them.
**likelihood** — The probability of the observed data viewed as a function of the model's unknown parameters; its logarithm (log-likelihood) is often maximized instead because sums differentiate more easily.
**linear hypothesis / resource** — An assumption "A res" that must be used exactly once, behaving as a consumable resource expressing ephemeral truth about the current state.
**linear implication (lollipop, A ⊸ B)** — The single linear implication (`A \ B = B / A` once exchange collapses the two ordered implications), true if `B` is achievable given the additional resource `A`; as a resource it consumes an `A` to produce a `B`, and its rules split the multiset context freely.
**linear inference** — Inference that consumes the propositions used as premises and produces those in the conclusion, effecting a change of state ("linear inference can change the world"), in contrast to ordinary inference which only accumulates knowledge.
**linear integer / real arithmetic (LIA / LRA)** — Theories of linear constraints over ℤ or ℝ; LRA is polynomial-time, LIA is NP-complete, and nonlinear multiplication is harder.
**linear logic** — Girard's resource-aware "logic of state" in which each hypothesis must be used exactly once; gives a direct logical account of state change by adding linear (consumable) assumptions to ordinary ones.
**linear negation (A⊥)** — In classical linear logic, an involutive negation (`(A⊥)⊥ = A`) under which connectives are defined by right rules plus negation; identity becomes `⊢ A, A⊥` and cut cuts `A` against `A⊥`.
**linear probing** — Open addressing trying i+1, i+2, … (mod length) until an open cell is found; simple but prone to clustering.
**linear search** — Searching by examining each element of a collection in turn until the target is found or the data is exhausted; O(n).
**linear temporal logic (LTL)** — A linear-time temporal logic interpreted over individual traces, with operators Next, Globally, Eventually, and Until; `K ⊨ P` iff every trace of `K` satisfies `P`.
**linear type system** — A substructural system with neither weakening nor contraction, so every variable is used exactly once (variables as resources); its rules split the context between subterms.
**linearity of expectation** — 𝔼[X+Y] = 𝔼[X] + 𝔼[Y] and 𝔼[aX] = a·𝔼[X], holding for any random variables whether or not independent.
**linked list** — A structure of nodes each holding a payload and a pointer to the next node, with NULL (or front/back references) marking the ends.
**linker** — The program (`ld`) that combines relocatable object files into an executable by symbol resolution and relocation.
**linker (ld)** — The tool that combines object files and libraries into an executable, resolving symbol references across them.
**linter** — A tool applying many lightweight static checks for style and likely-bug patterns (e.g. Checkstyle, FindBugs, language-specific linters).
**Liskov Substitution Principle** — Subtypes must be substitutable for their supertypes; the definition of subtyping for abstract types (due to Barbara Liskov).
**Lisp / Scheme / Racket** — Lisp (McCarthy, 1958) is the first functional language; Scheme is a lexically scoped descendant; Racket is the modern Scheme dialect used in the course.
**list** — The central inductive type `list := nil | cons(x, L)`, the empty list or an element prefixed onto another list; shorthand `x :: L`.
**list (C++)** — A doubly-linked list: no random access, but constant-time insertion/deletion anywhere, with a member `sort` that relinks rather than copies.
**list comprehension** — A concise expression that builds a list by looping over an iterable, optionally filtering with a condition, e.g. `[i for i in range(10) if i%2==0]`.
**list scheduling** — The standard basic-block scheduler: cycle by cycle, pick from a ready list (instructions whose operands are available and resources free) using a priority function (e.g. latency-weighted depth), with a tie-breaking rule.
**list segment (segA = listA / listA)** — A list missing its tail, i.e. a list-to-list function realized as a process; supports prepend/postpend/concatenate, behaving like a deque whose elements cannot be removed.
**listening vs connected descriptor** — A server's long-lived listening descriptor accepts connection requests; each `accept` returns a fresh connected descriptor for communicating with one client.
**literal** — A propositional variable or its negation; more generally an atom or its negation.
**literal vs. contextual reading** — Two readings of an axiom like `[:=]`: `p(x)` as a genuine predicate `p` applied to `x` (literal) versus a formula context `p(·)` with a hole (contextual); the literal reading plus uniform substitution avoids formalizing contexts.
**little-endian** — Byte order with the least-significant byte at the lowest address (x86-64, ARM on common platforms).
**live range** — The set of program points over which a temporary/definition is live; two live ranges interfere exactly when they overlap, and overlapping ranges of one variable merge into equivalence classes (webs).
**live variable analysis (liveness)** — A backward dataflow analysis computing which variables may be used along some future path (are live) at each program point, via `in[b] = Use[b] ∪ (out[b] − Def[b])`; motivates register allocation and dead-code elimination.
**live-in / live-out** — The sets of variables live on entry to and exit from an instruction or block, related by the standard liveness equations over the block's use and def sets.
**live-range splitting** — Breaking a long live range into shorter ones by inserting a copy, making the interference graph sparser (paying small load/store/copy costs) so a heavily-used temporary can avoid being spilled.
**livelock / starvation / fairness** — Livelock is progress without advancement; starvation is a thread making no progress for a long time; a fair algorithm guarantees no starvation.
**liveness property** — A property asserting that something good eventually happens (e.g. `□(t → ◇c)`), expressed with the diamond modality and established via variants; contrast safety.
**LL(1) property** — The condition that each nonterminal's alternatives have disjoint FIRST sets (and, if nullable, disjoint from FOLLOW), enabling one-symbol-lookahead prediction.
**LL(k) parsing** — Left-to-right scan, Leftmost derivation, k tokens of lookahead; less powerful than LR but simpler to hand-code.
**LLMs in program analysis** — Using large language models to augment static analysis (e.g. false-positive filtering), embed inside or synthesize analyzers/checkers, and guide dynamic analysis (concolic testing, fuzzing, mutant/test synthesis).
**LLVM IR** — LLVM's language- and target-independent virtual instruction set: RISC-like three-address code with an infinite virtual-register set in SSA form, typed load/store, an explicit CFG, and text and bitcode serializations.
**load factor (λ)** — The average items per bucket, n / table-length; drives expected chain lengths and probe counts.
**loading** — The OS step creating a process's address space, copying the executable's segments into place, and doing final linking/relocation before execution.
**local binding (let ... in)** — A `let` used as an expression introducing a binding scoped only to the following expression, without adding to the top-level environment.
**local completeness** — The property that a connective's elimination rules are not too weak: any proof can be expanded so its results, recombined by introduction, reprove the original proposition (witnessed by a local expansion).
**local expansion** — The rewriting of an arbitrary proof of a connective into one that eliminates and then re-introduces it; the witness of local completeness.
**local optimization** — Analysis and transformation performed within a single basic block, using no control-flow information (e.g. local CSE, local constant folding).
**local reduction** — The rewriting of an introduction immediately followed by an elimination into a direct proof (the natural-deduction analogue of cut reduction, e.g. `(λx.M)V → [V/x]M`); the witness of local soundness and a step of computation.
**local soundness (dataflow)** — The per-statement correctness condition that each flow function correctly over-approximates the concrete effect of its instruction; local soundness plus a fixed point gives global soundness by induction over execution traces.
**local soundness (harmony)** — The property that a connective's elimination rules are not too strong: any elimination applied to the result of an introduction reduces to a more direct proof (witnessed by a local reduction).
**locality** — The tendency of programs to reuse data near recent accesses: temporal (the same item soon) and spatial (nearby addresses).
**locality analysis** — Analysis that predicts cache misses by finding data reuse, computing the localized iteration space, and intersecting the two; reuse is classified as self vs. group and temporal vs. spatial.
**lock (mutex)** — A mutual-exclusion primitive with acquire (atomically take or block) and release (free), used to bracket critical sections.
**lock (transaction)** — A token a transaction must acquire on an element before reading or writing it; a shared (read) lock permits concurrent readers, an exclusive (write) lock excludes all others.
**lock contention** — Overhead threads incur competing for the same lock; a reason locked code can be slower than sequential.
**lock granularity** — The trade-off between coarse-grained locking (simpler, less parallel) and fine-grained locking (more parallel, harder to get right).
**lock-based concurrency** — Associating a lock with each shared variable, acquiring it before all accesses, grouping updates that maintain an invariant, and holding the lock until the update completes; fine-grained locks allow more concurrency, coarse-grained lower overhead.
**lockset analysis (Eraser)** — A dynamic data-race detector maintaining `LockSet(x)`, the set of locks consistently held on every access to `x`; if the set ever becomes empty a race is reported (a sufficient condition for data-race-freedom).
**logic** — The study of the principles of valid inference and demonstration, here applied to the specification and verification of computer hardware and software.
**logic gate** — An abstracted circuit component implementing a Boolean operation (`and`, `or`, `not`) on bits, mapping directly onto real hardware.
**logic programming language** — A language in which computation is the construction of a derivation under a fixed search strategy, broadly backward-chaining (Prolog) or forward-chaining (Datalog).
**logic variable (logic programming)** — A free variable introduced when instantiating a universal quantifier, whose value is determined by solving accumulated constraints (unification) rather than by guessing a term.
**logic vs. type theory** — In logic, proofs are separate from propositions; in type theory, propositions may refer to proofs, giving added expressive power.
**logical connective** — An operator combining propositions: negation, conjunction, disjunction, exclusive-or, implication, biconditional.
**logical contract** — A specification attached to a function or loop as logical formulas (precondition, postcondition, invariant, variant), enabling compositional reasoning where callers rely only on the contract, not the body.
**logical control flow** — The illusion that a program has exclusive use of the CPU, provided by context switching.
**logical equality** — An inductively-defined (on type structure) notion of program equality, split in a call-by-value setting into a value relation and an expression relation, designed to coincide with observational equality.
**logical equivalence** — The type-indexed relation mediating a completeness proof (e.g. of an equivalence checker), defined so that its fundamental lemma yields completeness.
**logical equivalence (≡)** — A ≡ B asserts propositions A and B always have the same truth value (under every interpretation); provable by a truth table or a chain of equivalences.
**logical framework (LF)** — A dependently typed λ-calculus (λΠ, implemented in Twelf) for representing deductive systems and type theories directly as signatures, handling bound variables, capture-avoiding substitution, and hypothetical/generic judgments.
**logical operators** — &&, ||, ! that treat any nonzero value as true and 0 as false and always evaluate to 0 or 1.
**logical operators (`&& || !`)** — Operators that treat 0 as False and any nonzero value as True, always return 0 or 1, and short-circuit; distinct from the bit-level operators.
**logical query plan** — A relational-algebra expression tree representing a query independent of execution algorithms.
**logical relations (Tait's method)** — A proof technique defining a type-indexed predicate (or relation) by induction on type structure to prove properties (e.g. normalization, parametricity) that plain induction on typing cannot; also called the method of candidates.
**logical right shift** — A right shift filling zeros on the left; used for unsigned values.
**logical similarity** — Reynolds's relation `M ∼ M' ∈ A [η]` defined by induction on the type with type variables interpreted by relation candidates; from it exact equality and semantic membership are defined.
**logical trinity** — The organizing principle that a logic needs three aligned legs — a concise syntax, an unambiguous semantics, and actionable axiomatics (proof calculus) — to serve as a specification-and-verification language, with soundness linking semantics and axiomatics.
**logical variable (specification)** — An auxiliary variable used only to relate a program's initial and final values in a contract, not modified by the program (e.g. to specify in-place swapping).
**loop / recursion coverage** — A requirement that each loop or recursive call be exercised 0, 1, and many (2+) times.
**loop convergence rule (con)** — The total-correctness termination rule (derived from the convergence axiom) using a well-founded decreasing counter to prove `⟨α*⟩P`.
**loop data dependence** — A reordering constraint between two statement instances across (or within) loop iterations, edges of a dependence graph, classified as flow/true, anti, output, and input.
**loop implementation** — while, for, and do-while loops implemented in assembly using conditional and unconditional jumps around a loop body.
**loop induction variable elimination** — Rewriting a loop counter used only for array indexing into direct pointer increments, reducing in-loop index arithmetic.
**loop invariant** — An assertion that holds initially (initialization) and is re-established after each iteration (preservation), so that on exit one may assume it together with the negated guard; the creative step in a loop proof, analogous to a strengthened induction hypothesis.
**loop invariant search** — The practical phenomenon that a candidate invariant may imply the postcondition yet not be inductive, or be inductive yet too weak, requiring iterative strengthening.
**loop parallelization** — A loop's iterations may run in parallel (fork/join) iff no dependence is carried by that loop; the outermost loop with a non-"=" direction carries the dependence.
**loop testing** — Choosing representative and edge iteration counts for loops: zero, one, two iterations, and for a bound n the n−1, n, and n+1 cases; nested loops handled inside-out.
**loop transformations** — Legality-checked rewrites of a loop nest that change visitation order to improve locality: loop interchange, cache blocking/tiling, loop skewing, and loop reversal.
**loop translation** — Compiling `do-while`, `while` (jump-to-middle or guarded-do), and `for` loops as tests plus backward jumps.
**loop unrolling** — Duplicating the loop body u times (with a remainder loop) to process several elements/iterations per pass, amortizing loop overhead and exposing cross-iteration parallelism for scheduling.
**loop unwinding** — The axiom `[while Q α]P ↔ [if Q {α; while Q α}]P`, applied k times (with remaining loops replaced by `skip`) to make a program loop-free for bounded model checking.
**loop-carried vs. loop-independent dependence** — A loop-independent dependence connects instances in the same iteration (distance 0); a loop-carried dependence connects different iterations and is carried by the outermost loop whose removal eliminates it.
**loop-checking** — A search technique that fails/backtracks whenever a proof goal recurs, turning otherwise non-terminating proof search into a decision procedure (a fully-explored loop yields a refutation).
**loop-invariant code motion** — Moving a computation whose value does not change across loop iterations out of the loop.
**loop-invariant code motion (LICM)** — Hoisting a computation whose operands do not change across loop iterations out of the loop to a preheader, so it runs once instead of every iteration; legal only where it changes no semantics and slows no path.
**loop-invariant computation** — A computation whose value does not change while control stays in the loop, detected via reaching definitions (all reaching definitions of every operand lie outside the loop, iterated).
**loop-invariant rule (loop)** — The proof rule establishing `[α*]P` from three premises: the invariant holds initially, is preserved by one iteration (inductive), and implies the postcondition (with a guarded `while` variant).
**lowering** — Transforming a higher-level IR into a lower-level one closer to the target machine (e.g. AST to linear IR to assembly).
**LR item** — A production with a dot marking a position in its right-hand side (e.g. `A ::= X . Y`), tracking how far a rule has been matched.
**LR(0) automaton** — The DFA over item-sets, built by closure and goto, that recognizes viable prefixes and drives shift/reduce decisions.
**LR(k) parsing** — Left-to-right scan, Rightmost derivation, k tokens of lookahead; the most powerful practical bottom-up scheme, and almost all real languages have an LR(1) grammar.
**LRU (least recently used)** — A cache replacement policy that evicts the least recently used line in a set (the victim).
**LTL operators (X, □, ◇, U)** — Next (`XP`: `P` at the next state), globally (`□P`: `P` at all future states), eventually (`◇P`: `P` at some future state), and until (`P U Q`: `P` holds until `Q` becomes true).
**machine code / assembly code** — The byte-level program the processor executes, and its human-readable textual form.
**machine code / object code** — The binary instruction encoding the CPU executes, produced from assembly.
**machine learning** — An approach in which, rather than the programmer specifying the rule, the computer builds its own models from data in order to make predictions.
**machine learning (ML)** — A subfield of computer science concerned with learning patterns and trends from data rather than following explicitly programmed rules.
**magnetic disk** — Electromechanical storage of bits on spinning platters organized into tracks and sectors; access time ≈ seek time + rotational latency + transfer time.
**main / argc / argv** — The program entry point; `argc` is the count of command-line strings and `argv` an array of pointers to them.
**main success scenario / extensions** — The typical step-by-step interaction that achieves a use case's goal ("happy path"), versus the alternate/exception flows that branch off it (which usually make up most of a use case's text).
**maintainability index** — A composite metric (combining Halstead volume, cyclomatic complexity, and lines of code) yielding a 0–100 score intended to indicate how easy code is to maintain.
**make** — A classic build tool controlling what gets recompiled via command scripts plus dependency tracking.
**make variables / automatic variables** — Reusable string variables (CC, CFLAGS) and built-ins like `$@` (target), `$^` (all sources), `$<` (first source).
**Makefile rule (target : sources; command)** — A make rule naming a target, its source dependencies, and a TAB-indented command to (re)build the target.
**MALL (multiplicative–additive linear logic)** — The fragment of intuitionistic linear logic with `⊗, ⊸, &, ⊕, 1, ⊤, 0` but without the exponential `!`.
**malloc / free / calloc / realloc** — C library calls to allocate a block on the heap, deallocate it, allocate zeroed memory, and resize a block; freed memory initially holds garbage.
**manual memory management** — The programmer's responsibility in C to explicitly deallocate every dynamically-allocated block; there is no garbage collector.
**many-sorted FOL** — FOL partitioning the universe into sorts (types) and assigning types to symbols; the form SMT solvers actually use.
**map** — Applying an operation to each element of a collection independently to produce a new same-size collection; embarrassingly parallel.
**map / pair** — A C++ associative sorted key/value container (a search tree) with unique keys and O(log n) lookup; elements are `pair<key,value>` with `first` and `second`.
**map update** — The operation v[x ↦ a] producing a map equal to v except that x now maps to a.
**MapReduce** — Google's large-scale computation model built on map and reduce, whose independence makes it easy to parallelize.
**marginal distribution** — The distribution of one variable obtained from a joint distribution by summing/integrating out the others.
**mark-and-sweep** — A garbage collector that marks all blocks reachable from the roots, then sweeps the heap freeing every unmarked block.
**Markov's inequality** — For a non-negative random variable, P(X ≥ a) ≤ 𝔼[X]/a; a weak tail bound needing only the mean.
**mathematical induction** — Proving P(n) over the naturals by proving the base case P(0) and the inductive step P(k) ⇒ P(k+1).
**maximal munch** — A greedy top-down instruction-selection algorithm matching the largest possible tile at each node (optimal when all instructions cost equally).
**maximum cardinality search (MCS)** — The linear-time ordering algorithm that repeatedly picks the vertex with the most already-chosen neighbors; on a chordal graph it produces a (reverse) perfect elimination ordering for greedy coloring.
**maximum fixed point (MFP)** — The solution the iterative algorithm computes for a monotone framework — the largest of all fixed points; in the precision ordering `FP ≤ MFP ≤ MOP ≤ Perfect`, and MFP is safe.
**maximum likelihood estimation (MLE)** — Choosing the parameter value that maximizes the likelihood of the observed data.
**MaxSAT / Partial (Weighted) MaxSAT** — An optimization variant of SAT: satisfy all hard clauses while maximizing the weight of satisfied soft clauses.
**may vs. must analysis** — Whether a dataflow fact must hold on all paths (intersection at merges) or may hold on some path (union at merges).
**may-alias vs. must-alias** — Whether a pointer pair may reference the same location, must, or definitely does not; may-alias over-approximates (needed for soundness), must-alias under-approximates (enabling strong updates), and the ambiguous "maybe" cases are what block optimization.
**may-property vs. must-property** — A may-property holds if some execution could exhibit it (e.g. a variable *may* be used); a must-property holds only if every completing execution guarantees it (e.g. a variable *must* be defined); static analyses conservatively approximate these.
**meaning explanation (computational/Brouwerian)** — The semantic account of dependent type theory in which the meaning of each judgment is explained directly in terms of the computational behavior of programs ("everything is computational").
**measurement dysfunction / bad incentives** — The danger that optimizing to a metric distorts behavior: rewards can extinguish intrinsic motivation and encourage cheating, shortcuts, and short-term thinking, degrading the very quality being measured.
**measurement overhead** — The time and perturbation that instrumentation itself adds; a measured event should be 100–1000× longer than the measurement overhead to be trustworthy.
**measurement reliability** — Whether a measurement yields consistent, repeatable results.
**mechanical error** — A defect from inconsistently following simple, mechanical design rules (buffer overruns, null dereferences, resource leaks, API/framework-rule violations, race conditions); static analysis's sweet spot and hard to find by testing.
**median-of-three** — A practical quicksort pivot choice: the median of three sampled values, cheaply avoiding the worst case.
**meet operator (∧)** — The dataflow operator combining incoming values at a confluence node (commutative, idempotent, associative), typically set union for "may" problems or intersection for "must" problems; it induces the lattice partial order.
**meet semilattice** — A partially ordered set in which every pair has a greatest lower bound (meet).
**meet-over-all-paths / merge-over-all-paths (MOP)** — The ideal dataflow solution obtained by joining the effect of every path reaching a program point; it considers more paths than are executable, so it errs conservatively, and the iterative fixed point equals it exactly for distributive frameworks and safely approximates it otherwise.
**member function / method** — A function that is a member of a class, defined inside it or as `retType Class::Method(...)`.
**member initialization list** — A constructor clause (`Point(...) : x_(x) {}`) initializing fields directly in declaration order, avoiding a redundant default-construct-then-assign.
**memoization** — Caching function-call results so repeated calls with the same argument return instantly; speeds recursive definitions like Fibonacci.
**memory aliasing** — The possibility that two pointers reference overlapping memory, forcing conservative reloads/stores and blocking optimization; avoided with a local accumulator or `restrict`.
**memory checking** — Finding array-bound violations and uses of uninitialized memory (e.g. Purify/Valgrind dynamically, LCLint statically).
**memory hierarchy** — The layered organization of storage (registers → L1/L2/L3 cache → main memory → disk) trading speed for capacity, each level caching the one below.
**memory layout (x86-64 Linux)** — The virtual address space divided into Stack (high addresses), shared libraries, Heap, Data (globals/strings), and read-only Text (code).
**memory layout / segments** — The regions of a process's memory: read-only text/rodata (instructions, literals), read/write data (globals/statics), heap (grows up), shared libraries, and stack (grows down).
**memory leak** — Failing to free dynamically-allocated memory no longer in use, so the program's footprint grows and may exhaust memory.
**memory management unit (MMU)** — The hardware translating virtual addresses to physical addresses on each memory access.
**memory mapping (mmap)** — Associating a region of virtual memory with a backing source such as a disk file, so its contents are paged in on demand; the user-level `mmap` maps a file's bytes into the address space.
**memory protection** — Per-PTE permission bits (read/write/exec/supervisor) the MMU checks on every access, providing an interposition point for access control.
**memory protection / isolation** — Using page-table permission bits and per-process address spaces to prevent processes from accessing each other's or the kernel's memory.
**memory-related bugs** — Dereferencing bad pointers, reading uninitialized memory, overwriting past a block, dangling pointers to freed blocks, double frees, and memory leaks (many detectable with valgrind).
**memoryless strategies** — The fact that, since winning-region existence is context-independent, game strategies can be taken to depend only on current state, remaining game, and goal (a Zermelo-type result).
**memorylessness** — The property (geometric and exponential distributions) that P(X ≥ s+t | X ≥ s) = P(X ≥ t): past waiting gives no information about remaining waiting time.
**merge** — Merge sort's combine step: walk two sorted sublists with front pointers, repeatedly emitting the smaller front element.
**merge join (sort-merge join)** — A join scanning two sorted inputs in tandem; O(n log n) including the sort.
**merge sort** — Divide-and-conquer sort: split into halves, sort each recursively, and merge; Θ(n log n); stable but not in place.
**mergesort** — Sorting by splitting the input in half, recursively sorting, and merging; O(n log n) work, but on lists the sequential split/merge limit span to O(n).
**message buffer / bounded synchrony** — A per-channel chain of `msg` records buffering asynchronous messages; a double-shift `↑↓` forces an acknowledgment that drains the buffer, and required buffer size is the longest same-polarity path in the type graph.
**message passing** — The OO model in which computation proceeds by sending messages (method calls) to objects; `self` names the receiver.
**message passing (send/receive)** — Synchronous communication in which each label or channel send/receive corresponds exactly to one principal cut reduction.
**metacircular interpreter** — An interpreter for a language written in that same language, useful for understanding and extending the language.
**metacircular interpreter / rules as propositions (reification)** — A backward-chaining engine written in the object language itself, requiring inference rules to be reified as data; it inherits subgoal and clause order from the metalanguage.
**method (vs function)** — A procedure defined on a class and called on an object with dot notation (`s.upper()`), as opposed to a plain function called on its arguments (`len(s)`).
**microarchitecture** — The specific hardware implementation of an ISA, distinct from the architecture itself.
**microservices** — An architectural style structuring an application as a suite of small, independently deployable services, enabling continuous deployment and independent scaling at the cost of operational and integration complexity.
**milestone** — A verifiable checkpoint used for planning and measuring progress.
**minimal / pruned SSA** — Minimal SSA places a φ only where two definitions first meet (dominance-frontier criterion); pruned SSA additionally omits φ-functions for dead variables.
**minimal SSA** — SSA with φ-functions placed only at the iterated dominance frontiers of definitions (for variables live at the join), avoiding the excess φ's of trivial SSA.
**minimal unsat core** — A minimal subset of theory literals that is already unsatisfiable, used to produce a short, strong theory conflict clause.
**minimum spanning tree (MST)** — A spanning tree of minimum total edge weight.
**minterm** — A conjunction of literals corresponding to a single true row of a truth table; the terms summed in DNF.
**miracle of soundness** — The observation that proving the finitely many axioms and rules sound makes every derivable proof sound, because a proof just composes sound steps; the condition without which proving a formula would not entail its validity.
**miss rate / hit rate / miss penalty / hit time** — The fraction of references that miss vs hit, the extra time a miss costs, and the time to serve a hit.
**mix rules (mix0, mix2)** — Girard's classical-linear-logic variant admitting the empty sequent and the union of two sequents (characterized by `⊥ ≡ 1`); reading a proof as consuming all resources rather than deriving a contradiction, natural for the concurrent interpretation where mix is parallel composition.
**mixed interpretation** — Interleaving ordinary imperative execution with angelic choice, running concrete code while a solver resolves the nondeterministic choices.
**mixin** — A module of methods `include`d into a class to add functionality without inheritance (e.g. `Comparable`, `Enumerable`).
**ML pipeline** — The stages of building a machine-learning model: data collection and cleaning, featurization, model training and tuning, evaluation, and deployment, with the ability to iterate backward.
**MMU (memory management unit)** — On-chip hardware that translates virtual to physical addresses by fetching PTEs, checks permission bits, and raises page-fault exceptions.
**mobility restriction** — The Modernized Algol constraint that procedures and encapsulated commands may be passed as arguments but not returned or stored, preserving the stack discipline of storage management.
**modality duality** — Box and diamond are dual: `[α]P ≡ ¬⟨α⟩¬P`.
**model (statistical / predictive)** — A simplified representation of a system or dataset built to explore it or make predictions; central to data analysis, simulation, and machine learning.
**model / satisfying interpretation** — An interpretation under which a formula evaluates to true; F is satisfiable iff some interpretation models it.
**model checking** — Fully automatic techniques for finding bugs or proving their absence by exhaustive state-space search against a temporal-logic specification, yielding diagnostic counterexamples and requiring no manual proofs.
**model monitor** — A ModelPlex monitor that checks whether the observed transition between consecutive samples is consistent with the verified model (detecting model violations at runtime).
**modeling** — Building and analyzing formal models of a system (e.g. Alloy, model checking) to find design flaws or predict system properties before code exists.
**ModelPlex** — The KeYmaera X technique that transforms an offline dL safety proof of a model into provably correct runtime monitors, transferring verification results to the real sampled CPS.
**Model–View–Controller (MVC)** — A design pattern for interactive programs: the model holds the application data, the view renders it, and the controller updates the model in response to events.
**Modernized Algol (MA)** — An imperative language cleanly separating expressions from commands, and variables (immutable bindings) from assignables (mutable, allocated cells), exposing the semantic structure of imperative programming.
**modular arithmetic** — Arithmetic on integers reduced by a modulus n, treating numbers as equivalent when they differ by a multiple of n.
**modular multiplicative inverse** — For a with gcd(a, n) = 1, the value b with ab ≡ 1 (mod n); found via the extended Euclidean algorithm.
**modularity** — Decomposing a system into well-defined, separately understandable modules with explicit interfaces; low coupling and high cohesion are its design goals.
**module** — A self-contained named collection of types, variables, and functions with a public interface and hidden internal details, developable and reusable independently.
**module cloning** — Instantiating an abstract module by supplying concrete definitions, turning its abstract axioms into discharged proof obligations (e.g. cloning an induction module with a concrete predicate).
**modulo scheduling** — Scheduling against a modulo (steady-state) resource reservation table — the per-iteration table folded modulo the initiation interval — so overlapping software-pipelined iterations never contend for a resource.
**modulo variable expansion** — Unrolling a software pipeline's steady state so overlapping iterations use distinct registers, removing the artificial anti-dependences that arise when every iteration reuses the same registers.
**modus ponens** — The inference rule: from p → q and p, conclude q.
**monad / lax modality ({A} = ↑A⁺)** — In the concurrent logical framework, the up-shift realized as a monadic/lax construct `{A}` that encapsulates concurrent forward-chaining computation and marks the boundary between the pure and concurrent layers.
**monitoring** — Observing a running program to collect behavioral data.
**monotone function** — A function f where x ≤ y implies f(x) ≤ f(y); aggregates are generally not monotone.
**monotone operator / pre-fixed and post-fixed point** — For a monotone `F`, a pre-fixed point satisfies `F(A) ⊆ A` (F-closed) and a post-fixed point satisfies `A ⊆ F(A)` (F-consistent); their bounds are the least and greatest fixed points.
**monotone query** — A query Q where I ⊆ J implies Q(I) ⊆ Q(J); SELECT-FROM-WHERE without subqueries or aggregation is monotone, whereas aggregation and negation are non-monotone.
**monotonicity (monotone transfer/flow function)** — The property that a dataflow transfer function preserves the lattice order (`x ⊑ y ⟹ f(x) ⊑ f(y)`); monotonicity plus a finite-height lattice guarantees the iterative solver terminates and converges to a safe result.
**monotonicity (of winning regions)** — `X ⊆ Y ⇒ ςα(X) ⊆ ςα(Y)` (and dually for Demon): larger winning-state sets give larger winning regions, since `X` occurs under an even number of negations.
**monotonicity requirement** — The lub (join) operator must be monotone for an analysis to be sound; a per-statement transfer function alone need not be.
**monotonicity rule (M / MR)** — From `P ⊢ Q` conclude `[α]P ⊢ [α]Q` (dually for diamond): lets one strengthen or weaken a postcondition under a modality.
**Monte Carlo method** — A technique that uses repeated random sampling to estimate the answer to a question (e.g. estimating π by random points).
**most general type (m.g.t.)** — The type `t` for an expression such that `e : t` holds and every valid type for `e` is an instance of `t`; the type inference reports.
**most general unifier (mgu)** — A unifier of which every other unifier is an instance; a successful unification algorithm always yields one.
**most/least significant bit (MSB/LSB)** — The highest-order (leftmost, largest weight) and lowest-order (rightmost, weight 1) bit of a fixed-length value.
**mov (data movement)** — The instruction copying data between registers and memory (`mov src, dst`).
**mov (movb/movw/movl/movq)** — The data-transfer instruction, in byte/word/double-word/quad-word sizes; it cannot move memory-to-memory in one instruction.
**move semantics / std::move** — Transferring a value from one object to another without copying; `std::move(a)` moves ownership out of a `unique_ptr`, leaving the source null.
**movz / movs** — Move instructions copying a smaller source into a larger register with zero extension (movz) or sign extension (movs).
**multi-dynamical system** — Platzer's characterization of a CPS as combining multiple facets of dynamical behavior — continuous, discrete, nondeterministic, stochastic, adversarial — analyzed by composing simple dynamical effects.
**multi-level array** — An array of pointers to separately allocated rows, requiring two memory reads to access an element.
**multi-level page table** — A tree of page tables that allocates only the parts needed for addresses in use, shrinking the table's size at the cost of k memory loads per translation.
**multi-step evaluation (multistep reduction)** — The reflexive–transitive closure `e ⟼* e'` of the single-step reduction/evaluation relation.
**multidimensional / nested array** — `T A[R][C]` is a contiguous R·C·sizeof(T) block in row-major order; `A[i][j]` is at `A + (i·C + j)·sizeof(T)`.
**multidimensional array (row-major)** — An array of arrays stored as one contiguous block in row-major order (row by row); element [r][c] is at a computed linear offset.
**multinomial coefficient** — A generalization of the binomial coefficient counting the ways to partition n objects into groups of specified sizes.
**multiplicative conjunction / tensor (A ⊗ B)** — The "simultaneous" conjunction (obtained when exchange collapses the ordered fuse and twist) that joins two proofs over disjoint resources; its right rule splits the context.
**multiplicative connectives (send/receive a channel)** — Over `/`, under `\`, fuse `•`, twist `◦`, and unit `1` — operationally all just send or receive a channel (channel/ownership transfer) with no new process constructs.
**multiplicative truth (1) / additive truth (⊤)** — The linear units: `1` is the unit of `⊗`, provable only with no resources; `⊤` is the nullary additive conjunction whose proof consumes all current resources.
**multiplicity (cardinality) constraint** — A limit on how many entities may participate in a relationship: one-to-one, one-to-many, or many-to-many.
**multiply/divide by shifting** — `u << k` computes `u·2ᵏ` and `x >> k` computes `⌊x/2ᵏ⌋`; compilers emit shift/add sequences because shifting is faster, adding a bias for negative division to round toward zero.
**must-bound variables (MBV)** — Variables written on all execution paths (`MBV(α) ⊆ BV(α)`), used to make the free variables of sequential/modal constructs more precise.
**mutable cell / reference** — A value of type `t ref` holding an updatable value; created by `ref`, read by `!`, and written by `:=`; the imperative core of a functional language.
**mutable state** — A memory location whose value can change over time; central to procedural programming and avoided in functional programming.
**mutable store** — The heap extension giving a language dynamically allocated, updatable memory (a map from addresses to values), introducing pointers, arrays, and structs and the analyses they require.
**mutant / killed mutant** — A version of the program with one small artificial change; a mutant is killed when a test detects the behavioral difference.
**mutation testing** — Measuring test-suite effectiveness by injecting small artificial bugs (mutants) and checking whether the tests kill them; the fraction of surviving mutants approximates the fraction of real errors the suite would miss.
**mutation XOR aliasing** — The discipline of allowing mutation or aliasing but never both for the same data (a rule Rust enforces in its type system).
**mutation-based fuzzing** — Generating new inputs by randomly mutating seed inputs (bit/byte flips, chunk insert/delete, interesting values) rather than pure random data.
**mutator (ADT method)** — An ADT method on a mutable type that changes the object in place, documented with `@modifies`/`@effects` and typically returning `void`.
**mutex (mutual exclusion)** — A lock that is either locked or unlocked, with `lock` (waits if held) and `unlock` operations, guaranteeing exclusive access to a critical section.
**mutual exclusion** — The guarantee that while one thread uses a resource, all others must wait.
**mutually exclusive (disjoint) events** — Events that cannot both occur (empty intersection); the probability of their union is the sum of their probabilities.
**n-gram model** — A language model predicting a token from the previous n−1 tokens; used in ML-for-code tasks.
**Naive Bayes (Bayesian classification)** — Applying Bayes' theorem with a conditional-independence assumption among features to classify inputs (e.g. spam detection).
**name resolution** — Determining, for each use of an identifier, which declaration it refers to.
**namespace** — A named scope that lets different modules reuse the same identifiers without collision (e.g. `List.length` vs. `Array.length`); all of the C++ standard library is in `std`.
**natural deduction** — Gentzen's proof system for intuitionistic logic built from introduction rules (how to conclude a connective, fixing its meaning) and elimination rules (how to use it), with a hypothesis rule and substitution; designed to model mathematical reasoning directly.
**natural join** — A join matching on all commonly named attributes and keeping one copy of each.
**natural loop** — A single-entry loop identified in a CFG whose header dominates every node in it; the smallest node set containing a back edge's head and tail with no predecessors outside the set except the header's.
**natural numbers type (nat / N)** — The inductive type generated by zero and successor with a recursor; the least type closed under those constructors, whose induction principle is ordinary mathematical induction.
**natural ordering** — The default total order a type defines for its own values (in Java via `Comparable`/`compareTo`), used by sorted collections such as `TreeSet` and `TreeMap`.
**necessity modality (□P)** — "P is valid," expressed inside the logic (P holds in every state), with axiom □P → [α]P; the inspiration for the box modality.
**neededness** — A refinement of liveness marking variables whose values actually affect the program's observable result, enabling more aggressive dead-code elimination than plain liveness.
**negating quantifiers** — Pushing a negation through a quantifier: ¬∀x P(x) ≡ ∃x ¬P(x) and ¬∃x P(x) ≡ ∀x ¬P(x).
**negation (¬)** — The connective "not"; ¬p is true exactly when p is false.
**negation (¬A)** — Defined by notational definition as A ⊃ ⊥; ¬A is true precisely when assuming A leads to a contradiction, and carries no computational content.
**negation laws** — p ∨ ¬p ≡ T and p ∧ ¬p ≡ F.
**Negation Normal Form (NNF)** — A form in which negation appears only on atoms, obtained via De Morgan's laws and eliminating →/⟺.
**negative binomial distribution** — The number of independent trials needed to obtain a fixed number r of successes, generalizing the geometric distribution.
**negative polarization = call-by-name** — The compositional translation of source terms into call-by-push-value whose computational reading is call-by-name: an argument is passed as a thunked computation and forced at each use.
**negative-weight edge** — An edge with negative weight, which breaks Dijkstra's correctness because a later path through an unfinalized vertex could beat a finalized distance.
**Negligence vs. malpractice** — Negligence is failure to exercise the care a reasonably prudent person would; malpractice is professional negligence — failing to meet a licensed profession's standard of care and thereby causing harm.
**Nelson-Oppen procedure** — The theory-combination method underlying modern SMT solvers: purify a formula into per-theory pure parts, then propagate equalities over shared variables between the theory solvers until saturation; requires quantifier-free, infinite-domain theories sharing only equality.
**Nelson–Oppen combination** — A procedure combining decision procedures for two theories with disjoint signatures (sharing only =) into one for their union.
**nested depth-first search (NDFS)** — A linear-time Büchi-automaton emptiness algorithm interleaving an outer DFS that finds reachable accepting states with an inner DFS that seeks a cycle back to them.
**nested quantifiers** — Quantifiers applied one inside another (∀x ∃y …); order matters, and alike vs. unalike quantifiers behave differently.
**nested-loop join** — The simplest join algorithm: for each tuple of R, scan S for matches.
**network byte order (htons/ntohs, htonl/ntohl)** — The big-endian ordering in which addresses and ports travel on the network; helper functions convert integers between host and network byte order.
**network programming** — Writing software that moves bytes between systems by packaging data into packets and asking the OS to transport them (here via the sockets API).
**neutral term / normalizable neutral** — A term whose head is a variable (a variable applied to arguments/projections); its normalizable-neutrality is proved together with hereditary normalization in logical-relations proofs over open terms.
**new / delete** — C++ heap operators replacing malloc/free; `new` calls the constructor and returns a typed pointer, `delete` calls the destructor. Never mix with malloc/free.
**new[] / delete[]** — `new type[size]` allocates an array and `delete[]` deallocates it; using plain `delete` on an array is undefined behavior.
**no differential cut elimination** — The theorem that, unlike Gentzen's cut in ordinary sequent calculus, differential cuts cannot in general be eliminated; some ODE properties are provable only via a differential cut.
**node splitting** — Duplicating a CFG node (one copy per predecessor) to make an irreducible flow graph reducible; worst-case exponential, though most real graphs are reducible.
**non-blocking / asynchronous I/O** — I/O modes where read/write return immediately; the program asks the OS which descriptors are ready or registers interest and is notified by an event.
**non-chronological backtracking (backjumping)** — Backtracking multiple levels at once, to the asserting level implied by the learned clause, rather than undoing one decision at a time.
**non-determinism** — When a relation ascribes more than one result to a state; small-step semantics model it as multiple applicable rules.
**non-executable memory (W^X)** — Marking the stack, static data, and heap non-executable so injected data cannot be run as code.
**non-executable stack (NX)** — A defense marking the stack (and other data regions) non-executable so that jumping into injected data crashes immediately.
**nondeterminism as abstraction** — Using nondeterministic choice or assignment as a modeling tool to focus on critical aspects and describe an imperfectly known environment, rather than committing to one concrete behavior.
**nondeterministic assignment (x := *)** — Assigns a variable an arbitrary value; used for ghosts and abstraction, and is definable/derived rather than a core primitive.
**nondeterministic choice (α ∪ β)** — Runs either branch, chosen nondeterministically; its relational semantics is the union of the branches', with box axiom [α∪β]P ↔ [α]P ∧ [β]P.
**nondeterministic dynamic logic** — The standard dynamic logic using nondeterministic choice α ∪ β and nondeterministic repetition α* in place of conditionals and while-loops.
**nondeterministic finite automaton (NFA)** — A finite automaton that may have multiple (or zero) transitions per symbol and ε-transitions; accepts if some computation path reaches an accepting state.
**nondeterministic repetition (α*)** — Repeats a program any finite number of times, chosen nondeterministically; its semantics is the reflexive-transitive closure, and while-loops are encoded from it.
**nonexhaustive match** — A warning that a function's clauses do not cover all values of the argument type; applying it to an unmatched value raises a runtime Match exception.
**nonlocal jumps (setjmp / longjmp)** — A C mechanism transferring control to an arbitrary earlier point, breaking call/return discipline: setjmp saves register/stack/PC context in a jmp_buf and longjmp restores it.
**nonterminal** — A grammar variable (e.g. `expr`, `<term>`) that can be rewritten by productions, as opposed to a terminal token.
**nontermination (Ω)** — Computation without a normal form; the canonical example is Ω = (λx. x x)(λx. x x), which β-reduces only to itself.
**nonvolatile memory / flash** — Memory (ROM, EEPROM, flash) that retains data without power; flash stores charge in stacked cells, erases in blocks, wears out after many erasures, and underlies SSDs.
**normal (Gaussian) distribution** — The bell-shaped continuous distribution 𝒩(μ,σ²); the limiting distribution in the Central Limit Theorem. The standard normal 𝒩(0,1) has mean 0 and variance 1.
**normal deduction** — A deduction containing no local-reduction redex (no introduction immediately eliminated); every verification is normal.
**normal form** — An expression that cannot be reduced further (β-irreducible, or that does not evaluate further); used to represent the values (results) of a computation.
**normalization** — That every well-typed term can be brought to normal form (including under binders and for open terms), and, in proof theory, that an arbitrary proof can be transformed into an equivalent normal proof/verification; establishes that natural deduction, sequent calculus, and verifications coincide on provability.
**normalization (database)** — Redesigning tables to remove anomalies by decomposition guided by functional dependencies.
**normalization (type theory)** — The property that all well-typed programs terminate; System F has it, so the Y combinator is untypable.
**notational definition** — Defining a connective as an abbreviation for a proposition already understood (e.g. ¬A ≜ A ⊃ ⊥); its derived rules have a different status from meaning-giving introduction/elimination rules.
**noun extraction** — An object-oriented design technique of identifying candidate classes from the nouns in a problem description (tangible entities become classes; abstract nouns become classes or attributes).
**NP (nondeterministic polynomial time)** — The complexity class of decision problems whose proposed solutions can be verified in polynomial time, even if finding a solution may be slow.
**NP-Complete** — A problem both in NP and NP-Hard; either all are in P or none are, so P = NP iff any one is in P.
**NP-complete** — The hardest problems in NP: each is polynomial-time reducible to every other, so a polynomial-time algorithm for one would solve them all (e.g. Boolean satisfiability, subset-sum).
**NP-Hard** — A problem to which every NP problem reduces in polynomial time; solving any in polynomial time would solve all of NP.
**NULL (pointer)** — A pointer value guaranteed invalid (0x0 on Linux); dereferencing it causes a segfault, making it a safe sentinel for uninitialized or failed pointers.
**NULL (SQL)** — A special value meaning missing or unknown; aggregates (except `count(*)`) ignore NULLs, and any arithmetic containing a NULL evaluates to NULL.
**nullable type** — A type that may hold either a normal value or "no value" (e.g. C#'s `int?`); modeled in OCaml by the option type.
**NullPointerException** — The Java run-time error the `Optional` and null checkers aim to prevent at compile time.
**nullptr** — A C++11 typed null-pointer literal, preferred over `NULL` because it is not an integer.
**number system** — A convention for representing numbers with symbols; the same quantity can be written in different systems, such as decimal or binary.
**numeral** — The unary representation of a natural number n built from zero (z) and successor (s(·)).
**numerical encoding** — Assigning a unique numeral to each element of a countable set so it can be stored in binary; x digits in base b represent b^x things.
**object (OOP)** — A run-time value bundling state (attributes) with behavior (methods) and having its own identity; in object-oriented languages every value is an object.
**object file (.o)** — A compiled but not-yet-linked machine-code file (header, code, symbol table, relocation table) for one translation unit.
**object layout** — The in-memory arrangement of an object: a vtable pointer in the first word followed by storage for every field, including inherited ones.
**object slicing** — Assigning a derived value to a base instance drops the derived class's extra fields; a hazard when storing objects (not pointers) in STL containers.
**object-file sections** — The regions of an object file: .text (code), .rodata (read-only data such as jump tables and strings), .data (initialized globals), and .bss (uninitialized globals, occupying no file space).
**object-oriented programming (OOP)** — A programming paradigm in which behavior arises from the interaction of objects (instances of classes) that bundle state with the methods acting on it; contrasted with procedural programming.
**observable / answer type** — A two-element type of observables (yes/no, accept/reject) giving a directly observable computation outcome; a complete program is a closed term of answer type.
**observational (contextual) equality** — Two programs are equal if interchangeable in every program context of base type without changing the observed result; the extensional standard a logical relation is designed to characterize.
**observer** — An ADT method returning information about the object without changing it (e.g. `size`, `containsKey`).
**occurs check** — The side condition X ∉ t required before binding a logic variable X to a term containing X; omitting it (as standard Prolog does for efficiency) is unsound.
**offline + online proof** — ModelPlex's split: a heavy correctness proof done once offline plus a cheap monitor check performed online, together reducing CPS safety to a runtime check backed by proof.
**offline vs. online DPLL(T)** — Offline invokes the theory solver only on full Boolean assignments; online consults it on partial assignments during search for earlier pruning.
**omega combinator** — (λx. x x)(λx. x x); β-reduces to itself forever, demonstrating non-termination in the lambda calculus.
**ON vs WHERE** — In an inner join the `ON` predicate behaves like `WHERE`; the distinction matters for outer joins.
**one-to-one (injective)** — A function mapping distinct inputs to distinct outputs.
**one-way function** — A function computable in polynomial time whose inverse requires exponential time; the basis of public-key cryptography.
**ones' complement** — A value with all bits flipped; a number plus its ones' complement has all bits set.
**onto (surjective)** — A function whose range is all of the codomain — every element of B is hit.
**opaque** — Describing an implementation change invisible to clients because the signature uses an abstract type.
**opaque ascription (:>)** — Ascribing a signature so the implementation of the structure's types is hidden, making them genuinely abstract to clients.
**open / close** — System calls that prepare a file for access (returning a descriptor with an access mode and flags) and release it.
**open / read / write / close / lseek** — The POSIX I/O system calls, lower-level unbuffered counterparts to the C stdio `f*` functions.
**open addressing** — Collision resolution placing a colliding item elsewhere in the table itself via a probe sequence.
**open classes (reopening a class)** — Ruby's ability to define a class in multiple places, adding methods to existing classes—even built-in ones.
**open source business models** — Ways to profit around freely licensed software: selling support/expertise, complementary services, or consulting and paid extensions.
**open source license** — The legal terms governing reuse of open-source software, spanning permissive licenses (MIT, Apache, BSD) and copyleft licenses (GPL, LGPL) that impose share-alike obligations.
**open term / closed term** — An open term has free variables; a closed term has none. The course restricts to closed terms to sidestep capture.
**open-endedness** — The principle that "nothing depends on the non-existence of programs": the semantics is stable under adding new constructions, so definitions must not rely on there being no program of some behavior.
**operand types** — Instruction operands are immediate (a constant), register, or memory (bytes at a computed address).
**operating system** — Trusted software that interacts with hardware, manages and protects resources, and abstracts devices behind convenient portable abstractions.
**operational semantics** — A rule-based definition of how programs execute step by step, specifying meaning by how expressions and statements are evaluated according to their form; correctness proofs appeal directly to these rules.
**operational semantics of games** — Defines a game's meaning by the step-by-step interactive play of Angel and Demon through the game's structure.
**operator** — A syntactic constructor of an abstract binding tree with a fixed arity and a specified binding structure (e.g. lam binds one variable in its body).
**operator overloading** — Defining how operators (`+`, `<<`, `=`, `->`) behave for user-defined types, as member or nonmember functions.
**operator precedence and associativity** — Rules that disambiguate expression grammars by fixing the order and grouping of operators (e.g. so a + b * c binds multiplication tighter), with unary operators binding more strongly than binary ones.
**optimal precision (OPT)** — The most precise sound dataflow answer at a program point, over only feasible executions; OPT ⊑ MOP ⊑ LFP in the relative-precision ordering, since each abstraction loses precision.
**optimization** — Transforming code to run faster or use less power/memory/space without changing observable behavior.
**optimization blocker** — A program feature (a procedure call, potential aliasing) that prevents the compiler from optimizing, e.g. a strlen in a loop condition making the loop quadratic.
**optimizing compiler** — A compiler stage that improves code (faster, more energy-efficient) rather than merely translating it; execution time is modeled as operation count times cycles per operation, and optimizations attack both factors.
**option type** — The type `None | Some of 'a`, used when a result may be absent; OCaml's way of expressing nullable values.
**Optional<T>** — Java 8 wrapper type whose contents may be present or absent; misuse rules are enforceable by a type system.
**oracle** — The mechanism that decides whether an execution constitutes a bug (crash, overflow, infinite loop, race, undefined behavior).
**ORDER BY** — Sorts a query result by one or more attributes; multiple sort keys break ties left to right.
**order preserving (monotone)** — A function respecting the partial order (x ≤ y ⇒ f(x) ≤ f(y)).
**ordered antecedents (Ω) / structural rule** — Replacing an unordered context by an ordered list forces a left rule to act only on the first element (removing the choice of which antecedent to decompose); a structural rule shuffles a non-invertible proposition into the unordered context.
**ordered context (Ω)** — A sequence of antecedents in which order matters; linear logic relaxes it to a multiset and structural logic to a set.
**ordered logic programming** — Programming with ordered session types, using stores, stacks, and queues implemented as chains of one-element processes.
**ordered type system** — A substructural type system lacking exchange, where the order in which variables are introduced and used matters.
**ordinals (limit / successor)** — The transfinite indices (ω the first infinite ordinal, ω+1 its successor, and beyond) needed to iterate a winning-region operator to a fixpoint; some games require iteration past ω.
**ordinary differential equation (ODE)** — An equation x' = f(x) relating the time-derivative of the state variables to a function of the state, describing continuous evolution of a physical system.
**OSI model / layering** — The software and hardware moving packets is organized into layers (physical, data-link, network, transport, application), each doing part of the work at every hop.
**out-of-order execution / register renaming** — Processor techniques that dynamically reschedule instructions and remap architectural to physical registers, redoing much of the back end's work at runtime.
**out-of-SSA translation** — Removing φ-functions before final code by inserting copies at the ends of predecessor blocks, then cleaning up with copy propagation and coalescing.
**outcome** — A single element of the sample space; one possible result of an experiment.
**outer join** — A join that also keeps unmatched tuples (LEFT/RIGHT/FULL OUTER JOIN), padding missing attributes with NULL.
**output parameter** — A pointer parameter through which a function stores results the caller can read.
**over-approximation** — An analysis or abstraction that includes a corresponding behavior for every real behavior (no false negatives), so properties proved of it transfer to the concrete program, though some reported behaviors may be infeasible (false positives).
**overcounting** — Counting an arrangement multiple times, then dividing out the repetitions to get the correct count.
**overfitting** — When a machine-learning model matches its training data too closely and consequently fails to generalize to new data.
**overfitting / underfitting** — Two failure modes of a trained model: overfitting matches the training data too closely and generalizes poorly, while underfitting fails to capture the underlying pattern; detected by evaluating on held-out validation and test sets.
**overflow / modular arithmetic** — When a result needs more bits than the width allows, high bits are lost and arithmetic wraps around; unsigned addition computes (u+v) mod 2ʷ.
**overloading** — Reuse of a symbol (e.g. +, *) at several unrelated types; distinct from polymorphism, since there is no single 'a * 'a -> 'a version.
**overriding** — A derived class redefining an inherited member function while preserving its interface.
**P (polynomial time)** — The complexity class of problems solvable by an algorithm whose running time is polynomial in the input size; the standard notion of "efficiently solvable."
**P vs NP** — The open question of whether every problem whose solutions can be verified quickly can also be solved quickly; a famous unsolved Millennium Prize problem.
**padding** — Gaps the compiler inserts between fields (internal) or after the last field (external) to satisfy alignment; ordering large fields first reduces it.
**page** — A fixed-size block (e.g. 4 KiB) that virtual and physical memory are divided into; the unit of mapping between them.
**page fault handler** — The OS routine that, on a fault, selects a victim page (writing it back if dirty), loads the required page from disk, updates the PTE, and restarts the instruction.
**page frame** — A page-sized slot of physical memory that holds a virtual page.
**page hit / page fault** — A hit finds the referenced page in physical memory; a fault is an exception raised when it is not, invoking the page-fault handler.
**page hit vs page fault** — A page hit references a virtual page already in DRAM; a page fault references one not resident, triggering the page-fault handler.
**page table** — A per-process kernel array of page-table entries mapping virtual pages to physical pages.
**page table / page table entry (PTE)** — The per-process table mapping virtual page numbers to physical frames; each PTE holds a physical page number plus management bits.
**page-fault handler** — Kernel code that selects and evicts a victim page (writing it back if dirty), pages in the needed page, updates the PTE, and restarts the faulting instruction.
**page-table entry (PTE)** — An entry holding a valid bit plus either a physical page number (if cached) or a disk address (if not), optionally with permission bits.
**pair programming** — Two developers working together at one workstation (driver and navigator), a form of continuous review.
**pairs (functional encoding)** — Pairs encoded in the pure λ-calculus as ⟨e1,e2⟩ = λk. k e1 e2, applying a continuation k to both components; used, e.g., to define the predecessor by rebuilding n during iteration.
**pairwise vs. mutual independence** — Pairwise independence requires each pair of events independent; mutual independence additionally requires the product rule for every subset.
**par (⅋)** — Multiplicative disjunction, the De Morgan dual of tensor in classical linear logic ((A⊗B)⊥ = A⊥ ⅋ B⊥); absent from intuitionistic linear logic, it validates a linear excluded middle A ⅋ A⊥.
**parallel composition (c₁ ‖ c₂)** — A concurrency construct whose small-step rules interleave steps of the two commands, introducing non-determinism.
**parallel copy (lost-copy / swap problem)** — The φ-functions at a join denote simultaneous copies; naively sequentializing them can clobber values (the lost-copy and swap problems), so SSA deconstruction must schedule the parallel copy correctly, sometimes via a temporary.
**parallelism** — Executing multiple instructions simultaneously (e.g. on multiple cores) to finish one task sooner; distinct from concurrency, which only requires overlapping execution.
**parallelism (max speedup)** — T₁ / T∞, the greatest possible speedup; beyond it added processors do not help, and its value is set by the span.
**parameterized datatype** — A datatype with type variables (e.g. 'a tree), abstracting a data template over the element type.
**parametric judgment** — A hypothetical judgment carrying a fresh parameter (e.g. x : nat), used to state the induction rule without explicit universal quantification.
**parametric polymorphism** — Generic code operating uniformly on values of any type via type variables (e.g. `'a`); ML was the first language to have it.
**parametricity** — Reynolds's relational property that a well-typed polymorphic function maps related arguments at related types to related results, so its type sharply constrains its behavior (e.g. the only interesting value of ∀t. t→t is the identity); formalized by relational interpretation of type quantifiers.
**Pareto (80/20) principle** — About 20% of a program takes 80% of the time, so there is no point optimizing until you know which 20% is the bottleneck; a restatement of Amdahl's law.
**parse tree (concrete syntax tree)** — The full tree recording every derivation step of a string, including all syntactic detail and the grouping implied by precedence and associativity.
**parser** — The component that translates concrete syntax (a character string) into an AST, resolving ambiguity along the way.
**parsing** — Recovering the syntactic structure (parse tree) of a token sequence, the inverse of derivation; decides whether w ∈ L(G).
**partial application** — Applying a curried function to some but not all of its arguments, yielding a specialized function.
**partial application (partial instantiation)** — Supplying only some of a curried function's arguments to obtain a new specialized function (e.g. `let inc = (+) 1`).
**partial correctness** — The reading of {P} c {Q} guaranteeing Q only if c terminates; says nothing about non-terminating runs.
**partial dead code elimination** — Sinking a computation that is live only on a rare path into that rare block, saving the work on the common path.
**partial method compilation** — Compiling only a method's non-rare blocks and leaving rare blocks to the interpreter; edges into rare blocks redirect to the interpreter, with a transfer map recorded at each such point.
**partial order (⊑)** — The ordering on abstract values (reflexive, antisymmetric, transitive) where l1 ⊑ l2 means l1 is at least as precise as l2, typically induced by the lattice meet.
**partial recursive function** — A function that may be undefined (have no normal form) on some inputs; representable via the Y combinator.
**partial redundancy / partial availability** — An occurrence of an expression is partially redundant if it is computed on some but not all paths reaching it (operands unmodified since); completing a cut set of insertions converts it to full redundancy.
**partial redundancy elimination (PRE)** — An optimization that inserts and moves computations so no path re-executes the same expression, subsuming common-subexpression elimination (full redundancy) and loop-invariant code motion; driven by anticipated (very-busy) and available-expression analyses.
**partial-order reduction** — Exploring only interleavings that are semantically non-equivalent, avoiding redundant orderings; a state-space-reduction technique in model checking and concurrency testing.
**partiality** — The situation in PCF-like languages where well-typed programs may diverge; contrasted with the totality of System T and F.
**partially ordered set (poset)** — A set with a binary relation that is reflexive, antisymmetric, and transitive.
**partition (probability)** — A family of subsets pairwise disjoint and together covering the sample space (or an event), used to split a probability calculation into cases.
**partition (quicksort)** — Quicksort's O(n) rearrangement putting all elements less than the pivot on its left and all greater on its right.
**partitioned hash join** — A join that hash-partitions both R and S into buckets on disk, then joins matching buckets in memory using a second hash function.
**Pas-de-deux** — Tait's paired simultaneous induction relating normalizable neutral terms to hereditarily normalizing terms, from which normalization of open terms follows.
**pass** — A unit of a compiler/optimizer run in sequence; analysis passes compute information without changing code, transformation passes rewrite it.
**pass-by-reference** — Passing a reference parameter that aliases the caller's argument (`void Swap(int& x, int& y)`), giving true call-by-reference.
**path** — A sequence of vertices v0,…,vk with each consecutive pair an edge; a simple path repeats no vertex.
**path condition** — The quantifier-free formula over symbolic inputs encoding the branch decisions taken to reach a program point; solving it yields concrete inputs for that path.
**path condition / path constraint** — The conjunction of branch conditions accumulated along an execution path in symbolic execution; solving it yields a concrete input that drives that path.
**path coverage** — The portion of all possible execution paths exercised by a test suite; gives better coverage of logical flows but suffers combinatorial explosion (n branches up to 2ⁿ paths), and not all paths are feasible.
**path quantifiers (A, E)** — CTL's universal (A, "for all paths from this state") and existential (E, "for some path") quantifiers, each paired with a temporal operator to form AX/EX, AG/EG, AF/EF, AU/EU.
**path sensitivity** — Analyzing each feasible path separately so that errors on infeasible (never-taken) paths are not reported; increases precision at the cost of an exponential (or, with loops, unbounded) number of paths.
**pattern** — A constant, variable, wildcard, tuple, or value-constructor application matched against a value to bind its components; patterns must be linear (each variable at most once).
**pattern matching** — Defining a function by cases on how its argument was constructed (matching tuples, list shapes, or constructors and binding sub-parts); cases should be exclusive and exhaustive.
**payload** — The application-data region of an allocated heap block; the aggregate payload is the sum over all allocated blocks.
**PCF** — Plotkin's partial functional language: the typed λ-calculus with naturals plus general recursion (fix), so a well-typed program need not terminate; the programmer, not the type system, bears responsibility for termination.
**PCFv / computation modality** — The by-value reformulation of PCF drawing a modal distinction between values and computations, with a type comp(τ) of encapsulated computations whose elimination form bnd sequences evaluation.
**Peano axioms** — Axiomatization of the naturals as an inductive set: 0 is a natural, and succ(n) is a natural for any natural n.
**Peano's axioms** — The axiomatization of the naturals (0, injective successor S, equality axioms, and the induction schema P(0) ∧ (∀n. P(n) → P(Sn)) → ∀n. P(n)).
**pebbling** — A game on a cost graph modeling scheduling: place up to p pebbles per step on nodes whose predecessors are all visited, generating a p-processor schedule.
**peephole optimization** — Local rewriting of short instruction sequences matching known patterns (redundant moves, x*1, jump-to-next) into cheaper equivalents over a small sliding window.
**PEG / parser combinators** — Parsing Expression Grammars and parser-combinator libraries: formalisms expressing only unambiguous grammars.
**pending / blocked signals** — A pending signal has been sent but not yet received (only one per type, since signals are not queued); a blocked signal (the signal mask) is deferred until unblocked, and SIGKILL/SIGSTOP cannot be blocked.
**percolate up / down** — Restoring the heap property after insert (up) or deleteMin (down) by repeatedly swapping a node with its parent or smaller child; Θ(log n).
**performance testing** — Measuring throughput and latency under load using tools such as JMeter.
**permutation** — An ordered arrangement of objects; the number of length-k selections from n distinct items is P(n,k) = n!/(n−k)!.
**persistence** — A table (and its tuples) continues to exist after the computer is shut down.
**persistence of antecedents** — The property that once an assumption is added it remains available throughout the derivation above, since every rule copies its antecedents to all premises.
**persistent message / immutable structure** — Because a structural channel may have many clients, its messages are made persistent; a completed positive process leaves a chain of persistent messages acting as an immutable linked structure.
**persistent vs. ephemeral data structure** — Persistent (immutable) structures cannot be mutated in place and dominate functional programming; ephemeral (mutable) structures are modified in place and dominate imperative programming.
**phantom read** — A read returning different sets of rows within a transaction because another transaction inserted or deleted qualifying rows.
**phase-ordering problem** — The difficulty that optimizations enable and interact with one another, so no single order of passes is best.
**phony target** — A make target (e.g. `clean`, `all`) whose command produces no file of that name, so it always runs.
**physical operator** — A concrete algorithm implementing a relational-algebra (logical) operator.
**physical query plan** — A logical plan in which every operator is assigned a physical algorithm.
**PIE model (Propagation-Infection-Execution)** — The reachability conditions for killing a mutant: the input must execute the mutated line, the mutation must infect program state, and the effect must propagate to observable output.
**pigeonhole principle** — If n items go into k containers and n > k, some container holds at least two (the generalized form: at least ⌈n/k⌉).
**pipe-and-filter** — An architectural style in which independent processing components (filters) are connected by data streams (pipes), each transforming its input and passing it on.
**pipelining / branch prediction** — Overlapping instruction execution by splitting each instruction into stages so different in-flight instructions occupy different stages each cycle; the CPU fetches ahead and guesses branch outcomes, discarding speculative work on a misprediction at a multi-cycle cost.
**pipelining vs. blocking** — Whether an operator streams its output as it produces it (pipelining) or must fully materialize its input first (blocking).
**pivot** — The element quicksort partitions around; an even split (ideally the median) gives the best behavior.
**pixel** — A single square of color in a raster image; an image is a grid of pixels, each encoded in binary.
**placement / allocation strategy** — How the allocator picks a free block: first fit, next fit, or best fit.
**placement policy (first / next / best fit)** — Choosing which free block to allocate: the first that fits, the first that fits starting where the last search ended, or the one leaving the fewest bytes over.
**plaintext / ciphertext / key** — In encryption, the plaintext is the original message, the ciphertext is its encrypted form, and the key is the secret used to encode and decode it.
**planning poker** — An estimation technique in which team members privately estimate effort and reveal simultaneously to reach consensus.
**plant monitor** — A ModelPlex monitor that checks that the observed continuous evolution stays within the modeled plant behavior/bounds.
**pluggable type-checking** — Adding stronger, user-defined types (specifications) to a language so a static checker can reveal errors, with no effect on execution.
**point-free (pointless) programming** — Defining a function by combining other functions without naming its argument, facilitated by curried higher-order functions.
**pointer** — A variable storing a memory address; its size equals the word size, and its type determines the size of the thing pointed at.
**pointer analysis** — Analysis determining where pointers may point, or (more usefully) proving that two pointers point to different locations; the general problem is undecidable, so it is approximated, with may and must variants, and is almost always interprocedural.
**pointer arithmetic** — Arithmetic on address-valued expressions scaled by the size of the target type (e.g. `p+1` on an `int*` advances 4 bytes).
**pointer-chasing prefetching** — Techniques for prefetching linked structures whose next address is known only after loading the current node: greedy (fetch all neighbors), history-pointer (pointers d steps ahead from a prior traversal), and data-linearization (lay nodes out contiguously so future addresses are computed directly).
**points-to analysis** — Computing the set of locations each pointer may point to (p → q); the dual formulation of alias information.
**points-to set / points-to graph** — A representation recording the locations each pointer may point to (as graph edges); less precise but more efficient than tracking full alias pairs.
**Poisson distribution** — Models the count of rare events in a fixed interval given rate λ; PMF e^(−λ)λ^k/k!, mean and variance both λ.
**polarity (positive vs. negative)** — A classification of type constructors and connectives: a positive type/connective is characterized by its introduction forms (sums, ⊗, ⊕; eager; "sends" in the process reading), a negative one by its elimination forms or observation (functions, products, &; lazy; "receives"); polarity governs eager/lazy behavior and focusing.
**polarization** — Committing to a polarized form of the logic in which every proposition and atom is assigned a polarity (with minimal shifts inserted); any polarization of A is provable iff A is.
**polarized atoms (p⁺, p⁻)** — Atoms carrying a chosen polarity: a positive atom may be focused on the right, a negative atom on the left; the choice drastically restricts the proof-search space.
**polyhedral model** — A geometric view of linear-arithmetic constraint sets as polyhedra, referenced for compiler-optimization reasoning.
**polymorphism** — Providing one interface to entities of different types; an umbrella covering parametric, ad-hoc, and subtype polymorphism.
**polynomial time** — Running time O(nᵖ) for some constant p; the standard bar for an efficient algorithm.
**port number** — A 16-bit identifier (0–65535) distinguishing the multiple applications on one host.
**positive equality (=)** — A linear proposition for channel identity used only by forwarding; its right rule is reflexivity and its invertible left rule performs substitution.
**positive polarization = call-by-value** — The compositional translation of source terms into call-by-push-value whose computational reading is call-by-value (e.g. (A⊃B)⁺ = ↓((A)⁺ → ↑(B)⁺)).
**POSIX** — The Portable Operating System Interface: a standardized C-level API of lower-level, unbuffered OS calls common across UNIX systems.
**POSIX threads (pthreads)** — The POSIX threading API in `pthread.h`; `pthread_create` starts a thread, `pthread_join` waits for and collects its result, `pthread_detach` self-cleans.
**possible world / future world** — In Kripke logical relations, contexts pre-ordered by extension; an extending context is a future world, and a term computable in a world stays computable in all future worlds (monotonicity of the indexed predicate).
**postcondition** — What a caller may assume about a function's result and effects on return (referring to the return value), checked at every return; the guarantee half of a contract and an abstraction boundary that localizes reasoning.
**postponable expressions** — A forward pass in lazy code motion that delays creating redundancy to reduce register pressure; combined with anticipated/available analyses it yields the latest safe placement.
**power set** — The set of all subsets of a set A.
**powerset domain** — An abstract domain whose elements are sets of concrete values (e.g. the powerset of the integers).
**pre-coloring** — Fixing certain interference-graph nodes to specific registers in advance to honor dedicated registers (argument/return) mandated by the calling convention.
**pre-fixpoint** — A set Z closed under an operator (X ∪ F(Z) ⊆ Z, i.e. F-closed); the least pre-fixpoint is the least fixpoint used to characterize repetition and game winning regions.
**precedence** — Which operators bind more tightly and are evaluated first; encoded by how deep a rule sits in the grammar (one nonterminal per precedence level).
**precedence graph** — A graph with one node per transaction and an edge for each conflicting pair; the schedule is conflict-serializable iff this graph is acyclic.
**precision (analysis)** — |TP| / (|TP| + |FP|): the fraction of alarms that are real faults; also, tightness of an estimate.
**precision and recall (tool effectiveness)** — Precision is the fraction of reported alerts that are real; recall is the fraction of real bugs reported; both measure an analysis tool's effectiveness.
**precision vs. accuracy (numeric)** — Precision is the count of bits used to represent a value; accuracy is how close the represented value is to the true value.
**precoloring** — Fixing certain temporaries to specific registers before graph coloring (e.g. because a calling convention or instruction mandates a register); the allocator must respect these fixed colors.
**precondition** — A requirement imposed on every caller of a function that must hold on entry; the caller must establish it and the function body may assume it.
**predicate** — A function taking one or more arguments and returning a Boolean, used as a test (e.g. by `filter`) or a query (e.g. Prime(x)).
**predicate abstraction** — Building an abstract transition structure over program locations paired with subsets of a chosen set of atomic predicates, distinguishing only the traces relevant to the property; abstract edges are decided by validity of a formula reducible to arithmetic.
**predicate calculus** — The extension of propositional logic with predicates and quantification ∀x.A(x), ∃x.A(x), leaving the domain of quantification unspecified.
**predicate transformer** — Compositional equations for weakest precondition / strongest postcondition (e.g. wp(α;β)Q = wp(α)(wp(β)Q)) that propagate a condition backward (wp) or forward (sp) through program structure.
**predicativity** — Restricting type quantification so that no type is defined by quantification over a collection including itself (stratifying types into levels), avoiding impredicativity's circularity at the cost of expressiveness.
**predictive parser** — An LL parser choosing the correct production using only the next input symbol(s), without backtracking.
**PREfast** — A lightweight Microsoft static-analysis tool that finds bugs within a single procedure and checks Standard Annotation Language annotations for consistency with the code.
**prefetch predicate** — A predicate over the iteration space naming which iterations actually miss (every iteration; only the first, for temporal reuse; every L-th, for spatial reuse), so prefetches issue only there.
**PREfix** — Microsoft's path-sensitive, interprocedural symbolic-execution tool for C/C++ that finds invalid pointers, storage-allocation errors, uninitialized memory, and resource misuse without annotations; it deliberately chooses unsoundness (exploring only some paths) to avoid false positives.
**prefix sum (scan)** — Computing an output array whose index i holds the sum of all input values up to i; done in parallel by a two-pass tree algorithm.
**preheader** — A block inserted immediately before a loop header to hold code that must execute exactly once before the loop (the destination for hoisted loop-invariant code).
**premise / conclusion** — The statements above the line (premises) justifying the statement below (conclusion) in an inference rule.
**preservation** — If e : τ and e ⟼ e', then e' : τ; types are preserved under transition (subject reduction). Together with progress it gives type safety.
**preservation (subject reduction)** — Lemma: if a well-typed term steps, the result is well-typed at the same type.
**presupposition** — In computational type theory, A type is defined as A ≐ A type and M ∈ A as M ≐ M ∈ A; membership presupposes typehood, so equality is primitive and the one-place judgments are its reflexive instances.
**Prim's algorithm** — Grows an MST from a start vertex, repeatedly adding the minimum-weight edge from the tree to a vertex outside it; O(|E| log |V|) with a heap.
**primary clustering** — The self-reinforcing feedback in linear probing where contiguous occupied blocks grow as λ approaches 1.
**primary key** — The one key SQL requires a table to designate among candidate keys, declared with `PRIMARY KEY`.
**prime number** — An integer greater than 1 whose only positive divisors are 1 and itself.
**primitive operation** — A basic counted step (+, −, comparison, array index, .length) whose occurrences are summed as an expression in the input size.
**primitive recursion** — Recursion only on the immediate sub-arguments of a constructor, so each call is smaller; one way to guarantee termination.
**primitive recursion / recursor** — Defining total functions by recursion on the predecessor via the recursor, the elimination form for the natural numbers (a base case plus a step with access to the predecessor and the recursive result); the computational content of a proof by mathematical induction.
**primitive types** — C's built-in scalar types (char, int, float, double) plus size/sign modifiers; sizes can vary by platform.
**principal / commutative / identity cases** — The three shapes in a cut-admissibility proof: the identity case discharges a cut against identity; the principal case (cut formula introduced last on both sides) reduces to cuts on subformulas; the commutative case pushes the cut past a rule acting on a side formula.
**principal formula** — The formula introduced or decomposed by the last rule of a sequent inference.
**principle of inclusion-exclusion** — A formula for a union's size that alternately adds single-set sizes, subtracts pairwise intersections, adds triple intersections, and so on.
**principle of induction** — The justification that proving the base case and inductive step establishes P(n) for all n.
**principle of locality** — Programs tend to reference data and instructions with addresses near or equal to ones referenced recently.
**principle of longest match** — The scanning rule that at each point the scanner takes the longest string forming a valid token (so `!=` is one token).
**prior / posterior** — The prior is a hypothesis's probability before evidence; the posterior is its updated probability after applying Bayes' theorem.
**priority queue ADT** — A collection giving quick access to and removal of the top-priority item, with insert, deleteMin/extract, and isEmpty.
**private address space** — The illusion that a program has exclusive use of memory, provided by the virtual-memory mechanism.
**privatization** — Giving each iteration its own copy of a scalar written-then-read each iteration (or a reduction variable) so it no longer forms a cross-iteration dependence.
**privileged vs. unprivileged mode** — The CPU runs user processes unprivileged and the OS privileged; only privileged code may touch hardware, enforcing isolation.
**Probabilistic Concurrency Testing (PCT)** — A randomized scheduler that, by exploring interleavings with a small number of context switches, gives probabilistic guarantees of finding concurrency bugs of bounded depth.
**probabilistic pointer analysis** — An analysis attaching a probability to each points-to relation instead of yes/no/maybe, enabling speculative optimizations by quantifying "maybe"; need not be safe.
**Proc / lambda** — A Ruby block reified into a first-class object via `lambda`, storable in a variable and invoked with `call`.
**procedural (imperative) language** — A language (C/C++/Java) organized around functions that computes by changing mutable state; descends from Turing's machine model. C has no objects, methods, or classes.
**procedural abstraction** — Hiding a function's implementation behind its specification: the caller reads only the spec and promises valid inputs.
**procedure** — Scheme's term for a function.
**process** — An OS container holding a program's address space, open resources, and execution state, isolated from other processes and giving the illusion of its own control flow.
**process calculus (π-calculus)** — A compositional language for concurrent programs, understood as a generalization of automata theory to interacting automata, with parallel composition, choice, complementary input/output actions, channel restriction, and recursion.
**process configuration** — A chain of running processes, well-typed when each adjacent pair shares an interface type (what one provides is what the next uses).
**process ID (PID)** — The unique identifier assigned to each process; a forked child receives a new PID.
**process isolation** — Separate address spaces, privilege levels, and fault containment protecting processes from each other and the kernel from user processes.
**process states** — The states of a process: Running, Blocked/Sleeping (awaiting an event), Stopped (suspended by a signal), or Terminated/Zombie.
**producer** — An ADT method (on an immutable type) returning a new object rather than modifying the receiver (e.g. `cons`, an enqueue returning a new queue).
**producer-consumer problem** — A synchronization pattern where producers add items to a shared bounded queue and consumers remove them, coordinated by a mutex plus slots and items counting semaphores.
**product automaton / closure under intersection** — A construction intersecting two Büchi automata (with a copy scheme ensuring both accepting sets are hit infinitely often), used to build L(K) ∩ complement(L(P)).
**product type (τ1 × τ2)** — A negative type whose values are tuples of component values, introduced by pairing and eliminated by projection (fst/snd); corresponds to conjunction under Curry–Howard, with the nullary product being unit.
**production** — A grammar rule α ::= β rewriting a nonterminal α by the sequence β of terminals and nonterminals.
**productive stream** — A stream whose every exposure yields Empty or a Cons of a value and another productive stream; an infinite stream is productive and never exposes Empty.
**profile-directed compilation** — Using dynamic profiles to guide static optimization (loop unrolling, inlining, dispatch reordering).
**profile-guided optimization** — Using runtime information (control-flow frequencies, data dependences, typical values) collected by instrumentation or sampling to guide optimizations such as speculative scheduling and code specialization.
**profiler** — A dynamic-analysis tool that measures how much time is spent in each function (by sampling or instrumentation) and how much memory each data structure uses, to identify hot spots for optimization.
**profiling** — A dynamic analysis measuring run-time or memory behavior of executions.
**program** — A set of instructions for a computer to carry out; running (executing) the program is the act of performing those instructions.
**program analysis** — The systematic examination of a program to determine its properties, requiring precise program representations plus tractable, systematic ways to reason over them.
**program as a state relation** — The meaning of a program as a relation between a prestate and poststate; a relation rather than a function so it can model nontermination (no poststate) and nondeterminism (several poststates).
**program contract** — A specification of a program by a precondition and a postcondition, stating what must hold before and after execution.
**program counter (%rip)** — The register holding the address of the next instruction to execute.
**program point** — A statically identifiable location in a program (e.g. before/after an instruction) at which an analysis records an abstract state.
**program semantics** — A formal description of what a program means, typically how it executes; provides a framework for precise definitions, proofs of correctness, and reasoning about analysis.
**program slicing** — Determining which computations could affect a value; done statically via reachability over a dependence graph or dynamically via tracing.
**program state** — The values of all variables at a point in execution; assertions make claims about the state.
**program synthesis** — Automatically discovering a program P satisfying a specification φ on all inputs, drawn from a space of candidate programs.
**programmatic test** — Test code that tests other code, re-runnable automatically whenever the code changes (e.g. Mocha with `assert.strictEqual`).
**programming language** — A systematic set of rules for describing computations in a form humans can write and edit and a computer can carry out (e.g. Java).
**programming language as a mathematical object** — The stance that a language is defined not by a compiler, implementation, or informal standard but formally by its static and dynamic semantics, usually given by rule induction.
**progress** — If e : τ then either e is a value or there exists e' with e ⟼ e'; a well-typed program is never stuck. Together with preservation it gives type safety.
**progress graph / trajectory / unsafe region** — A graph whose axes are each thread's instruction order and whose points are execution states; a trajectory is a legal path, safe (correct) iff it avoids the unsafe region where critical sections interleave.
**projection (Π)** — `Π_attrs(R)`: keeps only the listed attributes (with duplicate elimination under set semantics).
**prologue / epilogue** — The code at a function's entry (set up the frame, save callee-save registers) and exit (restore registers and the stack, return) that bracket the function body.
**prologue / steady state / epilogue** — In software pipelining, the code that fills the pipeline before the repeating kernel (prologue), the overlapped kernel itself (steady state), and the drain code finishing the last iterations (epilogue).
**proof** — A rigorous argument establishing a statement, presented as a sequence of justified steps.
**proof by calculation** — Proving an equation or inequality by a chain of `=`/`≤` steps, each justified by a known fact or definition.
**proof by cases (case analysis)** — Splitting a proof into exhaustive cases (or on a value's constructors) and proving the claim in each.
**proof by coinduction** — The principle that equality on a coinductive type is the greatest (maximal) consistent relation: two elements are equal unless unfolding can refute it, dual to induction.
**proof by contradiction** — Proving p by assuming ¬p and deriving a contradiction, forcing p to hold.
**proof by contradiction (PbC)** — The classical rule assuming ¬A, deriving ⊥, and concluding A (Gentzen's CC is a ⊥-free variant); rejected intuitionistically and given a computational reading as call/cc.
**proof by contrapositive** — Proving p → q by instead proving its equivalent contrapositive ¬q → ¬p.
**proof by deduction (semantic argument)** — Proving validity/unsatisfiability by applying sound proof rules over an assumed interpretation until a contradiction appears in every branch.
**proof by reduction** — Showing a problem is undecidable by demonstrating that a decider for it could be used to build a decider for the halting problem, contradicting its undecidability.
**proof certificate** — Evidence produced with a computation's result that a small, trusted checker can validate at runtime, shifting trust from an untrusted solver to the verified checker.
**proof obligation** — Each discharge condition generated for a Hoare-logic or verification proof (e.g. invariant initially true, invariant maintained, invariant plus exit implies postcondition), or a hidden condition a language construct emits (exhaustive matches, nonzero divisors, in-bounds indices).
**proof reduction as computation** — The principle that reducing the detour of an introduction immediately followed by an elimination corresponds to a step of computation in a programming language.
**proof term (M : A)** — A syntactic term that both represents a proof of a proposition and is read as a program of that type, making proofs first-class objects (equations on which can force uniqueness of proofs).
**proof terms for quantifiers** — A ∀-proof is a function (λx.M, applied to a term); an ∃-proof is a pair ⟨t, M⟩ of witness and proof, eliminated by split rather than by projection.
**proof tree (derivation)** — A tree of inference-rule applications justifying a judgment such as a big-step evaluation.
**proof-directed debugging** — Discovering an error in code (or its specification) from a breakdown in an attempted correctness proof.
**proof-term annotated sequents** — Instrumenting each sequent rule with proof terms so a derivation computes an independently checkable term validated by a bidirectional checker.
**proof-theoretic semantics** — The view that the left and right (or introduction and elimination) rules of a connective are its meaning, an internal alternative to model-theoretic (Tarskian) semantics.
**proofs as processes** — The computational reading in which a linear-logic derivation is a concurrent process; antecedents and succedent are communication channels, the process being client of the left channels and provider of the right.
**proofs as programs (propositions as types)** — Brouwer's constructive reading that a proof is a program transforming evidence for the assumptions into evidence for the conclusion, so an intuitionistic proof corresponds to a function from which a program can be extracted; the informal basis of the Curry–Howard correspondence.
**proper returns** — The static requirement that every control-flow path from a function's entry to exit passes through an explicit return when the function must return a value; a must-property.
**property** — A set of states P ⊆ S, equivalently a predicate over states.
**proposition** — A well-formed statement that has a truth value (true or false); the basic object of propositional logic.
**propositional dynamic logic (PDL)** — The variable-free fragment of dynamic logic (arity-0 predicate symbols, uninterpreted atomic programs); decidable but of limited expressive power.
**propositional formula** — A formula built from propositional variables and the connectives ¬, ∧, ∨, →, ⟺.
**propositional variable** — A symbol (p, q, r, s) standing for an arbitrary proposition.
**protocol** — A standardized set of rules for the format, meaning, sequencing, and error handling of messages between systems; roughly a network API.
**protocol (object interaction ordering)** — A restriction on the temporal ordering of an object's events — which methods may be called when (e.g. a stream may be read only until closed) — that clients must follow to avoid runtime errors, often modeled as a state machine.
**protocol / packet / packet switching** — Rules governing cooperating hosts and routers; data is broken into packets (header + payload) that can be resent, reordered, and adaptively routed.
**protocol testing** — Testing representative or randomly generated sequences of operations on objects (e.g. Create, AddEntry, Lookup, Delete), covering conceptual states and object protocols.
**proxy** — An intermediary that acts as a server to the client and a client to the origin server, enabling caching, logging, anonymization, and filtering.
**pruned SSA** — SSA that omits φ-functions for variables dead at the join (not live-in), producing fewer φs than minimal SSA by using liveness information.
**pruning (search)** — Recognizing that a partial solution cannot lead to a valid answer and skipping (not exploring) that branch of the search, saving work in backtracking.
**pseudo-Boolean constraint** — A linear constraint over 0/1 variables (e.g. a₁x₁ + … ≥ b) accepted by pseudo-Boolean solvers in addition to CNF.
**pseudocode** — An informal, plain-language outline of how a method or algorithm will work, written to plan a solution before committing it to real code.
**Pthreads (POSIX threads)** — The standard C interface for creating, joining, and synchronizing threads.
**public inheritance** — The usual C++ form (like Java `extends`): non-private base members keep their access, but constructors, destructor, copy ctor, and operator= are never inherited.
**public-key cryptography (RSA)** — Asymmetric encryption using a related pair of keys, a public key to encrypt and a private key to decrypt; RSA is the classic example.
**publish-subscribe** — An architectural style in which components emit events and other components subscribe to them, decoupling producers from consumers.
**pure (nonexecutable) specification** — A specification function or predicate with no observable effect, used only to state correctness while abstracting away how a function is implemented.
**pure literal elimination** — In DPLL, a variable appearing with only one polarity can be set to satisfy all its clauses; a DPLL optimization dropped in DPLL(T).
**pure object-oriented language** — A language in which every value is an object, including numbers; `3 + 4` is the message `+` sent to the object `3`.
**pure virtual function** — A virtual function with no implementation (`= 0;`), to be implemented by derived classes; C++'s abstract method.
**purification** — Rewriting a mixed formula into an equisatisfiable conjunction where each conjunct is pure in one theory, introducing fresh constants for alien subterms.
**push / pop** — Instructions that store a value onto the stack (decrement %rsp, write) or remove one (read, increment %rsp).
**Python** — A high-level, dynamically typed programming language with a large standard library, widely used for teaching and for general-purpose programming.
**QA plan** — A quality-assurance plan document stating which quality techniques are used and why, what will and will not be tested, goals and measurement targets, schedule and priorities, roles, and completion criteria.
**quadratic probing** — Open addressing trying i+1², i+2², … (mod length); with a prime size and λ < ½ it finds a slot within length/2 probes, avoiding primary clustering.
**qualified name** — A dotted name (e.g. Ints.add) referring to a component defined inside a structure or substructure.
**quality (non-functional) requirement** — A constraint on how well the system performs (accuracy, safety, security, reliability, performance, usability, maintainability), ideally stated in measurable, verifiable ways.
**quality attributes** — Non-functional properties such as evolvability, security, reliability, performance, usability, and safety; contrasted with functional correctness and often not externally or deterministically measurable.
**quality gate** — An automated checkpoint (e.g. static checkers run at check-in) that code must pass before proceeding, used to enforce security and quality standards.
**quality goal** — A measurable target defining acceptable quality (e.g. defects/KLOC, response time, mean time to failure, number of concurrent users); generally domain-dependent.
**quantifier** — A symbol indicating how a variable ranges over the domain: universal (∀) or existential (∃).
**quantifier elimination (QE)** — A procedure transforming a first-order real-arithmetic formula into an equivalent quantifier-free one; the reason first-order real arithmetic is decidable.
**quantifier rules and freshness** — Sequent rules where ∀R/∃L introduce a fresh constant not occurring elsewhere and ∀L/∃R instantiate with an expression via capture-avoiding substitution.
**quantifier-free (ground) fragment** — The subset of FOL without quantifiers; the fragment most SMT solvers decide efficiently.
**quantifier-free conjunctive fragment** — The syntactic restriction (no quantifiers, only conjunction and negated atoms) that the array and EUF decision procedures target to avoid case analysis.
**query (verify / solve / synthesize)** — The three solver-aided queries: `verify` finds a failing input, `solve` finds values satisfying the assertions, `synthesize` fills holes to make the program correct for all inputs.
**query optimization** — Transforming a logical plan into an equivalent, least-cost physical plan.
**queue ADT** — A First-In-First-Out collection with enqueue, dequeue (remove the oldest), and isEmpty.
**quicksort** — Divide-and-conquer sort picking a pivot, partitioning around it, and recursively sorting each side; Θ(n log n) average (analyzed with indicator variables and linearity of expectation), Θ(n²) worst.
**quote** — The Scheme special form (abbreviated `'`) returning a symbol or list literally instead of evaluating it, distinguishing code from data.
**race condition** — A defect where the result depends on the timing/interleaving of concurrent threads; a correct program must produce the right answer regardless of scheduling.
**Racket** — The Lisp/Scheme-descended host language ("a language for making languages") that Rosette extends with symbolic constructs via macro-based metaprogramming.
**radix sort** — Non-comparison sort bucket-sorting by one digit at a time from least to most significant; Θ(digits · (n + b)).
**ragged list** — A non-rectangular 2D list whose rows have differing lengths.
**RAII (Resource Acquisition Is Initialization)** — The C++ idiom of acquiring a resource in a constructor and releasing it in the destructor when the object goes away.
**raise** — The expression raise E that signals a runtime error rather than returning a value; it has most general type 'a.
**random testing** — Selecting inputs at random from the input domain according to some distribution, which can give probabilistic bounds on failure rates.
**randomized algorithm** — An algorithm making random choices during execution; its running time and/or correctness are analyzed probabilistically.
**range** — The set of outputs actually attained by a function.
**Rational Unified Process (RUP)** — An iterative commercial process framework organizing development into phases and disciplines.
**re-entrant (recursive) lock** — A lock recording its holding thread and a count, letting that thread re-acquire without blocking and freeing only when the count returns to 0.
**reachability** — Whether a state satisfying a property can be reached by running a program or automaton; the recurring reduction target of model checking, and dually constrained by the box modality.
**reachability (garbage collection)** — A heap block is reachable if it can be reached by following pointers from root nodes (registers, stack, globals); unreachable blocks are garbage.
**reachability (transition systems)** — A state s is reachable if some initial state s₀ satisfies s₀ →* s.
**reachability analysis** — Determining which code can execute; used for dead-code elimination.
**reaching definitions** — A forward dataflow analysis determining, at each program point, which definitions of a variable may reach it without being overwritten; underpins constant/copy propagation and def-use chains.
**reaction delay / reaction time** — The maximum time a controller may take to respond; a safe time-triggered controller must account for how far the physical system can move within its reaction delay.
**read / write** — System calls that copy bytes between memory and the current file position, returning a count that may be a short count (fewer bytes than requested, not an error).
**read-over-write axioms** — The two defining array axioms: reading the just-written index returns the written value, and reading any other index returns the original array's value at that index.
**readers-writers problem** — A pattern where any number of readers may access a shared object simultaneously but writers need exclusive access, solved with a reader/writer lock.
**readonly** — A TypeScript annotation (`readonly`, `ReadonlyArray`) preventing modification of a value; a compile-time-only check, not a runtime guarantee.
**real-arithmetic proof rule (R)** — The sequent-calculus rule that discharges a first-order real-arithmetic subgoal by an external decision procedure (quantifier elimination), closing arithmetic branches of a proof.
**reaping / zombie / orphan** — A terminated (zombie) process holds resources until reaped by its parent's `wait`/`waitpid`; an orphan whose parent died is reaped by init (PID 1).
**recall** — |TP| / (|TP| + |FN|): the fraction of real faults that are reported.
**record type** — A type built from named fields (e.g. `{x: bigint, y: bigint}`); parts are distinguished by name, and field order does not matter in math.
**recurrence relation** — An equation defining a function's running time in terms of its value on smaller inputs (e.g. W(n) = c + W(n−1)), extracted from the structure of the code.
**recursion** — Defining a function in terms of itself; the primary looping mechanism in functional languages (requiring `let rec`), where each call gets its own stack frame.
**recursion / reentrancy** — Because stack frames give each procedure instantiation its own storage, recursion and mutual recursion work naturally under the standard calling conventions.
**recursive / equirecursive session types** — Session types defined in terms of themselves; when every definition is contractive (begins with a connective), a type name may be silently replaced by its unfolding.
**recursive backtracking** — A recursive search strategy that tentatively makes a choice, recurses, and undoes the choice if it leads to a dead end, exploring the space of possibilities.
**recursive case** — The part of a recursive method that reduces the problem to a smaller subproblem, makes the recursive call, and combines the results; complements the base case.
**recursive definition / recursively defined set** — A definition giving a basis plus recursive rules that build new elements (e.g. strings, binary trees), so every element is reached in finitely many steps.
**recursive descent parsing** — A top-down parser with one procedure per grammar nonterminal, each matching its nonterminal against the input; the earliest parser type still in wide use.
**recursive equation** — A definition mentioning the thing being defined (e.g. the naive while-loop denotation); may fail to have a solution.
**recursive type** — A variant type defined partly in terms of itself, such as a binary tree.
**recursive type (rec(t.τ))** — A self-referential type solving a type equation up to isomorphism (e.g. rec(t. unit + (int × t)) is the type of integer lists).
**red zone** — The fixed-size area just below the stack pointer that a leaf function may use without adjusting the stack pointer, per the x86-64 ABI.
**red-black tree** — A balanced binary search tree whose nodes are colored red or black so that red nodes have black children and every root-to-leaf path has equal black height, keeping depth logarithmic.
**red-red violation** — The temporary red-black-tree invariant breach when inserting a red node under a red parent; fixed by rotation and recoloring, possibly propagated upward.
**redex** — A reducible expression — a destructor applied to a constructor (e.g. (λx.e) e′) — the site at which a reduction step applies.
**reduce** — The sequence operation combining all elements with an associative binary function and a base value using balanced parenthesization, giving O(n) work and O(log n) span.
**reduce (parser action)** — Replacing the right-hand side β on top of the LR stack with its left-hand-side nonterminal A, using production A ::= β.
**reduce / reduction** — Collapsing a collection to a single value using an associative binary combining function, so subresults can be merged in any grouping in parallel.
**reduce-reduce conflict** — An LR state where two different reductions both apply, a form of parsing conflict.
**reduced grammar** — A grammar in which every production is used in some derivation (no useless productions).
**reducible flow graph** — A flow graph in which every retreating edge of a depth-first spanning tree is a back edge (head dominates tail); all structured code and most goto programs are reducible.
**reduction (between problems)** — Showing one problem is at least as hard as another by transforming instances of one into the other; used to spread undecidability and NP-hardness.
**reduction / step** — A single simplification of an expression (e ⇒ e′); the operational semantics defines steps abstractly, independent of any implementation.
**redundant load elimination (memory CSE)** — Replacing a load by a previously loaded value when alias analysis and an availability analysis prove the memory has not changed since the earlier (dominating) load.
**refactoring** — Restructuring existing code without changing its external behavior.
**reference** — An alias (another name) bound to an existing variable at initialization; mutating the reference mutates the aliased variable. Introduced by C++.
**reference / capability** — A first-class value packaging the get/set capabilities for an assignable, confined to the assignable's scope by the mobility restriction so it cannot escape or be stored.
**reference counting** — An ownership/GC strategy tracking how many references share heap data, deallocating it only when the count reaches zero.
**reference cycle** — Two or more `shared_ptr`s referencing each other in a loop, so their counts never reach zero and the objects leak.
**reference equality** — What `===` (Java `==` on objects) tests: whether two references point to the same object in memory, as opposed to structural or abstract-state equality.
**reference semantics** — The treatment of object types (arrays, `ArrayList`, `Scanner`, …) in which a variable stores a reference to a value in memory, so assignment copies the reference and two variables can share (alias) one underlying object; contrasted with value semantics.
**referential integrity constraint** — A foreign-key constraint requiring that referenced values exist in the target table, enforced with update/delete policies.
**referential transparency** — The property that a call can be replaced by its result (so `f(x)+f(x)` equals `2*f(x)`); holds only for functions with no side effects.
**reflection** — A program's ability to inspect itself at run time, e.g. asking an object for its class or methods.
**reflexive / symmetric / transitive relation** — Standard properties of a relation: reflexive (every element related to itself), symmetric (holds both ways), transitive (relatedness chains compose).
**reflexive transitive closure** — The semantics of α* as the union over n of α run n times.
**reflexive transitive closure (→*)** — The multi-step ("step-star") relation; s₁ →* s₂ means s₁ reaches s₂ in zero or more steps.
**region** — A set of CFG nodes with a header that dominates them all, nesting recursively until the whole program is one region; the unit of region-based analysis.
**region-based analysis** — An alternative to iterative dataflow that computes a transfer function summarizing the effect from the start of a region to the end of a block, built by recursively combining smaller regions; well-suited to reducible graphs and interprocedural analysis.
**register** — A small fast processor storage location holding about a word of data, accessed far faster than memory; x86-64 has 16 general 64-bit registers plus %rip.
**register allocation** — Mapping the unbounded temporaries/pseudo-registers of the IR onto a finite set of machine registers, spilling excess to the stack; formulated as graph coloring of the interference graph.
**register coalescing** — Eliminating a register-to-register move by merging its non-interfering source and target into one interference-graph node so they share a register and the move is deleted; adds coloring constraints and can worsen colorability.
**register file** — The set of programmer-visible CPU registers, separate from memory and cache (x86-64 has 16 general-purpose 64-bit integer registers).
**register sub-parts** — Lower portions of a register addressed as byte, 2-byte, 4-byte, or 8-byte; any 32-bit write zeros the upper 32 bits.
**regression testing** — Re-running an accumulated test suite after changes to detect newly introduced faults; a bug fix is accompanied by a regression test that reproduces the bug.
**regular expression** — A pattern over an alphabet built from primitives (character, ε, ∅) and operators concatenation, alternation (|), and Kleene star (*); specifies token structure and regular languages.
**regular language** — A language specifiable by a regular expression and recognizable by a finite automaton; the level used for scanners.
**rehashing** — When λ grows too large, allocating a larger (still prime) array and re-inserting all items so they land at new indices.
**relation (table)** — A named, flat collection of tuples of the same shape.
**relational action of type constructors** — Each type constructor's defined action on candidates (e.g. C1 → C2 = {M | if M1 ∈ C1 then ap(M,M1) ∈ C2}), which makes the fundamental theorem of a logical relation automatic for each introduction and elimination rule.
**relational algebra** — A set of operators over relations providing the logical query plan a SQL query compiles into.
**relational composition (∘)** — The semantics of sequential composition α; β as the composition of the two reachability relations via an intermediate state.
**relational interpretation of types** — Interpreting a type variable by an arbitrary relation between values (solving impredicativity in a logical relation) and defining ∀-equality by quantifying over all such relations.
**relational model** — Codd's model storing data in simple flat relations, retrieved via a set-at-a-time query language, with no prescription of physical representation.
**relationship** — An association relating entities from two or more entity sets; may itself carry attributes.
**relaxation / decreaseKey** — Lowering a vertex's recorded best distance (and its priority-queue key) when a shorter path to it is discovered.
**relevant type system** — A substructural system with contraction but not weakening: every variable is used at least once.
**reliable byte stream** — The abstraction TCP presents: an ordered, gap-free flow of bytes between two endpoints.
**relocatable / executable / shared object file** — A .o combinable into an executable; an executable copyable into memory and run; a .so linkable dynamically at load or run time — all in ELF format.
**relocation** — The linker step merging sections, assigning final run-time addresses to symbols, and patching all references, guided by relocation entries.
**relocation table** — A list of code locations whose final addresses the linker must fix up once the executable layout is known.
**Rename (ρ)** — Renames a relation or its attributes so operators can refer to them unambiguously.
**REPL (read-eval-print loop)** — An interactive top-level that reads an expression, evaluates it, prints the result, and loops; pioneered by Lisp.
**replacement policy (LRU)** — The rule for choosing which cache block to evict when a set is full; caches typically approximate Least Recently Used.
**repository model** — An architectural style in which components share and communicate through a common central data store.
**representation exposure** — Leaking an alias to an ADT's mutable internal data, letting clients break the rep invariant from outside.
**representation independence** — The theorem (a corollary of parametricity) that two implementations of an existential interface related by a bisimulation are indistinguishable to any client; the basis for proving an ADT correct against a reference implementation.
**representation invariant** — A property that every value of an abstract type must satisfy (e.g. "is a binary search tree"); information hiding lets code assume it and restore it by local reasoning after a temporary violation.
**representation invariant (RI)** — The facts about field values that must always hold; the constructor must establish it and every mutator must preserve it.
**requirements elicitation** — Techniques for gathering requirements from stakeholders, including interviews and content analysis of existing artifacts (manuals, bug reports, the system being replaced).
**requirements engineering** — Discovering, documenting, and validating what a system must do and the qualities it must have, articulating the relationship between a desired system and its environment.
**requirements qualities** — Good requirements are correct, consistent, unambiguous, complete, feasible, relevant, testable, and traceable.
**REQUIRES / ENSURES** — The specification comments on a function: REQUIRES states preconditions on the arguments, ENSURES states the postcondition.
**resolution** — A proof rule deriving (α ∨ β) from clauses (α ∨ x) and (β ∨ ¬x); repeated resolution deriving the empty clause proves unsatisfiability.
**resource algebra (·, ε)** — The equational structure on resources: · is associative with unit ε; the equations are applied silently and hide an isomorphism between resource proofs and ordinary sequent proofs.
**resource analysis** — Measuring an algorithm by a function mapping input size to a count of resources used, so algorithms can be compared before coding.
**resource bound / recurrence bound** — Two lower bounds on a software pipeline's initiation interval: the resource bound over resource types and the recurrence bound over dependence cycles.
**resource characterization of the logics** — Ordered resource semantics becomes linear by adding commutativity, structural by identifying every resource with ε, and affine by adding a resource inequality that permits discarding.
**resource semantics** — A Kripke-style semantics for substructural logic in which each antecedent carries a unique resource label and the succedent records, via a resource combinator, exactly which resources may be used.
**restricted (contraction-free) sequent calculus** — Dyckhoff's calculus that consumes principal formulas eagerly so every premise is smaller than its conclusion, guaranteeing terminating proof search; it has no contraction and uses refined left-implication rules.
**return address** — The address of the instruction after a `call`, pushed on the stack so the callee knows where to return.
**return value (%rax)** — Integer and pointer results are returned in the %rax register.
**return-oriented programming (ROP)** — An attack defeating NX and ASLR by chaining existing code fragments (gadgets, each ending in ret) via addresses placed on the stack.
**reuse vector** — A direction in iteration space along which the same data is reused, found from the nullspace of the array access matrix (temporal) or of it with its last row zeroed (spatial).
**reuse vs. locality** — Reuse is accessing a location touched before; locality is finding it still in cache. Locality requires reuse, but only reuse within the localized iteration space (the footprint that fits in cache) yields it.
**reverse postorder (rPostOrder)** — A node visit order (NumNodes − depth-first postorder) that speeds convergence of forward dataflow analyses; the passes needed roughly track the graph's nesting depth.
**review formality spectrum** — From least to most formal: ad hoc review, passaround, pair programming, walkthrough, inspection.
**RGB color** — A scheme representing a color as a combination of red, green, and blue components, each stored in binary.
**Rice's theorem** — Any nontrivial property of the language recognized by a Turing machine is undecidable; consequently every static analysis must be unsound, incomplete, or non-terminating, and any static analysis of variable reads/writes must over-approximate.
**right focus / left focus** — The focused sequents in which focus is inherited by all subformulas of the focused proposition until an invertible connective forces focus to be lost.
**right rules / left rules** — Sequent rules: a right rule decomposes a connective in the succedent (how to prove it, obtained from the introduction rules), a left rule in an antecedent (how to use it, obtained by flipping the elimination rules).
**RIO (robust I/O)** — A package of I/O wrappers robust to short counts: unbuffered functions for sockets and buffered functions for text lines and binary data.
**risk management** — Identifying, analyzing, and mitigating project and engineering risks; coped with by selective innovation, reliance on precedent, and iteration/feedback (prototypes, spirals, sprints).
**robustness / fault tolerance** — How a system behaves in the presence of errors in itself or its environment; diminishing the likelihood or severity of failure in response to a fault (via type systems, runtime checks, rebooting components, self-healing structures, validation).
**robustness testing** — Deliberately supplying erroneous inputs and boundary cases (bad API use, corrupted files, buffer-overflow inputs) to assess how the system handles misuse and failure to meet preconditions.
**root cause analysis** — Understanding why a defect was introduced and why it was not caught earlier (the process failure, not just the incorrect code), then adjusting the engineering process to prevent recurrence.
**Rosette** — A solver-aided programming language, built on Racket, that lifts a subset of the host language to operate on symbolic values and compiles queries to SMT.
**rotation** — A local left/right restructuring that rebalances an AVL subtree after an insert/delete while preserving the BST order property.
**rounding** — Approximating a real value to the nearest representable float; floating-point arithmetic is not associative because of rounding.
**RSA encryption** — A public-key cryptosystem built on modular exponentiation, large primes, and modular inverses, with a public and a private key.
**rule induction** — The proof principle for an inductively defined judgment: to show a property holds of every derivable judgment, show it is closed under each rule (holds of the conclusion whenever it holds of the premises); equivalently, induction on derivation trees.
**rule inversion** — Reasoning backward from a derivation's conclusion to which rule(s) must have produced it and their premises; used in soundness proofs.
**rule of consequence** — The Hoare rule allowing one to weaken the precondition and strengthen the postcondition, giving logical wiggle room.
**Rule of Three** — If you define any one of the destructor, copy constructor, or assignment operator, you normally should define all three.
**rule/pattern-based analysis** — Static analysis matching code against bug patterns (e.g. PMD, FindBugs).
**rules as inductive definitions** — A set of inference rules defines its assertions as the least fixed point of the monotone operator that closes a set under the rules; a non-monotone "rule" (e.g. with a negative premise) defines nothing.
**runtime exceptions (arith, mem, abort)** — Final error states of execution: arith for arithmetic faults (division by zero), mem for null/out-of-bounds memory access, and abort from a failed assert.
**runtime monitor** — An executable condition, synthesized from a proof, checked online at runtime; if it always passes, the real system stays within the verified model's guarantees.
**runtime stack** — The region of memory holding procedures' local variables, saved registers, and arguments; it grows toward lower addresses and follows last-in-first-out call/return discipline.
**Russell's paradox** — The paradox that the set R = {x | x ∉ x} satisfies R ∈ R ↔ R ∉ R; a foundational crisis whose type-theoretic resolution foreshadows the propositions-as-types view.
**safety property** — A property asserting that nothing bad ever happens on any run, expressed with the box modality `[α]P`; partial-correctness properties are safety properties.
**safety vs. liveness** — Safety says "nothing bad happens" (checkable on finite executions); liveness says "something good eventually happens."
**sample mean** — The average of n i.i.d. observations, itself a random variable concentrating around the true mean as n grows.
**sample space (Ω)** — The set of all possible outcomes of a random experiment.
**sampling** — The periodic observation of continuous state by a digital controller; the gap between the event-triggered ideal and real sampled control drives time-triggered controller design.
**sanitizer** — A dynamic bug oracle compiled into a program to detect errors at runtime, e.g. AddressSanitizer (use-after-free, buffer overflow), ThreadSanitizer (races), and UndefinedBehaviorSanitizer.
**SAT (satisfiability)** — Deciding whether a Boolean formula (usually in CNF) has an assignment making it true; NP-complete, and the target of highly optimized SAT solvers.
**satisfiability (SAT)** — Deciding whether a propositional (CNF) formula has a satisfying assignment; NP-complete (Cook–Levin), and the tractable propositional core to which verifiers ultimately reduce verification conditions.
**Satisfiability Modulo Theories (SMT)** — Deciding satisfiability of first-order formulas whose symbols are constrained by a background theory (arithmetic, arrays, bitvectors); F is (un)satisfiable/valid modulo T relative to that theory's models.
**satisfiability modulo theories (SMT)** — Deciding satisfiability of formulas over first-order theories (arithmetic, arrays, uninterpreted functions) beyond plain propositional SAT, by combining a SAT search with theory solvers.
**satisfying assignment (model)** — A map from a formula's variables to values that makes it true; a formula with none is unsatisfiable.
**scaffolding** — Test-support code (stubs and drivers) that simulates external client or service code so a unit can be tested in isolation, localizing errors and catching bugs early.
**scanner (lexer)** — The front-end phase translating the input character stream into tokens and reporting lexical errors, skipping whitespace and comments.
**scanner generator** — A tool (Lex, Flex, JFlex) building a scanner automatically from a set of regular expressions.
**schedule** — An assignment of which unit of work each processor performs at each time step; ideally produced by the compiler/runtime rather than fixed in the program.
**scheduler / thread pool** — A finite set of concurrently executing threads together with a policy that chooses a non-final thread to advance; fair if it eventually runs every ready thread.
**schema** — The type of the data: the relation name plus its attribute names and types.
**schema of iteration** — Recursion of the form `f 0 = c`, `f(n+1) = g (f n)`, in which the step has access only to the previous result, not the predecessor.
**schema of primitive recursion** — Recursion of the form `f 0 = c`, `f(n+1) = h n (f n)`, in which the step also has access to the predecessor `n`.
**schematic variable** — A metavariable (A, B, …) in an inference rule or proof for which arbitrary propositions or judgments may be uniformly substituted.
**scientific / normalized notation** — Writing a number as numeral × base^power with exactly one nonzero digit left of the (binary) point.
**scope** — A region of the program with its own bindings/symbol table; nested scopes are searched from innermost outward, and a bound variable refers to its binder within the binder's scope.
**scope of optimization** — The extent an optimization examines: peephole, local (a basic block), intra-procedural (a function), or inter-procedural (whole program).
**scripting language** — A language (Perl, Python, Ruby) suited to quickly writing server-side and glue code.
**Scrum** — An agile framework organizing work into fixed-length sprints with a product backlog, defined roles, and recurring ceremonies.
**search space** — The set of all candidate plans for a query; huge, so optimizers restrict it (e.g. to left-deep plans).
**security development lifecycle (SDL)** — Building security into every phase of development rather than bolting it on afterward, addressing complexity, changing assumptions, and flawed specifications as sources of insecurity.
**security properties (CIA and beyond)** — The goals a secure system upholds: confidentiality, integrity, and availability, plus authentication, authorization, and non-repudiation.
**security through obscurity** — Relying on secrecy of design or code for security; treated as an anti-pattern, since one should assume the attacker knows the source and infrastructure.
**segmentation fault (SIGSEGV)** — The fault/signal raised when a program accesses memory it may not (e.g. dereferencing NULL); the "good" failure because it stops corruption early.
**segregated free list (size class)** — Several free lists partitioned by block-size class, searched by class to approximate best-fit allocation with higher throughput.
**SELECT-FROM-WHERE** — The basic SQL query form: `SELECT` chosen attributes, `FROM` tables, `WHERE` a filter condition.
**selection (σ)** — `σ_pred(R)`: keeps the tuples of R satisfying a predicate.
**selection sort** — Repeatedly find the next-smallest element and swap it into place; Θ(n²) best and worst; in place.
**selectivity factor (θ)** — The fraction of tuples expected to satisfy a predicate; for `σ_{A=const}`, θ = 1/V(R,A).
**self (receiver)** — The conventional name for a method's first parameter, referring to the instance on which the method was called.
**self join** — A join of a table with itself, using two different aliases.
**self-finitizing (bounded loops)** — The requirement that loops and recursion terminate under concrete guards or bounds on symbolic data, so symbolic evaluation halts.
**self-interpreter / universal function** — A function that interprets an encoded program on an input; a total language such as System T cannot define its own self-interpreter, though the untyped λ-calculus can implement a universal function for it.
**semantic action** — Code attached to a production that runs during parsing to build the AST node for that rule via structural recursion.
**semantic equivalence** — Two programs are semantically equivalent when they denote the same state relation (e.g. `x←x+2` equals `x←x+1; x←x+1`).
**semantics** — What programs mean — how they behave and evaluate — often given by evaluation rules mapping expressions to values.
**semaphore (P and V)** — A non-negative integer with atomic P (wait: block until positive, then decrement) and V (post: increment and wake a waiter); a binary semaphore acts as a mutex, a counting semaphore tracks available resources.
**semi-lattice** — A set of values with a meet (join) operator and a top element (bottom need not exist); the meet induces the partial order `x ≤ y ⟺ x ∧ y = x` used in dataflow frameworks.
**sentinel loop** — An indefinite loop that repeats until a special sentinel value signals it to stop; the sentinel marks the end of input and is not processed as data.
**separate chaining** — Collision resolution storing a secondary structure (e.g. a linked list) at each index and searching within it.
**sequence** — An abstract parallel collection type with operations (`tabulate`, `nth`, `map`, `reduce`, `filter`) designed for good parallel work and span.
**sequent** — A judgment `Γ ⊢ Δ` (or `Γ ⟹ C`) with antecedents Γ and succedent(s) Δ, valid iff the conjunction of Γ implies the disjunction of Δ; single-succedent in intuitionistic systems, multiple in classical ones.
**sequent calculus** — Gentzen's proof system with a left and a right rule per connective and quantifier, decomposing antecedents and succedents bottom-up; its cut-free form has the subformula property and drives proof search.
**sequential access** — Reading consecutive blocks, cheaper than scattered reads; why clustered indexes and full scans can be efficient.
**sequential composition** — The construct `α; β` that runs `α` then `β`; its meaning is the relational composition of the two programs' state relations.
**sequential cutoff** — A problem-size threshold below which a divide-and-conquer parallel algorithm switches to sequential work.
**sequential execution** — Processing one task fully before the next; simple but performs poorly because clients queue and the CPU idles on I/O.
**sequential-composition axiom** — The dynamic-logic/Hoare axiom `[α;β]P ↔ [α][β]P`, decomposing a compound program into nested modalities.
**serial schedule** — A schedule where every operation of one transaction precedes all of the next (no interleaving); by definition safe.
**serializable schedule** — A schedule equivalent in effect to some serial schedule; the goal of concurrency control.
**series-parallel graph** — A directed graph with one source and one sink built by sequential and parallel composition of subgraphs; the shape of a cost graph.
**session type** — A proposition (from linear logic) typing the communication protocol on a channel between two composed processes, dictating the sequence of messages exchanged.
**set** — An unordered collection of distinct elements; `x ∈ S` means x is an element of S.
**set (data structure)** — An unordered collection of unique, hashable elements supporting fast membership testing; cannot be indexed but can be iterated.
**set / conditional jump instructions** — Instructions (je, jne, jg, sete) that branch or set a byte based on the condition codes after a cmp/test.
**set / set index** — Cache lines are grouped into sets; middle address bits (the set index) select the set that a block maps to.
**set difference** — A \ B is the set of elements in A that are not in B.
**set equality** — A = B iff A ⊆ B and B ⊆ A (proved by showing both containments).
**set instructions** — x86 instructions (`sete`, `setl`, `setg`, …) that write a single byte based on the condition codes.
**set semantics / bag semantics** — Under set semantics tuple order does not matter and duplicates are not allowed; bag semantics permits duplicates and is SQL's default.
**set!** — Scheme's mutating assignment changing an existing binding's value; the trailing `!` marks a mutating procedure by convention.
**set-associative / fully-associative cache** — A cache with E > 1 blocks per set (set-associative), or a single set holding all blocks (fully-associative).
**set-associative cache** — A cache with E > 1 lines per set, so a block may occupy any of several lines in its set and one is chosen for eviction on a miss.
**set-builder notation** — Defining a set by a property, e.g. { x : P(x) }.
**shadowing** — An inner-scope binding that hides an outer binding of the same name.
**shallow copy** — A member-by-member copy; when a member is a pointer it copies only the pointer, the bug motivating user-defined copy/assignment.
**shallow vs. deep embedding** — Two ways to host a guest language: a library (shallow) embedding reuses host constructs directly, while an interpreter (deep) embedding gives the guest explicit semantics.
**share form** — An explicit syntactic form `share(e1; x1,x2.e2)` (a let-binding duplicating a value into two variables) that makes the contraction structural rule visible in the syntax.
**shared address space** — Threads in a process see the same heap, globals, and code and communicate through shared memory (each still has its own stack).
**shared library (.so)** — A dynamically linked library, sharable by many processes at runtime as a single in-memory copy, resolved at load or run time.
**shared variable** — A variable is shared iff multiple threads reference some instance of it; globals have one instance, thread-local automatics one per stack, local statics one instance overall.
**sharing judgment** — `Γ ▷ (Γ1, Γ2)`, distributing a context's variables to subterms (left, right, or both), used to give a syntax-directed relevant type system.
**shell** — A program that runs programs for the user in a read/evaluate loop, handling built-ins directly and fork/exec-ing others as foreground or background jobs.
**shift (parser action)** — Pushing the next input token onto the LR stack and advancing the scanner.
**shift / reduce actions and conflicts** — In shift-reduce parsing, a shift pushes the next input token and a reduce replaces a handle by its nonterminal; a shift-reduce or reduce-reduce conflict is a state where the parse table cannot decide uniquely.
**shift modalities (↑, ↓)** — Unary modal operators moving propositions between substructural modes (`↑` to a stronger mode, `↓` to a weaker one); operationally they signal a channel's change of direction, one receiving and one sending.
**shift operations** — Moving a bit vector left (×2^n) or right (÷2^n); a logical right shift fills 0s (unsigned), an arithmetic right shift replicates the sign bit (signed).
**shift-reduce conflict** — An LR state where the automaton could either shift or reduce on the same input, indicating the grammar is not LR for that construction.
**short read / partial read** — `read` may return fewer bytes than requested (0 at EOF, -1 on error), so robust code loops until all bytes are read.
**short-circuit evaluation** — `&&`/`||` skipping the second operand once the result is determined by the first (e.g. `p && *p`); implemented with a conditional jump, and affecting side effects and errors.
**side effect** — Any observable effect of a function beyond its return value, such as changing a global variable or producing output.
**Sieve of Eratosthenes** — The classic prime-enumeration algorithm, realized lazily as a stream that filters out multiples of each newly found prime.
**sign / exponent / mantissa fields** — The three bit fields of an IEEE float: value = (−1)^S × 1.M × 2^(E−bias).
**sign and magnitude** — A signed scheme using the MSB as a sign bit and the rest as magnitude; not used in practice due to two zeros and awkward arithmetic.
**sign bit** — The most-significant bit of a two's-complement number: 0 for non-negative, 1 for negative.
**sign extension** — Widening a value by replicating the old sign bit into the new high bits (used for signed) to preserve value.
**signal** — A standardized higher-level inter-process message that triggers specific handling in a process (e.g. SIGSEGV, SIGINT).
**signal handler** — A user-level function installed to catch a signal, running as a separate logical flow concurrent with the main program.
**signature (logic)** — The set of constant, function, and predicate symbols available; logical symbols (connectives, =) versus non-logical (theory) symbols.
**signature (module)** — OCaml's module-interface form (`sig ... end`) abstractly describing what a structure exposes; unlisted items become effectively private.
**signed integer** — An encoding of negative and non-negative values; two's complement range −2^(w−1) to 2^(w−1) − 1.
**signed subformulas** — The refinement that each subformula occurrence is destined for only the left or only the right of a sequent (implication flips its first argument's side), narrowing applicable rules and, with the subformula property, making the propositional search space finite.
**signed/unsigned conversion (T2U / U2T)** — Casting between signed and unsigned keeps the bit pattern but reinterprets it, effectively adding or subtracting 2ʷ; casts occur explicitly and implicitly.
**sigprocmask / sigsuspend** — Functions to explicitly block/unblock signals and to atomically unblock-and-wait for one, avoiding races and busy-waiting.
**SILL** — A core session-typed concurrent language whose operational semantics is encoded in a concurrent logical framework with intrinsic session-type-indexed typing.
**simple graph** — A graph with no self-edges and no duplicate edges between the same pair.
**simplicial vertex** — A vertex whose neighbors form a clique; removing simplicial vertices one at a time yields a perfect elimination ordering, which exists exactly for chordal graphs and makes greedy coloring optimal.
**simplify-and-color heuristic** — The Chaitin/Briggs method repeatedly removing low-degree interference-graph nodes onto a stack, then coloring them back in reverse, spilling when none remain.
**simply typed lambda calculus (STLC)** — The lambda calculus extended with a type system of base types and function types; the "essence of type systems".
**simply-typed λ-calculus with unit** — The base language (variables, abstraction, application, plus the unit type `1` with value `⟨⟩`) used to present substructural type systems.
**simulation** — A computational imitation of a real-world process that can be run on varied inputs to study how the process behaves under different circumstances.
**single-source shortest path** — Given a start vertex s, find for every vertex v the least-weight path from s to v, δ(s,v).
**Singleton** — A creational pattern reusing a single shared instance instead of constructing a new object each time (safe only for immutable types).
**size (of a tree)** — The number of (non-leaf) nodes in a tree, computed recursively by summing children's sizes plus one.
**size suffix** — A letter on an instruction naming operand width: b (1), w (2), l (4), q (8 bytes).
**sizeof** — A compile-time operator giving the size in bytes of a type or object, used to compute allocation sizes.
**sketch** — A partial program with holes (`??`) giving the desired shape; the synthesizer fills the holes to meet the specification.
**SLR (Simple LR)** — An LR variant that reduces via `[A ::= β .]` only when the next token is in FOLLOW(A), filtering out some invalid reductions.
**small vs. large type** — Small types (int, bool, pointer, array) fit in a register and may be held in variables and passed by value; large types (structs) exceed register size and must be kept in memory and manipulated by address.
**small-step operational semantics** — Semantics giving one small transition (v, c) → (v′, c′) at a time, where the command component acts like a program counter.
**smart pointer** — A class behaving like a raw pointer but automatically managing heap memory, tying the pointed-to object's lifetime to the smart pointer.
**socket** — A file descriptor used for network communication; UNIX makes network I/O look like file I/O, so `read`/`write` send and receive bytes.
**socket address / port** — An IP-address:port pair naming one connection endpoint; a port is a 16-bit process identifier, either an ephemeral client port or a well-known service port.
**socket() / connect()** — `socket()` creates a socket and returns a descriptor; the client's `connect()` drives the TCP handshake to a remote address.
**sockets API (Berkeley/POSIX)** — The standard C network API from 4.2BSD: `socket`, `connect`, `bind`, `listen`, `accept`, `read`/`write`, `close`.
**sockets interface** — The system-level functions (`socket`, `bind`, `listen`, `accept`, `connect`) combined with Unix I/O to build network applications.
**software analysis** — The systematic examination of a software artifact (code, trace, test, design, requirements) to determine its properties, functional or quality-related.
**software analytics (data-driven decision making)** — Using the abundance of engineering data (code history, bug trackers, CI logs, telemetry) to guide software-engineering decisions and evaluate interventions.
**software architecture** — The high-level structure of a system: its components, their interfaces and relationships, and the design decisions made with system-wide quality attributes in mind.
**software engineering code of ethics** — The IEEE-CS/ACM eight principles (Public, Client and Employer, Product, Judgement, Management, Profession, Colleagues, Self) obligating engineers to act in the public interest.
**software inspection** — A formal, structured peer review with defined roles and stages (planning, preparation, meeting, rework, follow-up) to find defects earlier and more cheaply than testing.
**software metric** — A function mapping a software artifact or process to a numeric value used as a decision tool; evaluated by its measurement function, scale, and relationship to the attribute of interest.
**software pipelining** — Loop scheduling that overlaps operations from successive iterations under one reused per-iteration schedule, achieving near-optimal throughput with small code growth (unlike unrolling).
**software process** — The chosen way of organizing development activities; it matters because early effort is dominated by rework and progress is hard to measure.
**software quality assurance (QA)** — The full range of techniques (testing, inspection, static and dynamic analysis, process controls) used to build confidence that a system meets its functional and quality requirements.
**Software Requirements Specification (SRS)** — A formal, often standardized requirements document, sometimes used as the basis for contracts.
**software testing** — Executing a program on selected inputs to detect faults; it cannot exercise unrun code and cannot prove the absence of bugs.
**software transition structure** — Turning a program into a Kripke-style structure over control locations paired with states, using a control-flow transition relation whose edges are labeled by statements.
**solid-state disk (SSD)** — Flash-based block storage with no moving parts, using a flash translation layer and wear leveling to spread writes.
**solution axiom (differential equations)** — The dL axiom (`[′]`/DS) replacing a differential-equation modality by a quantifier over the ODE's solution time, reducing continuous dynamics to real arithmetic when a solution is available.
**solution of an ODE** — A function of time satisfying a differential equation from a given initial state; the semantics of a continuous program is defined via such solutions.
**solver vs. checker** — The solver is the untrusted, heuristic primary computation; the checker is a small verified component that validates each result via a certificate, shrinking the trusted computing base.
**sort** — A kind of syntactic object an abstract-binding-tree variable can range over (e.g. expressions, or in richer languages both expressions and types).
**sorted** — A list in which each item is no greater than all items occurring later under a comparison; a tree is sorted iff its in-order traversal is sorted.
**sound (safe) approximation** — An abstract result that never contradicts the concrete behavior; "sound" and "safe" approximation are synonyms.
**soundness** — A type system, proof system, or analysis is sound if it never gives a wrong guarantee: it never accepts a program that would commit the errors it rules out / has no false negatives / every provable statement truly holds.
**soundness (of a program analysis)** — Analysis results over-approximate all possible runtime states (`α(η) ⊑ σ`, "truth ⊑ analysis"), so a sound analysis reports every defect of its class (no false negatives); in bug-finding tools "sound" can instead mean under-approximation.
**soundness (of a proof system)** — Every provable formula (or sequent) is valid: `⊢ ⊆ ⊨`; the minimal correctness requirement for a logic or proof calculus.
**source / sink** — In taint analysis, the point where untrusted (tainted) data enters (source) and the sensitive operation it must not reach without sanitization (sink).
**source code** — The human-written, human-readable instructions that make up a program before it is compiled or run; also simply called "code."
**spaceship operator (<=>)** — Ruby's three-way comparison method; defining it and mixing in `Comparable` supplies `<`, `<=`, `>`, `>=`, `between?`.
**span** — An upper bound on running time given unlimited processors, determined by the longest dependency chain (critical path) in a computation; also called depth.
**span — T∞(n)** — The running time on infinitely many processors: the longest chain of dependent steps (critical path length / computation depth).
**spanning tree** — A tree connecting all of a graph's vertices using exactly |V|−1 acyclic edges.
**spatial locality** — The tendency of a program to reference items with nearby addresses close together in time, exploited by cache lines and stride-1 access.
**special form** — A syntactic construct (like `define`, `if`, `quote`) that does not evaluate all its arguments the way an ordinary procedure call does.
**specification** — A precise statement of intended program behavior (a precondition on inputs and a postcondition on outputs); correctness is judged against it.
**specification checking** — Verifying a program against a specification: statically via theorem proving, dynamically via assert statements.
**specification generation** — Producing specifications: statically by hand or abstract interpretation, dynamically by invariant detection.
**specification statement** — Morgan's refinement-calculus construct describing a computation by its pre/post relation rather than its code, refined step-wise into an implementation.
**speculation** — Executing an operation before the branch it control-depends on resolves; legal only if it is side-effect-free, raises no exception, and violates no data dependence.
**speedup** — T₁ / T_P, how much faster P processors run than one; perfect linear speedup is T_P = T₁/P.
**spilling** — Storing some temporaries in memory when live values exceed available registers, reloading before each use and storing after each definition; which node to spill is chosen by a cost-to-benefit heuristic weighted by loop-nesting depth.
**Spiral model** — Barry Boehm's risk-driven process that repeatedly cycles through requirements, design, and implementation, tackling the highest engineering risks first via prototypes.
**splitting** — Dividing a chosen free block, giving part to the request and returning the remainder to the free list.
**splitting (free block)** — Dividing a chosen free block when the allocation request is smaller than it, leaving the remainder free.
**splitting live ranges** — Inserting a copy to break one long live range into shorter ones, making the interference graph sparser so a heavily-used temporary can avoid being spilled.
**sprint / backlog** — A sprint is a short time-boxed iteration producing a working increment; the backlog is the prioritized list of pending work items.
**spurious counterexample / refinement** — An abstract counterexample with no feasible concrete execution, arising from over-approximation; if spurious it is ruled out by refining the abstraction (choosing better predicates) — the CEGAR loop.
**SQL (Structured Query Language)** — A declarative, set-at-a-time language for relational databases: you describe what data you want and the system decides how to compute it.
**SQLite lock modes** — SQLite's concrete lock progression — shared/read, reserved, pending, and exclusive (to commit) — illustrating locking-based concurrency control.
**SRAM vs DRAM** — Static RAM stores each bit in ~6 transistors, needs no refresh, and is fast/costly (used for caches); Dynamic RAM stores each bit in one transistor + capacitor, must be refreshed, and is slow/cheap (used for main memory).
**SSA deconstruction (out-of-SSA)** — Translating SSA back to executable code by replacing φ-functions with ordinary copy instructions on the appropriate predecessor edges.
**SSA renaming** — Walking the dominator tree, giving each definition a fresh version pushed on a per-variable stack and rewriting each use to the version reaching it, filling in each successor φ's argument per predecessor edge.
**stable sequent** — A sequent with only negative antecedents and positive succedents, on which no inversion rule applies, so a focus must be chosen; where focusing decisions are made.
**stable sort** — A sort preserving the original relative order of equal elements; merge sort is stable.
**stably infinite theory** — A theory in which every satisfiable quantifier-free formula has a model with an infinite universe; a precondition for Nelson–Oppen combination.
**stack ADT** — A Last-In-First-Out collection with push, pop, peek, and isEmpty.
**stack canary** — A guard value placed between a buffer and the return address, checked before returning to detect overflow.
**stack canary (stack protector)** — A guard value placed beyond a buffer and checked before return, aborting the program if an overflow has overwritten it.
**stack frame** — The per-invocation region a call pushes on the stack, holding the return address, saved registers, local variables, and spilled/outgoing arguments.
**stack frame (activation record)** — The per-call region of the runtime stack holding a procedure's saved registers, local variables, spilled temporaries, and outgoing arguments.
**stack machine / control stack** — An abstract machine whose state makes the control context explicit as a stack of frames representing pending computations.
**stack machine / stack machine code** — A simple abstract machine and linear IR operating on an implicit operand stack (push/add/store), eliminating names for intermediates; used by the JVM, CIL, and p-code.
**stack overflow** — Exhausting the stack region (e.g. via unbounded recursion) so it grows past its limit.
**stack pointer (%rsp) / base (frame) pointer (%rbp)** — %rsp points to the top of the runtime stack; %rbp points to a fixed offset in the current frame relative to which locals are addressed.
**stack smashing** — A stack-based buffer overflow that corrupts adjacent stack state such as the saved return address.
**stack smashing / code injection** — An exploit overflowing a stack buffer to overwrite the return address, redirecting execution into attacker-supplied machine code.
**stack vs. queue interfaces** — In ordered logic programming, a store interface that inserts at the left forces last-in-first-out (stack) behavior, while inserting at the right yields first-in-first-out (queue); the discipline is forced by the interface type.
**staging** — Writing a multi-argument function so that partial application does useful work and returns a specialized function that runs more efficiently on the remaining arguments.
**stakeholder** — Any party with an interest in a system (users, clients, operators, regulators, affected third parties); a use case must satisfy its stakeholders' interests.
**Standard Annotation Language (SAL)** — A lightweight language of buffer/pointer contract annotations (`_in`, `_out`, `_ecount`, `_opt`, …) expressing pre-/post-conditions on memory usage, checked by PREfast.
**standard descriptors** — Every process starts with file descriptors 0 (stdin), 1 (stdout), and 2 (stderr) open.
**standard deviation** — The square root of the variance, giving spread in the same units as the random variable.
**standard form (regexp)** — A regular expression in which no starred subexpression `r*` has ε in `L(r)`, required so a continuation-based matcher terminates.
**standard I/O (buffered streams)** — The C library's buffered `FILE *` streams that amortize kernel calls by reading/writing blocks; convenient but not async-signal-safe and unsuitable for sockets.
**standardization (z-score)** — Transforming a random variable to mean 0 and standard deviation 1 by subtracting its mean and dividing by its standard deviation.
**stars and bars** — A method counting the ways to distribute k identical items into n distinct bins, using "stars" for items and "bars" as dividers.
**state** — An assignment of values to program variables at a moment of execution; in dynamic logic a map from variables to reals, in dataflow a map `Var → Value`.
**state / resource interpretation** — Reading a multiset (or sequence) of linear propositions as the current state, where inference models actions that consume and produce resources.
**state-space explosion** — The core difficulty of model checking: reachable states grow exponentially in the number of atomic components, mitigated by partial-order reduction, bounded model checking, symbolic representations, and abstraction.
**statelessness** — HTTP's request/response model keeps no state across connections; sessions (e.g. cookies) are layered on top.
**statement** — A single command to be executed by a program, typically terminated by a semicolon (e.g. an assignment or a method call).
**statement coverage** — The fraction of statements executed by at least one test.
**static analysis** — Analysis reasoning about a program without executing it, building an abstraction of run-time states over an abstract domain; typically sound but conservative.
**static checking** — Anything done to possibly reject a program after it parses but before it runs.
**static library / archive (.a)** — A collection of relocatable object files from which the linker copies only the members that resolve outstanding references.
**static semantics (statics)** — The part of a language definition specifying the well-formed (well-typed) programs, given by typing judgments `Γ ⊢ e : τ`; declarative — it says what is the case, not how to check it.
**static single assignment (SSA)** — An IR in which each variable is assigned exactly once, giving immutable, math-like names that simplify analysis; uses φ-functions at control-flow merges.
**static symbolic execution (SSE)** — Symbolic execution over a program without concrete runs, better able to use loop invariants for verification (contrasted with dynamic symbolic execution).
**static typing** — Ruling out bad programs by type-checking without running them.
**static vs. dynamic content** — Web content served from files versus content produced on the fly by a program the server runs.
**static vs. dynamic error** — A static error is caught by the compiler without running the program (type errors, undefined variables); a dynamic error occurs at runtime for particular inputs.
**static vs. dynamic execution** — Statically a program is a finite text, but dynamically it may have infinitely many execution paths; dataflow analysis abstracts a program point by combining information over all dynamic instances of that point.
**static vs. dynamic linking** — Static linking copies needed library code into the executable at link time; dynamic linking leaves it out and links a shared copy at load or run time.
**static vs. dynamic type** — The static (compile-time) type is what the checker reasons about; the dynamic (runtime) type is the object's actual class.
**static vs. shared libraries** — Static libraries (`.a`) are linked into the executable at build time; shared libraries (`.so`) are loaded and linked at load/run time.
**static/global vs. automatic allocation** — Globals and statics live in the data segment (allocated at process start, freed at exit); locals are automatic, allocated on stack entry and freed on return.
**static_cast / dynamic_cast** — C++ casts: `static_cast` is compile-time-checked between related types; `dynamic_cast` also checks at run time and returns nullptr (or throws) on an invalid downcast.
**statistical inference of invariants and models** — Inferring likely program properties or behavioral models from observed executions.
**statistical language model** — A probabilistic model of code/text (e.g. bag-of-words, n-grams) used for tasks like method naming or completion.
**std:: / fully qualified name / using** — Namespace members are accessed as `nsp::member`; a `using` directive/declaration brings names into scope.
**std::cout / std::cin / std::cerr** — Stream objects in namespace `std`: `cout` writes formatted output, `cin` reads via `>>`, `cerr` is error output.
**std::endl** — A manipulator that writes a newline to the stream and flushes its buffer.
**std::shared_ptr** — A smart pointer using reference counting to allow multiple owners; copying increments the count and destruction decrements it, deleting at zero.
**std::string** — A standard-library string class that hides string implementation and overloads operators such as `+` (concatenation) and `=`.
**std::unique_ptr** — A smart pointer that is the sole owner of a heap object; non-copyable, and calls `delete` on destruction.
**std::weak_ptr** — A non-owning pointer-like object referencing a shared object without changing its count, used to break reference cycles; `lock()` promotes it to a `shared_ptr`.
**stdin / stdout / stderr** — The three default streams every program is given: standard input, output, and error.
**Steensgaard's analysis** — A flow- and context-insensitive, unification-based points-to analysis in which each node points to at most one other (fan-out ≤ 1), implemented with union-find in near-linear time but less precise than Andersen's.
**STL (Standard Template Library)** — The part of the C++ standard library providing containers, iterators, and algorithms, all built from class templates.
**Stochastic hybrid system (SHS)** — A hybrid system extended with stochastic dynamics (SHS = HS + stochastics).
**stochastic search** — Synthesizing by randomly mutating candidate programs, accepting mutations with probability tied to fit, trading guarantees for scalability.
**store / state** — A mapping from reference cells to values; paired with an environment it forms the state against which imperative equivalence is defined.
**store by value** — STL containers store copies: inserting copies the object and rearranging makes more copies.
**strace** — A Linux utility printing the sequence of system calls a process makes.
**straight from the spec** — Code obtained by directly translating an imperative specification into code, minimizing opportunities for mistakes.
**stream** — stdio's abstraction of a sequence of characters flowing to/from a device, buffered by default and manipulated through a `FILE*`.
**stream vs. datagram socket** — A stream socket is connection-oriented, reliable, point-to-point (TCP); a datagram socket is connectionless, unreliable, one-to-many (UDP).
**strength reduction** — Replacing an expensive operation with a cheaper equivalent (e.g. multiply by a power of two with a shift).
**strengthening the inductive hypothesis** — Proving a more general (inductive) lemma and specializing it to the desired theorem; a recurring PL proof pattern.
**strengthening the loop invariant** — Adding facts to a loop invariant so it becomes provable (analogous to generalizing an induction hypothesis), e.g. adding `b = fib(i+1)` to `a = fib(i)`.
**strict barrier certificate** — An invariant argument for strict inequalities `e > 0` (an open set); its incompleteness (not covering all cases) motivates differential cuts and ghosts.
**STRIDE** — A threat taxonomy — Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, Elevation of privilege — each mapped to the security property that counters it.
**stride / row-major order** — The address step between successive accesses; C stores arrays in row-major order, so traversing a row is stride-1 (good) and a column is not.
**string** — A finite, possibly empty sequence of symbols drawn from an alphabet.
**string interning** — Keeping a single shared copy of equal string literals so `==` comparisons succeed; a Java optimization enabled by string immutability.
**string interpolation** — Embedding an expression in a string (e.g. Ruby `#{...}`), whose value is converted to a string; later borrowed by Python as f-strings.
**string literal** — A double-quoted constant automatically stored as a char array with space for `'\0'`; cannot be modified in place.
**strong induction** — Induction whose inductive hypothesis assumes P holds for all values from the base up to k, to prove P(k+1); may require multiple base cases.
**strong normalization** — The property that there are no infinite β-reduction sequences from a well-typed term; usefully stated as the validity of transfinite induction on reduction.
**strong update** — Overwriting a variable's points-to set when its target is known exactly (a must relationship), versus a weak update that only adds to the set under may-information.
**strong vs. weak reduction** — Strong reduction permits reducing under a λ (inside abstractions); weak reduction (call-by-name/value) does not, so all abstractions are normal forms.
**strong vs. weak symbols** — Strong symbols (functions, initialized globals) may not be multiply defined; between a strong and a weak symbol the strong one wins, and among multiple weak symbols one is chosen arbitrarily.
**stronger / weaker (assertion)** — One assertion is stronger than another if it holds in a subset of the states (and thus implies it); the strongest is `false`, the weakest `true`. Weakening enlarges the state set; strengthening shrinks it.
**strongest postcondition** — For precondition P and program α, the strongest formula implied by running α from a state satisfying P; encapsulates symbolic execution and propagates forward.
**strongly connected component (SCC) / accepting cycle** — A set of mutually reachable states; a reachable SCC (or cycle) containing an accepting state witnesses a nonempty ω-automaton language and yields a counterexample.
**struct** — A C datatype grouping named fields (like a class but with no methods); laid out contiguously, assignable and passable by value.
**struct alignment / padding** — Rules keeping each field aligned to its size and the total size a multiple of the largest alignment, inserting padding; reordering fields can shrink a struct.
**struct sockaddr / sockaddr_in / sockaddr_in6 / sockaddr_storage** — Socket address structures: the protocol-independent `sockaddr`, the IPv4 and IPv6 variants, and `sockaddr_storage` large enough to hold either.
**structural congruence** — The least congruence on processes making parallel composition a commutative monoid and unrolling recursive processes, identifying processes with the same structure prior to transition.
**structural induction** — Proving a claim for every value of an inductive type by proving it for the base constructor(s) and for each recursive constructor assuming it holds for the substructures.
**structural logic** — Ordinary (intuitionistic) logic admitting all three structural rules — exchange, weakening, and contraction — one endpoint of the substructural spectrum.
**structural operational semantics (SOS) / small-step semantics** — A dynamics given by a transition relation `e ⟼ e'` defined by induction on program structure, taking one atomic step at a time and modeling intermediate states and nontermination.
**structural properties** — Properties a type-system context may enjoy — weakening, contraction, and exchange — whose presence or absence characterizes substructural type systems.
**structural recursion** — Recursion that only calls itself on strictly smaller parts of its input, which guarantees termination; the dominant pattern for AST passes.
**structural sharing** — Reusing the nodes of an existing immutable list rather than copying, making operations like `::` cheap and safe.
**structural vs. nominal typing** — Structural typing (TypeScript) makes two types interoperable when they have the same shape; nominal typing (Java) requires the declared type names to match.
**structure** — An implementation module grouping related type, value, and exception declarations, checked against an ascribed signature that may hide components.
**structure (module)** — OCaml's concrete module form (`module M = struct ... end`) grouping definitions together.
**structure / interpretation (universe)** — M = ⟨U, I⟩ pairing a universe U of values with an interpretation I mapping each symbol to an element, function, or relation over U.
**stub / driver** — A stub is a minimal substitute for underlying service code (a mock); a driver is client-side code that exercises the unit under test with calls and call sequences.
**stuck state** — A non-final machine state with no applicable transition, corresponding to a runtime error / undefined behavior; a type-safe language has none (progress).
**stuck term** — A term that is not a value yet cannot step (e.g. `true (λx. x)`); the semantic notion behind a type error.
**subclass / ISA / inheritance (E/R)** — An entity set that is a subclass of another via `isA`, inheriting its attributes; represented in SQL by separate related tables.
**subclass vs. subtype** — Subclassing is a mechanism for sharing code, which does not guarantee a subtyping relationship; a subclass with a weaker method spec is legal Java but not a subtype.
**subformula property** — Every proposition in a cut-free (normal) proof is a subformula of the end sequent; it fails for non-normal proofs and yields decidability and consistency results.
**subquery** — A query nested inside another, appearing in SELECT (must return one value), FROM (a derived table), or WHERE/HAVING.
**subset (⊆)** — A ⊆ B iff every element of A is also in B.
**subset construction (powerset construction)** — The fixed-point algorithm converting an NFA to an equivalent DFA whose states are sets of NFA states.
**subsingleton logic** — The fragment of ordered logic where every sequent has at most one antecedent; its surviving connectives (`⊕`, `&`, `1`) give proofs corresponding to finite-state transducers.
**substitutability** — The property that a value of type B may be used wherever a value of type A is expected; the defining criterion of subtyping for ADTs.
**substitution** — Replacement of a variable `x` by an expression, written `[e/x]e'`, defined so as to avoid variable capture; the fundamental means by which variables acquire meaning.
**substitution (logic-programming)** — A finite map θ from logic variables to terms, threaded through computation as an input/output substitution and produced by unification.
**substitution (P[e/x])** — Replacing every free occurrence of x in P by e ("e squashes x").
**substitution lemma** — Lemma that substituting a well-typed term for a variable preserves the term's type; the crux of preservation for β-reduction.
**substitution principle** — The defining property of hypothetical judgments: a proof of a hypothesis may be substituted for every use of that hypothesis, discharging it.
**substructural logic** — A logic that restricts or omits one or more structural rules (exchange, weakening, contraction), so hypotheses become ordered and/or consumable resources; includes linear, ordered, affine, strict, relevance, bunched, and separation logics.
**substructural operational semantics (SSOS)** — Specifying a language's operational semantics by substructural (ordered or linear) inference rules, so computation is proof reduction and synthetic rules obtained by focusing give the intended stepping rules.
**substructural type system** — A type system that controls variable use by restricting the structural rules, corresponding to substructural logics; used for memory management, access control, concurrency, and resource analysis.
**substructure** — A structure component nested inside another signature/structure, tying related types and operations together.
**subsumption** — Discarding a weaker (subsumed) derived sequent when a stronger one is present, since any inference using the weaker can use the stronger.
**subtype / subtyping** — A relation where a value of type A can be used wherever a B is expected (an element of a subtype "is a" element of the supertype), e.g. a subclass for its superclass.
**subtype polymorphism** — Letting a term of a subtype stand in for its supertype (a Cat used as an Animal), as in OO inheritance.
**subtyping of session types** — A decidable relation letting a process of one session type be used where a supertype is expected, permitting a relaxed identity/forwarding rule.
**success continuation** — A continuation invoked on success and discarded on failure, used to short-circuit control (e.g. returning immediately) or to represent the goals still to solve in proof search.
**successor (succ)** — The constructor giving the next natural number after n; Peano naturals are 0, succ(0), succ(succ(0)), etc.
**successor / predecessor (CFG)** — The CFG neighbors of a node: successors are blocks control may flow to, predecessors those it may come from; dataflow equations propagate along these edges.
**sum rule** — When outcomes split into disjoint cases, the total count is the sum of the counts of each case.
**sum type** — A type whose values are tagged (injected) values of one summand; a positive type with injections `inl`/`inr` and elimination by `case`, corresponding to logical disjunction (the nullary sum is `void`).
**superclass / subclass** — The parent class whose behavior is inherited and the child class that inherits from it and may extend or override it.
**superkey** — A set of attributes whose closure is all attributes of the relation (it functionally determines every attribute).
**superoptimizer** — A synthesizer that searches for the optimal (lowest-cost) instruction sequence equivalent to a given program (e.g. Denali).
**superscalar / issue width / functional units** — Superscalar hardware issues several independent instructions per cycle (up to the issue width) across a finite set of functional units of each type.
**supervised / unsupervised / reinforcement learning** — The three broad categories of machine learning: supervised learning predicts outputs from labeled inputs, unsupervised learning finds structure in unlabeled data, and reinforcement learning learns from feedback on its actions.
**support (range)** — The set of values a random variable can actually take with nonzero probability.
**suspension / thunk** — A delayed computation of type `unit → τ` whose body is evaluated only when "forced" by application; the mechanism of lazy evaluation.
**swap space** — Disk storage that backs virtual pages not currently resident in physical memory.
**swapping (paging) / thrashing** — Copying pages in and out between DRAM and disk swap space; thrashing is continuous swapping when the working set exceeds physical memory.
**switch / jump table** — A multi-way branch implemented by an indirect jump through an array of code addresses, used when the index is in range.
**symbol** — A named global variable or function a module defines or references, which the linker binds to exactly one definition.
**symbol resolution** — The linker step associating each symbol reference with exactly one definition.
**symbol resolution / linkage** — The linker matching each use of a global name to its single definition; names have external (shared) or internal (file-local) linkage.
**symbol table (.symtab)** — The assembler-built array of entries recording each symbol's name, size, and location.
**symbol table (compiler)** — A map from identifiers to information (types, memory layout, links to code), supporting lookup, insertion, and redirection to wider scopes.
**symbol table (object file)** — A list of a file's labels and data that can be referenced by other files.
**symbolic compiler** — A component translating a program (and its interpreter) into logical constraints; hand-writing one is the "classic hard way" Rosette automates.
**symbolic execution** — Running a program on symbolic inputs, computing a symbolic state and, per path, the strongest postcondition; introduced by King (1976).
**symbolic execution tree** — The tree of feasible paths explored by symbolic execution, branching at each conditional into the true/false path constraints.
**symbolic value** — A placeholder standing for an arbitrary value of its type; queries reason about all its possible concrete instantiations at once.
**symbolic virtual machine (SVM)** — Rosette's engine that symbolically evaluates a program and produces SMT constraints efficiently even for an interpreter.
**symmetric difference (⊕)** — The set of elements in exactly one of A, B (the set analogue of XOR).
**symmetric vs. asymmetric encryption** — Symmetric encryption uses one shared key to both encode and decode, whereas asymmetric encryption uses a related pair of public and private keys.
**synchronization** — Coordinating concurrent threads so they do not interfere when operating on shared data, e.g. blocking others from a resource while one thread uses it.
**synchronization / interaction** — The joint (silent) step by which two processes taking complementary actions advance together; the basis of communication between processes.
**synchronization order** — The ordering imposed by synchronization operations (acquire/release, wait-notify, fork-join, volatile access); accesses ordered by it are not data races.
**synchronous exception (trap / fault / abort)** — An exception caused by executing an instruction: a trap (system call, breakpoint) returns to the next instruction, a recoverable fault (page fault) may re-execute it, and an abort terminates the program.
**synchronous message passing** — A concurrency model in which sender and receiver step together as one transition; making communication asynchronous requires buffering.
**syntactic / structural analysis** — Analysis over the token stream or parse/AST structure (grep-style or structural pattern matching) rather than over program semantics.
**syntactic type safety** — The modern proof method (Wright–Felleisen, Harper) establishing safety via progress and preservation.
**syntactic types (Lambek)** — Lambek's grammatical connectives `x/y` ("x over y", yields an x given a y to its right) and `y\x` ("y under x", given a y to its left), under which parsing becomes proof construction.
**syntactic vs. semantic logical framework** — A syntactic framework presents a system using only generators, so its equational theory is the framework's native decidable congruence; a semantic one also admits defining equations whose enriched equality may be undecidable.
**syntax** — How the parts of a language are written; the surface form/structure of a program, given here by an abstract syntax tree.
**syntax error (compiler error)** — A violation of a language's grammatical rules (e.g. a missing semicolon or misspelled keyword) that prevents a program from compiling.
**syntax-directed rules** — A rule set with exactly one rule per syntactic form, so the form of the expression determines the applicable rule; makes type checking straightforward.
**syntax-guided proof** — A proof proceeding by matching Hoare rules to the program's syntax, never consulting the operational semantics; enables automation.
**syntax-guided synthesis (SyGuS)** — Formulating synthesis as searching a space defined by a syntactic template plus a semantic specification.
**synthesized special members** — The constructor, copy constructor, and assignment operator the compiler generates when you declare none; the synthesized copy/assign do a shallow copy.
**synthetic inference rule** — A macro-rule compiling an entire focusing phase (chaining plus inversion on one focused proposition) into a single big-step rule, collapsing small-step nondeterminism.
**synthetic vs. analytic judgment** — "A true" is synthetic (it needs external evidence, a derivation), whereas "M : A" is analytic (it contains its own evidence and can be effectively checked).
**system call** — The mechanism by which a user-level program requests a service from the OS, crossing from unprivileged into privileged mode.
**System F** — A parametrically polymorphic typed lambda calculus (Girard 1972, Reynolds 1974); the "essence of parametric polymorphism".
**System F (polymorphic λ-calculus)** — Girard's and Reynolds's system of universally quantified types `∀t.τ`, with type abstraction `Λt.e` and type application; a polymorphic function takes a type as argument and behaves uniformly across all instances (parametric polymorphism).
**System T (Gödel's T)** — The total typed language of natural numbers, higher-order functions, and primitive recursion (the recursor); every well-typed program terminates, and it defines exactly the functions provably total in Peano arithmetic.
**system testing** — End-to-end testing of the whole system, higher-level than unit or integration testing.
**system-call dispatch table / handler** — The kernel table mapping each system-call number to its handler routine.
**systematic interleaving exploration** — Deterministic controlled concurrency testing that explores thread interleavings systematically for good coverage and deep bugs, versus ad-hoc sleeps or random walks.
**systems programming** — The skills, discipline, and knowledge needed to build a system, centered on the "layer below" (OS, hardware) using C and C++.
**T-validity / T-satisfiability / T-decidability** — A Σ-formula is `T`-valid if every model of theory `T`'s axioms satisfies it, `T`-satisfiable if some model does, and `T` is decidable if an algorithm always decides validity.
**T1–T2 transformations** — Hecht–Ullman flow-graph reduction rules: T1 removes a self-loop `n→n`; T2 lets a node absorb a successor that has it as sole predecessor. A graph is reducible iff exhaustively applying them collapses it to a single node.
**tabulate** — The sequence-building operation `tabulate f n` producing `⟨f 0, …, f(n−1)⟩`; O(n) work and O(1) span when `f` is constant time.
**tag / index / offset** — The three fields an address is split into for cache lookup: index selects the set, tag identifies the block, offset selects the byte.
**tag / valid bit** — In a cache line, the high-order tag bits compared against the address's tag plus a valid bit indicating whether the line holds real data; a hit requires both to match.
**tag field** — A literal-valued field (e.g. `kind: "cons"`) distinguishing members of a union of record types, enabling type narrowing.
**tags (runtime)** — Run-time markers (`Int`, `Bool`, `Fun`, …) attached to raw values so a dynamically typed language can identify a value's form; checking and stripping them costs time and space.
**tail bound** — An inequality bounding the probability that a random variable deviates far from its mean.
**tail call / tail-call optimization** — A call in tail position whose result is returned directly; tail-call optimization reuses the current stack frame (or, in a process calculus, compresses a recursive call followed by a forwarding identity into an in-place continuation) instead of growing the stack.
**tail recursion** — A recursive form performing no further computation after the recursive call returns, so it can execute as a loop without growing the stack.
**taint analysis** — A data-flow analysis tracking data from untrusted sources to sensitive sinks to detect leaks or injection; implementable statically or dynamically, and the two can be combined.
**Tarskian / Russellian universes** — A universe as a class of type codes with an extension (`ext`) map (Tarskian) versus universes whose codes are literally types (Russellian); with a cumulative hierarchy of levels with lift and cumulativity.
**tautology** — A proposition that is always true, regardless of its variables' values.
**TCP** — Transmission Control Protocol: a transport protocol giving a reliable, ordered, congestion-controlled byte stream by sequencing, retransmitting, and reordering IP packets; connection-oriented (more cost) versus UDP's connectionless thinness.
**team communication cost** — Coordination overhead that grows with team size as `n(n−1)/2` communication links, motivating structuring teams into smaller units.
**technical debt** — The accumulated cost of expedient design or implementation shortcuts that must later be repaid through rework.
**template** — A function or class parameterized by a type (or constant), defined once type-agnostically; C++'s form of parametric polymorphism.
**template instantiation** — The compiler generating code from a template only where used, producing a specialized version per type/value argument (and only for methods called).
**temporal locality** — The tendency of a recently referenced item to be referenced again soon; exploited by reusing data while it is still in cache (contrast spatial locality).
**temporary (temp)** — A virtual register in abstract assembly holding an intermediate value; the compiler assumes an unlimited supply and later maps temps to machine registers or stack slots.
**term** — An arithmetic expression built from variables, constants, and function symbols (e.g. `+`, `−`, `·`, `/`); it denotes a value relative to a state.
**terminal** — A concrete token that appears in generated programs (e.g. `if`, `+`); the leaves of a parse tree.
**terminal / non-terminal** — A terminal is an alphabet symbol or token appearing literally in the input; a non-terminal (grammar variable) is expanded by productions into sequences of terminals and non-terminals, with one distinguished as the start symbol.
**termination** — The property that a computation reaches a final state (halts); e.g. every closed well-typed term in a total language evaluates to a value.
**termination (analysis)** — A property of an ideal analysis: it must halt; abstract interpretation sacrifices completeness/precision to guarantee it.
**termination (session, `1`/close/wait)** — In session types the unit `1` types the end of a session: the provider executes `close` and disappears, and the paired client `wait`s for the close before proceeding.
**termination argument** — Showing a loop finishes by exhibiting a quantity that strictly decreases and is bounded, separate from the partial-correctness invariant.
**termination metric (decreases)** — An annotation giving a well-founded measure that strictly decreases each loop iteration/recursive call, proving termination for total correctness.
**test / guard / challenge (`?Q`)** — A program (or hybrid-program) construct that succeeds leaving the state unchanged when formula `Q` holds and otherwise fails with no poststate (the run is discarded); models preconditions and assumptions, with `skip ≜ ?true` and `abort ≜ ?false`.
**test adequacy** — Whether a test suite is good enough; coverage criteria reveal where testing is missing but are not sufficient adequacy criteria on their own.
**test axiom (`[?]`)** — The dynamic-logic axiom `[?Q]P ↔ (Q → P)` (diamond form `⟨?Q⟩P ↔ Q ∧ P`): after a test `?Q`, the postcondition need hold only when the guard passes.
**test case** — A chosen input together with the expected answer, where the expected answer is derived from the specification, not from running the code under test.
**test coverage** — A measure of how much of an artifact (statements, branches, paths, or input domain) a test suite exercises; good coverage is necessary but not sufficient for adequacy, while poor coverage proves the suite inadequate.
**test game (`?Q`)** — An atomic hybrid game in which Angel loses immediately if `Q` fails; its dual `(?Q)ᵈ` makes Demon lose if `Q` fails.
**test harness** — A tool (e.g. JUnit) that manages and runs unit tests so they are automatic, repeatable, and independent, with immediate pass/fail confirmation.
**test oracle** — The mechanism deciding whether a test's observed output is correct.
**test oracle / the oracle problem** — The mechanism that decides whether a test's observed output is correct; the difficulty of obtaining such an oracle for many properties is a fundamental limit of testing.
**test stub / mock** — A stand-in implementation of a dependency used so a unit can be tested in isolation under controlled conditions.
**test terms / infinitesimals and infinities** — The symbolic values (roots, root ± ε, ±∞) substituted during virtual substitution; strict inequalities are handled because infinitesimals and infinities never satisfy equalities.
**test-driven development (TDD)** — Writing a failing test as a specification before writing the code that satisfies it; on finding a bug, first write a failing test reproducing it, then fix.
**testing alongside verification** — Running code or asserting strict test postconditions to catch over-strict preconditions, over-lax postconditions, or prover weakness that a "Verified" result can mask.
**testing in production** — Validating changes under real workloads via beta tests, A/B tests, and staged rollouts across hardware/software diversity.
**the four judgments** — In computational type theory: `A type` (A is a type), `A ≐ A′` (type equality), `M ∈ A` (membership), and `M ≐ M′ ∈ A` (element equality), each explained via canonical forms.
**the inverse method** — Maslov's general theorem-proving method by forward inference and saturation over cut-free sequent calculi; unlike resolution it is not specialized to classical logic.
**the stack** — The last-in-first-out region of memory holding per-function-call data (stack frames), automatically allocated/freed on call and return; grows toward lower addresses.
**the world and the machine** — Jackson's framing that requirements are properties of the environment (the world), specifications describe the shared environment–machine interface, and domain knowledge bridges the two; conflating them produces defective requirements.
**theorem proving** — Static, logical proof that a program satisfies its specification.
**theorem proving / proof checking / type inference** — Three decision problems on `M : A`: theorem proving (given `A`, find some `M`), proof checking (given `M` and `A`, decide `M : A`), and type inference (given `M`, find some `A`).
**theory** — A set of axioms over a signature; its models are the first-order structures satisfying those axioms.
**theory combination (T1 ⊕ T2)** — Deciding satisfiability over the union of two theories' signatures and axioms; checking each theory independently is unsound (each part satisfiable, the whole unsatisfiable).
**theory conflict clause** — The negation of a theory-inconsistent assignment (ideally its minimal unsat core) added as a learned clause to the Boolean problem.
**theory of arrays** — An axiomatic model of arrays with a `read a i` operation and a non-mutating `write a i v` constructor (denoting a new array), abstracting mutable arrays for logical reasoning.
**theory of arrays (T_A)** — A theory with `read` and `write` axiomatized so reading back a written index yields the written value (read-over-write) and arrays are extensional.
**theory of equality with uninterpreted functions (EUF)** — The theory in which = is the only interpreted symbol and all functions/predicates are uninterpreted but must respect congruence.
**theory of fixed-width bitvectors (T_BV)** — A theory of arithmetic and logical operations on k-bit words, modeling machine integers precisely.
**theory propagation (T-propagation)** — Having the theory solver deduce and communicate further implied literals to the Boolean search, tightening it beyond pure BCP.
**theory solver** — A decision procedure for conjunctions of literals in a single theory, invoked by the SAT core in DPLL(T).
**theta-join / eq-join** — A join whose condition is an arbitrary predicate (theta-join) or an equality (eq-join).
**Third Normal Form (3NF)** — A normal form weaker than BCNF; mentioned as more complicated and not covered.
**this pointer** — The implicit first argument (a pointer/reference) giving a method the object it operates on; `return *this;` returns the object.
**thread** — An independent sequential execution stream within a process, with its own stack, program counter, and registers, but sharing the process's address space.
**thread interleaving** — An ordering that merges the steps of concurrent threads into a single sequence; the space of interleavings defines program behavior under sequential consistency.
**thread locality** — Keeping data accessible to a single thread (local variables, event-thread confinement, read-only sharing, ownership transfer) so no synchronization is needed to avoid races.
**thread pool** — A fixed set of worker threads created at startup that pull tasks from a shared, lock-guarded queue, avoiding per-request creation cost.
**thread safety / reentrant function** — A function is thread-safe if it always produces correct results under concurrent calls; the thread-unsafe classes are fixed by locking or by reentrancy (accessing no shared state).
**thread vs. process tradeoffs** — Processes are isolated and need no language support but are heavyweight; threads are cheaper and share memory but require synchronization and share fate.
**thread-safe** — A property of data structures built to be used correctly from multiple threads without external synchronization.
**threads memory model** — Each thread has a private context (TID, stack, registers) but all share code, data, heap, and library segments; stacks are unprotected, so a thread can read or write another's stack.
**threat modeling** — Systematically analyzing a design to enumerate potential threats (e.g. via STRIDE), rank them by risk, and decide where to add security mechanisms.
**three loop triples** — Loop correctness with invariant I splits into three checks: I holds initially, the body preserves I, and I with the negated condition implies the postcondition on exit.
**three-address code** — An intermediate representation in which each instruction has at most one operator and up to three operands (e.g. `t ← s1 ⊕ s2`), making all intermediate results explicit in temporaries; the standard scalar IR.
**three-address code (3AC/TAC)** — A linear IR whose instructions have the form `x ← y op z`, one operator and up to three names, assuming unbounded temporaries.
**three-valued conditions with NULL** — A WHERE condition evaluating to NULL (neither true nor false) does not pass the filter.
**throughput vs. utilization** — Competing memory-allocator goals: throughput is the number of requests served per unit time; utilization is how efficiently the heap holds program data.
**time-triggered control** — A control design where the controller runs on a fixed sampling period, the plant evolving for at most the reaction time between control cycles; implementable and more robust than an idealized event trigger.
**TMax** — The largest two's-complement value, `2^(w−1) − 1` (bit pattern `011…1`).
**TMin** — The most negative two's-complement value, `−2^(w−1)` (bit pattern `100…0`); it is its own negation, a common source of bugs.
**token** — An atomic unit of scanner/parser input (a.k.a. word or lexeme), such as IF, LPAREN, or ID(x); tokens may carry associated data.
**tombstone deletion** — Marking a removed open-addressing slot with a sentinel that does not stop a find's probe chain but can be overwritten by a later insert.
**Top (⊤)** — A lattice's greatest element, meaning "unknown / could be anything."
**top (⊤)** — The maximal (least precise) element of a dataflow lattice; `l ⊔ ⊤ = ⊤`, and interior nodes of a "must" analysis initialize to ⊤ to stay precise.
**top-down parsing** — Parsing that starts from the start symbol and repeatedly expands nonterminals to match the input, producing a leftmost derivation.
**top-down parsing (recursive descent, LL(1))** — Parsing that builds the parse tree from the start symbol down, predicting productions from lookahead; recursive descent is the hand-written form and LL(1) uses one token of lookahead, requiring elimination of left recursion.
**topological sort / ordering** — An ordering of a DAG's vertices such that every edge (u,v) has u before v; computed by listing vertices in reverse DFS-finish order.
**total correctness** — The property that a program terminates *and* its postcondition holds (a liveness property), written `⟨α⟩P` or `[P] S [Q]` and established via a variant; stronger than partial correctness.
**total function** — A function defined for every constructor of its argument type, so it produces a result on all inputs.
**total language** — A language in which all programs terminate (e.g. System T), contrasted with partial languages like PCF and the untyped λ-calculus.
**totality** — For a function, the property that it returns a value on every valid input (no divergence or exception); enjoyed by total languages such as System T and F, where every well-formed expression terminates.
**Towers of Hanoi** — A classic recursive puzzle of moving a stack of disks between pegs, used to illustrate multiple recursive calls.
**traceability** — The ability to link requirements forward to design, code, and tests (and back), so each element's origin and rationale can be followed; valuable but costly to maintain.
**tractable / intractable** — A problem is tractable if it has an efficient (polynomial-time) algorithm and intractable if its known solutions require impractically many steps (e.g. exponential or factorial time).
**tractable vs. intractable** — Tractable problems are feasibly solvable (often polynomial time); intractable ones are not.
**transaction** — A sequence of reads and writes that must execute as a unit, delimited by `BEGIN TRANSACTION` … `COMMIT`; `COMMIT` makes its effects permanent, `ROLLBACK`/`ABORT` undoes them.
**transactional memory** — Grouping updates into a transaction whose effects a runtime makes atomic (tracking reads/writes, committing if no interference, aborting otherwise); avoids deadlock and allows more concurrency at the cost of overhead.
**transfer function** — A function describing how a program statement transforms the (abstract or concrete) state.
**transfinite induction on reduction** — The principle that to prove a property `P` of every well-typed term it suffices to show `P(M)` whenever every immediate β-reduct of `M` satisfies `P`; the practically useful form of strong normalization.
**transistor** — A fundamental circuit component acting as an electronic switch between on and off, the physical building block underlying logic gates.
**transition** — The move from one automaton state to another on reading a given input symbol.
**transition (reachability) semantics** — The meaning of a program as a binary relation `⟦α⟧ ⊆ S × S` on states; deterministic programs relate each initial state to at most one final state, nondeterministic ones possibly many.
**transition relation (→)** — The one-step relation of a transition system; s₁ → s₂ means "s₁ steps to s₂".
**transition system** — An abstract machine given by a set of states, initial and final states, and a binary transition relation `s ⟼ s′` describing step-by-step execution; deterministic if each state has at most one successor.
**transitive closure** — The smallest transitive relation containing a given relation.
**translation lookaside buffer (TLB)** — A small hardware cache of recent page-table entries; a TLB hit avoids the memory access needed to walk the page table.
**translation unit** — A single .c source file plus everything it `#include`s, compiled together into one object file.
**transparent ascription (`:`)** — Ascribing a signature so that the concrete identity of the structure's types (mentioned in the signature) remains visible to clients outside.
**trap (exception)** — A synchronous, intentional exception from executing an instruction (e.g. a system call or breakpoint); execution resumes after it.
**trap into the kernel** — The hardware transition (via a fast-syscall instruction) that raises privilege and jumps to a kernel entry point on a system call.
**Travelling Salesperson Problem** — The classic hard optimization problem of finding the shortest route that visits every city in a weighted graph exactly once and returns to the start; brute force is O(n!).
**tree** — The recursive datatype for binary trees, e.g. `Empty | Node of tree * int * tree`, carrying data at nodes; supports its own structural-induction principle.
**tree method** — Solving a recurrence by drawing the recursion as a tree, computing per-level work, and summing across all levels.
**tree pattern matching (tiling)** — Covering the IR expression tree with patterns (tiles), each pairing a target instruction with an IR-tree shape, so a valid tiling generates correct code.
**tree tiling** — Covering the IR expression tree with tiles, each a pattern corresponding to one or a few machine instructions; a full cover yields the emitted instruction sequence.
**tree traversal** — Systematically visiting every node: pre-order (Root, Left, Right), in-order (Left, Root, Right — sorted order in a BST), and post-order (Left, Right, Root).
**trie** — A tree-based dictionary keyed on sequences (e.g. strings) that merges shared prefixes to save space; used for text/web search and genomes.
**trigonometry (for graphics)** — Using sine and cosine to place points on circles and draw circular or radial patterns, such as clock hands or spokes.
**trivial FD** — An FD X → Y where Y ⊆ X; it always holds.
**true concurrency** — The property that independent steps with no data dependency may occur in either order and yield indistinguishable computations.
**true positive / false positive / true negative / false negative** — Analysis outcomes judged against ground truth: an alarm on a real fault (TP), an alarm with no fault (FP), a correct "OK" (TN), and an "OK" missing a real fault (FN).
**truncation** — Narrowing an integer by dropping high bits; equivalent to a modulo operation, correct only for small-magnitude values.
**truth (⊤)** — The nullary conjunction proposition: one introduction rule with no premises and no elimination rule (in linear logic, the additive unit whose proof consumes all current resources).
**truth table** — A table listing every combination of input truth values and the resulting truth value of a proposition.
**truth value** — The value of a proposition, either true (T) or false (F).
**Tseitin transformation** — A linear-size conversion of an arbitrary formula to an equisatisfiable CNF by introducing fresh variables for subformulas, avoiding the exponential blowup of a direct conversion.
**tuple** — A fixed-size, positionally-distinguished grouping of values, possibly of different types (e.g. `(2, 3)` : `int * int`).
**tuple (row, record)** — A single record in a relation; one horizontal entry of the table.
**tuple type** — A type built by position rather than name, e.g. `ℕ ⨉ ℕ` or `[bigint, bigint]`.
**tuple-level constraint** — A `CHECK` constraint over several attributes of the same row.
**Turing complete** — Describing a computational model powerful enough to express any computation, and thus subject to the halting-problem limitation (e.g. Java, IMP, the untyped lambda calculus).
**Turing completeness** — The property that a language can implement the same set of (partial) functions as any other universal model of computation; most practical languages share this.
**Turing equivalence** — The property that different languages can each simulate the other and so compute exactly the same number-theoretic functions, making their halting problems equally unsolvable.
**Turing machine** — Alan Turing's general theoretical model of computation — a finite control reading and writing an unbounded tape — that defines what it means to compute and underpins the Church–Turing thesis.
**two's complement** — The signed integer encoding used by modern hardware, where the MSB carries weight −2^(w−1); negation is bitwise complement plus one.
**two's complement (B2T)** — Signed integer encoding in which the most-significant bit carries weight `−2^(w−1)`; the negative of `x` is obtained by flipping all bits and adding one (`−x = ~x + 1`).
**two's-complement addition (TAdd)** — Signed addition whose bit-level behavior is identical to unsigned addition (the carry-out is discarded).
**two-phase locking (2PL)** — The rule that in every transaction all lock acquisitions precede all unlocks; it guarantees conflict-serializable schedules. Strict 2PL holds all locks until commit/rollback, also ensuring recoverability.
**type** — A classification of data giving meaning to bits and enabling error detection, overloading, and optimization; base/primitive versus constructed/compound types.
**type abstraction (Λα. t)** — A term abstracting over a type, making its body generic in the type variable α.
**type abstraction and type application** — `Λ(t) e` abstracts over a type variable (System F) and `e [τ]` instantiates a polymorphic expression at a type, substituting into the result type.
**type annotation** — Writing an abstraction as λx:T. t to record the argument's type, enabling the term to be typed.
**type application (type instantiation)** — Supplying a concrete type to a type abstraction, t T, yielding the term with α replaced by T.
**type candidate / candidate assignment** — A set of closed terms closed under head expansion (Girard) or a binary relation with that closure (Reynolds); a candidate assignment maps each free type variable to a candidate, resolving impredicativity in the logical-relation.
**type cast vs. coercion** — A cast is an explicitly written type conversion; a coercion is one the compiler inserts implicitly; the type checker discards coercions by making conversions explicit in the IR.
**type checking** — Assigning a type (or an error) to each expression and using types to rule out certain errors, verifying operations are applied to compatible operands.
**type class** — A mode of using signatures that describes a type equipped with a collection of operations (e.g. `ORDERED` = a type with a `compare`); usually the type is descriptive rather than abstract.
**type constructor** — An operator on types (e.g. `list`, `option`, `->`, `*`) that builds compound types from other types.
**type equivalence** — When two types are considered the same: nominal equivalence (same declared name) versus structural equivalence (same constructor and component types).
**type erasure** — Deleting type abstractions and annotations from a typed term, leaving a functionally equivalent untyped lambda term.
**type error** — Interpreting or combining bits inconsistently with their type (e.g. reinterpreting a char array's bytes as an int).
**type hierarchy (subtyping)** — The ordering among type qualifiers, where lower types have fewer values and more properties (e.g. `@Present ≤ @MaybePresent`).
**type inference** — Deducing types without explicit annotations; decidable for ML-style let-polymorphism, undecidable for System F.
**type inference as a logic program** — Because typing rules are syntax-directed, rewriting them as a Prolog program makes unification perform Hindley–Milner-style inference on the remaining type equations.
**type introduction** — Rules assigning types to newly created values (e.g. `Optional.of(...)` yields `@Present`).
**type narrowing** — Using a runtime check (e.g. `typeof x === "bigint"`) so the type checker refines a union-typed value to a single member type within that branch.
**type qualifier** — An annotation refining a base type (e.g. `@Present`); a type = type qualifier + base type.
**type reconstruction (typability)** — Deciding whether an untyped term is the erasure of some well-typed term; undecidable for full System F, motivating let-polymorphism.
**type rules** — Rules specifying which operations are illegal (e.g. `Optional.get()` only on a `@Present` receiver).
**type safety (type soundness)** — The property that well-typed programs do not commit type errors / get stuck; Milner: "well-typed programs cannot go wrong."
**type safety / type soundness** — The property, proved via progress and preservation, that a well-typed program cannot get stuck ("well-typed programs don't go wrong"); the central link between a language's statics and dynamics.
**type subsumption** — A silent coercion rule allowing a value of one type to be used at another (e.g. the indefinite pointer type `any*` of `null` used as `τ*` for any `τ`).
**type synonym** — An alias giving a new name to an existing type (e.g. `type int2 = int * int`).
**type synthesis vs. type checking (mode)** — Synthesis computes a type from an expression given `Γ` (used when the type is unknown); checking compares an expression against a known expected type; the choice of mode is guided by mode/bidirectional checking.
**type system** — A language's rules for assigning types to terms and statically checking programs, ruling out different classes of errors.
**type theory** — The systematic study of abstractions in which types classify different forms of data and computation.
**type variable** — An identifier (e.g. `'a`, `t`) standing for an arbitrary type, declared in a type context and used to express polymorphic types.
**type variable (α)** — A placeholder type that a polymorphic term abstracts over and that gets instantiated with concrete types.
**type-based alias analysis (alias class)** — Inferring non-aliasing from types and offsets: each address is given an alias class, and two addresses may alias only if they share type and offset; sound for type-safe languages.
**typed but unsafe** — C associates types with data but permits casts bypassing type checking, so type safety is not enforced.
**typed quantifiers (`∃x:τ.A`, `∀x:τ.A`)** — First-order quantifiers over a data type `τ`; operationally `∃R`/`∀L` send a witness term and `∃L`/`∀R` receive a fresh parameter, enabling computation over integers, strings, etc.
**typedef** — A C mechanism giving a synonym (alias) for an existing type, commonly used to name struct types.
**types as specifications / behavioral / extensional** — The view that types are inherently behavioral specifications of a program's extensional I/O behavior, so membership and equality are defined by observing evaluation rather than by syntactic form.
**types of misses** — Compulsory (cold) misses on first access, conflict misses when blocks contend for a set, and capacity misses when the working set exceeds the cache.
**typestate / protocol state machine** — Modeling an object's protocol as a state machine whose transitions correspond to method calls and whose state changes correspond to field changes, with classes/methods annotated by state.
**typing context (Γ)** — A map from variables to their types, extended as `Γ, x : T` when entering an abstraction's body.
**typing context (Γ) / type environment** — A finite map from variables to their types recording the hypotheses under which an expression is typed; extended when entering a binder's scope and consulted to type variable occurrences.
**typing judgment** — `Γ ⊢ e : τ`, asserting that expression `e` has type `τ` in variable context `Γ`.
**typing judgment / typing relation** — The relation Γ ⊢ t : T, "under context Γ, term t has type T", defined by inference rules.
**UDP** — User Datagram Protocol: a thin transport over IP providing unreliable, unordered, connectionless datagram delivery, suited to streaming media and DNS.
**UMax** — The largest unsigned value, `2^w − 1` (all ones).
**UMin/UMax/TMin/TMax** — The extreme representable values: minimum/maximum unsigned and minimum/maximum two's-complement signed integers for a bit width.
**unbiased estimator** — An estimator whose expected value equals the true parameter, so it is correct on average.
**unconditional vs. conditional jump** — `jmp` always transfers control; conditional branches (jCC) transfer control only when a condition holds.
**uncountable set** — A set too large to be listed — no bijection with the naturals exists (e.g. the reals).
**undecidability** — The fact that some problems (and almost any interesting static property) cannot be decided by a procedure that always terminates and is both sound and complete.
**undecidability (of verification)** — The fact that most deep program properties are undecidable, so there is no push-button verifier: the prover needs programmer hints (invariants, variants), and finding the right hints is hard.
**under-approximation** — An analysis in which every reported defect is real, so it has no false positives but is subject to false negatives.
**Unicode** — A standard using 1–4 bytes per character to encode a large range of languages and emoji via code points.
**unification** — Finding a substitution `θ` making two terms equal (`s ≐ t / θ`, with `[θ]s = [θ]t`); Robinson's algorithm computes a most general unifier when one exists.
**uniform substitution (US)** — The mechanism that instantiates concrete axioms by uniformly replacing predicate, function, and program symbols with formulas/terms/programs, so "syntactic uniform substitution = semantic replacement"; makes soundness a check on a single literal formula rather than on a schema.
**uniform substitution lemma** — The soundness lemma stating that applying an admissible uniform substitution syntactically matches performing the corresponding semantic replacement (in the adjoint interpretation); the crux of US soundness.
**uniform substitution rule (US)** — The single proof rule that soundly applies a uniform substitution to a proved formula (or whole proof): any US instance of a valid formula is valid, replacing schema-instantiation with an explicit checkable step.
**uniformity assumption** — Assuming an attribute's values are uniformly distributed when estimating selectivity.
**union** — A C aggregate sized to its largest member in which only one member is valid at a time; used to reinterpret a value's bit pattern or as a sum type.
**union (∪)** — The set of elements in A or B (or both); in relational algebra, combining two union-compatible relations.
**union bound** — P(A₁∪…∪Aₙ) ≤ Σ P(Aᵢ): the probability at least one event occurs is at most the sum of their probabilities.
**union type** — A type formed from two sets containing every object in either one (e.g. TypeScript `string | bigint`).
**union-find** — The disjoint-set data structure maintaining equivalence classes with near-constant `O(α(n))` amortized cost per operation; used to implement congruence closure and unification-based (Steensgaard) pointer analysis.
**Unique Implication Point (UIP)** — A node on all paths from the current decision level's decision to the conflict; the first UIP (closest to the conflict) gives the shortest useful learned clause.
**unique ownership** — The model where exactly one smart pointer owns a resource, enforced by disabling copying.
**uniqueness of identity proofs (UIP)** — The principle that any two elements of an identity type are (judgmentally) equal; holds for the extensional equality type.
**uniqueness of normal forms** — The consequence of confluence that an expression has at most one normal form (up to renaming), so the result of a computation is well-defined.
**uniqueness of types** — In System T, a given expression has at most one type in a given context (aided by type annotations on abstractions).
**unit (`1`)** — The multiplicative unit of concatenation/tensor in (sub)structural logic, corresponding to the empty context; provable only with no resources, and its left rule simply deletes a `1`.
**unit propagation** — When a clause reduces to a single literal, that literal must be assigned to satisfy the clause; a core DPLL step.
**unit resolution / Boolean Constraint Propagation (BCP)** — Repeatedly applying resolution with unit (single-literal) clauses to force assignments until a fixed point; the workhorse of SAT solvers.
**unit test** — A test checking one function in isolation on chosen inputs, re-runnable; an example dynamic analysis for checking a specification.
**unit testing** — Testing an individual component (method or class) in isolation against its specification, typically written by developers alongside the implementation.
**unit type (`1`)** — The nullary product type corresponding to logical truth ⊤, with sole value `⟨⟩` (`triv`) and no destructor.
**universal closure** — Prefixing a formula's free variables with universal quantifiers before running quantifier elimination, so proving validity reduces to deciding a closed formula.
**universal generalization** — The inference rule generalizing a conclusion about an arbitrary element to a "for all" statement.
**universal quantifier (∀)** — ∀x P(x) asserts P(x) is true for every x in the domain; expressed in SQL via `NOT EXISTS` and in Ruby by `all?`.
**universal quantifier (∀I / ∀E)** — `∀x.A(x)`; introduced by proving `A(a)` for a fresh parameter `a` (subject to the eigenvariable condition) and eliminated by instantiating `A(t)` for any element `t`.
**universal type (∀α. T)** — The type of a term generic in α; e.g. the polymorphic identity has type ∀α. α → α.
**universally quantified type** — `∀(t. τ)`, the type of a value that takes a type as an argument; e.g. the polymorphic identity has type `∀(t. t → t)`.
**Unix I/O** — The kernel's general, async-signal-safe operations on all files (open/close, read/write, stat, lseek), on which higher-level I/O is built.
**unnesting** — Rewriting a nested query as an equivalent flat SELECT-FROM-WHERE (sometimes needing a left outer join or aggregation).
**unrepeatable read** — Re-reading a value within a transaction and getting a different result because another transaction changed it.
**unrestricted assumptions (Γ)** — The ordinary, non-linear assumptions (left of the semicolon in `Γ ; Δ ⊢ C`), usable arbitrarily often; the single-conclusion intuitionistic form of linear logic combines them with linear ones.
**unrolling the recurrence** — Expanding a recurrence's terms repeatedly to detect a pattern for its closed-form solution.
**unsigned encoding (B2U)** — Representation of non-negative integers as plain binary, `B2U(x) = Σ xᵢ·2ⁱ`, giving range `0 … 2^w − 1`.
**unsigned integer** — An encoding of only non-negative values using base-2 weights; range 0 to 2^w − 1.
**untyped (pure) lambda calculus** — The lambda calculus with no type system; every syntactically well-formed term is admitted.
**unwind / unfold axioms** — Dynamic-logic axioms `[while(Q) α]P ↔ [if(Q){α; while(Q) α}]P` (and the `[α*]` form) that unroll a loop one iteration; sufficient only for loops with a fixed finite bound.
**unwinding** — Unrolling a loop a fixed number of times and adding an unwinding assertion flagging executions needing more iterations than the bound.
**up-shift ↑ (return / let val)** — In call-by-push-value, `↑A⁺` is the computation type embedding a value: `return V` introduces it and `let val x = M in N` binds the returned value.
**upcasting / downcasting** — Casting up a hierarchy (base pointer from a derived object) is safe; casting down is dangerous, where `dynamic_cast`'s run-time check matters.
**use (A↓)** — The judgment "A may be used," holding when `A` is a hypothesis or obtained from a hypothesis by elimination rules; uses are built top-down (dual to a verification `A↑`).
**use / def sets (liveness)** — For liveness analysis, `Use[b]` is the set of variables used in a block before any local definition and `Def[b]` the set the block defines; the backward transfer function is `in[b] = Use[b] ∪ (out[b] − Def[b])`.
**use case** — A structured description of a system's interaction with actors, capturing scope, primary actor, stakeholders and interests, preconditions, success guarantees, the main success scenario, and extensions.
**used expressions** — A backward PRE pass (liveness for expressions) that removes temporary assignments whose result is not used later; the final transformation inserts a fresh temporary at each `latest ∩ used` block.
**user mode vs. kernel mode** — A processor mode bit restricting which instructions and memory a process may access; system calls and exceptions transition to kernel mode.
**user story** — A short, user-centered statement of a desired capability, grouped into larger "epics" and managed on a board; a lightweight alternative to full use cases.
**V vacuous axiom** — `P → [α]P` when `P` does not depend on any variable that `α` changes; a fact with no free variables bound by `α` survives running `α`.
**vacuous truth** — An implication true because its hypothesis is false, so the conclusion is irrelevant.
**Valgrind** — A tool used to detect memory errors and leaks (`valgrind --leak-check=full`).
**valid bit** — A per-cache-line bit indicating whether the cached block holds meaningful data.
**validation** — Determining whether the system meets the needs of its users ("did we build the right system?"); targets flaws in the specification, e.g. incorrect requirements capture.
**validity** — A formula is valid iff every interpretation models it (equivalently ¬F is unsatisfiable); a Hoare triple is valid when the proposition it states is true.
**validity / of-course (`!A`, "bang")** — Girard's device for reusable resources: if `A` is provable with no resources it may be used arbitrarily often, internalized as `!A` with an "A valid" antecedent (a renewable resource).
**valuation (variable map)** — A function mapping variable names to values, threaded through the semantics of a language with variables.
**valuation / semantics of terms** — `Iν⟦θ⟧`, the real value of term `θ` in state `ν`, defined inductively over the structure of the term.
**value** — A fully evaluated result that cannot be reduced further (e.g. `13`, `"hello"`, an abstraction); the final result of evaluation.
**value binding** — An association of an identifier to a value, written `[v/x]`; substituting the value for free occurrences of the variable (respecting scope) implements it.
**value constructor** — A tag introduced by a datatype declaration (e.g. `nil`, `::`, `Node`, `SOME`) used to build and pattern-match values of that type.
**value context** — A calling context represented by the incoming abstract state (argument values) to a function; gives the same precision as arbitrary-length call strings and always terminates, though it is still expensive.
**value judgment / evaluation** — The judgment "M value" marking a computation result; because results are values, functional computation is called evaluation, and `λx.M` is a value (no reduction under λ).
**value numbering** — A local technique that gives each computed value a number and maps variables to their current values, so two expressions with the same value number are common subexpressions that can be reused; extends to constant folding.
**value restriction** — The ML requirement that only syntactic values receive polymorphic type; it prevents the unsoundness of sharing a polymorphic reference cell across incompatible instantiations.
**value semantics** — The treatment of primitive types (`int`, `double`, `boolean`) and Java Strings in which a variable holds the value itself, so assignment copies the value and the two variables are independent; contrasted with reference semantics.
**value types vs. computation types** — In call-by-push-value, positive types `A⁺` (products, sums, `1`, `↓A⁻`) type values and hypotheses range over values, while negative types `A⁻` (functions, records `&`, `↑A⁺`) type computations.
**value-driven testing** — Focusing on the tests with the biggest benefit per unit cost, where value derives from finding severe, common, distinct, and general bugs.
**variable** — A placeholder standing for another term or expression, given meaning by substitution; an occurrence may be free or bound.
**variable capture** — The error of a substitution turning a previously free variable into a bound one, changing meaning; avoided by renaming.
**variance (Var(X))** — A measure of spread, 𝔼[(X − 𝔼[X])²] = 𝔼[X²] − 𝔼[X]², quantifying how far X typically falls from its mean.
**variant / termination metric** — A nonnegative quantity (an integer expression or a bound on remaining iterations) that strictly decreases on each loop iteration or recursive call while staying ≥ 0, witnessing termination; also called a variant function.
**variant expression (with big steps)** — A generalization of the variant predicate to an expression paired with an invariant, closely matching a VC generator for `while` loops and permitting decreases larger than one.
**variant rule (`var`)** — The total-correctness proof rule for `while` loops using an invariant `J` plus a variant term `p` that strictly decreases and stays `≥ 0`.
**vector** — A dynamically resizable, contiguous array: O(1) random access and amortized-constant append, but linear-time middle insertion; grows by reallocating and copying.
**vector clock** — The data structure (per-thread logical clocks) used to track the happens-before relation when detecting data races dynamically.
**vectorization / SIMD** — Executing a parallelizable inner loop as single-instruction-multiple-data operations while an outer loop runs sequentially (inner-loop parallelism).
**velocity** — The amount of backlog a team completes per sprint, used to forecast future capacity.
**verifiable rewards** — Using compilation, static analysis, and unit tests as checkable signals to evaluate or train LLM-generated code.
**verification** — Determining whether a system meets its specification ("did we build the system right?"); targets flaws in design or code (contrasted with validation).
**verification (A↑)** — A proof whose evidence has a normal form, proceeding by introduction rules and analyzing only the subformulas of `A`; the meaning of a proposition is given by its verifications.
**verification condition (VC)** — A purely logical proposition, extracted from a program plus its contracts, whose validity establishes the program's correctness; discharged by automated theorem provers.
**verification condition (VC) generation** — Mechanically producing FOL implications (from weakest preconditions / invariants) whose validity, discharged by an SMT solver, establishes correctness; loop invariants must be supplied externally.
**verification condition generation (VCGen)** — Mechanically producing a single logical formula whose validity implies the correctness of the whole program, making axiomatic semantics practical and solvable by SAT/SMT solvers.
**verificationist point of view** — The position that the meaning of a connective is fixed by its introduction rules, from which the soundness and completeness of its elimination rules is derived.
**verifier** — An algorithm that checks whether a candidate solution is correct; a problem can be easy to verify even when hard to solve (the basis of NP).
**very busy (anticipable) expressions** — A backward must-analysis of expressions evaluated on every path leaving a point, enabling code hoisting.
**viable prefix** — A prefix of a right-sentential form not extending past the rightmost handle; exactly the possible LR stack contents, and the set of them is a regular language.
**virtual / physical page (page frame)** — A virtual page may be unallocated, cached in a physical page, or uncached on disk; a physical page (page frame) is a page-sized DRAM slot.
**virtual address space** — The set of addresses a process can use; each process has its own, providing isolation and protection.
**virtual destructor** — A destructor declared `virtual`, needed because static dispatch of destructors through a base pointer is almost always a bug.
**virtual function** — A member function marked `virtual` to request dynamic dispatch; unlike Java (all virtual by default), C++ lets you choose.
**virtual memory** — An abstraction giving each process its own private virtual address space, decoupled from physical memory through address translation.
**virtual memory (VM)** — An abstraction giving each process a large private address space stored on disk and cached in DRAM, which uses memory efficiently, simplifies management, and isolates and protects processes.
**virtual substitution** — An efficient quantifier-elimination technique for low-degree polynomials that substitutes symbolic test terms — including infinitesimals and infinities — for quantified variables instead of computing explicit roots.
**virtual vs. physical address** — Programs use virtual addresses; physical addresses name actual hardware memory locations and are invisible to programs.
**visitor pattern** — A design grouping a pass's code in one class and using double dispatch (`node.accept(visitor)` then `visitor.visit(node)`) to select behavior by both node type and pass.
**Visitor pattern** — A common AST-walker architecture: a Visitor class has a `visitX` method per node type; the default descends the tree and overriding `visitX` does something interesting for node type `X`.
**vm_area_struct** — The Linux structure describing one contiguous area of a process's virtual memory (start, end, permissions, flags), consulted by the fault handler to distinguish normal faults, segmentation faults, and protection errors.
**void* (generic pointer)** — A raw address pointer with no element type, used with casts to build generic data structures.
**volatile / std::atomic** — Language annotations (Java `volatile`, C++ `std::atomic<>`) marking a variable as synchronization so accesses to it do not count as data races.
**VPN / PPN / page offset** — A virtual address splits into a virtual page number (translated) and page offset (unchanged); a physical address is a physical page number plus the same offset.
**VPN / VPO / PPN / PPO** — The virtual page number and offset and the physical page number and offset; the offsets are identical because translation replaces only the page number.
**vptr (virtual table pointer)** — A hidden per-object member pointing to its class's vtable, set by the constructor so a call becomes `p->vtable[i](p, ...)`.
**vtable (virtual method table)** — A per-class table of pointers to the class's virtual method implementations, kept at consistent offsets in subclasses so dispatch is an O(1) indirect call.
**wait / waitpid** — Calls by which a parent suspends until a child terminates and reaps it, retrieving the exit status; `waitpid` can target a specific child and poll without blocking.
**wait() / waitpid()** — Calls a parent uses to wait for and reap a terminated child and collect its exit status; the process analog of `pthread_join`.
**walkthrough** — An informal review with no advance preparation in which the author leads peers through the artifact and there is no formal follow-up; low-cost and valuable for education.
**watched literals** — An efficient BCP implementation (from zChaff) watching two unassigned literals per clause, avoiding a scan of every clause on each assignment.
**waterfall model** — The classic linear development sequence (requirements, design, coding, testing, operation and maintenance); a useful reference limited by its lack of feedback between phases.
**weak typing** — Doing neither adequate static nor dynamic checks, so some programs pass checking yet can corrupt memory at run time (C/C++).
**weakening** — The admissible structural rule that adds an unused hypothesis to the context (`Γ ⊢ C` gives `Γ, A ⊢ C`), permitting an assumption to go unused.
**weakest precondition (wp)** — The most general precondition `wp(S, Q)` (equivalently the weakest formula guaranteeing `[S]Q`) under which `S` establishes `Q`; `{P} S {Q}` holds iff `P ⇒ wp(S, Q)`, and it is the dominant approach in verifiers.
**weighted graph** — A graph in which each edge carries a numeric weight w(e).
**well-founded / multiset ordering** — Orderings supporting terminating search: a well-founded measure has no infinite strictly-decreasing chain; the multiset ordering (Dershowitz–Manna) replaces an element by finitely many strictly smaller ones and is well-founded if the base order is.
**well-founded induction** — The general induction technique subsuming structural induction, induction on tree size or depth, and simple/complete induction on the naturals; justified by a well-founded ordering (one with no infinite descending chain).
**well-typed / type-checks** — An expression is well-typed if it has a type; only well-typed expressions are evaluated, otherwise a type error is reported.
**well-typed term** — A term to which some type can be assigned (⊢ t : T in the empty context).
**WHILE language** — A simple procedural language (assignment, sequencing, conditionals, while loops, integer variables, arithmetic/relational expressions, no explicit I/O) used as a sandbox for illustrating semantics and analyses.
**while program (nondeterministic)** — The imperative language of dynamic-logic semantics: `x := θ`, test `?Q`, sequential `α; β`, conditional, `while(Q) α`, nondeterministic choice `α ∪ β`, and nondeterministic repetition `α*`.
**while-loop semantics (bounded unrolling)** — `while P α` defined via an indexed relation counting iterations: zero iterations require the guard false, and `n+1` requires the guard true, one body execution, then `n` more.
**WHILE3ADDR** — A three-address-code intermediate representation of WHILE, simpler and more uniform than the AST, with instructions like `x := y op z`, `goto n`, and `if x opr 0 goto n`.
**white-box (structural / glass-box) testing** — Testing with visibility into internal code structure, enabling direct testing of internals and code-coverage analysis (contrast black-box testing).
**whitebox fuzzing** — Concolic testing applied to test-input generation, systematically covering paths using the program's internal structure (e.g. SAGE).
**Why3** — A deductive-verification platform combining the WhyML programming language with a toolchain that generates VCs and dispatches them to automated provers (Z3, CVC, Alt-Ergo) or interactive provers (Coq).
**WhyML** — Why3's programming language (derived from OCaml), supporting functional and imperative code with `let ref` mutable bindings, `while` loops with `invariant`/`variant`, and `requires`/`ensures` contracts.
**wildcard** — The pattern `_`, which matches any value without binding it and may appear multiple times in a pattern.
**will-be-available expressions** — A forward PRE pass, assuming an expression is computed wherever anticipated, that gives where it will already be available; `earliest(b) = anticipated.in[b] − available.in[b]` marks the earliest safe placement.
**winning region** — The set of states from which a given player has a winning strategy; dGL/GL formulas denote winning regions, computed as fixpoints of monotone set operators.
**winning strategy** — A policy for a player that guarantees reaching (Angel) or avoiding (Demon) the goal regardless of the opponent's choices.
**WITH clause (common table expression)** — Names a temporary table computed by a subquery for use in the main query; common in data pipelines.
**with high probability (w.h.p.)** — A guarantee that an event holds with probability approaching 1 (failure probability shrinking), typically via concentration bounds.
**without loss of generality (WLOG)** — A phrase noting that one representative case covers others by symmetry, so only that case need be argued.
**witness / argmax** — The record(s) achieving a min or max value; finding the max is easy, but returning the tuple attaining it needs a join or `HAVING`.
**word** — A multi-byte data unit; byte ordering concerns how the bytes within a word are arranged, and shifts by an amount ≥ the word size are undefined.
**word / word size** — The fixed length used for addresses on a machine; by convention address size equals word size (x86-64 uses 64-bit/8-byte words).
**word embedding** — A vector representation of a word (e.g. from word2vec) on which arithmetic can reveal synonyms and analogies, and which can also encode bias present in the training text.
**work** — The total number of steps or operations a computation performs, equal to its sequential running time on a single processor.
**work law / span law** — P·T_P ≥ T₁ (parallel time cannot beat total work over P) and T_P ≥ T∞ (finitely many processors cannot beat infinitely many).
**work — T₁(n)** — The total running time on a single processor; the cumulative work all processors must perform.
**work, span, latency, throughput (parallel measures)** — Measures of parallel complexity: work is total steps ignoring parallelism, span is the longest dependency path (reaction time under maximal parallelism), latency is the steps to the first output, and throughput the steps to the whole output for a delay-free client.
**working set** — The set of pages a process actively uses over a period; thrashing occurs if it exceeds physical memory.
**worklist algorithm** — The iterative dataflow solver that maintains a set of nodes whose inputs have changed and reprocesses only their successors (re-queuing when a result changes) until a fixed point is reached; a refinement of naive round-robin iteration (Kildall's algorithm).
**worklist of contexts** — The interprocedural solver that iterates over (function, context) pairs, propagating results to callers over the context-sensitive call graph.
**worklist processing order** — The order in which the worklist algorithm visits nodes; any order is valid, but topological sort and reverse postorder explore loops inside-out and converge faster.
**worst-case complexity** — The maximum number of steps an algorithm takes over all inputs of size n.
**wrapper class** — An object type that wraps a primitive value (e.g. Java's `Integer`, `Double`, `Boolean`, `Character`) so it can be stored in a collection, which can hold only objects.
**wrapper function** — A non-recursive outer function that sets up the initial arguments and then calls the true recursive helper.
**write policies** — Write-through updates memory on every write; write-back defers writes and uses a dirty bit to mark modified blocks written on eviction.
**write-allocate vs. no-write-allocate** — On a write miss, write-allocate loads the block into the cache first while no-write-allocate writes straight to memory.
**write-through vs. write-back** — On a write hit, write-through immediately propagates to the next level, while write-back defers until the line is evicted (tracked by a dirty bit).
**x86-64** — The 64-bit target architecture: 16 general registers, 64-bit addresses, SSE registers, and register-based calling conventions.
**XMM registers / SSE / AVX** — Floating-point values live in XMM registers operated on by SSE/AVX scalar and SIMD instructions; FP arguments pass in `%xmm0…`, results return in `%xmm0`, and all XMM registers are caller-saved.
**Y combinator** — A λ-term `Y = λh.(λx. h (x x))(λx. h (x x))` with the fixed-point property `Y f ≡β f (Y f)`, letting untyped λ-terms express general recursion (and diverge).
**yield** — The statement a Ruby method uses to invoke the block it was passed, transferring control to the block and then resuming.
**zero analysis** — An introductory dataflow analysis tracking for each variable whether it is definitely zero, definitely non-zero, or unknown (⊤); motivates division-by-zero and null-pointer checking.
**zero extension** — Widening an unsigned value by filling zeros in the new high positions (contrast sign extension); on x86-64, any 32-bit register write zero-extends into the full 64-bit register.
**zero-based indexing** — The convention that the first element of an array or list is at index 0, so valid indexes run from 0 to length − 1.
**Zig-zag completeness (ZZC)** — The closure condition `R ∘ Rᵒᵖ ∘ R ⊆ R` required of relational candidates, ensuring the induced equality is transitive (and, with symmetry, an equivalence).
**β-equivalence** — The equivalence relating (λx. t) t₂ and t[t₂/x], generated by β-reduction.
**β-reduction** — The rule (λx. t) t₂ → t[t₂/x]: applying a function substitutes the argument for the bound variable in the body.
**ε-transition** — An edge taken without consuming an input symbol, allowed only in NFAs.
**φ-function (phi function)** — A pseudo-instruction at a control-flow merge, `x := φ(x1, x2, …)`, selecting the value from whichever predecessor control arrived from; encoded as an `ite` and removed before code emission.
