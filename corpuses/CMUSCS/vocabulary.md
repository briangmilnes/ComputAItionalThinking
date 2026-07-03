# CMU SCS — Deduplicated Vocabulary

A single deduplicated glossary of 1644 distinct concepts, merged and alphabetized across the vocabularies of all 17 CMU SCS courses (now including 15-110 Principles of Computing and 15-112 Fundamentals of Programming).

**10x engineer** — The disputed notion of an outlier "rock-star" developer far more productive than peers; discussed skeptically alongside team-composition effects.

**2D list** — A list of lists used to represent a grid or table of rows and columns; element `grid[r][c]` selects row r, column c.

**A/B testing** — Comparing two variants in production by splitting users, to measure the effect of a change empirically.

**abstract assembly** — A three-address, temporary-based instruction form with an unbounded supply of temporaries and simple operations (moves, binops, loads/stores, jumps), used as the IR for analysis, optimization, and instruction selection before real registers are assigned.

**abstract binding tree (ABT)** — An abstract syntax tree enriched with binding information: arguments may be abstractors `x.t` that bind variables within a subtree, giving a uniform account of free/bound variables, α-equivalence, and capture-avoiding substitution.

**abstract machine** — A transition-system dynamics whose states are structured objects (e.g. a control stack paired with an expression) rather than bare expressions, stepping one transition at a time until a final state; used to model control and execution precisely.

**abstract state space exploration** — The view of static analysis as systematically and exhaustively examining an abstraction of a program's state space, where the abstraction covers all program information.

**abstract summary** — A function summary that symbolically represents a function's effect on an abstract input (e.g. `x:α → result:α`) rather than enumerating concrete input cases.

**abstract syntax** — The grammar of programs studied independently of parsing, keeping only statements, expressions, and operands while ignoring parentheses, keywords, and other concrete-syntax conveniences.

**abstract syntax tree (AST)** — A tree (first-order term over operators of fixed arity) capturing the hierarchical structure of a program after parsing/elaboration, eliminating the ambiguity of concrete syntax; the substrate for many analyses.

**abstract type** — A type named in a signature without exposing its implementation, so clients manipulate it only through the signature's operations, making the signature prescriptive.

**abstract vs. concrete state** — The separation between the high-level model a client reasons about and the efficient representation the implementation uses, connected by a representation invariant.

**abstraction** — Eliding the details of a specific implementation to capture only the semantically relevant aspects, and reasoning at the appropriate level of detail; the core idea underlying every program analysis and much of design.

**abstraction and composition** — The two organizing themes of language design: abstractions hide information and enforce guarantees, and composition combines programs without breaking those abstractions.

**abstraction function** — A function α mapping each concrete program state to a lattice element, relating concrete execution to analysis results (e.g. `α(0)=Z`, `α(n≠0)=NZ`), lifted from values to tuples.

**accumulator** — An extra function argument that builds up the final result during recursion, often enabling a tail-recursive and more efficient formulation.

**Ackermann's function** — A fast-growing total function that is not primitive recursive, yet definable in System T because the recursor may return values of higher-order type.

**action** — A label on a process-calculus transition: a signal (write), a query (read), or the silent action ε; complementary actions interact when two processes take them together.

**actor** — An external entity (user or system) that interacts with the system under design; may be primary, supporting, or offstage.

**ad hoc vs. parametric polymorphism** — Strachey's distinction: ad hoc polymorphism supplies different implementations at different types (e.g. `+` on ints vs. floats), whereas parametric polymorphism uses one implementation behaving uniformly at all types (e.g. the identity function).

**additive vs. multiplicative connectives** — In linear logic, additive connectives (`&`, `⊕`, units `⊤`, `0`) share the context between premises and encode choice, whereas multiplicative connectives (`⊗`, `⊸`, unit `1`) split the context and encode simultaneous combination.

**address space** — An ordered set of nonnegative addresses; a process's virtual address space has N = 2ⁿ addresses and the physical space M = 2ᵐ.

**address translation** — The MMU's mapping from a virtual address to a physical address (or ∅ if not resident), splitting the virtual address into a page number and page offset.

**address-of (&)** — An operation taking the address of a large-type expression without dereferencing it, used to unify field access, pointer dereference, and array indexing when computing a location.

**address-taken analysis** — A fast, ultra-conservative, flow- and context-insensitive pointer analysis assuming any pointer can point to any variable whose address is ever taken; O(n) but very imprecise.

**addressing mode `D(Rb,Ri,S)`** — The general x86-64 memory-operand form computing `Mem[Reg[Rb] + S·Reg[Ri] + D]` from a displacement, base register, scaled index register, and scale S ∈ {1,2,4,8}.

**adequacy** — The property that the canonical forms of designated logical-framework types are in bijection with the syntactic objects of the formalism being represented.

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

**Agile / Agile Manifesto** — A family of iterative practices valuing individuals and interactions over process, working software over documentation, customer collaboration over contract negotiation, and responding to change over following a plan.

**algebraic datatype** — A type defined as a sum of value constructors, each optionally carrying data; the basis for lists, trees, options, and user-defined structured data.

**algebraic simplification** — Replacing an operation by a cheaper equivalent using algebraic identities (e.g. `B+0 ⇒ B`, or a multiply by a constant by a shift).

**algorithmic equivalence checking** — A syntax-directed algorithm that decides definitional equivalence of well-typed terms, terminating by induction on the type (and on neutral terms), sound and complete with respect to definitional equivalence.

**algorithms vs. code** — The distinction that we execute code, not algorithms: a correct algorithm can still be a buggy program because of concrete effects like integer overflow and undefined behavior.

**alias analysis** — Determining which pairs of pointers/variables may refer to the same memory location; essential because memory optimizations are sound only between accesses that provably do not alias.

**aliasing** — The existence of multiple names (variables, fields, index terms) for the same location, which can invalidate an analysis's reasoning or make naive substitution for updates unsound.

**alignment** — Placing data at an address that is a multiple of its size; a struct's alignment is the largest field alignment, and both its start and size must be multiples of it.

**allocated vs. free block** — In a heap allocator, a block currently in use by the application (carrying a payload) versus one available for allocation, distinguished by an allocated bit.

**allocation-based alias analysis** — Inferring non-aliasing from allocation sites: pointers produced by different `alloc`/`alloc_array` calls cannot alias; interprocedural since allocation may occur in another function.

**almost-equal comparison (epsilon)** — Testing two floating-point numbers for approximate equality by checking that their absolute difference falls below a tiny threshold ε, rather than using `==`, which is unreliable for approximated floats.

**alpha-equivalence (α-conversion)** — The congruence equating terms that differ only in the names of their bound variables; terms are identified up to α-equivalence, so a bound variable can always be chosen fresh.

**alphabet (Σ)** — A nonempty finite set of characters (terminals); `Σ*` is the set of finite strings over it, with ε the empty string.

**alternative conjunction / with (A & B)** — Additive conjunction (external choice), provable when A and B are each achievable from the same current resources, but forcing a choice of one on use.

**ambiguous dependence** — A data dependence through pointers or memory that cannot be resolved statically even with pointer analysis, forcing the scheduler to be conservative or to reorder speculatively.

**ambiguous grammar** — A grammar under which some string has more than one parse tree; ambiguity (e.g. expression or dangling-else syntax) must be resolved, often via precedence and associativity.

**Amdahl's law** — The maximum overall speedup from optimizing a fraction P of a program by factor S is `1/((1−P) + P/S)`; it formalizes why optimizing a small part yields limited overall gain.

**amortized cost** — Averaged per-operation cost over a sequence of operations (e.g. the two-list functional queue achieves constant amortized enqueue/dequeue).

**analysis maturity model** — A five-level scale for an organization's adoption of static analysis, from typed languages and ad-hoc tool use up to continual optimization of the analysis infrastructure.

**Andersen's (inclusion-based) points-to analysis** — A flow- and context-insensitive analysis with one points-to node per location that emits an inclusion (subset) constraint per statement and iterates to a fixed point; worst-case O(n³).

**Angel** — The existential/verifying player in a hybrid game, who resolves the diamond (angelic) choices and tries to reach the goal; a `⟨α⟩P` formula asserts Angel has a winning strategy.

**annotation-based analysis** — Analysis driven by programmer annotations (e.g. `@NonNull`/`@Nullable`) checked like a pluggable type system, enforcing invariants such as never dereferencing a nullable value.

**answer substitution** — In logic programming, the binding of the query's free variables reported on success (read existentially), in lieu of the full derivation.

**antecedent / succedent** — The left side of a sequent (an assumption available for use) and the right side (the proposition to be verified/derived).

**anticipated (very-busy) expressions** — Expressions whose value will definitely be evaluated on every path forward from a point before their operands change; a backward analysis marking where a computation may be safely hoisted, driving partial-redundancy elimination.

**append (`@`)** — The infix list-concatenation operation; `L1 @ L2` takes time proportional to the length of `L1` and is associative.

**application** — The elimination form of a function, written by juxtaposition `f e`; evaluated by reducing the function, then (call-by-value) the argument, then substituting the argument into the body.

**approaches to concurrency** — Process-based (kernel-interleaved flows with private address spaces), event-based (one address space, flows interleaved via I/O multiplexing), and thread-based (kernel-interleaved flows sharing one address space).

**architectural style** — A named, reusable organization of components and connectors with known properties and tradeoffs (e.g. pipe-and-filter, layered, client-server, publish-subscribe, repository, microservices).

**architectural tactic** — A design decision targeted at improving a specific quality attribute (availability, performance, security), resembling a design pattern but aimed at a quality rather than at structure.

**architectural view** — A representation of the architecture from one perspective (module, component-and-connector, allocation); different views and notations are chosen to suit the documentation's purpose.

**architecture vs. design** — Architectural questions concern system-wide structure and quality attributes; design questions concern local implementation within a component.

**argument/return registers** — The registers the ABI designates to pass the first several arguments (x86-64: %rdi, %rsi, %rdx, %rcx, %r8, %r9) and to return the result (%rax); excess arguments are passed on the stack.

**arithmetic right shift** — A right shift that replicates the sign (most-significant) bit on the left, preserving sign for signed values.

**arithmetic/logical instructions** — Two-operand `addq`/`subq`/`imulq`/`andq`/`orq`/`xorq` and shifts, plus one-operand `incq`/`decq`/`negq`/`notq`.

**array** — A heap-allocated aggregate of same-typed elements laid out contiguously; element `A[i]` lives at `A + i·sizeof(T)`, allocated (e.g. by `alloc_array`) with its length stored alongside the data.

**array bounds checking** — The runtime checks that an index satisfies `0 ≤ i < length` (and the base is non-null) before access, raising a memory exception otherwise.

**array bounds obligation** — A verification proof obligation: a concrete access `a[e]` translates to `read a e` with precondition `0 ≤ e < length a`, and an update to a fresh `write` with the same bound.

**array extensionality** — The axiom `(∀i. read a i = read a' i) ↔ a = a'`: two arrays are equal exactly when they agree at every index.

**array-update assignment axiom** — `[a(e) := ẽ]p(a) ↔ p(aₑẽ)`: reasoning about an array store replaces free occurrences of the array by its patched version, sidestepping aliasing via case splits on index equality.

**arrays as functions** — Modeling an array as a function `ℤ → ℤ`, so a program state maps variables to `ℤ ∪ (ℤ → ℤ)` and array stores become function updates.

**ascending chain** — The increasing sequence of states `Σ ⊑ F(Σ) ⊑ F(F(Σ)) ⊑ …` produced by iterating a monotone whole-program flow function from ⊥; its finiteness (bounded lattice height) guarantees termination.

**ASCII / text encoding** — A mapping assigning each text character a number so that text can be stored and manipulated as binary.

**ASLR (address space layout randomization)** — A defense that randomizes stack and other addresses each run so an attacker cannot predict buffer or code locations.

**assertion** — A condition stated at a program point that must be true there; once established it may be assumed subsequently, and it can serve as a lemma even when logically redundant.

**assignable vs. variable** — An assignable is a mutable storage cell accessed by `get`/`set` commands; a variable is an immutable binding. Conflating them is invalid under concurrency, since two fetches may see different contents.

**assignment axiom** — In dynamic logic, `[x := e]P(x) ↔ P(e)` (equivalently `∀x'. x'=e → P(x')` to avoid capture): proving a property after an assignment reduces to substituting the assigned term into the postcondition.

**assignment rule (weakest precondition)** — `wp(x := e, P) = [e/x]P`: the weakest precondition of an assignment substitutes the assigned expression for the variable in the postcondition.

**assignment semantics** — The relational meaning `ω⟦x ← e⟧ν` holding iff `ν = ω[x ↦ ω⟦e⟧]`; the state is updated at x with the value of e.

**associativity** — The algebraic property `g(a,g(b,c)) ≅ g(g(a,b),c)`; when a combining operation is associative, the order of pairwise combination is irrelevant, enabling parallel reduction.

**associativity (cache)** — The number E of lines per cache set, determining how many places a memory block may occupy within its set.

**assume-and-check annotations** — Programmer-written annotations giving the dataflow value expected for each parameter and result; the callee is checked against them and each call site verified to obey them — more precise than default assumptions, more efficient than whole-program analysis.

**AST walking (bug-pattern matching)** — A simple static analysis (often a Visitor) that traverses the abstract syntax tree, matching nodes of a given type and checking their local neighborhood against a pattern; a "semantic grep" aware of syntax but not semantics.

**asymptotic analysis** — Predicting how running time grows on large inputs without executing the code, assuming primitive operations take constant time and ignoring constant factors and low-order terms.

**async-signal-safe function** — A function safe to call in a signal handler because it is reentrant or non-interruptible (e.g. `write`, `_exit`, `waitpid`); `printf`, `malloc`, and `exit` are not safe.

**asynchronous communication** — A message-passing model where a send succeeds immediately and is buffered while a receive blocks; obtained from a synchronous calculus by rewriting a send as a spawn plus a forward, adding no expressiveness.

**asynchronous exception (interrupt)** — An exception caused by an event external to the processor (timer, I/O, network packet); its handler returns to the next instruction.

**asynchronous vs. synchronous connectives (focusing)** — Andreoli's classification: a connective is negative/asynchronous if its right rule can always be applied independently of the rest of the sequent (`&`, `↑`), and positive/synchronous otherwise (`⊗`, `⊕`, `1`, `↓`).

**atomic memory operations** — Hardware read-modify-write instructions (test-and-set, compare-and-swap, exchange-and-add) that prevent data races and are used to build mutexes and semaphores.

**atomicity violation** — A concurrency bug in which code meant to execute atomically suffers interference from another thread; fixed by reordering or synchronization.

**attack surface** — The set of points where an attacker can attempt to enter or extract data; reduced by input validation and by banning dangerous APIs.

**attribute (field / property)** — A named piece of data stored on an object/instance and accessed with dot notation; the per-instance state a class bundles with its methods.

**automated theorem prover** — A back-end solver that decides validity/satisfiability of the verification conditions a verifier produces (e.g. Z3, CVC, Alt-Ergo); the pipeline encodes proof obligations as satisfiability and discharges them.

**auxiliary variable (ghost)** — An extra variable added to a model or proof purely to enable reasoning (arithmetic ghosts, ghosts of time, differential ghosts), which does not affect the original system's observable behavior.

**available expressions** — A forward "must" dataflow analysis finding expressions already computed and not since invalidated on all paths to a point; the meet is intersection, and it enables common-subexpression elimination.

**axiom of convergence** — The diamond counterpart of induction proving termination: with a variant predicate `V(n)`, a state satisfying `V(0)` is reachable if each iteration can decrease n from `V(n)` toward `V(n−1)`.

**axiom vs. axiom schema** — An axiom is a single concrete valid formula; an axiom schema is an infinite family of instances (instantiated instead by uniform substitution).

**axiomatic (compositional) reasoning** — Giving one reasoning principle (axiom) per program operator that reduces a property of a compound program to a logical combination of properties of its subprograms.

**axiomatic semantics** — A definition of a program's meaning in terms of assertions about what is true after execution; the basis for Hoare-logic verification.

**axiomatic separation (systems vs. games)** — The result that certain axioms (K, I, C, B, V, G) behave differently for hybrid games than for hybrid systems, pinpointing the difference adversarial choice introduces.

**axiomatic specification** — Describing a function's defining properties directly as axioms (e.g. `fib 0 = 0`, `fib 1 = 1`, `fib(n+2) = fib(n+1)+fib(n)`) rather than by an explicit definition.

**axiomatics** — The method of internalizing semantic relations into universal, syntactic, reusable axioms so that reasoning about programs becomes syntactic manipulation.

**axioms as concrete data** — The consequence that, with uniform substitution, all axioms and axiomatic rules become finitely many concrete formulas rather than infinite schemata.

**back edge** — A CFG edge `t → h` whose head h dominates its tail t; every back edge lies in at least one loop, and back edges drive loop detection and iterative-analysis convergence.

**backtracking / subgoal ordering / clause ordering** — In logic-program search, on subgoal failure the engine returns to the most recent choice point to try another clause; subgoals are attempted left-to-right and clauses in presentation order, and these orderings affect termination and the solutions found.

**backward vs. forward chaining** — Two proof-search directions tied to atom polarity: making atoms negative yields goal-directed backward chaining (goal to subgoals, Prolog-style); making atoms positive yields forward chaining (deriving new facts from premises, Datalog-style).

**balanced tree** — A tree in which each subtree holds roughly half the remaining data, giving depth O(log n) and enabling logarithmic-span operations.

**Barendregt numerals** — An alternative numeral encoding representing n as a sequence of F-tagged Church pairs ending in the identity combinator, making case analysis (`ifz`) easy to program.

**base case / recursive case** — The two parts of a recursive definition: the base case returns a direct answer for the simplest input and stops the recursion, while the recursive case reduces the problem toward the base case and calls the function again.

**basic block** — A maximal straight-line sequence of instructions with a single entry at the top and single exit at the bottom (no internal jumps or jump targets); the unit of local analysis and a CFG node.

**basic loop induction rule (`ind0`)** — The rule proving `[α*]P` from P holding initially and `P → [α]P` (that P is inductive), derived from the induction axiom and Gödel generalization.

**basic, hypothetical, and general judgments** — The forms of judgment expressible in a logical framework; the hypothetico-general form (dependent function classes) is central to defining many logical systems.

**behavioral specification** — Any property of terms closed under head expansion — determined by how a program behaves rather than what it is; types induce such specifications, but there are more specifications than types.

**Bekić's Lemma** — The reduction of a simultaneous least fixed point of interdependent monotone operators to an iterated sequence of least fixed points, via a diagonalization lemma.

**benchmark-based metric** — A metric interpreted by comparison against typical values collected from a reference set, rather than in absolute terms.

**benign effect** — A side effect (e.g. a locally created, garbage-collected ref cell) that produces no observable change, so the code still behaves purely functionally.

**best case / worst case** — The inputs that make an algorithm perform the fewest or the most basic operations, used to bound its running time.

**beta and eta rules (βη)** — β rules express computation (an elimination cancels against a matching introduction); η rules express the unicity/universal-property conditions that fully determine a negative type's elements.

**beta-equivalence (β-conversion)** — The least reflexive, symmetric, transitive, compatible relation containing β-reduction (together with α-conversion); a notion of equality of terms by calculation.

**beta-normal form (β-normal form)** — A β-irreducible term (no β-reduction applies); β-normalization reduces to normal form, but not every term has one and some reduction sequences diverge.

**beta-reduction (β-reduction)** — The computation step replacing `(λx.M) N` by `[N/x]M`, firing when a destructor meets a constructor; the sole rule of calculation in the λ-calculus and "the engine of computation."

**beta-value reduction (β-value reduction)** — The call-by-value law `(fn x:t => e) v ≅ [v/x]e`, valid only once the argument has been reduced to a value.

**bidirectional typechecking** — Splitting typing into checking (`M ⇐ A`, both term and type given) and synthesis (`M ⇒ A`, type inferred from the term); the programming-language reading of verifications.

**big-endian** — Byte order with the most-significant byte at the lowest address (SPARC, PowerPC, network byte order).

**big-O classes** — Standard growth classes: O(1) constant, O(n) linear, O(n²) quadratic, O(log n) logarithmic, O(n log n), O(2ⁿ) exponential.

**big-O notation** — The classification `f is O(g)` meaning there exist constants c and N with `|f(n)| ≤ c|g(n)|` for all n ≥ N; abstracts away constant factors and low-order terms, with only the dominant term mattering.

**big-step (evaluation / natural) semantics** — A dynamics inductively relating an expression directly to its final value (`e ⇓ v`), suppressing intermediate states; close to an efficient recursive interpreter.

**binary (base 2)** — A base-2 numbering system in which each place represents a power of two.

**binary search** — Searching a sorted collection by repeatedly examining the middle element and discarding the half that cannot contain the target, running in O(log n).

**binary search tree** — A sorted binary tree in which every key in a node's left subtree is less and every key in its right subtree is greater; supports logarithmic lookup when balanced.

**binding and scope** — A binding is the point at which a variable is introduced (e.g. by λ or `let`); its scope is the region of the program over which that binding is in force, and a use refers to the nearest enclosing binding.

**bipartiteness / odd-cycle certificate** — A "yes" 2-coloring separating every edge, or a "no" closed walk of odd length (odd cycle) which cannot be 2-colored, verified via a path-parity lemma.

**bit** — The fundamental unit of information representing one of two states (0 or 1), arising because hardware distinguishes only a high signal ("On") from a low one ("Off").

**bit vector** — A width-w sequence of bits operated on bitwise; can represent a subset of {0,…,w−1}, with bit j set iff j is in the set.

**bitwise AND / OR / NOT / XOR (`& | ~ ^`)** — Operators applied bit-by-bit to integral operands viewed as bit vectors, corresponding to set intersection, union, complement, and symmetric difference.

**black height** — The number of black nodes on any path from a given node down to an empty leaf; the red-black invariant requires this count be equal on all such paths.

**black hole** — A pseudo-value marking a `fix`-bound variable under evaluation; if the recursion depends on itself before unrolling, reaching the black hole aborts gracefully rather than looping forever.

**black-box vs. white-box testing** — Black-box (functional) tests derive inputs from the specification without knowledge of internals; white-box (structural) tests use knowledge of code structure to drive coverage.

**block header / footer (boundary tag)** — A one-word header storing a heap block's size and allocated bit; a replicated footer (boundary tag) enables constant-time backward coalescing.

**block offset** — The low-order address bits locating the requested bytes within a cache block.

**blocking (cache blocking / tiling)** — Restructuring a computation into sub-blocks that fit in cache (e.g. B×B matrix tiles) to exploit temporal locality and cut misses.

**Blum's Size Theorem** — The result that in any expressive total language there are functions whose shortest implementation is enormously larger than a λ-calculus implementation, because a total-language program embeds its own termination proof.

**BNF (Backus–Naur Form)** — A common notation for context-free grammars, with bracketed non-terminals, `::=` for productions, and `|` for alternatives.

**Boolean algebra** — Boole's algebraic encoding of logic with True = 1 and False = 0, the basis for bit-level operations.

**Bottom (⊥)** — The minimal lattice element, used as the initial value at un-analyzed program points; `⊥ ⊑ l` and `⊥ ⊔ l = l` for all l.

**bottom-up parsing (shift-reduce, LR)** — Parsing that builds the parse tree from the leaves up, shifting tokens onto a stack and reducing by grammar rules; LR(1), SLR, and LALR are increasingly practical table-driven variants.

**bound (may-bound) variables (BV)** — The variables a program may write on some execution path (bound by assignments, quantifiers, or modalities); contrasted with must-bound variables, written on every path.

**bound-effect lemma** — If `(ω, ν) ∈ ⟦α⟧` then ω = ν off `BV(α)`: a program changes only its bound (may-written) variables.

**boundary-value analysis** — Selecting extreme or unique cases at or around boundaries of preconditions or decision points (zero-length inputs, very long inputs, null references), which tend to reveal off-by-one and boundary errors.

**bounded / k-limited exploration** — Exploring only paths up to a bound (e.g. loops unrolled fewer than k times); unsound for verification but sound-but-incomplete for bug finding.

**bounded model checking (BMC)** — Under-approximating the reachable state space by unrolling all loops to a fixed depth k and treating bounded paths symbolically; finds bugs within the bound but cannot prove their absence beyond it.

**box modality [α]P** — "In every poststate reachable by α, P holds"; the partial-correctness/safety modality, dual to diamond (`[α]P ≡ ¬⟨α⟩¬P`).

**branch coverage** — The portion of condition branches (and, for multicondition coverage, boolean combinations) exercised by a test suite.

**branching-time vs. linear-time** — Branching-time logic (CTL) reasons about the tree of possible futures, whereas linear-time logic (LTL) reasons along single paths; the two are incomparable in expressiveness.

**Brent's theorem** — An expression with work w and span s can be evaluated on p processors in time bounded by `max(w/p, s)`; it bounds achievable speedup given the work and span.

**brute-force algorithm** — An approach that enumerates every candidate solution and checks each against the problem's constraints; simple to write but often exponential and impractical.

**Brzozowski derivative (∂ₐr)** — A regular expression such that `aw ∈ L(r)` iff `w ∈ L(∂ₐr)`, computable by structure on r, enabling left-to-right matching without guessing splits.

**buffer overflow** — Writing past the bounds of a fixed-size (often stack) buffer, e.g. via `gets`/`strcpy`/`scanf %s`, potentially overwriting the saved return address and letting an attacker redirect execution; a leading cause of security vulnerabilities.

**bug depth** — The number of context switches needed to trigger a concurrency bug; many real bugs have small depth.

**bugs as reachability** — Converting error checks into reachability problems (`assert(p) → if(!p) ERROR`), so bug finding becomes finding inputs that reach an ERROR.

**by-need evaluation (memoization)** — The maximally lazy dynamics that evaluates a bound expression at most once and reuses (memoizes) the result, sharing the work of evaluation.

**by-value (eager) vs. by-name (lazy)** — Two evaluation disciplines: by-value evaluates a function's argument to a value before substituting; by-name substitutes the unevaluated argument, letting variables range over computations. The distinction is invisible without non-termination.

**byte** — An 8-bit unit of memory addressing; multi-byte objects are built from consecutive bytes.

**byte ordering (endianness)** — The convention for ordering the bytes of a multi-byte word in memory, significant when data crosses machines via network or files.

**Bézout certificate** — A gcd certificate `(g, x, y)` with `g = ax + by`, `g | a`, `g | b`, verified by checking the identity and divisibilities; produced by the extended Euclidean algorithm.

**Büchi acceptance (visit F infinitely often)** — The acceptance condition distinguishing Büchi automata from NFAs: a run is accepted iff it visits an accepting state infinitely often, reducing (since states are finite) to whether the infinitely-visited states intersect the accepting set.

**cache** — A smaller, faster storage device that stages a subset of the data held in a larger, slower device, exploiting locality to serve most references quickly.

**cache block (line)** — The fixed-size unit (B = 2ᵇ bytes) of several consecutive elements transferred between two levels of the memory hierarchy; spatial locality arises because one miss brings in a whole line.

**cache blocking (tiling)** — Restructuring a computation into cache-sized sub-blocks (tiles) so data is reused before eviction, cutting misses; e.g. B×B matrix-multiply tiles.

**cache hit / miss** — A hit finds the requested block already in the cache; a miss must fetch it from the next level, incurring the miss penalty.

**cache organization (S, E, B)** — A cache described by S = 2ˢ sets, E lines per set, and B = 2ᵇ bytes per block, for total data size S·E·B; the address splits into tag, set index, and block offset.

**cache-friendly code** — Code that minimizes inner-loop misses by reusing data (temporal locality) and using stride-1 access (spatial locality).

**Caesar cipher** — A classical encryption scheme that shifts each letter of the plaintext by a fixed amount; easily broken, used to introduce the idea of a cipher.

**call / ret** — The x86-64 instructions that transfer control to a procedure and back: call pushes the return address and jumps to the callee; ret pops it and resumes.

**call graph** — A directed graph recording which procedures call which; interprocedural analyses partition it at cut points and its edges depend on resolving dynamic dispatch.

**call stack** — The stack of saved caller states (each frame holding the caller's environment/continuation or saved registers and locals) that lets control and locals be restored on return and makes recursion work.

**call-by-name (lazy evaluation)** — An evaluation discipline that passes arguments unevaluated, substituting the unevaluated computation so variables range over general (possibly divergent) expressions.

**call-by-need** — The maximally lazy strategy (Haskell's) that passes arguments unevaluated but memoizes a thunk's value on first force, so it is evaluated at most once and shared.

**call-by-push-value (CBPV)** — Levy's calculus, obtained by polarizing natural deduction, that splits types into positive value types and negative computation types and compositionally embeds both call-by-value and call-by-name, choosing eager vs. lazy per connective.

**call-by-value (eager evaluation)** — An evaluation discipline that reduces a function's argument to a value before substituting it into the body; variables range only over values.

**call-string context** — An interprocedural analysis context represented by the sequence of call sites on the stack; k-limited call strings truncate to the last k calls to keep the context set finite.

**call/cc (and throw)** — First-class control operators: callcc(k.M) captures the current continuation (evaluation context) and binds it to k, while throw abandons the current context and resumes a captured one; the computational reading of classical proof by contradiction.

**caller / callee** — In a procedure call, the calling procedure is the caller and the called procedure is the callee.

**caller-saved vs. callee-saved registers** — Caller-saved registers may be freely clobbered by a callee, so the caller must preserve any live values across a call; callee-saved registers must be preserved by the callee, which saves and restores them if it uses them.

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

**capture-avoiding substitution** — Substitution defined up to α-equivalence, renaming the target's bound variables so that no free variable of the substituted term is captured, and thereby always defined.

**capture/recapture** — Estimating the number of undetected defects from the overlap between defects found by two independent inspectors, via Lincoln–Petersen analysis (N = n₁·n₂/m).

**case expression** — An expression that evaluates a scrutinee, matches its value against patterns in order, and evaluates the corresponding branch; the elimination form for sum/datatype values.

**CBPV stack machine (eval/retn/cont)** — An ordered operational semantics for CBPV with predicates eval(M), retn(T), and cont(K), whose continuation frames form a stack; application pushes a value, giving the system its name.

**Celf** — The implementation of the Concurrent Logical Framework, whose execution applies rules by forward chaining until no rule applies (quiescence).

**chaining (proof search)** — The focusing strategy of, once a proposition is in focus, continuing to decompose it and its subformulas as long as they keep the focused polarity, without pausing to consider other propositions.

**change control board** — A body that reviews and approves proposed changes (e.g. new feature requests) against project constraints during planning.

**channel names** — The unique names carried by each antecedent and the succedent in the session-typed sequent calculus, resolving which of several providers a process addresses; cut shares a fresh private channel.

**channel restriction (νa.P)** — Binding a symbol a privately within a process P so that, by α-equivalence, it is an unguessable secret inaccessible to outside processes; the means of preventing interference.

**characterization by type ("free theorems")** — Using parametricity to determine a polymorphic function's behavior from its type alone, e.g. proving every closed f : ∀t. t→t equals the identity.

**checked vs. unchecked error** — A checked error is detected and signalled during execution (division by zero, a type-tag mismatch), keeping the state unstuck; an unchecked error is one the static semantics rules out in advance.

**checklist (review)** — A short structured list of likely error sources and priority items that focuses reviewers, makes inspections systematic, and counters reviewer fatigue.

**choice axiom ([∪])** — The dynamic-logic axiom [α ∪ β]P ↔ ([α]P ∧ [β]P): a property holds after a nondeterministic choice iff it holds after each branch.

**choice sequent** — In staged proof search, the sequent reached once all invertible rules are exhausted, where a genuine nondeterministic choice (∨R, ⊃L, id) must be made.

**chordal graph** — A graph in which every cycle of length ≥ 4 has a chord; interference graphs of SSA-form programs are chordal, and chordal graphs can be optimally colored in polynomial time.

**Church booleans** — The λ-encoding true = λx.λy.x and false = λx.λy.y, so a Boolean applied to two arguments selects between them exactly like a conditional.

**Church encoding** — Representation of data as closed normal forms in the pure λ-calculus, the canonical encoding corresponding to the datatype's elimination form.

**Church numerals** — The λ-encoding of a natural number n as λs.λz. sⁿ z, iterating its first argument n times over its second; arithmetic is defined by iteration.

**Church's law** — Harper's framing of the claim that the λ-calculus can express every computable function on the naturals, presented as a scientific law about the nature of computation.

**Church–Rosser theorem** — The theorem that β-reduction is confluent (M ≡β M′ iff they share a common reduct), which implies each term has at most one β-normal form.

**Church–Turing thesis (Church's thesis)** — The claim that the effectively computable partial functions are exactly those implementable by Turing machines, equivalently in the λ-calculus, so all Turing-equivalent languages have the same expressive power.

**circuit (hardware)** — A physical arrangement of components that redirects electrical voltage to perform a computational action; the substrate that implements logic gates.

**CISC vs. RISC** — x86 is a Complex Instruction Set Computer (many instructions and formats); ARM/RISC-V are Reduced Instruction Set Computers (few instructions and addressing modes).

**clash** — A failed uniform-substitution attempt where admissibility is violated (a substituted variable would be captured by a binder or modality); the substitution is rejected rather than applied unsoundly.

**class** — A programmer-defined type describing the state and behavior of its instances; in Python "class" and "type" are synonyms, and a class is created with the `class` keyword.

**classical linear logic (CLL)** — Girard's original one-sided-sequent formulation ⊢ A₁,…,Aₙ in which the comma is a par disjunction, with an involutive linear negation and De Morgan dualities.

**classical logic** — A logic that accepts the law of excluded middle and the Boolean view that every proposition is either true or false.

**classical sequent calculus (multiple conclusions)** — Gentzen's encoding of classical logic obtained by allowing multiple persistent succedents (Γ ⟹ Δ), read as "the conjunction of Γ entails the disjunction of Δ," sufficient to derive excluded middle.

**classical vs. intuitionistic reasoning** — Classical reasoning permits multiple succedents and law-of-excluded-middle "hedging" (e.g. P ∨ (P → Q)); intuitionistic reasoning requires a single succedent and a witness for existentials.

**classification / regression / clustering** — Three kinds of machine-learning task: classification predicts a discrete category, regression predicts a numeric value, and clustering groups similar data without labels.

**clausal function definition** — A function defined by several clauses fn p1 => e1 | … | pn => en, where an argument value is matched against each pattern in turn.

**client-server** — A model/architectural style separating service-requesting clients from service-providing servers, typically communicating over a network; the basis of network applications.

**closed expression** — An expression with no free variables.

**closed-form solution** — A non-recursive formula for a recurrence (e.g. W(n) = n·c₁ + c₀), often found by unrolling the recurrence or proving a guess by induction.

**closure (F\*)** — A transfer-function operation, absent from iterative dataflow, F* = ⋀ₙ Fⁿ, summarizing 0, 1, 2, … trips around a loop's back edge in one step; used to build region summaries.

**closure (function value)** — A function value consisting of a λ-expression together with the environment of bindings present when the function value was defined.

**cmp / test** — x86-64 instructions that set condition codes without storing a result: cmp computes Dest − Src and test computes Dest & Src, to drive conditional branches.

**co-natural numbers** — The coinductive dual of the naturals (generator gen, observation pred), admitting an infinite element ω = succ(ω); illustrates extending Tait's method to coinductive types.

**coalescing (memory allocation)** — Merging a freed block with adjacent free blocks to avoid false external fragmentation, done in constant time with boundary tags, either immediately or deferred.

**code cache / hot vs. cold code** — A software cache of dynamically compiled chunks; frequently executed "hot" code justifies aggressive optimization while "cold" code is left interpreted or evicted, guided by the 80/20 principle and a cost model.

**code coverage** — A measure of how much of a program (statements, branches, paths) a test suite exercises; used as fuzzing feedback and as an imperfect test-effectiveness metric.

**code injection attack** — Placing executable bytes in an input buffer and overwriting the return address to point at them so a ret runs the injected code.

**code motion** — Hoisting a loop-invariant computation out of the loop so it runs once rather than every iteration.

**code optimization** — Improving performance (fewer instructions, memory stalls, and branches) without changing observable program behavior.

**code review** — Peer examination of proposed changes; modern tool-supported asynchronous review improves style/design consistency, ensures adequate tests, spreads knowledge, and prevents unreviewed commits.

**code tracing** — Reading a program by hand and simulating its execution step by step to determine its output, without running it.

**CodeQL** — GitHub's declarative query language for code, supporting many languages with a library of common patterns, an example of a query-based alternative to hand-written AST walkers.

**cohesion** — The degree to which the elements inside a module belong together and serve a single purpose; high cohesion is a design goal.

**coincidence lemma** — The result that a term's, formula's, or program's meaning depends only on its free variables, so states agreeing on those variables give the same value/truth/runs; foundational for substitution soundness.

**coinductive type (ν(t.τ))** — A negative type that is the greatest type consistent with the destructor unfold; its elements are determined by how they behave when observed and may be infinite (e.g. conat).

**cold / capacity / conflict miss** — The three miss classes: compulsory (cold) misses on first reference to a block, capacity misses when the working set exceeds the cache, and conflict misses when too many active blocks map to the same set.

**collapsing of connectives** — The phenomenon that identifying antecedents up to exchange makes previously distinct ordered connectives indistinguishable (the two implications, the two products) while additive connectives are unaffected.

**combination testing** — Testing combinations of boundary values, since some errors surface only when two or more variables are simultaneously at their boundaries.

**combinator** — A closed λ-expression with no free variables (e.g. I, K, B, Y); more generally a higher-order function that lifts operations to functions without naming an argument.

**command / return** — In Modernized Algol, a command performs storage effects and yields a value via ret(e); commands are sequenced by bnd and encapsulated by cmd, and dcl allocates an assignable with stack discipline.

**common theories (SMT)** — The frequently-used SMT theories: fixed-width bit-vector arithmetic (modulo 2ⁿ), Presburger arithmetic (0, 1, +, =), and the theory of arrays.

**common-subexpression elimination (CSE)** — Detecting an expression computed more than once on a path with unchanged operands and reusing the first result instead of recomputing; relies on available-expressions analysis.

**compactness** — The theorem that Γ ⊨ A iff some finite subset of Γ entails A, so a proof can use only finitely many assumptions; its failure in dynamic logic yields incompleteness.

**comparison function** — A function of type t × t → order returning LESS, EQUAL, or GREATER, abstracting the ordering used for sorting and searching.

**compiler** — A program that translates a source program into an executable target program, which it must recognize as legal or illegal, compile correctly, and emit in an object format the OS and linker accept.

**compiler phases (passes)** — The successive stages of a compiler—lexing, parsing, elaboration, static checking, IR generation, optimization, instruction selection, register allocation, code emission—structured as a pipeline.

**complete lattice** — A partial order in which every subset has a least upper bound (join) and greatest lower bound, with both ⊥ and ⊤ defined; the setting for fixpoint constructions.

**completeness (of a logic)** — The property that every valid formula is provable (⊨ ⊆ ⊢); together with soundness it makes provability and validity coincide.

**completeness (of an analysis)** — The property that every defect an analysis reports is real (no false positives), typically achieved by under-approximation; sound and complete together is impossible in general.

**completeness of termination (uninterpreted case)** — The theorem that for termination assertions with first-order pre/postconditions and uninterpreted symbols, validity and provability coincide, proved via computation sequences and compactness.

**complex number type** — A built-in numeric type representing complex numbers with real and imaginary parts (e.g. `2+3j`).

**complexity of Kildall's algorithm** — The worklist dataflow solver runs in roughly O(c·e + n·h) (per-node cost c, e edges, n nodes, lattice height h); termination follows from finite lattice height.

**composition axiom ([;])** — The dynamic-logic axiom [α; β]P ↔ [α][β]P, decomposing a sequential composition into nested modalities.

**compositionality** — The lemma that the meaning of a substituted type [A/X]B under a candidate assignment equals the meaning of B under the assignment extended with A's candidate; a key step in the polymorphism proofs.

**computation as ordered inference** — Encoding machines (finite-state transducers, Turing machines) as ordered inference so each computation step is one inference.

**computation tree logic (CTL)** — A branching-time temporal logic interpreted at states, whose path quantifiers (A, E) range over the tree of all computations, with a simpler model-checking algorithm than LTL.

**computation-sequence semantics (CS(α))** — The semantics assigning each program the set of finite ;-sequences of atomic assignments/tests it could run; its transitions match the transition semantics.

**computational (semantic) type theory** — The presentation of type theory in which types specify the behavior of programs and the computational semantics is primary, contrasted with the axiomatic/formal presentation.

**computational thinking** — The language-agnostic skill of formulating a problem and its solution so the steps can be carried out by an information-processing agent, through decomposition, abstraction, pattern recognition, and algorithm design; an organizing theme of the introductory courses.

**computer network (LAN / WAN / internet)** — A hierarchy of hosts and links: LANs span a building, WANs span the world, and an internet joins networks via routers, the global IP Internet built on TCP/IP.

**computer science (discipline)** — The field concerned with algorithms and with how computers are used to solve problems across many domains, spanning programming, theory, systems, and applications.

**computer science ethics** — The study of the consequences of applying computing in the real world, including data collection, automated decision-making, bias, explainability, and accountability.

**concatenation / fuse (•) and twist (◦)** — Ordered multiplicative conjunctions: x • y ("fuse") asserts x immediately followed by y, and x ◦ y ("twist") is its order-reversed variant; their right rules split the context into two adjacent segments.

**concolic execution** — Concrete + symbolic execution: a program is instrumented to collect path constraints during a concrete run, then the last clause is negated and solved to derive the next input, keeping a concrete input so unmodelable operations use concrete values.

**concolic tools** — Systems implementing concolic/dynamic-symbolic execution, e.g. DART, CUTE, KLEE, SAGE, Java PathFinder, Angr, PyExZ3, and Jalangi.

**concrete syntax** — The representation of programs as strings of characters, given by a context-free grammar and disambiguated by precedence, associativity, and parenthesization; contrasted with abstract syntax.

**concurrency testing** — Testing a concurrent program under different thread interleavings, hoping to hit the buggy interleaving.

**Concurrent Algol (CA)** — Modernized Algol extended with channel allocation, process spawning, and message emit/receive, its global state understood as a π-calculus process with dynamically classified messages.

**Concurrent Logical Framework (CLF)** — A metalanguage from the polarized adjoint formulation of intuitionistic linear logic with dependent types, supporting linear/ordered hypothetical judgments and a forward-chaining operational reading (implemented in Celf).

**concurrent processes / multitasking** — Processes whose executions overlap in time; a single core interleaves them and they can interfere with one another.

**concurrent programming** — Writing programs whose logical flows overlap in time, hard because reasoning about all possible event orderings is error-prone.

**concurrent vs. parallel** — Two flows are concurrent if they overlap in time; a single core simulates parallelism by time-slicing, while multiple cores give true parallelism.

**condition codes (CF, ZF, SF, OF)** — Single-bit CPU flags set as a side effect of arithmetic, recording carry-out (unsigned overflow), a zero result, a negative result, and signed overflow.

**conditional axiom ([if])** — The dynamic-logic axiom [if P α β]Q ↔ (P → [α]Q) ∧ (¬P → [β]Q), splitting a conditional into guarded properties of its branches.

**conditional constant propagation** — An SSA-based analysis that assumes blocks are unexecuted and variables constant until proven otherwise, letting it prune unreachable blocks that ordinary constant propagation cannot.

**conditional move (cmov)** — An instruction implementing if (test) dest = src without branching, usable only when both branches are side-effect-free because it evaluates both.

**conditional rule (weakest precondition)** — The weakest-precondition rule wp(if B then S else T, Q) = (B ⇒ wp(S,Q)) ∧ (¬B ⇒ wp(T,Q)).

**confluence / weak confluence** — Confluence is the property that any two reduction sequences from a common term can be brought back together; weak confluence (every one-step split is reconcilable) implies confluence for strongly-normalizing terms.

**congruence** — The property that every syntactic construct respects extensional equivalence, so replacing a subexpression by an equivalent one yields an equivalent whole.

**congruence closure** — The unique smallest congruence relation containing a given set of equalities; computing it decides conjunctive quantifier-free EUF satisfiability.

**congruence rules** — Rules permitting a reduction to fire inside a subterm (e.g. from M ⇒ M′ conclude fst M ⇒ fst M′), needed to reduce a redex buried in a larger term.

**conjunction (∧)** — The connective characterized by one introduction rule with two premises and two elimination rules extracting each conjunct.

**conjunctive normal form (CNF)** — A conjunction of disjunctions of (possibly negated) variables, into which formulas are converted before SAT solving.

**connection / socket** — A connection is a point-to-point, full-duplex, reliable byte stream between two processes; a socket is a connection endpoint the application sees as a file descriptor.

**cons (::)** — The list constructor prepending an element to a list; x::L takes constant time.

**conservative coalescing (Briggs / George)** — Register coalescing performed only when it cannot make a colorable interference graph uncolorable: Briggs merges if the merged node has < k neighbors of degree ≥ k; George merges if every neighbor of one already has degree < k or interferes with the other.

**consistency** — The theorem that ⟹ ⊥ is not derivable, so no proposition is both provable and refutable; a minimal requirement for a logic.

**consistency and determinacy** — The theorem that hybrid games are determined and their logic consistent: from each state exactly one player has a winning strategy for a goal (⊨ ¬⟨α⟩¬φ ↔ [α]φ).

**consistency of second-order arithmetic** — The result that termination of System F implies the consistency of second-order arithmetic, so by Gödel's theorem its proof must use methods beyond mere behavioral specifications.

**constant folding** — Evaluating constant expressions at compile time (e.g. replacing 4 + 5 with 9) so the computation is not performed at runtime.

**constant propagation** — Replacing a variable's use by a constant when its reaching definition is known to be that constant; trivially sound in SSA form.

**constant-propagation lattice (UNDEF / constant / NAC)** — A per-variable lattice with top = UNDEF (unseen), a middle row of every integer constant, and bottom = NAC (Not A Constant), an infinite lattice of finite height and a non-distributive framework.

**constraint-based nullability (NilAway)** — Nullability checking without annotations that automatically collects nilable/nonnil typing constraints and reports a contradiction when nilable(S) ∧ nonnil(S) holds at a site.

**construct validity** — Whether a metric actually measures the attribute it claims to measure.

**construction** — The primitive notion (an algorithm/program, taken as a basic human faculty) from which computational type theory's meaning explanations start; expressions evaluate deterministically to canonical forms.

**constructive content of a proof** — Information a proof carries beyond mere validity, e.g. a proof that a path exists also records the actual edges traversed.

**constructive logic** — A logic whose proofs describe effective, mechanically executable constructions (algorithms), emphasizing effectiveness over classical truth.

**constructivism** — The stance that constructive reasoning refines rather than refutes classical principles (rejecting unrestricted excluded middle) while admitting a computational interpretation.

**constructor** — The special method a class runs when an instance is created (Python's `__init__`), used to initialize the new object's attributes.

**containerization** — Lightweight virtualization (e.g. Docker) giving sub-second boot and shareable, fully-configured images used consistently across development and deployment.

**context sensitivity** — Keeping separate interprocedural analysis results for a function called in different statically distinguishable contexts, so information is not merged across call sites.

**context switch (process)** — The kernel mechanism that passes control between processes by saving one process's registers and restoring another's registers and address space.

**context switch (thread interleaving)** — A point where execution switches from one thread to another; the number an interleaving requires is its bug depth.

**context-free grammar (CFG)** — A four-tuple of terminals, non-terminals, productions, and a start symbol, understood as an inductive definition of a set of strings; used to specify concrete syntax.

**context-sensitive summary** — A map from input dataflow information to output dataflow information capturing a function's effect, applied at each call and giving different results for different call contexts.

**continuation** — A representation of the remaining computation ("what is left to do"), passed explicitly as an extra argument or reified as a first-class control-stack value captured and later resumed.

**continuation type (¬A)** — A connective with no introduction rule whose values are runtime-captured evaluation contexts (holes of type A); the type of a continuation.

**continuation-passing style (CPS)** — A programming technique threading a continuation through a computation to give a direct handle on future computation, enabling tail-recursive rewrites and backtracking search.

**continuations and exceptions** — Control features that explicit control stacks (the K machine) make easy to express, motivating that machine over structural dynamics.

**continuations as first-class control** — callcc/throw letting a computation escape its local context like an exception but lexically scoped and first-class; an impure control effect inconsistent with dependent type theory.

**continuous dynamics** — The physical part of a cyber-physical system: state evolving continuously over time according to differential equations (the plant).

**continuous integration / continuous deployment (CI/CD)** — Automatically building and testing every change and releasing frequently, often several times per day, with incremental rollout and quick rollback.

**continuous program (differential-equation system)** — The hybrid-program construct x′ = f(x) & Q denoting continuous evolution following an ODE for any duration, restricted to the region where Q holds.

**contraction** — The structural rule merging two copies of an antecedent into one (Γ, A, A ⊢ C gives Γ, A ⊢ C); it permits an assumption to be reused and is what complicates cut admissibility.

**control equivalence** — Two operations are control-equivalent if one executes iff the other does (their blocks execute together); it delimits where an instruction can be moved non-speculatively.

**control-flow graph (CFG)** — A directed graph whose nodes are basic blocks and whose edges represent possible transfers of control; the structure over which dataflow, dominance, and scheduling analyses run.

**controllability constraint** — A condition ensuring a controller still has a safe action available given the worst-case state it may sample, needed to bridge event- and time-triggered control models.

**controller monitor** — A ModelPlex runtime monitor that checks whether a proposed control decision complies with the verified controller model before it is applied.

**convergence axiom (C)** — The diamond-modality loop-progress principle: if a nonnegative measure can always be decreased by one round, the loop reaches its goal; the counterpart of induction proving termination.

**convergence rule** — The total-correctness proof rule derived from the convergence axiom, using a well-founded decreasing variant to prove a repetitive diamond ⟨α*⟩P.

**convex vs. nonconvex theory** — A theory is convex if any conjunction implying a disjunction of equalities implies one of them individually; the integers are nonconvex, forcing case-splitting on equality disjunctions.

**copy propagation** — Replacing uses of a temp defined by a copy t ← s with s, removing the intermediate copy where sizes and definitions permit.

**copy-on-write (COW)** — Sharing pages read-only (e.g. across fork) and deferring the actual copy until a write fault occurs.

**correct-by-construction runtime validation** — The guarantee that synthesized runtime monitors are themselves verified, so passing them provably implies the safety established for the model.

**correctness theorem (dataflow)** — The result that if a dataflow analysis is well designed (finite-height lattice, monotone flow functions), then any fixed point of the analysis is sound.

**cost graph** — A series-parallel directed graph modeling a computation's structure by sequential and parallel composition; work is its node count and span its longest source-to-sink path.

**cost semantics** — A formal account of a program's work and span via cost graphs (a cost dynamics e ⇓ᶜ v), letting one reason about time complexity abstractly and independently of any schedule.

**cost-annotated evaluation** — A big-step judgment e ⇓ⁿ v (or e ⇓ⁿ ○ for an aborted derivation of size n) that records cost and distinguishes stuck from diverging computations, yielding a type-safety statement equivalent to progress and preservation.

**counterexample** — A concrete execution (trace) witnessing that a program violates its specification; model checkers produce these as diagnostic output.

**coupling** — The degree of interdependence between modules; low coupling is a design goal because it localizes the impact of change.

**coverage-guided (grey-box) fuzzing** — Fuzzing that instruments the program for coverage and keeps mutated inputs that reach new branch coverage; exemplified by AFL and ClusterFuzz.

**CPE (cycles per element)** — A performance measure where Cycles = CPE·n + overhead, with CPE the slope of the cycles-versus-elements line.

**CPS contract** — A specification pairing a precondition (assumption) with a postcondition (guarantee) for a cyber-physical-system program, expressed as A → [α]P and refined onto program parts.

**CRC cards** — Class-Responsibility-Collaboration cards recording each class's name, responsibilities, and collaborators, used to distribute functionality, enhance cohesion, and reduce coupling.

**critical edge** — A CFG edge from a block with multiple successors to a block with multiple predecessors; such edges must be split so φ-resolving copies (or PRE insertions) have a safe home.

**critical path** — The longest latency-weighted dependence chain (or longest source-to-sink path in a cost graph); its length is the span and lower-bounds achievable running time even with unlimited parallelism.

**critical section** — A set of instructions accessing a shared variable that must not be interleaved with another thread's critical section for the same variable.

**CTL fixpoint characterization** — The account of each CTL temporal operator as a least fixpoint (EF, AF, EU, AU) or greatest fixpoint (EG, AG) of a monotone successor function over sets of states, with unfolding axioms like EGP ↔ P ∧ EX EGP.

**CTL model-checking complexity** — Model checking CTL is linear in the state space and formula size, O(|K|·|ϕ|).

**current file position / lseek** — The per-open offset where the next read or write occurs, changed by lseek.

**currying** — Representing a multi-argument (tuple-taking) function as a chain of single-argument functions returning functions, with → associating to the right.

**Curry–Howard correspondence** — The correspondence in which propositions are types, proofs are programs (proof terms), introduction rules are constructors, elimination rules are destructors, and proof reduction is computation.

**cut** — The sequent rule allowing a proved proposition to be used as an assumption (Γ ⟹ A and Γ, A ⟹ C give Γ ⟹ C), the inverse of identity; proved admissible by nested induction, expressing that the left rules are not too strong.

**cut as parallel composition (spawn)** — Reading cut, taken as first-class, as spawning two concurrent processes connected by a fresh private channel, with cut-reduction steps as message exchange along it.

**cut elimination (Gentzen's Hauptsatz)** — The metatheorem that any proof using cut can be transformed into a cut-free proof of the same sequent, entailing the subformula property and the calculus's consistency.

**cut formula / side formula** — In a cut, the cut formula is the proposition cut (its principal cases mirror local-soundness reductions), while side-formula cases permute the cut.

**cut reduction** — The local reduction of a cut whose premises end in matching right and left rules into cuts on subformulas; under the process interpretation it becomes the engine of computation (message exchange).

**cut set** — A set of nodes separating the entry from a point p; partial-redundancy elimination completes a cut set (making every cut-set node compute the expression) to remove redundancy.

**cut-free sequent calculus** — The calculus without the cut rule (identity restricted to atoms), in which every rule has the subformula property, essential for systematic proof search.

**CWE (Common Weakness Enumeration)** — A community catalog of software weakness types used as a reference for classes of vulnerabilities.

**cyber-physical system (CPS)** — A system combining cyber (discrete computational control) and physical (continuous dynamics) capabilities to solve problems neither part could alone, e.g. cars, aircraft, and robots.

**cyclomatic complexity** — A metric counting the number of linearly independent paths through a program's control flow, used as a proxy for code complexity and testing effort.

**cylindrical algebraic decomposition (CAD)** — Collins's algorithm implementing quantifier elimination for arbitrary polynomial degree by decomposing space into sign-invariant cells; the practical (doubly-exponential) QE method.

**data abstraction** — Separating a client from an implementation behind an interface that hides the representation type, so the implementation may change without affecting clients; realized by existential types and, as a consequence of parametricity, guaranteed by a client's uniformity in the hidden type.

**data analysis** — Using computational and statistical methods to gain insight from data, involving modeling and parsing data to answer questions.

**data dependence** — An ordering constraint requiring one computation to run before another because it consumes a value the other produces; classified as flow/true (read-after-write, RAW), anti (WAR), and output (WAW), with WAR and WAW removable by renaming. Dependencies force serial ordering and determine a computation's span.

**data prefetching** — Compiler-inserted prefetch instructions that bring data into cache ahead of use to hide miss latency, driven by locality analysis (what to prefetch) and scheduling (when).

**data race** — A pair of concurrent conflicting accesses to the same memory location, at least one a write, not ordered by synchronization; a good symptom of, but neither necessary nor sufficient for, a race condition.

**data representation** — Encoding different kinds of information — numbers, text, colors, images — as bits through successive layers of abstraction.

**data sizes and alignment** — Each type has a byte size and an alignment requirement; code must select size-correct instructions (movl vs movq) and lay out data with padding to satisfy alignment.

**data structure** — A way of organizing multiple pieces of data (lists, dictionaries, trees, graphs, hash tables) chosen so that the operations a task needs can be done efficiently.

**data-precedence graph (DPG)** — The dependence graph an instruction scheduler consumes, with true (RAW) edges and separate anti (WAR) edges; its roots seed the ready list.

**data-structure invariant** — A logical property a data structure must always satisfy (e.g. "the array is sorted"); assumed on entry to an operation like a precondition, re-established on exit like a postcondition, and may be temporarily violated in between, hiding representation from clients.

**dataflow analysis** — A family of static analyses that compute, at each program point, facts holding over all possible executions by iteratively solving transfer-function equations over the control-flow graph until a fixed point is reached.

**dataflow framework** — The tuple (F, V, ∧) of a value domain V, a family of transfer functions F, and a meet operator, unifying a class of dataflow problems so correctness, precision, and convergence can be reasoned about once for the whole family.

**dataflow lattice** — The partially ordered set of dataflow facts equipped with a meet (join) operation; analyses combine information at control-flow merge points via the lattice, whose finite height guarantees termination.

**datatype declaration** — A definition (e.g. `datatype PrimColor = Red | Green | Blue`) introducing a new type together with its value constructors.

**datatype generativity** — The rule that each evaluation of a datatype declaration (including each functor application) yields a fresh, distinct type, preventing unsound mixing of look-alike types.

**de Bruijn indices** — A name-free representation of bound variables in which each variable is the natural number counting the enclosing binders up to its own, eliminating the need to choose bound-variable names.

**De Morgan dualities** — In classical linear logic, the dual pairs under linear negation: ⊗/⅋, 1/⊥, ⊕/&, 0/⊤, and !/?; each connective is defined via its dual.

**dead-code elimination** — Removing instructions whose results are never used (as determined by liveness/neededness analysis) and unreachable code; used throughout optimization, e.g. to clean up after strength reduction and copy propagation.

**deadlock** — A state in which threads wait for events that can never occur — typically a cycle of wait-for dependencies from inconsistent lock ordering; avoided by acquiring locks in a fixed order, cycle detection, or forced release.

**debugging** — The systematic process of locating and fixing errors in a program.

**decidability of equality** — The theorem `∀n,k. n = k ∨ ¬(n = k)`, proved by nested induction; a decision procedure for equality is extracted from the coverage and disjointness of the eq/neq judgments.

**decidability of real arithmetic (Tarski)** — Tarski's theorem that the first-order theory of real-closed fields is decidable, because it admits quantifier elimination.

**decidability of type checking via equivalence** — In dependent type systems, decidability of type checking reduces to decidability of definitional equivalence, motivating a decision procedure for βη-equivalence.

**decidable / decision procedure** — A problem is decidable (solvable, computable) if some total procedure — its decision procedure — answers every instance correctly.

**decision problem** — A well-defined yes/no question about well-specified instances (e.g. primality).

**decision procedure for intuitionistic propositional logic** — The problem of deciding, for each A, whether `⟹ A`; naive induction fails because premises can exceed conclusions, motivating restricted calculi and loop-checking.

**decorator** — A higher-order function that wraps another function to extend or modify its behavior, applied with `@`-syntax at the wrapped function's definition.

**deductive verification** — Proving a program meets its specification by reducing correctness to logical verification conditions and discharging them with automated theorem provers.

**def / use; gen / kill (transfer-function sets)** — The variables an instruction defines (writes) and uses (reads), from which dataflow transfer functions are phrased as GEN (facts a block creates) and KILL (facts it destroys), e.g. `out[b] = Gen[b] ∪ (in[b] − Kill[b])`.

**default assumptions** — The simplest interprocedural strategy: assume fixed starting dataflow values for parameters and results (e.g. ⊤), then verify each call and return respects them; efficient but imprecise.

**defect density** — Defects per thousand lines of code, used to compare software quality across systems.

**defect prevention** — Building quality in through requirements, design, architecture, process, and coding practices rather than testing it in after the fact.

**defect tracking** — Systematically recording issues (bugs, feature requests, queries) in a database, providing a basis for measurement, division of effort, and accountability.

**defects per hour** — A measure of inspection efficiency (defects found per hour of effort); inspection is empirically more efficient at defect detection than testing.

**defense in depth** — The security principle of never relying on a single defense: assume every other protection has failed and this component is the last standing.

**definability / undefinability** — A function is definable in a language if some expression computes it; System T defines exactly the functions provably total in Peano arithmetic, yet some total computable functions remain undefinable.

**definition-use (DU) / use-definition (UD) chains** — Links from each definition of a variable to all its uses (DU) and from each use to all its reaching definitions (UD); computed from reaching definitions, they let analyses traverse directly between related defs and uses but can cost O(N·M) space.

**definitional equivalence (formal equality)** — The inductively defined judgment `Γ ⊢ M ≡ M' : A` on well-typed terms, postulating β (computation) and η (unicity) rules for product and function types.

**demand paging** — Copying a page from disk into DRAM only on a fault, rather than preloading it.

**Demon** — In a hybrid game, the universal/adversarial player who resolves the `[α]` (demonic) choices and tries to prevent the goal; corresponds to the box modality.

**Demon's controls (∩, ×)** — Demonic choice `α ∩ β ≡ (αᵈ ∪ βᵈ)ᵈ` and demonic repetition `α× ≡ ((αᵈ)*)ᵈ`, definable from Angel's operators via duality.

**denotation ⟦ϕ⟧** — The set of states in which a CTL formula holds; the model-checking algorithm computes it recursively over formula structure using successor functions and fixpoint iteration.

**denotational semantics** — A style of semantics assigning each program a mathematical object (e.g. the function it computes), contrasted with operational and axiomatic semantics.

**denotational semantics of games** — The meaning of a hybrid game as the winning-region functions on sets of goal states, defined by simultaneous induction with the game-logic formula semantics; compositional, and computed as a fixpoint of monotone set operators.

**deoptimization** — Transferring control from compiled code back to the interpreter when a rare block is reached, reconstructing interpreter state from a small deopt map.

**dependence testing** — Deciding whether two affine array references in a loop nest access the same element for some legal iteration vectors — an integer-linear-programming (NP-complete) problem in which a test must conservatively assume dependence when unsure.

**dependent function type (Π)** — `Π A₁ A₂` with `lam`/`app` and βη equations, whose codomain type `A₂ x` may depend on the argument `x : A₁`.

**dependent sum type (Σ)** — The dependent pair type, in a negative variant (projections `fst`/`snd` with βη) and a positive variant (elimination by `split`), whose second component's type depends on the first.

**dependent types** — Types that may mention program values, so proofs are expressed as programs (Agda, Coq); an alternative verification tradition to imperative logical contracts.

**depth** — The length of the longest path from a tree's root to a leaf, computed recursively as one plus the maximum of the children's depths.

**derivable vs. admissible rule** — A rule is derivable if its conclusion has a fixed derivation from its premises using existing rules (and stays valid under any extension); admissible if provability of its premises always yields provability of its conclusion, but not by one uniform derivation, so it must be re-proved when the language grows.

**derivation (derivation tree)** — A tree of inference-rule instances whose root is the derived judgment and whose leaves are axioms (or assumed premises); the evidence that a judgment holds.

**derived axiom / rule** — An axiom or rule proved from previously-sound axioms and rules within the calculus, hence itself sound without a fresh semantic argument.

**descending chain / lattice height** — A strictly decreasing sequence of lattice values; the height is the length of the longest such chain, and a finite descending chain guarantees a monotone analysis terminates.

**descriptor table / open file table / v-node table** — The per-process descriptor table points into the shared open file table (each entry holding a file position and reference count), which points into the shared v-node table (holding stat info).

**design by contract** — Specifying a contract of pre- and postconditions between a service client and its implementation, so the system works if both parties meet their obligations and responsibility is assigned accordingly.

**design intent / annotations for concurrency** — Programmer intent about which lock protects which state and object ownership, made explicit through tool annotations to enable modular, incremental assurance.

**design pattern** — A named, reusable solution to a recurring (often object-oriented) design problem, described by its name, problem, solution, and consequences, providing a shared design vocabulary (e.g. Strategy, Observer, Singleton).

**design-by-invariant** — Designing a controller and its loop invariant together so the invariant is provable by construction, rather than reverse-engineering an invariant afterward.

**destinations / destination-passing style** — Encoding an ordered context linearly by tagging each proposition with left/right destination parameters, letting a linear framework represent ordered substructural operational semantics.

**determinacy / consistency (of games)** — The theorem that hybrid games are determined and the logic consistent: from each state exactly one player has a winning strategy for a goal, and a goal and its negation cannot both hold.

**determinism / determinacy** — A transition system is deterministic if each state (each non-value expression) has at most one successor; in a deterministic language `⟨α⟩P → [α]P` is valid.

**deterministic parallelism** — The property of pure functional programs that their extensional behavior is independent of scheduling decisions during parallel evaluation.

**developer motivation** — Models of what drives productive work (Maslow's hierarchy, Herzberg's satisfiers/dissatisfiers, autonomy–mastery–purpose); extrinsic rewards can crowd out intrinsic motivation.

**DevOps** — Integrating development and operations to enable frequent, reliable releases through automation of build, test, and deployment.

**dGL axiomatization (Hilbert calculus)** — The sound proof calculus for differential game logic: axioms for the modalities plus rules monotonicity M, fixpoint FP, and induction ind (FP and ind capturing least/greatest-fixpoint reasoning about repetition).

**diagonalization** — Cantor's technique of applying a program to its own encoding to force a contradiction; used in the halting-problem proof and in undefinability/incompleteness arguments.

**diamond axioms** — The diamond-modality counterparts of the box axioms; note that a test under diamond gives a conjunction (`⟨?Q⟩P ↔ Q ∧ P`) rather than the box's implication.

**diamond modality (⟨α⟩P)** — "Some run of α reaches a state satisfying P"; the total-correctness / liveness / reachability modality, requiring α to terminate in a P-state, dual to the box via `[α]P ≡ ¬⟨α⟩¬P`.

**dictionary** — An abstract data type mapping keys to values with `empty`, `insert`, and `lookup`; implemented over ordered keys via association lists or binary search trees.

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

**direct-mapped cache** — A cache with one line per set (E = 1): each block maps to exactly one line, so a tag mismatch evicts and replaces it.

**directory / pathname** — A directory is a file of entries mapping names to files (always containing `.` and `..`); an absolute pathname starts at root `/`, a relative one at the current working directory.

**discarding failed runs** — In a hybrid program, runs whose tests fail are aborted and not considered further (backtracking), so tests constrain which runs are possible.

**discharge / scope of a hypothesis (label u)** — Implication introduction introduces a hypothesis under a fresh label available only above that inference; the hypothesis is discharged there, and violating the scope makes the system inconsistent.

**discrete assignment** — `x := e`, which instantaneously sets variable `x` to the value of term `e` in a hybrid program.

**discrete dynamics** — The control-decision part of a cyber-physical system: instantaneous, jump-like state changes (assignments, tests) made by the controller.

**discrete mathematics of software** — The observation that, because software is built from discrete math, continuous-engineering quality strategies (divide-and-conquer, overengineering, redundancy) fail: small bugs mushroom, redundant copies fail simultaneously, and modularity is defeated.

**disjunction (∨)** — The logical connective with two introduction rules (∨I₁, ∨I₂), eliminated by case analysis (∨E) proving C from A ∨ B using hypothesis A in one branch and B in the other.

**disjunction property** — The theorem that if `⟹ A ∨ B` then `⟹ A` or `⟹ B`, provable because with no antecedents only a right disjunction rule can conclude A ∨ B.

**disjunction ⊕ / falsehood 0 (additive)** — Additive disjunction (internal choice), true if either A or B is achievable from the current resources with the provider deciding which; 0 is the unprovable nullary additive disjunction, whose left rule lets any goal succeed from an impossible state.

**distance and direction vectors** — The distance vector `j − k` gives how many iterations separate a dependence's source and sink; the direction vector records its sign ("=", "<", ">") per loop level.

**distributed computing** — Networking many separate computers and assigning different processes to different machines to gain efficiency beyond what one computer can provide.

**distributed hybrid system (DHS)** — A hybrid system extended with distributed/dimension-changing dynamics: DHS = HS + distributed.

**distributivity** — A dataflow framework is distributive if `f(x ∧ y) = f(x) ∧ f(y)`; distributive frameworks compute exactly the meet-over-all-paths solution, while merely-monotone ones may be less precise but still safe.

**diverging program** — A program that does not terminate.

**dL semantics** — The compositional definition assigning each hybrid program a reachability relation over states and each formula the set of states in which it is true.

**DMA (direct memory access)** — A transfer in which a device controller moves data directly into main memory and interrupts the CPU on completion.

**DNS / domain name** — The Domain Name System, a worldwide distributed database mapping human-friendly domain names to IP addresses.

**DOALL vs. DOACROSS loop** — A DOALL loop has fully independent iterations (no cross-iteration dependence) and pipelines to the resource bound; a DOACROSS loop has recurrences (cross-iteration dependences) that limit achievable parallelism.

**dominance / dominator** — Node d dominates node n if every path from entry to n passes through d (strictly, if additionally d ≠ n); dominance determines where definitions are guaranteed in scope and is computed by a distributive forward analysis with meet = intersection.

**dominance frontier** — For a node n, the set of nodes where n's dominance just stops (n dominates a predecessor of the node but not the node itself); φ-functions for a variable are placed exactly at the (iterated) dominance frontiers of its definitions.

**dominator tree** — The tree in which each node's parent is its immediate dominator; SSA renaming and code-motion legality tests walk this tree.

**double-negation (hiding computational content)** — Because a proof of ¬A carries no computational content, replacing A by ¬¬A "hides" the witness; classically A and ¬¬A are equivalent, but intuitionistically ¬¬A does not imply A.

**double-negation translation (CLL into ILL)** — Interpreting a classical linear sequent intuitionistically as deriving a contradiction, parametric in an atom p; connectives without an intuitionistic counterpart (like ⅋) are handled by negate–dualize–negate, related to CPS conversion.

**down-shift ↓ (thunk / force)** — In call-by-push-value, `↓A⁻` is the value type of a suspended computation (a thunk): `thunk M` introduces it and `force V` runs it.

**DPLL** — The Davis–Putnam–Logemann–Loveland SAT algorithm using unit propagation, pure-literal elimination, and guessing with backtracking; exponential in the worst case but efficient in practice.

**DPLL(T)** — The DPLL variant used by SMT solvers, pairing a DPLL SAT search with theory solvers (T = Theory), dropping pure-literal elimination and adding theory-learned clauses; disjunctions of equalities from nonconvex theories are resolved by case-splitting.

**DRAM cache** — The use of physical DRAM as a fully associative, write-back cache for virtual pages on disk, organized around the enormous (>1 ms) disk miss penalty.

**dual use** — The property that software or a feature built for a legitimate purpose can also be repurposed for harm, raising ethical responsibility in design.

**duality operator (ᵈ)** — The single game operator added to hybrid programs that swaps the roles of Angel and Demon (like turning the board 180°), turning hybrid programs into hybrid games.

**dynamic (JIT) compilation** — An interpreter/compiler hybrid that translates to binary at run time, supporting cross-module optimization and specialization from runtime information; a JIT keeps an interpreter loop, a code cache, profile data, an optimizer, and a cache manager.

**dynamic analysis** — Reasoning about a program by observing its execution on test inputs; defined by a property of interest, an instrumentation mechanism, and the inputs run, giving precise information that does not cover all executions.

**dynamic classification** — Defining `exn` as a type of dynamically classified values: an exception declaration allocates a fresh class (a run-time effect), so by α-equivalence the class name is an unguessable secret shared only between raisers and handlers.

**dynamic dispatch** — Selecting a method implementation at run time from the class/runtime type of the receiving object; resolving it for call-graph construction needs pointer/points-to information.

**dynamic logic** — A modal program logic whose modalities `[α]P` and `⟨α⟩P` talk about program behavior; its axioms decompose program structure until only an arithmetic formula (the verification condition) remains.

**dynamic memory allocation (allocation-site abstraction)** — Modeling heap objects in pointer analysis by their allocation site, so each `new` gets a distinct abstract location.

**dynamic memory allocator** — A component managing the heap as variable-sized allocated and free blocks; explicit allocators (`malloc`/`free`) require the application to free, while implicit allocators reclaim automatically via garbage collection.

**dynamic semantics (dynamics)** — The part of a language definition specifying how programs execute, given as a structural operational (small-step) semantics, an evaluation (big-step) semantics, or an abstract machine.

**dynamic symbolic execution (DSE)** — Symbolic execution that follows concrete executions and forks at branches; sound-but-incomplete for bug finding and able to bound loops.

**dynamic typing** — A discipline in which type clashes are checked rather than unchecked errors: every ill-typed operation transitions to `error` at run time, preserving progress (and hence safety) without a static type discipline.

**dynamic typing as static typing** — The observation that a dynamically typed language is a mode of use of a statically typed one with a single recursive sum type of tagged values, so static typing subsumes dynamic typing without paying for tags where unneeded.

**eager vs. lazy evaluation** — Eager (call-by-value) evaluates a function's argument to a value before substituting; lazy (call-by-name/need) substitutes the unevaluated argument, letting variables stand for general computations.

**eigenvariable / parameter condition** — The freshness side condition requiring the parameter introduced by ∀I (and ∃E) to be genuinely new and not escape its scope; violating it is unsound.

**elaboration** — The compiler pass translating a parse tree into a simpler abstract syntax, resolving concrete-syntax conveniences (e.g. `x += e` into `x = x + e`) and optionally renaming variables to remove shadowing.

**element judgment (a elem)** — The judgment that `a` is an element of the (unspecified) domain of quantification, whose derivations must be well-formed for `A(t)` to be a well-formed proposition.

**ELF (Executable and Linkable Format)** — The unified binary format for relocatable, executable, and shared object files.

**elimination form / elimination rule** — The way a value of a type is consumed (e.g. application for functions, projection for products, `case` for sums, the recursor for naturals); a connective's elimination rules specify how to use it and are derived from its introduction rules.

**emptiness checking** — Deciding whether a Büchi automaton's language is empty, equivalent to finding a reachable strongly connected component (or cycle) containing an accepting state.

**empty / void type (0)** — The type corresponding to falsehood ⊥, with no constructor; its destructor `abort` turns a term of type 0 into a term of any type but never actually computes.

**encapsulation** — Bundling data together with the methods that operate on it inside a class, hiding the representation and exposing only an interface.

**encryption** — Transforming readable plaintext into obfuscated ciphertext using a key so that only intended parties can recover it; reversed by decryption.

**entailment / consequence (Γ ⊨ φ)** — φ true in all models of Γ; in first-order logic it coincides with provability from Γ.

**environment (η)** — The finite map from local variables to their current values (in scope at a program point); read by lookup and updated by assignment, and captured as part of a closure.

**ephemeral vs. persistent propositions** — An intrinsic attribute of a substructural proposition: ephemeral (linear) propositions are consumed by inference, while persistent (unrestricted) ones may be used arbitrarily often and are never consumed ("truth is ephemeral; validity is forever").

**equality reflection** — The rule, in an equational/semantic logical framework, internalizing an equality type/class into a judgmental equality; it supports induction on derivations but requires explicit equality rules.

**equality type vs. identity type** — The extensional equality type (with equality reflection and uniqueness of identity proofs, validating function extensionality) versus the intensional identity type, which shares formation/introduction (`refl`) but has a different elimination and does not validate function extensionality.

**equality with uninterpreted functions (EUF)** — The theory of `=` plus arbitrary function symbols, with reflexivity, symmetry, transitivity, and functional congruence as axioms; array `read` is modeled as an uninterpreted function.

**equivalence axiom** — An axiom stated as a biimplication that rewrites a formula about a program into a structurally simpler one (structurally simpler even when textually longer).

**equivalence-class (partition) testing** — Partitioning the input domain by an equivalence relation so all inputs in a class are expected to behave the same, then testing one representative per class.

**equivalent mutant** — A mutant semantically identical to the original program and therefore impossible to kill, confounding mutation-score measurement.

**erasure (ghost code)** — The guarantee that deleting all ghost fields and computations leaves a program's observable behavior unchanged.

**erasure (type information)** — Understanding a polymorphic language's dynamics by tacitly removing type information (type labels off abstractions, trivializing type abstraction/application), so no type substitution is needed at run time.

**errno** — The global variable a failing system-level function sets to indicate the cause of the error, decoded to a message by `strerror`.

**error** — An incorrect state at execution time caused by a fault (e.g. a buffer overflow, corrupted data, or deadlock arising during a run).

**ESC/Java** — The Extended Static Checker for Java: a tool checking JML Hoare-logic specifications and finding null dereferences and array errors; unlike a hand proof it is deliberately unsound (checks only one loop iteration), so it raises confidence rather than guaranteeing correctness.

**escape analysis / scalar replacement** — Escape analysis finds objects that do not escape a method or thread, enabling stack allocation, replacement of their fields by local scalars (scalar replacement), and synchronization removal; partial escape analysis applies these on the common path and reconstructs objects on rare branches.

**estimation** — Predicting project parameters (effort, duration, cost), iteratively re-estimated as a project proceeds because early estimates are highly uncertain.

**evaluation** — The process by which a well-typed expression is reduced via zero or more steps to a value, an exception, or nontermination.

**evaluation context (C[ ])** — A term with a single hole; congruence is refactored into a judgment "C evctx" plus one rule `M ⇒ M′ ⟹ C[M] → C[M′]`.

**event handler** — A function invoked when a specific event occurs, such as a key press, mouse click, or timer tick.

**event loop** — The framework loop that repeatedly waits for events and redraws the screen, driving an interactive animation or GUI.

**event-triggered control** — A control design where the controller reacts precisely when a physical event (a condition on the continuous state) occurs, modeled by evolution-domain constraints that stop the ODE at the event boundary.

**evolution domain constraint** — The formula Q in `x' = f(x) & Q` that the state must satisfy throughout continuous evolution; the ODE may evolve only while Q remains true.

**exact (computational) equality** — Equality of two terms in a type defined semantically via parametricity/logical similarity, with reflexivity being the parametricity theorem itself; the course's culminating notion of program equality.

**exception (hardware / OS)** — A hardware/software transfer of control to the kernel in response to an event (divide-by-zero, page fault, I/O completion, ctrl-C), dispatched via the exception table.

**exception (language)** — A value signaling a runtime error that can be declared, raised, and handled and may carry data; `raise E` signals it rather than returning, and `e₁ handle E => e₂` recovers.

**exception table** — A table indexed by a per-event exception number whose entries point to the corresponding handlers.

**exceptional control flow (ECF)** — Mechanisms that change control flow in response to system-state changes, present at every level from hardware exceptions to signals and nonlocal jumps.

**exceptions (control and data aspects)** — The control aspect: a computation completes by returning normally or by raising, with a normal and an exceptional continuation. The data aspect: a raised value has type `exn`.

**exchange** — The structural rule permitting antecedents to be reordered; adding exchange to ordered logic yields linear logic (collapsing the ordered multiplicatives while leaving the additives unchanged).

**execution latency** — The number of cycles before an instruction's result becomes available to dependent instructions; the latency-weighted dependence chain forms the critical path bounding a schedule.

**execution trace** — The (finite or infinite) sequence of ⟨program point, memory⟩ pairs a program passes through on a given input; the formal ground truth against which analysis soundness is defined.

**execve** — The system call that replaces the current process's code, data, and stack with a new program, keeping the PID and open files and never returning on success.

**existential quantifier (∃)** — `∃x.A(x)`; introduced by giving a witness t with a proof of A(t), and eliminated (like ∨E) by assuming A(a) for a fresh parameter a and proving a conclusion that must not mention a.

**existential type (∃t.σ)** — The type of an interface to an abstract type; a package bundles a representation type τ with an implementation, and a client `open`s it to use the operations without knowing τ.

**exit status** — The integer a process returns via `exit` (0 = normal), decoded from `wait` with macros like WIFEXITED/WEXITSTATUS.

**EXP (exponential time)** — The complexity class of problems whose only known algorithms take time exponential in the input size; considered intractable in practice.

**explicit free list** — A doubly linked list of only the free blocks (pointers stored in free payloads), making allocation linear in the number of free blocks.

**exponential / of course (!A, "bang")** — Girard's modality allowing an antecedent A to be used arbitrarily often; it precisely separates MALL from full intuitionistic linear logic and factors the ordinary function space as `A → B = (!A) ⊸ B`. In classical linear logic it has a dual `?A` carrying weakening and contraction.

**exponential rules (promotion, dereliction, weakening, contraction)** — The four rules governing `!A`: promotion (provable only when all antecedents are banged), dereliction (dropping the bang to use A), and weakening and contraction on `!A`.

**expression** — A syntactic construct that can be evaluated; when evaluated it may produce a value, raise an exception, or fail to terminate.

**expression DAG** — A directed acyclic graph abstraction of a basic block's expressions that shares identical subexpressions; adequate for pure expressions but awkward across assignments because a variable's value depends on time.

**expression evaluation (ω⟦e⟧)** — The value of expression e in state ω, defined by structural recursion, distinguishing syntactic operators from their mathematical meaning.

**extensional equality class** — In a semantic logical framework, an equality class governing objects of a sort with a unicity rule ("any two witnesses are equal") whose elimination derives the corresponding equality judgment, making equality at function type extensional.

**extensional equivalence** — The equivalence relation on well-typed expressions of the same type: both produce the same value, raise the same exception, or loop forever, and functions map equivalent arguments to equivalent results.

**extensionality** — The property (which the λ-calculus's data representations lack) that functions agreeing on all relevant arguments are equal.

**external / internal choice (& / ⊕ as processes)** — The process reading of the additive connectives: with & the client drives the choice (sends fst/snd), with ⊕ the provider sends the label; the two have identical computation rules with reversed roles.

**external choice (N)** — The n-ary labeled product `N{lᵢ : Aᵢ}` whose client chooses and sends a label and whose provider offers all branches with `case`; "external" because the client decides, giving an object/module-signature style interface.

**external validity** — Whether results obtained from a metric or study generalize beyond the specific context in which they were collected.

**Extreme Programming (XP)** — Kent Beck's agile methodology bundling practices such as test-driven development, pair programming, continuous integration, and an open workspace.

**F-algebra / F-coalgebra (Lambek's Lemma)** — Viewing a lattice as a category, an F-closed (pre-fixed) point is an F-algebra and an F-consistent (post-fixed) point an F-coalgebra; μ(F) is the initial algebra and ν(F) the final coalgebra, and both are fixed points.

**f-string** — A formatted string literal prefixed with `f` in which `{expression}` fields are replaced by the values of the enclosed expressions.

**facade** — A design element providing a single simplified interface to a larger body of code or subsystem.

**failure** — The effect of an error on system capability, e.g. a crash, an attacker gaining control, unresponsiveness, or incorrect output.

**false positive / false negative** — A false positive is a reported defect that is not real; a false negative is a real defect the analysis misses. Over-approximating analyses avoid false negatives (sound), under-approximating ones avoid false positives (complete).

**falsehood (⊥, absurdity)** — The nullary disjunction: no introduction rule, and an elimination (ex falso quodlibet) concluding any C from ⊥.

**family of an induction variable** — The set of induction variables whose value is, at each assignment, a linear function of a given basic induction variable; the unit over which strength reduction operates.

**family of types (functionality)** — A type `Bₓ` depending on `x : A` is an A-indexed family of types: if `M ∈ A` then `[M/x]B type`, and equal arguments yield equal types (functionality); the semantic basis of Π and Σ.

**fault** — A static flaw in software code (a "bug") that causes an error only when triggered by use; may be syntactically local or structurally pervasive.

**fault injection** — A security-testing technique that perturbs the data entering an interface (wrong type, zero length, NULL, out-of-sync, high volume) so mishandling code behaves insecurely, then seeks an exploit for the exposed fault.

**field offset and struct layout** — Each field's byte offset within a struct, computed by laying fields out left-to-right with alignment padding; the offset is used to compute a field's address during access.

**file (Unix model)** — A sequence of bytes; even I/O devices and kernel structures are represented as files.

**file descriptor** — A small nonnegative integer returned by `open` that a process uses to refer to an open file.

**file metadata (stat)** — Per-file data (type, permissions, hard-link count, owner, size, timestamps) read via `stat`/`fstat`.

**file sharing** — Two descriptors referencing the same file via distinct open-file-table entries, each with its own position; `fork` instead makes child and parent share entries and bumps reference counts.

**file system** — Software managing fixed-size disk blocks to provide the file abstraction; formatting designates a superblock (type, size, root directory, free list) and records remaining blocks as free.

**file types** — Regular files (arbitrary bytes), directories (name-to-file maps), and sockets, plus pipes, symbolic links, and device files.

**filibuster game** — The example `⟨(x := 0 ∩ x := 1)*⟩ x = 0` that appears non-determined, resolved by requiring Angel to stop repeating so games have well-defined winners.

**filter** — The higher-order function keeping exactly the elements of a collection that satisfy a given predicate, preserving order.

**finiteness property** — Γ has a model iff every finite subset does; equivalent to compactness.

**first-order function** — A function whose arguments and results are ordinary data values (integers, lists, trees), not functions.

**first-order logic of real arithmetic (FOLR)** — Propositional logic extended with interpreted arithmetic terms and comparisons and quantifiers over reals/integers; a static logic (formulas simply true or false in a state), decidable by quantifier elimination.

**first-order rendition** — The effective translation of a diamond modality over a single computation sequence into an equivalent first-order formula.

**first-order theory (signature Σ, axioms A)** — A theory defined by a signature of constant/function/predicate symbols plus a set of closed axioms, relative to which formulas are judged (T-valid, T-satisfiable, T-decidable).

**fixed point (dataflow analysis)** — A tuple of abstract states unchanged by the whole-program flow function (`Σ = F(Σ)`); the solution a dataflow analysis converges to (not every fixed point is the desired one).

**fixed point (of a function)** — A function f with `f = h f`; general recursion asks for a fixed point of h, realized by the Y combinator.

**flaky test / nondeterminism** — Tests that pass or fail inconsistently due to nondeterministic behavior, timing, or environment, undermining suite reliability.

**floating-point number** — A numeric type representing real numbers with a fractional part, stored only approximately, so exact equality tests between floats are unreliable.

**flow / context / field / path sensitivity** — Axes of analysis precision: flow-sensitive respects statement order (per-point results), context-sensitive distinguishes calling contexts, field-sensitive treats each aggregate field separately, and path-sensitive treats branches as mutually exclusive paths.

**flow function (transfer function)** — A function mapping the abstract state before an instruction or block to the state after it (`f_I`); the abstract semantics of that instruction, defined case-by-case on the statement form, with a block's function the composition of its statements'.

**flow-insensitive analysis** — An analysis that considers only the instructions and ignores control-flow edges/order, trading precision for tractability (as in Andersen's pointer analysis).

**focus judgment** — An added judgment form `[A]` for a proposition in focus, under the presupposition that at most one proposition is in focus; entered by focusing on a positive succedent or negative antecedent and lost at a shift.

**focusing** — A proof-search refinement chaining a maximal sequence of non-invertible choices on one focused formula into a single phase, collapsing redundant search; sound (erasing focus yields an ordinary proof) and complete.

**fold (foldl / foldr)** — Higher-order functions combining a collection's elements with a base value using a binary function, left-to-right (foldl) or right-to-left (foldr); the two are not extensionally equivalent in general.

**fold / unfold** — The isomorphism mediators for a recursive type: `fold` maps the unrolling into the recursive type and `unfold` back; under eager dynamics `fold(e)` is a value only if e is, under lazy dynamics always.

**fork** — The system call that creates a child process with a separate copy of the parent's address space and open descriptors, returning 0 to the child and the child's PID to the parent (it "returns twice").

**fork–join parallelism** — A model in which independent subcomputations are forked and reunited at a well-nested join point that consumes their values, as in divide-and-conquer; the join may be static (fixed task count) or dynamic.

**formal (axiomatic) type theory** — The presentation of type theory as a formal system admitting many interpretations, whose role is pragmatic: writing programs and building proof checkers; contrasted with the computational/semantic presentation.

**formal language** — Any subset of Σ*, the finite-length strings over a fixed finite alphabet Σ; the mathematical notion abstracted from grammar and pattern matching.

**formal technical review** — A structured inspection with defined participation, advance preparation, a moderator-led documented process, and formal follow-up; finds more bugs but costs more than lighter reviews.

**formal verification** — A formal proof that a program meets its specification, often tool-supported, typically expensive, and usually focused on functional attributes.

**forward chaining / saturation** — The bottom-up interpretation deriving new facts from premises (all atoms positive, the basis of Datalog), running until saturation — the state in which no rule produces a new fact — after which the finite database is merely queried.

**forward sequent calculus (Γ → A)** — A calculus writing `Γ → A` for "Γ was actually used to derive A"; sound and complete in the generalized form that any provable sequent has a subset actually used.

**forward vs. backward analysis** — Forward analyses propagate `out[b] = f(in[b])` meeting predecessors' outputs (e.g. reaching definitions); backward analyses propagate `in[b] = f(out[b])` meeting successors' inputs (e.g. liveness).

**forward vs. backward chaining** — Making all atoms positive yields bottom-up, Datalog-style forward chaining (deriving facts from premises until the goal appears); making all atoms negative yields goal-directed, Prolog-style backward chaining.

**forwarding (fwd c a)** — The proof term for the general identity rule, splicing two channels together by forwarding every communication on one to the other and vice versa; operationally a forwarder identifies its two channels and disappears.

**Fourier-Motzkin elimination** — A method for solving systems of linear inequalities by eliminating a variable, replacing `A ≤ x ∧ x ≤ B` with `A ≤ B`.

**FPC** — PCF extended with unrestricted recursive types `rec(t.τ)`; sufficient to encode the untyped λ-calculus, so divergence is unavoidable once recursive types are admitted.

**fractal** — A self-similar geometric figure drawn with recursion, such as the Sierpinski triangle, where each part resembles the whole.

**frame (control-stack frame)** — A single element of the control stack representing a pending computation with a hole (e.g. `ap(−; e₂)`), typed by an input and output type; stacks are typed by matching consecutive frame types.

**free / open source software** — Software distributed with source and the freedoms to use, study, modify, and share; associated with community development, varied motivations, and the "many eyes" quality argument.

**free and bound variables** — An occurrence of a variable is bound if it lies within the scope of a binder for it and free otherwise; the free variables (FV) are those occurring unbound, a term with none is closed, and changing a free variable's name changes meaning.

**fresh variable** — A bound-variable name chosen distinct from every other variable currently in use; the α-equivalence convention guarantees one always exists.

**fuel** — An explicit decreasing integer bound consumed once per iteration, used as a trivial variant to make an untrusted solver's termination easy to prove.

**fully associative cache** — A cache in which any block may be placed in any line; used for the DRAM cache because of its huge miss penalty.

**function composition (∘)** — The higher-order operator with `(f ∘ g)(x) ≅ f(g x)`.

**function patching / update (fₓᵇ)** — The function equal to f everywhere except mapping x to b; used to give semantics to an array store, sidestepping aliasing.

**function pointer** — A value denoting a function's address, allowing indirect calls, so functions can be passed and stored like data.

**function type** — A negative type whose introduction form is λ-abstraction and whose elimination form is application, characterized by how it behaves when applied to an argument; corresponds to implication under Curry–Howard.

**functional congruence** — The axiom `x = y → f(x) = f(y)` (generalized to n-ary functions): equal arguments yield equal function values.

**functional correctness** — The property that a program's behavior matches a precise specification of what it should do; establishing it requires a specification, a mathematical meaning for the code, and a proof that implementation matches specification.

**functional requirement** — A statement of behavior the system must exhibit: the outputs it must produce for given inputs and events.

**functor** — A function from structures to structures, i.e. a parameterized module, used to avoid duplicating closely related structure code.

**fundamental theorem (of a logical relation)** — The theorem a logical relation is designed to satisfy: every well-typed term (under any suitable substitution for its free variables) satisfies the predicate/relation assigned to its type; its proof "writes itself" once the actions on candidates are defined.

**fusion law** — An equivalence letting two passes be merged into one, e.g. `map g (tabulate f n) ≅ tabulate (g ∘ f) n`, avoiding an intermediate structure.

**fuzz testing** — Generating inputs (often randomly) until the program crashes, to find bugs.

**fuzzing roadblocks** — Obstacles to coverage progress such as magic bytes, checksums, dependencies in binary formats, complex input syntax/semantics, and stateful applications.

**gadget** — A short existing instruction sequence ending in `ret`; return-oriented programming places gadget addresses on the stack so each `ret` chains to the next.

**game form vs. winning condition** — The game α defines only the rules/choices; the surrounding modal formula's postcondition φ defines when, and for which player, the game is won.

**Gantt chart / network plan** — Scheduling tools that lay out activities over time and model task dependencies for planning and progress tracking.

**garbage collection** — Automatic reclamation of unreachable heap blocks; mark-and-sweep marks blocks reachable from the roots and sweeps the unmarked ones.

**GCD test / Lamport's test** — The GCD test reports a possible array dependence for `Σ aᵢxᵢ = c` only if gcd(a₁,…,aₙ) divides c (ignoring bounds); Lamport's test handles a single index with equal coefficients, giving the distance when it is an integer within bounds.

**general recursion (fix)** — The construct `fix[τ](x.e)`, which unrolls to `[fix.../x]e`, permitting arbitrary self-reference (and hence divergence) at any type; more expressive than primitive recursion.

**generalization / strengthening** — Replacing a postcondition by a stronger loop invariant that holds initially, is preserved, and implies the goal; a correct invariant is usually stronger than the property ultimately wanted.

**generalizing the induction hypothesis** — Strengthening the statement to be proved (e.g. quantifying over an accumulator) so an otherwise-failing induction goes through; no general recipe exists.

**generativity** — The property that each `open` of an existential package introduces a fresh, distinct abstract type, realized by renaming the bound type variable; abstract types are held abstract only during type checking, with no run-time cost.

**generator** — The introduction form `gen[σ](e; x.e₁)` for a coinductive type: a state machine that, on demand, yields the next observation; the dual of the recursor.

**getaddrinfo** — The modern, reentrant, protocol-independent function converting host/service strings into a list of socket address structures, replacing gethostbyname.

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

**graph (data structure)** — A collection of nodes connected by edges with fewer restrictions than a tree — any node may connect to any other — optionally carrying weights and directions, used to model maps, networks, and relationships.

**graph coloring** — Assigning one of k colors (registers) to each interference-graph node so no adjacent nodes share a color; k-colorability is NP-complete for k > 2, so a simplify/select heuristic removes low-degree nodes onto a stack, then pops and colors.

**graphics primitives** — The basic drawing operations of a graphics library — lines, rectangles, ovals, polygons, and text — each parameterized by position, fill, and outline.

**greedy algorithm** — An algorithm that commits to a locally optimal choice at each step; it may fail to find a solution requiring backtracking.

**greedy coloring** — Coloring interference-graph nodes in an elimination order, each with the lowest color not used by its already-colored neighbors; optimal on chordal graphs.

**greedy schedule** — A schedule that assigns as many processors as possible to available work at every time step.

**guard / constraint / fact (PREfix model)** — Along a symbolically executed path, the guard is what must hold for the path to be taken, constraints are the preconditions for successful execution, and facts are what is known to be true; together they form a function summary.

**Gödel generalization rule (G)** — From a valid P infer `[α]P`: if P holds always, it holds after every run of α; the rule discards the surrounding context.

**Gödel numbering** — An effective encoding of expressions as natural numbers, from which the expression can be recovered.

**Halstead volume** — A size/complexity metric derived from counts of operators and operands in the code.

**halting problem** — The undecidable problem of deciding, for a program and an input, whether the program terminates on that input; no total procedure decides it for all cases.

**handle (exception)** — The construct `e₁ handle E => e₂` that evaluates e₂ if e₁ raises exception E and otherwise behaves like e₁; used for graceful error recovery.

**handle (shift-reduce parsing)** — In shift-reduce parsing, the substring on the stack that matches a production's right-hand side and is the correct next reduction; recognizing handles is the core problem of bottom-up parsing.

**happens-before race detection** — Dynamic detection reporting a race when two conflicting accesses are unordered by the happens-before relation; more precise than lockset analysis but more expensive.

**happens-before relation** — A partial order over program events induced by program order plus synchronization (e.g. release-before-acquire); two conflicting accesses unordered by it constitute a data race.

**harmony** — The balance in which a connective's elimination rules are neither too strong nor too weak relative to its introduction rules, so the rules may be read as a definition; established locally by local soundness and local completeness (identity expansion and cut reduction).

**hash function / hash table** — A hash function deterministically maps a value to an integer; a hash table uses it to store and retrieve key–value data in roughly constant time.

**hazard** — The product of failure probability and severity, equivalent to risk exposure; severity is the cost of a failure to stakeholders.

**head expansion** — Closure of a computability predicate under reverse execution: if the predicate holds of M and `M' ↦ M`, then it holds of M'; valid because the predicate speaks only of a term's evaluation behavior.

**head reduction / weak head reduction** — Performing one β-reduction at the outermost level of a term; the deterministic evaluation strategy (at most one reduction per closed term) corresponding to lazy execution, which must be followed if a normal form is to be reached.

**header (natural loop)** — The single entry node of a natural loop, which dominates every node in the loop.

**heap** — The region of process virtual memory managed by the dynamic allocator at run time (grown/shrunk via the break); as a mutable store it is the map from addresses to stored values that models dynamically allocated memory.

**heap modeling** — How heap storage is abstracted in pointer analysis: heap-merged (all heap is one location), allocation-site (one abstract location per allocation site), or shape analysis (recognizing lists, trees, DAGs).

**hereditary (canonizing) substitution** — A type-directed substitution that re-canonizes on the fly (returning the canonization of `[M/x]N` rather than an unreduced application), indexed by the spine of the substituting term's type; well-defined by a lexicographic induction.

**hereditary termination** — A type-indexed family of predicates strengthening mere termination: a hereditarily terminating function yields a hereditarily terminating result on hereditarily terminating arguments; defined by induction on type structure and used in the normalization proof.

**hexadecimal (base 16)** — A base-16 representation using digits 0–9 and A–F, a dense human-readable form for bit patterns (written with a `0x` prefix in C).

**Heyting arithmetic** — Intuitionistic arithmetic over the natural numbers (the constructive counterpart of Peano arithmetic).

**higher-order abstract syntax** — Representing a binder's scope by an actual metalanguage function, so bound variables are metalanguage variables and object-language substitution is the framework's own substitution.

**higher-order function** — A function that takes a function as an argument and/or returns a function as a result.

**Hoare logic** — A formal system of rules (assignment, sequence, conditional, loop) for reasoning about program correctness via pre- and postconditions; a foundation for static-analysis and verification tools, generalized by separation logic and expressible in dynamic logic.

**Hoare triple** — The notation `{P} S {Q}`: if precondition P holds and statement S terminates, then postcondition Q holds afterward.

**Horn clauses** — The restricted fragment for logic programs (definite clauses and goals built from atoms, conjunction, implication, and quantifiers); backward chaining over Horn clauses corresponds exactly to focusing with negative atoms.

**HTTP** — The request/response protocol over a TCP connection in which a client sends a request line and headers and the server returns a status line, headers, and content.

**hybrid game** — A game whose rules, choices, and dynamics are described in hybrid-program notation, giving two players (Angel and Demon) competing control over the dynamics.

**hybrid program** — The programming language of differential dynamic logic for describing hybrid systems, with assignment, test, ODE, sequential composition, nondeterministic choice, and nondeterministic repetition; everything is nondeterministic, analogous to regular expressions.

**hybrid system** — A mathematical model of a system with interacting discrete and continuous dynamics (discrete control decisions plus differential equations): HS = discrete + ODE.

**hypothetical and general judgment (Γ ≫ J)** — The extension of the categorical judgments to open terms under a context Γ; a hypothetical judgment asserts a judgment holds functionally in its assumptions (the general/generic judgment form being central to defining logical systems).

**hypothetical judgment** — A judgment `Γ ⊢ J` (or `J₁,…,Jₙ ⊢ J`) established under assumptions/antecedents; reasoning under hypotheses is discharged by substitution, and a sequent is its sequent-calculus presentation.

**I/O redirection / dup2** — Making a descriptor refer to a different open file; `dup2(oldfd, newfd)` copies oldfd's open-file entry into newfd, as the shell does for `>` redirection.

**IDE (integrated development environment)** — An editor-plus-interpreter tool for writing, running, and debugging programs (e.g. Thonny), holding the saved source and running the code.

**identity as forwarding** — In the proofs-as-processes reading, the identity rule is a forwarder process that globally unifies (identifies) its two channels and then disappears.

**identity elimination** — The theorem that identity restricted to atomic propositions suffices: `A ⊢ A` is cut-free provable for any compound `A` by iterated identity expansion.

**identity expansion / identity theorem** — The check that the identity `A ⊢ A` at a compound proposition can be rebuilt using only identities at its subformulas; verifies the left/elimination rules are strong enough (not too weak), and in its global form shows `Γ, A ⟹ A` is derivable for every proposition, the counterpart of local completeness.

**identity rule (id)** — The judgmental sequent rule `Γ, A ⊢ A` (initial sequent) concluding a succedent from a matching antecedent, restricted to atomic propositions in cut-free systems; a proof branch closes when a succedent also appears among the antecedents, linking the left and right judgments.

**IFDS framework** — An efficient interprocedural dataflow algorithm available when the flow functions are distributive; the practical alternative to general context-sensitive analysis.

**Impact = Effectiveness × Applicability × Trust** — The practitioner's framing that a program-analysis tool's real-world success is effectiveness (precision/recall) times applicability ("you cannot find bugs in code you do not analyze") times trust (which erodes when output is noisy), not effectiveness alone.

**implication (⊃)** — The connective `A ⊃ B`, true when `B` holds under the hypothesis `A`; introduced by discharging that hypothesis (⊃I) and eliminated by modus ponens (⊃E); corresponds under Curry–Howard to the function type.

**implicit conversion to unsigned** — In an expression (including comparisons) mixing signed and unsigned operands, the signed operand is silently converted to unsigned, producing surprising results.

**implicit free list** — A heap organization tracking all blocks (allocated and free) via each block's size field, so allocation is linear in the total number of blocks.

**implicit proof obligation** — A hidden verification condition generated by a language construct: pattern matches must be exhaustive, `div`/`mod` require a nonzero divisor, array accesses require in-bounds indices, and structures with invariants require the invariant.

**impredicativity** — The self-referential character of System F's `∀`, which may be instantiated at any type including one built from itself; a source of foundational concern (proved consistent by Girard) that blocks defining a type interpretation by naive induction on type structure.

**in-order traversal** — Visiting a non-empty binary tree's left child, then its root, then its right child; used to flatten a tree to a list and to define when a tree is sorted.

**incompleteness of first-order DL** — The theorem that first-order dynamic logic has no effective sound-and-complete calculus, shown via failure of compactness in DL.

**inconsistent / vacuous specification** — A set of axioms or an invariant that derives a contradiction (inconsistent, equivalent to `false`) proves everything including wrong obligations; a vacuously-true specification (equivalent to `true`) says nothing.

**inconsistent system** — A deduction system in which every proposition is derivable; useless for proof (natural deduction becomes inconsistent if hypothesis-scope restrictions are violated).

**independence principle** — In adjoint logic, the invariant that a stronger-mode succedent may not depend on weaker-mode antecedents; it fixes the shift rules and forces three cut rules instead of four.

**indicative vs. optative mood** — The indicative mood states facts true of the environment as-is; the optative mood states the desired environment once the machine is present (to-be). Requirements are written in optative mood at the environment–machine interface to avoid implementation bias.

**induction and coinduction principles** — Dual proof principles: the least fixed point yields rule induction (to show `μ(F) ⊆ A`, show `A` is F-closed), the greatest yields coinduction (to show `A ⊆ ν(F)`, show `A` is F-consistent).

**induction axiom (I)** — The sound loop-induction principle `[α*]P ↔ P ∧ [α*](P → [α]P)` of (differential) dynamic logic, valid by induction on the iteration count and the source of the loop-invariant rule; contrast the unsound naive `[α*]P ↔ P ∧ (P → [α]P)`.

**induction hypothesis** — Within an inductive proof, the assumption that the property holds for the smaller case(s), from which the inductive step derives it for the current case.

**induction rule (natE)** — The elimination rule for the type of natural numbers: prove `C(n)` by proving the base `C(0)` and the step `C(s x)` under the parametric hypothesis `C(x)`; computationally the recursor, and exactly proof by mathematical induction.

**induction rule for loops (ind)** — The rule `J ⊢ [α]J` (the invariant is inductive/preserved) underlying loop reasoning, generalized to `[α*]` via Gödel generalization.

**induction variable** — A variable that changes by a fixed amount each loop iteration: basic (only in-loop updates `X = X ± c`) or derived (a linear function `c1·B + c2` of a basic one); recognizing induction variables enables strength reduction.

**induction-variable elimination / loop-test replacement** — Removing a basic induction variable used only to compute other induction variables and the loop test, by rewriting the test on a derived variable and cleaning up with copy propagation and dead-code elimination.

**inductive definition** — A collection of inference rules defining one or more judgments as the least (strongest) assertion closed under the rules; the least fixed point of the monotone operator that closes a set under the rules.

**inductive type (μ(t.τ))** — A positive type that is the least type closed under its constructor `fold`, whose elements are exactly those built by finitely many applications of the type operator (e.g. `nat = μ(t. unit + t)`).

**infeasible path** — A path through a control-flow (or interprocedural) graph that cannot occur in any real execution (e.g. entering a function from one call site and returning to a different one); a source of imprecision to eliminate.

**inference rule** — A schema `J1 … Jn / J` asserting that the conclusion `J` may be derived whenever the premises `J1,…,Jn` are; a rule with no premises is an axiom, and rules inductively define judgments.

**infinitary / relative / arithmetical completeness** — The positive completeness results that hold for dynamic logic despite its incompleteness: sound-and-complete infinitary axiomatizations exist, as do relative/arithmetical completeness results (completeness modulo an oracle for arithmetic).

**infinite recursion / stack overflow** — Recursion that never reaches a base case, growing the call stack without bound until it is exhausted and the program crashes.

**inflationary semantics** — Defining a game repetition's winning region `ςα*(X)` as the union of iterated winning regions over all ordinals, until the construction stabilizes.

**information hiding** — Encapsulating design decisions (especially those likely to change, or a structure's helper components/invariants) behind a stable interface so that changes do not ripple through the system and clients cannot violate the hidden invariants.

**inheritance** — Defining a class as a subclass of an existing superclass so that it acquires the superclass's attributes and methods and may extend or override them.

**initialization checking** — The static-semantic property that every variable is defined before it is used; specified as a may-property so that any possible use of an undefined variable is rejected.

**initiation interval (II)** — The constant number of cycles between the starts of successive iterations of a software-pipelined loop; minimizing it (NP-complete in general) lower-bounds per-iteration time.

**inlining** — Substituting a function's body into its callers, eliminating call overhead and exposing further optimizations across the former call boundary, at the cost of code size.

**insertion policy (LIFO / FIFO / address-ordered)** — Where a newly freed block goes in an explicit free list: at the front, at the back, or in address order (which studies show fragments less).

**insertion sort** — Sorting by repeatedly inserting each element into its place in an already-sorted list; O(n²) work with no parallelism.

**inspection checklist** — A short (about seven items) list focusing reviewers on likely error sources, priority issues, and historical problems; started from a known source and refined by experience, and used to make inspections systematic and counter reviewer fatigue.

**inspection roles** — The defined participants of a formal review: the moderator (organizes and keeps it on track, impartial), the recorder/scribe (logs defects), the reader (presents and interprets the material, distinct from the author to reveal ambiguities), and the author.

**instance (of a class)** — A particular object produced by calling a class, having its own attribute values (e.g. `'abc'` is an instance of `str`).

**instance (of a type)** — A type obtained by substituting concrete types for the type variables of a polymorphic type; a polymorphic expression may be used at any instance.

**instruction scheduling** — Reordering independent instructions to keep the processor pipeline/functional units busy and hide operation latencies while respecting resource, data-, and control-dependence constraints; the core problem is NP-hard.

**instruction selection** — Translating IR trees / abstract assembly into concrete target instructions, typically via tree pattern matching (tiling), choosing machine instructions that implement each IR operation.

**instruction set architecture (ISA)** — The processor-design contract a programmer must understand — the instruction set and registers — distinct from the microarchitecture that implements it.

**instruction-level parallelism (ILP)** — Executing several instructions per cycle across a CPU's multiple functional units, exploited by loop unrolling and scheduling.

**instrumentation** — Inserting probes into source, bytecode, or binary (via code transformation) to collect information about a program run; the measured event should be far longer than the instrumentation overhead to be trustworthy.

**integer (floor) division** — The division operator (`//`) that discards the fractional part, rounding toward negative infinity.

**integer sign analysis** — A dataflow analysis tracking whether each variable is `<0`, `=0`, `>0` (with refinements `≤0`, `≥0`, `≠0`) or unknown; an extension of zero analysis.

**integration testing** — Testing the interactions and protocols between modules once combined, done incrementally to avoid risky "big bang" integration.

**interactive vs. sequential computation** — The shift from programs where one player resolves all choices to games where some choices help and others hinder (adversarial or multi-agent settings).

**intercalation** — The proof-search reading of verifications: working "toward the middle," applying introduction rules from below and elimination rules from above.

**interference (concurrency)** — In a process calculus, the problem that a third process can "steal" a synchronization intended between two others; it contains essentially all the difficulties of concurrent programming, and is prevented by private channel restriction.

**interference (register allocation)** — Two temporaries/pseudo-registers interfere when they cannot share a register because their live ranges overlap at some point.

**interference graph** — The undirected graph with a node per live range and an edge between every interfering pair; register allocation with k registers reduces to k-coloring it.

**intermediate representation (IR)** — A machine- and source-independent internal program form (often RISC-like) sitting between the AST and target assembly, over which analyses and optimizations run, enabling one optimizer to serve many front and back ends.

**internal choice (⊕)** — The n-ary labeled sum `⊕{lᵢ : Aᵢ}` whose provider chooses and sends a label and whose client receives and branches with `case`; "internal" because the provider decides.

**internal vs external fragmentation** — Internal fragmentation is payload smaller than block size (header/alignment/policy overhead); external fragmentation is enough total free memory but no single free block large enough.

**interpretation (I)** — The fixed assignment of meanings to function and predicate symbols against which a formula's validity (`I ⊨ φ`) is judged.

**interpreter pipeline** — The stages parse → elaborate → execute → format: a parser produces an AST, an elaborator validates it against the statics producing an ABT, an executor runs it per the dynamics, and a formatter renders the result; a compiler is one strategy for implementing the executor.

**interprocedural analysis** — Analysis that reasons across function-call boundaries (across whole flow graphs), needed because most real errors span multiple functions and facts flow between caller and callee.

**interprocedural CFG (ICFG)** — A single control-flow graph connecting call sites to callee entries and returns (effectively inlining calls), with call/return/local flow functions; more precise than default assumptions but imprecise where it merges call-site information and models infeasible call/return pairs, and it does not scale.

**intersection closure** — The lemma that the intersection of two pre-fixpoint solutions is again a solution, yielding the least one.

**intervals / graph depth** — The nesting depth of a reducible flow graph equals the depth of its intervals; iterative dataflow needs about depth + 2 passes (average depth ≈ 2.75, independent of program length).

**intraprocedural analysis** — Analyzing one function body in isolation via its own CFG; models separate compilation but cannot reason across calls.

**introduction and elimination forms** — The constructors that produce values of a type (introduction form, e.g. λ-abstraction, pairing, injection, zero/successor) and the operators that consume them (elimination form, e.g. application, projection, case, the recursor).

**introduction rule** — A logical rule specifying how to conclude (introduce) a connective, thereby defining its meaning (e.g. ∧I concludes `A ∧ B` from `A` and `B`); under Curry–Howard the value constructor.

**intuitionism** — Brouwer's view that mathematics is the carrying out of effective mental constructions, so a proposition is asserted only when we possess a construction (proof) for it, rather than by appeal to absolute external truth; logic is grounded in constructive mathematics.

**intuitionistic (Martin-Löf) type theory** — A codification of Brouwer's constructivism in which computable constructions are classified by types specifying their abstract properties; simultaneously a constructive mathematics and a comprehensive theory of computation.

**intuitionistic meaning of the connectives (BHK interpretation)** — The informal definition of truth by construction: a proof of `A ∧ B` is a proof of each; of `A ∨ B`, a proof of one disjunct; of `A ⊃ B`, a construction transforming a proof of `A` into one of `B`; of `∃x.A`, a witness with a proof; of `∀x.A`, a construction mapping each element to a proof.

**inversion** — Reasoning that, given a derivable judgment, enumerates exactly the rules that could have concluded it and recovers their premises; zero possible rules yields a contradiction, one yields a subderivation.

**inversion phase and focusing phase** — The two alternating phases of a focusing proof: an inversion phase decomposes all invertible connectives down to a stable sequent (a confluent don't-care choice), then a focusing/chaining phase decomposes one chosen proposition until focus is lost.

**inversion staging (right-inversion / left-inversion / choice)** — Three mutually dependent sequent forms that stage proof search as: decompose right-invertibles, then left-invertibles, then reach a choice sequent, and repeat.

**invertible rule** — A rule whose premises hold iff its conclusion does, so it can be applied bottom-up in search without backtracking; the basis of focusing's inversion phase.

**IP / UDP / TCP** — IP provides unreliable host-to-host packet delivery and the naming scheme; UDP adds unreliable process-to-process datagrams; TCP adds reliable process-to-process byte streams over connections.

**IP address / dotted-decimal / network byte order** — A 32-bit (IPv4) host identifier stored big-endian (network byte order) and written as four dot-separated decimal bytes; IPv6 uses 128-bit addresses.

**iso-recursive types** — The formulation in which a recursive type and its unrolling are isomorphic rather than equal, with explicit `fold`/`unfold` witnessing the isomorphism (inductive under eager dynamics, coinductive under lazy).

**iterable** — A type whose elements can be visited one at a time by a for-each loop, such as a list, string, set, or range.

**iterated dominance frontier** — The fixed point of taking dominance frontiers (each inserted φ-function is itself a definition); it gives the minimal set of φ placements, computed on the fly by the defsites worklist algorithm.

**iterated winning region** — The transfinite iteration `ςα⁰(X) = X`, `ςα^{κ+1}(X) = X ∪ ςα(ςα^κ(X))` with unions at limit ordinals; the explicit inflationary construction of a game repetition's semantics.

**iterative algorithm (dataflow)** — The standard dataflow solver: initialize each node's output (to Top for interior nodes), then repeatedly recompute inputs via the meet and outputs via transfer functions until no value changes (a fixed point); the worklist algorithm is its efficient refinement.

**iterative and incremental development (IID)** — Building a system in repeated cycles that add and refine functionality (rooted in Shewhart's plan-do-study-act cycles), addressing risk through feedback.

**iterative vs concurrent server** — An iterative server handles one request at a time; a concurrent server uses multiple flows to serve several clients at once.

**IV&V** — Independent Verification and Validation, in which a separate test organization implements part of the test plan.

**J (identity elimination)** — The eliminator for the intensional identity type, whose computation rule fires on `refl`; the identity type `Id_A` is "the least reflexive relation" on `A`, a formulation flagged as circular because it is defined uniformly, independently of `A`.

**Java Modeling Language (JML)** — A notation for writing pre-/postconditions and invariants as annotations (`requires`, `ensures`, `loop_invariant`, `\result`, `\forall`) in Java source, checked by tools such as ESC/Java.

**jmp and conditional jumps** — Unconditional `jmp` and condition-code-driven jumps (`je`/`jne`/`jl`/`jg`…) that implement control flow as goto-style branches.

**join (least upper bound, ⊔)** — The operation merging two abstract values at a control-flow confluence, yielding the least element that is an upper bound of both (the "most precise generalization"); commutative, associative, and idempotent.

**join node** — A node with multiple predecessors (forward) or successors (backward) where the meet/join operator combines the several incoming dataflow values.

**judgment** — An assertion that a property holds of an object (e.g. `A true`, `M : A`, `Γ ⊢ e : τ`, `a ⇓ n`); the basic unit that inference rules inductively define, and that we may come to know.

**judgment vs. proposition** — Following Martin-Löf, the objects of inference are judgments about propositions (e.g. `A true`, `A eph`) rather than propositions themselves; keeping the two strictly separate is a cornerstone of the judgmental method.

**judgmental vs. propositional rules (structural rules)** — Identity and cut are judgmental (structural) rules concerned only with the nature of the hypothetical judgment; the right/left rules are propositional, defining individual connectives.

**K axiom (modal modus ponens)** — `[α](P → Q) → ([α]P → [α]Q)`: the modal distribution axiom, distributing the box modality over implication (with a dual diamond form).

**K machine (control stacks)** — An abstract machine for call-by-value PCF whose states pair a control stack with an expression (`K ▷ e` evaluating `e`, `K ◁ v` returning `v` to `K`), avoiding the search rules of structural dynamics and making control features easy to express.

**k-limiting** — Bounding context length (k-call-strings or k-value-contexts, or unrolling loops to depth k) to keep the number of contexts/paths finite and analysis tractable.

**Kanban board** — A visual board showing work items moving through stages (to-do, in-progress, done) to manage flow and limit work in progress.

**kernel** — The shared, memory-resident OS code that manages processes, running in the context of an existing process rather than as a separate one.

**KeYmaera X** — The hybrid-systems theorem prover implementing the differential-dynamic-logic uniform-substitution calculus, in which CPS models are designed and proved.

**kinds, families, objects** — The logical framework's three levels: kinds classify type families, families (types) classify objects; in the equational reformulation, classes, the universe `Sort`, and objects.

**Kleene algebra / regular expressions** — The algebraic structure of regular expressions (`r ::= a | 1 | r·s | 0 | r+s | r*`) with its laws (units, associativity, idempotent iteration), mirrored in the algebra of programs.

**Knaster–Tarski theorem** — Every monotone function on a powerset (complete lattice) has least and greatest fixed points, computable by iterating from `∅` (up) or the full set (down); on a finite state space the iteration terminates.

**Kripke logical relations** — A generalization of Tait's method to open terms in which computability predicates are indexed by a possible world (a variable context) and must be monotone with respect to world extension.

**Kripke structure** — A set of states with a transition relation, a labeling of atomic propositions at each state, and initial states; a computation structure additionally requires the state set to be finite and every state to have a successor.

**l-value (destination)** — The left-hand side of an assignment (`d ::= x | *d | d[e] | d.f`) that denotes a location to write, as opposed to an ordinary expression that denotes a value.

**LALR parsing** — Look-Ahead LR: a space-efficient LR variant (merging LR(1) states with identical cores) that is the basis of common parser generators.

**lambda abstraction (λ-abstraction)** — The expression `λx. e` (written `fn x => e`, `lam(x.e)`) denoting an anonymous function with parameter `x` and body `e`; the introduction form for the function type / implication, binding `x` in `e`.

**lambda calculus (λ-calculus)** — Church's minimal calculus of variables, abstraction, and application, with β-reduction as its sole computation rule; a universal model of computation and the simplest setting for studying functional programming.

**Lambek calculus** — Lambek's (1958) ordered logic for describing the syntax of natural language, in which hypotheses are kept in order; parsing becomes proof construction and proofs are parse trees.

**landing pad** — Transforming `while p do body` into `if p { preheader; repeat body until ¬p }` so a preheader executes only when the loop is actually entered, making speculative hoisting safe.

**language inclusion formulation** — `K ⊨ P` iff `L(K) ⊆ L(P)`, i.e. every behavior of the system is allowed by the specification; checked via `L(K) ∩ complement(L(P)) = ∅`.

**latency and pipeline hazards** — Latency is the delay before an instruction's result is available; a hazard is a pipeline stall arising when a dependent instruction issues too soon. Scheduling reorders code to avoid hazards.

**lattice** — A set of abstract elements with a partial order `⊑` ("at least as precise as"), a join `⊔`, a bottom `⊥` (unanalyzed/least element), and a top `⊤` (least precise/greatest element); the value structure of a dataflow analysis.

**law of excluded middle vs. proof by contradiction** — The intuitionistically crucial distinction between proving `A` by assuming `¬A` and deriving a contradiction (rejected) and proving `¬A` by assuming `A` and deriving a contradiction (accepted); classically indistinguishable.

**law of the excluded middle** — The classical principle `A ∨ ¬A`, rejected in general by intuitionists because we may possess neither a proof of `A` nor a refutation of it.

**law of the excluded middle (via continuations)** — A program of type `τ + τ cont` (`letcc(ret. l · letcc(x. throw(r · x; ret)))`) that "changes its mind" by backtracking through a captured continuation, illustrating the Curry–Howard reading of first-class control as classical logic.

**layered architecture** — A style organizing the system into layers where each provides services to the one above and depends only on those below, improving modifiability and portability.

**laziness / lazy evaluation** — Demand-driven computation that evaluates only as much of a data structure as needed, enabling potentially infinite data; side-steps the eager call-by-value default.

**lazy product (τ1 & τ2) / parallel bind** — The type of two encapsulated computations evaluated in parallel; its elimination form `parbnd` evaluates both and binds their eager pair at the join point.

**leader** — The first instruction of a basic block: the first instruction of the program, any jump target, or any instruction immediately following a jump.

**leaq** — Load-effective-address: sets the destination to the address computed by an addressing-mode expression without touching memory or condition codes; used for pointers and for `x + k·y` arithmetic.

**least (μ) and greatest (ν) fixed point** — `μ(F)` is the intersection of all pre-fixed points (the strongest property closed under `F`); `ν(F)` is the union of all post-fixed points (the weakest property consistent with `F`), yielding induction and coinduction respectively.

**least fixed point (LFP)** — The solution an iterative/worklist dataflow analysis actually computes (the largest of the fixed points a monotone framework admits from `⊥`); for monotone frameworks `LFP ⊑ MOP`, coinciding when flow functions are distributive.

**least privilege** — The principle that an application should always execute with the minimum privileges possible, so a single bug does less damage.

**least-fixpoint characterization of repetition** — `ςα*(X)` as the smallest pre-fixpoint `⋂{Z : X ∪ ςα(Z) ⊆ Z}`, ensuring a player wins a game loop only by well-founded repetition; the demonic dual is the greatest fixpoint.

**left and right rules** — In the sequent calculus, per-connective rules where a right rule decomposes an operator in the succedent (from the introduction rules) and a left rule decomposes one in an antecedent (from flipping the elimination rules).

**left recursion (and left factoring)** — A grammar rule `A → A α` that causes non-termination in top-down parsers and must be eliminated; left factoring additionally factors shared rule prefixes so a recursive-descent/LL(1) parser can decide with one lookahead symbol.

**left shift (`x << y`)** — Shifts `x` left `y` positions, discarding high bits and filling zeros on the right; computes `x·2ʸ`.

**leftmost derivation** — A derivation that always expands the leftmost nonterminal first; top-down parsers construct leftmost derivations, and multiple distinct ones show a grammar is ambiguous.

**leftmost-outermost / normal-order reduction** — The reduction strategy that always reduces the leftmost, outermost redex; it is complete, finding a normal form whenever one exists.

**lemma** — An established correctness property (or needed mathematical fact) that can be cited when proving the correctness of later functions or theorems.

**let expression** — A construct `let val … in e end` introducing local bindings visible only within the body `e`.

**letcc / throw** — `letcc(x.e)` binds the current continuation to `x` within `e`; `throw(e; k)` abandons the current control state and resumes the reified continuation `k`; together they give first-class control.

**lexical analysis (lexing / tokenizing)** — The first compiler pass, scanning the raw character stream and grouping it into tokens (identifiers, keywords, literals, operators) governed by regular expressions, discarding whitespace and comments.

**lexicographically positive dependence** — A dependence whose direction vector is positive in its first non-"=" component; loop interchange is legal only if all dependences remain lexicographically positive after the swap.

**Lie derivative (Sophus Lie)** — The classical total derivative of a quantity along a vector field; a differential invariant is the logical formulation of Lie's characterization of invariance under an ODE.

**lifted lattice** — A per-variable lattice built by mapping each variable to a value lattice, with join and `⊑` computed pointwise; lifting a complete lattice yields another complete lattice.

**linear hypothesis / resource** — An assumption "A res" that must be used exactly once, behaving as a consumable resource expressing ephemeral truth about the current state.

**linear implication (lollipop, A ⊸ B)** — The single linear implication (`A \ B = B / A` once exchange collapses the two ordered implications), true if `B` is achievable given the additional resource `A`; as a resource it consumes an `A` to produce a `B`, and its rules split the multiset context freely.

**linear inference** — Inference that consumes the propositions used as premises and produces those in the conclusion, effecting a change of state ("linear inference can change the world"), in contrast to ordinary inference which only accumulates knowledge.

**linear logic** — Girard's resource-aware "logic of state" in which each hypothesis must be used exactly once; gives a direct logical account of state change by adding linear (consumable) assumptions to ordinary ones.

**linear negation (A⊥)** — In classical linear logic, an involutive negation (`(A⊥)⊥ = A`) under which connectives are defined by right rules plus negation; identity becomes `⊢ A, A⊥` and cut cuts `A` against `A⊥`.

**linear search** — Searching by examining each element of a collection in turn until the target is found or the data is exhausted; O(n).

**linear temporal logic (LTL)** — A linear-time temporal logic interpreted over individual traces, with operators Next, Globally, Eventually, and Until; `K ⊨ P` iff every trace of `K` satisfies `P`.

**linear type system** — A substructural system with neither weakening nor contraction, so every variable is used exactly once (variables as resources); its rules split the context between subterms.

**linker** — The program (`ld`) that combines relocatable object files into an executable by symbol resolution and relocation.

**linter** — A tool applying many lightweight static checks for style and likely-bug patterns (e.g. Checkstyle, FindBugs, language-specific linters).

**list** — The recursive datatype `nil | :: of t * list`; sugar `[e1,…,en]` and the right-associative infix cons `::` build lists.

**list comprehension** — A concise expression that builds a list by looping over an iterable, optionally filtering with a condition, e.g. `[i for i in range(10) if i%2==0]`.

**list scheduling** — The standard basic-block scheduler: cycle by cycle, pick from a ready list (instructions whose operands are available and resources free) using a priority function (e.g. latency-weighted depth), with a tie-breaking rule.

**list segment (segA = listA / listA)** — A list missing its tail, i.e. a list-to-list function realized as a process; supports prepend/postpend/concatenate, behaving like a deque whose elements cannot be removed.

**listening vs connected descriptor** — A server's long-lived listening descriptor accepts connection requests; each `accept` returns a fresh connected descriptor for communicating with one client.

**literal vs. contextual reading** — Two readings of an axiom like `[:=]`: `p(x)` as a genuine predicate `p` applied to `x` (literal) versus a formula context `p(·)` with a hole (contextual); the literal reading plus uniform substitution avoids formalizing contexts.

**little-endian** — Byte order with the least-significant byte at the lowest address (x86-64, ARM on common platforms).

**live range** — The set of program points over which a temporary/definition is live; two live ranges interfere exactly when they overlap, and overlapping ranges of one variable merge into equivalence classes (webs).

**live variable analysis (liveness)** — A backward dataflow analysis computing which variables may be used along some future path (are live) at each program point, via `in[b] = Use[b] ∪ (out[b] − Def[b])`; motivates register allocation and dead-code elimination.

**live-in / live-out** — The sets of variables live on entry to and exit from an instruction or block, related by the standard liveness equations over the block's use and def sets.

**live-range splitting** — Breaking a long live range into shorter ones by inserting a copy, making the interference graph sparser (paying small load/store/copy costs) so a heavily-used temporary can avoid being spilled.

**livelock / starvation / fairness** — Livelock is progress without advancement; starvation is a thread making no progress for a long time; a fair algorithm guarantees no starvation.

**liveness property** — A property asserting that something good eventually happens (e.g. `□(t → ◇c)`), expressed with the diamond modality and established via variants; contrast safety.

**LLMs in program analysis** — Using large language models to augment static analysis (e.g. false-positive filtering), embed inside or synthesize analyzers/checkers, and guide dynamic analysis (concolic testing, fuzzing, mutant/test synthesis).

**LLVM IR** — LLVM's language- and target-independent virtual instruction set: RISC-like three-address code with an infinite virtual-register set in SSA form, typed load/store, an explicit CFG, and text and bitcode serializations.

**loading** — Copying an executable's code and data into memory (read-only code segment, read/write data segment) so it can run.

**local completeness** — The property that a connective's elimination rules are not too weak: any proof can be expanded so its results, recombined by introduction, reprove the original proposition (witnessed by a local expansion).

**local expansion** — The rewriting of an arbitrary proof of a connective into one that eliminates and then re-introduces it; the witness of local completeness.

**local optimization** — Analysis and transformation performed within a single basic block, using no control-flow information (e.g. local CSE, local constant folding).

**local reduction** — The rewriting of an introduction immediately followed by an elimination into a direct proof (the natural-deduction analogue of cut reduction, e.g. `(λx.M)V → [V/x]M`); the witness of local soundness and a step of computation.

**local soundness (dataflow)** — The per-statement correctness condition that each flow function correctly over-approximates the concrete effect of its instruction; local soundness plus a fixed point gives global soundness by induction over execution traces.

**local soundness (harmony)** — The property that a connective's elimination rules are not too strong: any elimination applied to the result of an introduction reduces to a more direct proof (witnessed by a local reduction).

**locality analysis** — Analysis that predicts cache misses by finding data reuse, computing the localized iteration space, and intersecting the two; reuse is classified as self vs. group and temporal vs. spatial.

**lock-based concurrency** — Associating a lock with each shared variable, acquiring it before all accesses, grouping updates that maintain an invariant, and holding the lock until the update completes; fine-grained locks allow more concurrency, coarse-grained lower overhead.

**lockset analysis (Eraser)** — A dynamic data-race detector maintaining `LockSet(x)`, the set of locks consistently held on every access to `x`; if the set ever becomes empty a race is reported (a sufficient condition for data-race-freedom).

**logic** — The study of the principles of valid inference and demonstration, here applied to the specification and verification of computer hardware and software.

**logic gate** — An abstracted circuit component implementing a Boolean operation (`and`, `or`, `not`) on bits, mapping directly onto real hardware.

**logic programming language** — A language in which computation is the construction of a derivation under a fixed search strategy, broadly backward-chaining (Prolog) or forward-chaining (Datalog).

**logic variable (logic programming)** — A free variable introduced when instantiating a universal quantifier, whose value is determined by solving accumulated constraints (unification) rather than by guessing a term.

**logic vs. type theory** — In logic, proofs are separate from propositions; in type theory, propositions may refer to proofs, giving added expressive power.

**logical contract** — A specification attached to a function or loop as logical formulas (precondition, postcondition, invariant, variant), enabling compositional reasoning where callers rely only on the contract, not the body.

**logical control flow** — The illusion that a program has exclusive use of the CPU, provided by context switching.

**logical equality** — An inductively-defined (on type structure) notion of program equality, split in a call-by-value setting into a value relation and an expression relation, designed to coincide with observational equality.

**logical equivalence** — The type-indexed relation mediating a completeness proof (e.g. of an equivalence checker), defined so that its fundamental lemma yields completeness.

**logical framework (LF)** — A dependently typed λ-calculus (λΠ, implemented in Twelf) for representing deductive systems and type theories directly as signatures, handling bound variables, capture-avoiding substitution, and hypothetical/generic judgments.

**logical operators (`&& || !`)** — Operators that treat 0 as False and any nonzero value as True, always return 0 or 1, and short-circuit; distinct from the bit-level operators.

**logical relations (Tait's method)** — A proof technique defining a type-indexed predicate (or relation) by induction on type structure to prove properties (e.g. normalization, parametricity) that plain induction on typing cannot; also called the method of candidates.

**logical right shift** — A right shift filling zeros on the left; used for unsigned values.

**logical similarity** — Reynolds's relation `M ∼ M' ∈ A [η]` defined by induction on the type with type variables interpreted by relation candidates; from it exact equality and semantic membership are defined.

**logical trinity** — The organizing principle that a logic needs three aligned legs — a concise syntax, an unambiguous semantics, and actionable axiomatics (proof calculus) — to serve as a specification-and-verification language, with soundness linking semantics and axiomatics.

**logical variable (specification)** — An auxiliary variable used only to relate a program's initial and final values in a contract, not modified by the program (e.g. to specify in-place swapping).

**loop convergence rule (con)** — The total-correctness termination rule (derived from the convergence axiom) using a well-founded decreasing counter to prove `⟨α*⟩P`.

**loop data dependence** — A reordering constraint between two statement instances across (or within) loop iterations, edges of a dependence graph, classified as flow/true, anti, output, and input.

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

**loop-invariant code motion (LICM)** — Hoisting a computation whose operands do not change across loop iterations out of the loop to a preheader, so it runs once instead of every iteration; legal only where it changes no semantics and slows no path.

**loop-invariant computation** — A computation whose value does not change while control stays in the loop, detected via reaching definitions (all reaching definitions of every operand lie outside the loop, iterated).

**loop-invariant rule (loop)** — The proof rule establishing `[α*]P` from three premises: the invariant holds initially, is preserved by one iteration (inductive), and implies the postcondition (with a guarded `while` variant).

**LRU (least recently used)** — A cache replacement policy that evicts the least recently used line in a set (the victim).

**LTL operators (X, □, ◇, U)** — Next (`XP`: `P` at the next state), globally (`□P`: `P` at all future states), eventually (`◇P`: `P` at some future state), and until (`P U Q`: `P` holds until `Q` becomes true).

**machine code / assembly code** — The byte-level program the processor executes, and its human-readable textual form.

**machine learning** — An approach in which, rather than the programmer specifying the rule, the computer builds its own models from data in order to make predictions.

**magnetic disk** — Electromechanical storage of bits on spinning platters organized into tracks and sectors; access time ≈ seek time + rotational latency + transfer time.

**main success scenario / extensions** — The typical step-by-step interaction that achieves a use case's goal ("happy path"), versus the alternate/exception flows that branch off it (which usually make up most of a use case's text).

**maintainability index** — A composite metric (combining Halstead volume, cyclomatic complexity, and lines of code) yielding a 0–100 score intended to indicate how easy code is to maintain.

**MALL (multiplicative–additive linear logic)** — The fragment of intuitionistic linear logic with `⊗, ⊸, &, ⊕, 1, ⊤, 0` but without the exponential `!`.

**malloc / free / calloc / realloc** — Allocate an aligned block of at least a given size; return a block to the pool; allocate and zero a block; and resize an existing block.

**map** — The higher-order function applying a given function to each element of a collection, producing a collection of results (`map f [x1,…,xn] ≅ [f x1,…,f xn]`).

**mathematical induction** — Prove a property for 0 (base case), then assume it for `n` and prove it for `n+1` (induction step); also called standard/simple/weak induction, and encoded in a verifier as a recursive lemma with a variant.

**maximal munch** — The greedy instruction-selection tiling strategy that at each node matches the largest available tile and recurses on the remaining subtrees; simple and produces good (not provably optimal) code.

**maximum cardinality search (MCS)** — The linear-time ordering algorithm that repeatedly picks the vertex with the most already-chosen neighbors; on a chordal graph it produces a (reverse) perfect elimination ordering for greedy coloring.

**maximum fixed point (MFP)** — The solution the iterative algorithm computes for a monotone framework — the largest of all fixed points; in the precision ordering `FP ≤ MFP ≤ MOP ≤ Perfect`, and MFP is safe.

**may-alias vs. must-alias** — Whether a pointer pair may reference the same location, must, or definitely does not; may-alias over-approximates (needed for soundness), must-alias under-approximates (enabling strong updates), and the ambiguous "maybe" cases are what block optimization.

**may-property vs. must-property** — A may-property holds if some execution could exhibit it (e.g. a variable *may* be used); a must-property holds only if every completing execution guarantees it (e.g. a variable *must* be defined); static analyses conservatively approximate these.

**meaning explanation (computational/Brouwerian)** — The semantic account of dependent type theory in which the meaning of each judgment is explained directly in terms of the computational behavior of programs ("everything is computational").

**measurement dysfunction / bad incentives** — The danger that optimizing to a metric distorts behavior: rewards can extinguish intrinsic motivation and encourage cheating, shortcuts, and short-term thinking, degrading the very quality being measured.

**measurement overhead** — The time and perturbation that instrumentation itself adds; a measured event should be 100–1000× longer than the measurement overhead to be trustworthy.

**measurement reliability** — Whether a measurement yields consistent, repeatable results.

**mechanical error** — A defect from inconsistently following simple, mechanical design rules (buffer overruns, null dereferences, resource leaks, API/framework-rule violations, race conditions); static analysis's sweet spot and hard to find by testing.

**meet operator (∧)** — The dataflow operator combining incoming values at a confluence node (commutative, idempotent, associative), typically set union for "may" problems or intersection for "must" problems; it induces the lattice partial order.

**meet-over-all-paths / merge-over-all-paths (MOP)** — The ideal dataflow solution obtained by joining the effect of every path reaching a program point; it considers more paths than are executable, so it errs conservatively, and the iterative fixed point equals it exactly for distributive frameworks and safely approximates it otherwise.

**memoization** — Caching the value of a forced/expensive computation so repeated demand does not re-evaluate it (as in call-by-need); a beneficial use of state that preserves purely functional behavior.

**memory aliasing** — The possibility that two pointers reference overlapping memory, forcing conservative reloads/stores and blocking optimization; avoided with a local accumulator or `restrict`.

**memory hierarchy** — Storage organized in levels where each faster/smaller/costlier level near the CPU caches data for the slower/larger/cheaper level below, bridging the CPU–memory gap; optimizing cache behavior is essential to fast code.

**memory layout (x86-64 Linux)** — The virtual address space divided into Stack (high addresses), shared libraries, Heap, Data (globals/strings), and read-only Text (code).

**memory mapping (mmap)** — Associating a region of virtual memory with a backing source such as a disk file, so its contents are paged in on demand; the user-level `mmap` maps a file's bytes into the address space.

**memory protection** — Per-PTE permission bits (read/write/exec/supervisor) the MMU checks on every access, providing an interposition point for access control.

**memory-related bugs** — Dereferencing bad pointers, reading uninitialized memory, overwriting past a block, dangling pointers to freed blocks, double frees, and memory leaks (many detectable with valgrind).

**memoryless strategies** — The fact that, since winning-region existence is context-independent, game strategies can be taken to depend only on current state, remaining game, and goal (a Zermelo-type result).

**mergesort** — Sorting by splitting the input in half, recursively sorting, and merging; O(n log n) work, but on lists the sequential split/merge limit span to O(n).

**message buffer / bounded synchrony** — A per-channel chain of `msg` records buffering asynchronous messages; a double-shift `↑↓` forces an acknowledgment that drains the buffer, and required buffer size is the longest same-polarity path in the type graph.

**message passing (send/receive)** — Synchronous communication in which each label or channel send/receive corresponds exactly to one principal cut reduction.

**metacircular interpreter / rules as propositions (reification)** — A backward-chaining engine written in the object language itself, requiring inference rules to be reified as data; it inherits subgoal and clause order from the metalanguage.

**method (vs function)** — A procedure defined on a class and called on an object with dot notation (`s.upper()`), as opposed to a plain function called on its arguments (`len(s)`).

**microarchitecture** — The implementation of an ISA (cache sizes, clock frequency, pipeline), distinct from the ISA itself.

**microservices** — An architectural style structuring an application as a suite of small, independently deployable services, enabling continuous deployment and independent scaling at the cost of operational and integration complexity.

**milestone** — A verifiable checkpoint used for planning and measuring progress.

**minimal SSA** — SSA with φ-functions placed only at the iterated dominance frontiers of definitions (for variables live at the join), avoiding the excess φ's of trivial SSA.

**miracle of soundness** — The observation that proving the finitely many axioms and rules sound makes every derivable proof sound, because a proof just composes sound steps; the condition without which proving a formula would not entail its validity.

**miss rate / hit rate / miss penalty / hit time** — The fraction of references that miss vs hit, the extra time a miss costs, and the time to serve a hit.

**mix rules (mix0, mix2)** — Girard's classical-linear-logic variant admitting the empty sequent and the union of two sequents (characterized by `⊥ ≡ 1`); reading a proof as consuming all resources rather than deriving a contradiction, natural for the concurrent interpretation where mix is parallel composition.

**MMU (memory management unit)** — On-chip hardware that translates virtual to physical addresses by fetching PTEs, checks permission bits, and raises page-fault exceptions.

**mobility restriction** — The Modernized Algol constraint that procedures and encapsulated commands may be passed as arguments but not returned or stored, preserving the stack discipline of storage management.

**modality duality** — Box and diamond are dual: `[α]P ≡ ¬⟨α⟩¬P`.

**model (statistical / predictive)** — A simplified representation of a system or dataset built to explore it or make predictions; central to data analysis, simulation, and machine learning.

**model checking** — Fully automatic techniques for finding bugs or proving their absence by exhaustive state-space search against a temporal-logic specification, yielding diagnostic counterexamples and requiring no manual proofs.

**model monitor** — A ModelPlex monitor that checks whether the observed transition between consecutive samples is consistent with the verified model (detecting model violations at runtime).

**modeling** — Building and analyzing formal models of a system (e.g. Alloy, model checking) to find design flaws or predict system properties before code exists.

**ModelPlex** — The KeYmaera X technique that transforms an offline dL safety proof of a model into provably correct runtime monitors, transferring verification results to the real sampled CPS.

**Model–View–Controller (MVC)** — A design pattern for interactive programs: the model holds the application data, the view renders it, and the controller updates the model in response to events.

**Modernized Algol (MA)** — An imperative language cleanly separating expressions from commands, and variables (immutable bindings) from assignables (mutable, allocated cells), exposing the semantic structure of imperative programming.

**modularity** — Decomposing a system into well-defined, separately understandable modules with explicit interfaces; low coupling and high cohesion are its design goals.

**module cloning** — Instantiating an abstract module by supplying concrete definitions, turning its abstract axioms into discharged proof obligations (e.g. cloning an induction module with a concrete predicate).

**modulo scheduling** — Scheduling against a modulo (steady-state) resource reservation table — the per-iteration table folded modulo the initiation interval — so overlapping software-pipelined iterations never contend for a resource.

**modulo variable expansion** — Unrolling a software pipeline's steady state so overlapping iterations use distinct registers, removing the artificial anti-dependences that arise when every iteration reuses the same registers.

**monad / lax modality ({A} = ↑A⁺)** — In the concurrent logical framework, the up-shift realized as a monadic/lax construct `{A}` that encapsulates concurrent forward-chaining computation and marks the boundary between the pure and concurrent layers.

**monotone operator / pre-fixed and post-fixed point** — For a monotone `F`, a pre-fixed point satisfies `F(A) ⊆ A` (F-closed) and a post-fixed point satisfies `A ⊆ F(A)` (F-consistent); their bounds are the least and greatest fixed points.

**monotonicity (monotone transfer/flow function)** — The property that a dataflow transfer function preserves the lattice order (`x ⊑ y ⟹ f(x) ⊑ f(y)`); monotonicity plus a finite-height lattice guarantees the iterative solver terminates and converges to a safe result.

**monotonicity (of winning regions)** — `X ⊆ Y ⇒ ςα(X) ⊆ ςα(Y)` (and dually for Demon): larger winning-state sets give larger winning regions, since `X` occurs under an even number of negations.

**monotonicity rule (M / MR)** — From `P ⊢ Q` conclude `[α]P ⊢ [α]Q` (dually for diamond): lets one strengthen or weaken a postcondition under a modality.

**Monte Carlo method** — A technique that uses repeated random sampling to estimate the answer to a question (e.g. estimating π by random points).

**most general type (m.g.t.)** — The type `t` for an expression such that `e : t` holds and every valid type for `e` is an instance of `t`; the type inference reports.

**most general unifier (mgu)** — A unifier of which every other unifier is an instance; a successful unification algorithm always yields one.

**mov (movb/movw/movl/movq)** — The data-transfer instruction, in byte/word/double-word/quad-word sizes; it cannot move memory-to-memory in one instruction.

**multi-dynamical system** — Platzer's characterization of a CPS as combining multiple facets of dynamical behavior — continuous, discrete, nondeterministic, stochastic, adversarial — analyzed by composing simple dynamical effects.

**multi-level array** — An array of pointers to separately allocated rows, requiring two memory reads to access an element.

**multi-level page table** — A tree of page tables that allocates only the parts needed for addresses in use, shrinking the table's size at the cost of k memory loads per translation.

**multi-step evaluation (multistep reduction)** — The reflexive–transitive closure `e ⟼* e'` of the single-step reduction/evaluation relation.

**multidimensional / nested array** — `T A[R][C]` is a contiguous R·C·sizeof(T) block in row-major order; `A[i][j]` is at `A + (i·C + j)·sizeof(T)`.

**multiplicative conjunction / tensor (A ⊗ B)** — The "simultaneous" conjunction (obtained when exchange collapses the ordered fuse and twist) that joins two proofs over disjoint resources; its right rule splits the context.

**multiplicative connectives (send/receive a channel)** — Over `/`, under `\`, fuse `•`, twist `◦`, and unit `1` — operationally all just send or receive a channel (channel/ownership transfer) with no new process constructs.

**multiplicative truth (1) / additive truth (⊤)** — The linear units: `1` is the unit of `⊗`, provable only with no resources; `⊤` is the nullary additive conjunction whose proof consumes all current resources.

**multiply/divide by shifting** — `u << k` computes `u·2ᵏ` and `x >> k` computes `⌊x/2ᵏ⌋`; compilers emit shift/add sequences because shifting is faster, adding a bias for negative division to round toward zero.

**must-bound variables (MBV)** — Variables written on all execution paths (`MBV(α) ⊆ BV(α)`), used to make the free variables of sequential/modal constructs more precise.

**mutable cell / reference** — A value of type `t ref` holding an updatable value; created by `ref`, read by `!`, and written by `:=`; the imperative core of a functional language.

**mutable store** — The heap extension giving a language dynamically allocated, updatable memory (a map from addresses to values), introducing pointers, arrays, and structs and the analyses they require.

**mutant / killed mutant** — A version of the program with one small artificial change; a mutant is killed when a test detects the behavioral difference.

**mutation testing** — Measuring test-suite effectiveness by injecting small artificial bugs (mutants) and checking whether the tests kill them; the fraction of surviving mutants approximates the fraction of real errors the suite would miss.

**mutation-based fuzzing** — Generating new inputs by randomly mutating seed inputs (bit/byte flips, chunk insert/delete, interesting values) rather than pure random data.

**mutex (mutual exclusion)** — A lock that is either locked or unlocked, with `lock` (waits if held) and `unlock` operations, guaranteeing exclusive access to a critical section.

**natural deduction** — Gentzen's proof system for intuitionistic logic built from introduction rules (how to conclude a connective, fixing its meaning) and elimination rules (how to use it), with a hypothesis rule and substitution; designed to model mathematical reasoning directly.

**natural loop** — A single-entry loop identified in a CFG whose header dominates every node in it; the smallest node set containing a back edge's head and tail with no predecessors outside the set except the header's.

**natural numbers type (nat / N)** — The inductive type generated by zero and successor with a recursor; the least type closed under those constructors, whose induction principle is ordinary mathematical induction.

**necessity modality (□P)** — "P is valid," expressed inside the logic (P holds in every state), with axiom □P → [α]P; the inspiration for the box modality.

**neededness** — A refinement of liveness marking variables whose values actually affect the program's observable result, enabling more aggressive dead-code elimination than plain liveness.

**negation (¬A)** — Defined by notational definition as A ⊃ ⊥; ¬A is true precisely when assuming A leads to a contradiction, and carries no computational content.

**negative polarization = call-by-name** — The compositional translation of source terms into call-by-push-value whose computational reading is call-by-name: an argument is passed as a thunked computation and forced at each use.

**Negligence vs. malpractice** — Negligence is failure to exercise the care a reasonably prudent person would; malpractice is professional negligence — failing to meet a licensed profession's standard of care and thereby causing harm.

**Nelson-Oppen procedure** — The theory-combination method underlying modern SMT solvers: purify a formula into per-theory pure parts, then propagate equalities over shared variables between the theory solvers until saturation; requires quantifier-free, infinite-domain theories sharing only equality.

**nested depth-first search (NDFS)** — A linear-time Büchi-automaton emptiness algorithm interleaving an outer DFS that finds reachable accepting states with an inner DFS that seeks a cycle back to them.

**neutral term / normalizable neutral** — A term whose head is a variable (a variable applied to arguments/projections); its normalizable-neutrality is proved together with hereditary normalization in logical-relations proofs over open terms.

**no differential cut elimination** — The theorem that, unlike Gentzen's cut in ordinary sequent calculus, differential cuts cannot in general be eliminated; some ODE properties are provable only via a differential cut.

**node splitting** — Duplicating a CFG node (one copy per predecessor) to make an irreducible flow graph reducible; worst-case exponential, though most real graphs are reducible.

**non-executable stack (NX)** — A defense marking the stack (and other data regions) non-executable so that jumping into injected data crashes immediately.

**nondeterminism as abstraction** — Using nondeterministic choice or assignment as a modeling tool to focus on critical aspects and describe an imperfectly known environment, rather than committing to one concrete behavior.

**nondeterministic assignment (x := *)** — Assigns a variable an arbitrary value; used for ghosts and abstraction, and is definable/derived rather than a core primitive.

**nondeterministic choice (α ∪ β)** — Runs either branch, chosen nondeterministically; its relational semantics is the union of the branches', with box axiom [α∪β]P ↔ [α]P ∧ [β]P.

**nondeterministic dynamic logic** — The standard dynamic logic using nondeterministic choice α ∪ β and nondeterministic repetition α* in place of conditionals and while-loops.

**nondeterministic repetition (α*)** — Repeats a program any finite number of times, chosen nondeterministically; its semantics is the reflexive-transitive closure, and while-loops are encoded from it.

**nonexhaustive match** — A warning that a function's clauses do not cover all values of the argument type; applying it to an unmatched value raises a runtime Match exception.

**nonlocal jumps (setjmp / longjmp)** — A C mechanism transferring control to an arbitrary earlier point, breaking call/return discipline: setjmp saves register/stack/PC context in a jmp_buf and longjmp restores it.

**nontermination (Ω)** — Computation without a normal form; the canonical example is Ω = (λx. x x)(λx. x x), which β-reduces only to itself.

**nonvolatile memory / flash** — Memory (ROM, EEPROM, flash) that retains data without power; flash stores charge in stacked cells, erases in blocks, wears out after many erasures, and underlies SSDs.

**normal deduction** — A deduction containing no local-reduction redex (no introduction immediately eliminated); every verification is normal.

**normal form** — An expression that cannot be reduced further (β-irreducible, or that does not evaluate further); used to represent the values (results) of a computation.

**normalization** — That every well-typed term can be brought to normal form (including under binders and for open terms), and, in proof theory, that an arbitrary proof can be transformed into an equivalent normal proof/verification; establishes that natural deduction, sequent calculus, and verifications coincide on provability.

**notational definition** — Defining a connective as an abbreviation for a proposition already understood (e.g. ¬A ≜ A ⊃ ⊥); its derived rules have a different status from meaning-giving introduction/elimination rules.

**noun extraction** — An object-oriented design technique of identifying candidate classes from the nouns in a problem description (tangible entities become classes; abstract nouns become classes or attributes).

**NP (nondeterministic polynomial time)** — The complexity class of decision problems whose proposed solutions can be verified in polynomial time, even if finding a solution may be slow.

**NP-complete** — The hardest problems in NP: each is polynomial-time reducible to every other, so a polynomial-time algorithm for one would solve them all (e.g. Boolean satisfiability, subset-sum).

**number system** — A convention for representing numbers with symbols; the same quantity can be written in different systems, such as decimal or binary.

**numeral** — The unary representation of a natural number n built from zero (z) and successor (s(·)).

**object (OOP)** — A run-time value bundling state (attributes) with behavior (methods) and having its own identity; in object-oriented languages every value is an object.

**object-file sections** — The regions of an object file: .text (code), .rodata (read-only data such as jump tables and strings), .data (initialized globals), and .bss (uninitialized globals, occupying no file space).

**observable / answer type** — A two-element type of observables (yes/no, accept/reject) giving a directly observable computation outcome; a complete program is a closed term of answer type.

**observational (contextual) equality** — Two programs are equal if interchangeable in every program context of base type without changing the observed result; the extensional standard a logical relation is designed to characterize.

**occurs check** — The side condition X ∉ t required before binding a logic variable X to a term containing X; omitting it (as standard Prolog does for efficiency) is unsound.

**offline + online proof** — ModelPlex's split: a heavy correctness proof done once offline plus a cheap monitor check performed online, together reducing CPS safety to a runtime check backed by proof.

**ones' complement** — A value with all bits flipped; a number plus its ones' complement has all bits set.

**opaque ascription (:>)** — Ascribing a signature so the implementation of the structure's types is hidden, making them genuinely abstract to clients.

**open / close** — System calls that prepare a file for access (returning a descriptor with an access mode and flags) and release it.

**open source business models** — Ways to profit around freely licensed software: selling support/expertise, complementary services, or consulting and paid extensions.

**open source license** — The legal terms governing reuse of open-source software, spanning permissive licenses (MIT, Apache, BSD) and copyleft licenses (GPL, LGPL) that impose share-alike obligations.

**open-endedness** — The principle that "nothing depends on the non-existence of programs": the semantics is stable under adding new constructions, so definitions must not rely on there being no program of some behavior.

**operand types** — Instruction operands are immediate (a constant), register, or memory (bytes at a computed address).

**operational semantics** — A rule-based definition of how programs execute step by step, specifying meaning by how expressions and statements are evaluated according to their form; correctness proofs appeal directly to these rules.

**operational semantics of games** — Defines a game's meaning by the step-by-step interactive play of Angel and Demon through the game's structure.

**operator** — A syntactic constructor of an abstract binding tree with a fixed arity and a specified binding structure (e.g. lam binds one variable in its body).

**operator precedence and associativity** — Rules that disambiguate expression grammars by fixing the order and grouping of operators (e.g. so a + b * c binds multiplication tighter), with unary operators binding more strongly than binary ones.

**optimal precision (OPT)** — The most precise sound dataflow answer at a program point, over only feasible executions; OPT ⊑ MOP ⊑ LFP in the relative-precision ordering, since each abstraction loses precision.

**optimization blocker** — A program feature (a procedure call, potential aliasing) that prevents the compiler from optimizing, e.g. a strlen in a loop condition making the loop quadratic.

**optimizing compiler** — A compiler stage that improves code (faster, more energy-efficient) rather than merely translating it; execution time is modeled as operation count times cycles per operation, and optimizations attack both factors.

**option type** — The parameterized datatype NONE | SOME of 'a, used to represent partial functions and gracefully signal the absence of a result.

**oracle** — The mechanism that decides whether an execution constitutes a bug (crash, overflow, infinite loop, race, undefined behavior).

**ordered antecedents (Ω) / structural rule** — Replacing an unordered context by an ordered list forces a left rule to act only on the first element (removing the choice of which antecedent to decompose); a structural rule shuffles a non-invertible proposition into the unordered context.

**ordered context (Ω)** — A sequence of antecedents in which order matters; linear logic relaxes it to a multiset and structural logic to a set.

**ordered logic programming** — Programming with ordered session types, using stores, stacks, and queues implemented as chains of one-element processes.

**ordered type system** — A substructural type system lacking exchange, where the order in which variables are introduced and used matters.

**ordinals (limit / successor)** — The transfinite indices (ω the first infinite ordinal, ω+1 its successor, and beyond) needed to iterate a winning-region operator to a fixpoint; some games require iteration past ω.

**ordinary differential equation (ODE)** — An equation x' = f(x) relating the time-derivative of the state variables to a function of the state, describing continuous evolution of a physical system.

**over-approximation** — An analysis or abstraction that includes a corresponding behavior for every real behavior (no false negatives), so properties proved of it transfer to the concrete program, though some reported behaviors may be infeasible (false positives).

**overfitting** — When a machine-learning model matches its training data too closely and consequently fails to generalize to new data.

**overflow / modular arithmetic** — When a result needs more bits than the width allows, high bits are lost and arithmetic wraps around; unsigned addition computes (u+v) mod 2ʷ.

**overloading** — Reuse of a symbol (e.g. +, *) at several unrelated types; distinct from polymorphism, since there is no single 'a * 'a -> 'a version.

**overriding** — Redefining an inherited method in a subclass to change its behavior for instances of that subclass.

**P (polynomial time)** — The complexity class of problems solvable by an algorithm whose running time is polynomial in the input size; the standard notion of "efficiently solvable."

**P vs NP** — The open question of whether every problem whose solutions can be verified quickly can also be solved quickly; a famous unsolved Millennium Prize problem.

**padding** — Gaps the compiler inserts between fields (internal) or after the last field (external) to satisfy alignment; ordering large fields first reduces it.

**page** — A fixed-size (typically 4 KB) block of the virtual address space, the unit of transfer between DRAM and disk.

**page hit vs page fault** — A page hit references a virtual page already in DRAM; a page fault references one not resident, triggering the page-fault handler.

**page table** — A per-process kernel array of page-table entries mapping virtual pages to physical pages.

**page-fault handler** — Kernel code that selects and evicts a victim page (writing it back if dirty), pages in the needed page, updates the PTE, and restarts the faulting instruction.

**page-table entry (PTE)** — An entry holding a valid bit plus either a physical page number (if cached) or a disk address (if not), optionally with permission bits.

**pair programming** — Two developers working together at one workstation (driver and navigator), a form of continuous review.

**pairs (functional encoding)** — Pairs encoded in the pure λ-calculus as ⟨e1,e2⟩ = λk. k e1 e2, applying a continuation k to both components; used, e.g., to define the predecessor by rebuilding n during iteration.

**par (⅋)** — Multiplicative disjunction, the De Morgan dual of tensor in classical linear logic ((A⊗B)⊥ = A⊥ ⅋ B⊥); absent from intuitionistic linear logic, it validates a linear excluded middle A ⅋ A⊥.

**parallel copy (lost-copy / swap problem)** — The φ-functions at a join denote simultaneous copies; naively sequentializing them can clobber values (the lost-copy and swap problems), so SSA deconstruction must schedule the parallel copy correctly, sometimes via a temporary.

**parallelism** — Doing independent subcomputations at once; pure functional evaluation has no side effects, so independent subexpressions may be evaluated in parallel with the same result.

**parameterized datatype** — A datatype with type variables (e.g. 'a tree), abstracting a data template over the element type.

**parametric judgment** — A hypothetical judgment carrying a fresh parameter (e.g. x : nat), used to state the induction rule without explicit universal quantification.

**parametric polymorphism** — Giving a single function a polymorphic type (e.g. 'a list -> 'a list) representing a whole family of monomorphic instances, with one implementation behaving uniformly at every type.

**parametricity** — Reynolds's relational property that a well-typed polymorphic function maps related arguments at related types to related results, so its type sharply constrains its behavior (e.g. the only interesting value of ∀t. t→t is the identity); formalized by relational interpretation of type quantifiers.

**Pareto (80/20) principle** — About 20% of a program takes 80% of the time, so there is no point optimizing until you know which 20% is the bottleneck; a restatement of Amdahl's law.

**parse tree (concrete syntax tree)** — The tree produced by parsing that records how the input was derived from the grammar, including every grammar symbol and production applied.

**parsing** — Determining whether a string is in a grammar's language and, if so, recovering its grammatical structure; done by operator-precedence, recursive-descent (LL), or shift-reduce (LR) methods.

**partial application** — Applying a curried function to some but not all of its arguments, yielding a specialized function.

**partial correctness** — The property, expressed by the box modality [α]P, that if a program terminates the postcondition holds; a safety property that says nothing about termination.

**partial dead code elimination** — Sinking a computation that is live only on a rare path into that rare block, saving the work on the common path.

**partial method compilation** — Compiling only a method's non-rare blocks and leaving rare blocks to the interpreter; edges into rare blocks redirect to the interpreter, with a transfer map recorded at each such point.

**partial order (⊑)** — The ordering on abstract values (reflexive, antisymmetric, transitive) where l1 ⊑ l2 means l1 is at least as precise as l2, typically induced by the lattice meet.

**partial recursive function** — A function that may be undefined (have no normal form) on some inputs; representable via the Y combinator.

**partial redundancy / partial availability** — An occurrence of an expression is partially redundant if it is computed on some but not all paths reaching it (operands unmodified since); completing a cut set of insertions converts it to full redundancy.

**partial redundancy elimination (PRE)** — An optimization that inserts and moves computations so no path re-executes the same expression, subsuming common-subexpression elimination (full redundancy) and loop-invariant code motion; driven by anticipated (very-busy) and available-expression analyses.

**partial-order reduction** — Exploring only interleavings that are semantically non-equivalent, avoiding redundant orderings; a state-space-reduction technique in model checking and concurrency testing.

**partiality** — The situation in PCF-like languages where well-typed programs may diverge; contrasted with the totality of System T and F.

**Pas-de-deux** — Tait's paired simultaneous induction relating normalizable neutral terms to hereditarily normalizing terms, from which normalization of open terms follows.

**pass** — A unit of a compiler/optimizer run in sequence; analysis passes compute information without changing code, transformation passes rewrite it.

**path condition / path constraint** — The conjunction of branch conditions accumulated along an execution path in symbolic execution; solving it yields a concrete input that drives that path.

**path coverage** — The portion of all possible execution paths exercised by a test suite; gives better coverage of logical flows but suffers combinatorial explosion (n branches up to 2ⁿ paths), and not all paths are feasible.

**path quantifiers (A, E)** — CTL's universal (A, "for all paths from this state") and existential (E, "for some path") quantifiers, each paired with a temporal operator to form AX/EX, AG/EG, AF/EF, AU/EU.

**path sensitivity** — Analyzing each feasible path separately so that errors on infeasible (never-taken) paths are not reported; increases precision at the cost of an exponential (or, with loops, unbounded) number of paths.

**pattern** — A constant, variable, wildcard, tuple, or value-constructor application matched against a value to bind its components; patterns must be linear (each variable at most once).

**payload** — The application-data region of an allocated heap block; the aggregate payload is the sum over all allocated blocks.

**PCF** — Plotkin's partial functional language: the typed λ-calculus with naturals plus general recursion (fix), so a well-typed program need not terminate; the programmer, not the type system, bears responsibility for termination.

**PCFv / computation modality** — The by-value reformulation of PCF drawing a modal distinction between values and computations, with a type comp(τ) of encapsulated computations whose elimination form bnd sequences evaluation.

**Peano's axioms** — The axiomatization of the naturals (0, injective successor S, equality axioms, and the induction schema P(0) ∧ (∀n. P(n) → P(Sn)) → ∀n. P(n)).

**pebbling** — A game on a cost graph modeling scheduling: place up to p pebbles per step on nodes whose predecessors are all visited, generating a p-processor schedule.

**peephole optimization** — Local rewriting of short instruction sequences matching known patterns (redundant moves, x*1, jump-to-next) into cheaper equivalents over a small sliding window.

**pending / blocked signals** — A pending signal has been sent but not yet received (only one per type, since signals are not queued); a blocked signal (the signal mask) is deferred until unblocked, and SIGKILL/SIGSTOP cannot be blocked.

**performance testing** — Measuring throughput and latency under load using tools such as JMeter.

**permutation** — A list containing the same elements as another, possibly reordered; sorting requires the output to be a sorted permutation of the input.

**persistence of antecedents** — The property that once an assumption is added it remains available throughout the derivation above, since every rule copies its antecedents to all premises.

**persistent message / immutable structure** — Because a structural channel may have many clients, its messages are made persistent; a completed positive process leaves a chain of persistent messages acting as an immutable linked structure.

**persistent vs. ephemeral data structure** — Persistent (immutable) structures cannot be mutated in place and dominate functional programming; ephemeral (mutable) structures are modified in place and dominate imperative programming.

**PIE model (Propagation-Infection-Execution)** — The reachability conditions for killing a mutant: the input must execute the mutated line, the mutation must infect program state, and the effect must propagate to observable output.

**pipe-and-filter** — An architectural style in which independent processing components (filters) are connected by data streams (pipes), each transforming its input and passing it on.

**pipelining / branch prediction** — Overlapping instruction execution by splitting each instruction into stages so different in-flight instructions occupy different stages each cycle; the CPU fetches ahead and guesses branch outcomes, discarding speculative work on a misprediction at a multi-cycle cost.

**pixel** — A single square of color in a raster image; an image is a grid of pixels, each encoded in binary.

**placement policy (first / next / best fit)** — Choosing which free block to allocate: the first that fits, the first that fits starting where the last search ended, or the one leaving the fewest bytes over.

**plaintext / ciphertext / key** — In encryption, the plaintext is the original message, the ciphertext is its encrypted form, and the key is the secret used to encode and decode it.

**planning poker** — An estimation technique in which team members privately estimate effort and reveal simultaneously to reach consensus.

**plant monitor** — A ModelPlex monitor that checks that the observed continuous evolution stays within the modeled plant behavior/bounds.

**point-free (pointless) programming** — Defining a function by combining other functions without naming its argument, facilitated by curried higher-order functions.

**pointer** — A value that is a heap address of type τ*, dereferenced to read the stored value and usable as an assignment destination; alloc allocates a cell and null (address 0) is the distinguished null pointer whose dereference raises a memory exception.

**pointer analysis** — Analysis determining where pointers may point, or (more usefully) proving that two pointers point to different locations; the general problem is undecidable, so it is approximated, with may and must variants, and is almost always interprocedural.

**pointer arithmetic** — Adding an integer i to a pointer advances the address by i·sizeof(element).

**pointer-chasing prefetching** — Techniques for prefetching linked structures whose next address is known only after loading the current node: greedy (fetch all neighbors), history-pointer (pointers d steps ahead from a prior traversal), and data-linearization (lay nodes out contiguously so future addresses are computed directly).

**points-to analysis** — Computing the set of locations each pointer may point to (p → q); the dual formulation of alias information.

**points-to set / points-to graph** — A representation recording the locations each pointer may point to (as graph edges); less precise but more efficient than tracking full alias pairs.

**polarity (positive vs. negative)** — A classification of type constructors and connectives: a positive type/connective is characterized by its introduction forms (sums, ⊗, ⊕; eager; "sends" in the process reading), a negative one by its elimination forms or observation (functions, products, &; lazy; "receives"); polarity governs eager/lazy behavior and focusing.

**polarization** — Committing to a polarized form of the logic in which every proposition and atom is assigned a polarity (with minimal shifts inserted); any polarization of A is provable iff A is.

**polarized atoms (p⁺, p⁻)** — Atoms carrying a chosen polarity: a positive atom may be focused on the right, a negative atom on the left; the choice drastically restricts the proof-search space.

**polymorphism** — The possibility of a single expression having more than one type.

**positive equality (=)** — A linear proposition for channel identity used only by forwarding; its right rule is reflexivity and its invertible left rule performs substitution.

**positive polarization = call-by-value** — The compositional translation of source terms into call-by-push-value whose computational reading is call-by-value (e.g. (A⊃B)⁺ = ↓((A)⁺ → ↑(B)⁺)).

**possible world / future world** — In Kripke logical relations, contexts pre-ordered by extension; an extending context is a future world, and a term computable in a world stays computable in all future worlds (monotonicity of the indexed predicate).

**postcondition** — What a caller may assume about a function's result and effects on return (referring to the return value), checked at every return; the guarantee half of a contract and an abstraction boundary that localizes reasoning.

**postponable expressions** — A forward pass in lazy code motion that delays creating redundancy to reduce register pressure; combined with anticipated/available analyses it yields the latest safe placement.

**pre-fixpoint** — A set Z closed under an operator (X ∪ F(Z) ⊆ Z, i.e. F-closed); the least pre-fixpoint is the least fixpoint used to characterize repetition and game winning regions.

**precision and recall (tool effectiveness)** — Precision is the fraction of reported alerts that are real; recall is the fraction of real bugs reported; both measure an analysis tool's effectiveness.

**precoloring** — Fixing certain temporaries to specific registers before graph coloring (e.g. because a calling convention or instruction mandates a register); the allocator must respect these fixed colors.

**precondition** — A requirement imposed on every caller of a function that must hold on entry; the caller must establish it and the function body may assume it.

**predicate** — A boolean-valued function classifying values or program states as satisfying it (true) or not (false).

**predicate abstraction** — Building an abstract transition structure over program locations paired with subsets of a chosen set of atomic predicates, distinguishing only the traces relevant to the property; abstract edges are decided by validity of a formula reducible to arithmetic.

**predicate calculus** — The extension of propositional logic with predicates and quantification ∀x.A(x), ∃x.A(x), leaving the domain of quantification unspecified.

**predicate transformer** — Compositional equations for weakest precondition / strongest postcondition (e.g. wp(α;β)Q = wp(α)(wp(β)Q)) that propagate a condition backward (wp) or forward (sp) through program structure.

**predicativity** — Restricting type quantification so that no type is defined by quantification over a collection including itself (stratifying types into levels), avoiding impredicativity's circularity at the cost of expressiveness.

**PREfast** — A lightweight Microsoft static-analysis tool that finds bugs within a single procedure and checks Standard Annotation Language annotations for consistency with the code.

**prefetch predicate** — A predicate over the iteration space naming which iterations actually miss (every iteration; only the first, for temporal reuse; every L-th, for spatial reuse), so prefetches issue only there.

**PREfix** — Microsoft's path-sensitive, interprocedural symbolic-execution tool for C/C++ that finds invalid pointers, storage-allocation errors, uninitialized memory, and resource misuse without annotations; it deliberately chooses unsoundness (exploring only some paths) to avoid false positives.

**preheader** — A block inserted immediately before a loop header to hold code that must execute exactly once before the loop (the destination for hoisted loop-invariant code).

**preservation** — If e : τ and e ⟼ e', then e' : τ; types are preserved under transition (subject reduction). Together with progress it gives type safety.

**presupposition** — In computational type theory, A type is defined as A ≐ A type and M ∈ A as M ≐ M ∈ A; membership presupposes typehood, so equality is primitive and the one-place judgments are its reflexive instances.

**primitive recursion / recursor** — Defining total functions by recursion on the predecessor via the recursor, the elimination form for the natural numbers (a base case plus a step with access to the predecessor and the recursive result); the computational content of a proof by mathematical induction.

**principal / commutative / identity cases** — The three shapes in a cut-admissibility proof: the identity case discharges a cut against identity; the principal case (cut formula introduced last on both sides) reduces to cuts on subformulas; the commutative case pushes the cut past a rule acting on a side formula.

**principal formula** — The formula introduced or decomposed by the last rule of a sequent inference.

**principle of locality** — Programs tend to reference data and instructions with addresses near or equal to ones referenced recently.

**private address space** — The illusion that a program has exclusive use of memory, provided by the virtual-memory mechanism.

**privatization** — Giving each iteration its own copy of a scalar written-then-read each iteration (or a reduction variable) so it no longer forms a cross-iteration dependence.

**Probabilistic Concurrency Testing (PCT)** — A randomized scheduler that, by exploring interleavings with a small number of context switches, gives probabilistic guarantees of finding concurrency bugs of bounded depth.

**probabilistic pointer analysis** — An analysis attaching a probability to each points-to relation instead of yes/no/maybe, enabling speculative optimizations by quantifying "maybe"; need not be safe.

**process** — An instance of a running program, giving it two abstractions: a private address space and a logical control flow.

**process calculus (π-calculus)** — A compositional language for concurrent programs, understood as a generalization of automata theory to interacting automata, with parallel composition, choice, complementary input/output actions, channel restriction, and recursion.

**process configuration** — A chain of running processes, well-typed when each adjacent pair shares an interface type (what one provides is what the next uses).

**process states** — The states of a process: Running, Blocked/Sleeping (awaiting an event), Stopped (suspended by a signal), or Terminated/Zombie.

**producer-consumer problem** — A synchronization pattern where producers add items to a shared bounded queue and consumers remove them, coordinated by a mutex plus slots and items counting semaphores.

**product automaton / closure under intersection** — A construction intersecting two Büchi automata (with a copy scheme ensuring both accepting sets are hit infinitely often), used to build L(K) ∩ complement(L(P)).

**product type (τ1 × τ2)** — A negative type whose values are tuples of component values, introduced by pairing and eliminated by projection (fst/snd); corresponds to conjunction under Curry–Howard, with the nullary product being unit.

**productive stream** — A stream whose every exposure yields Empty or a Cons of a value and another productive stream; an infinite stream is productive and never exposes Empty.

**profile-guided optimization** — Using runtime information (control-flow frequencies, data dependences, typical values) collected by instrumentation or sampling to guide optimizations such as speculative scheduling and code specialization.

**profiler** — A dynamic-analysis tool that measures how much time is spent in each function (by sampling or instrumentation) and how much memory each data structure uses, to identify hot spots for optimization.

**program analysis** — The systematic examination of a program to determine its properties, requiring precise program representations plus tractable, systematic ways to reason over them.

**program as a state relation** — The meaning of a program as a relation between a prestate and poststate; a relation rather than a function so it can model nontermination (no poststate) and nondeterminism (several poststates).

**program contract** — A specification of a program by a precondition and a postcondition, stating what must hold before and after execution.

**program counter (%rip)** — The register holding the address of the next instruction to execute.

**program point** — A statically identifiable location in a program (e.g. before/after an instruction) at which an analysis records an abstract state.

**program semantics** — A formal description of what a program means, typically how it executes; provides a framework for precise definitions, proofs of correctness, and reasoning about analysis.

**programming language as a mathematical object** — The stance that a language is defined not by a compiler, implementation, or informal standard but formally by its static and dynamic semantics, usually given by rule induction.

**progress** — If e : τ then either e is a value or there exists e' with e ⟼ e'; a well-typed program is never stuck. Together with preservation it gives type safety.

**progress graph / trajectory / unsafe region** — A graph whose axes are each thread's instruction order and whose points are execution states; a trajectory is a legal path, safe (correct) iff it avoids the unsafe region where critical sections interleave.

**prologue / epilogue** — The code at a function's entry (set up the frame, save callee-save registers) and exit (restore registers and the stack, return) that bracket the function body.

**prologue / steady state / epilogue** — In software pipelining, the code that fills the pipeline before the repeating kernel (prologue), the overlapped kernel itself (steady state), and the drain code finishing the last iterations (epilogue).

**proof by coinduction** — The principle that equality on a coinductive type is the greatest (maximal) consistent relation: two elements are equal unless unfolding can refute it, dual to induction.

**proof by contradiction (PbC)** — The classical rule assuming ¬A, deriving ⊥, and concluding A (Gentzen's CC is a ⊥-free variant); rejected intuitionistically and given a computational reading as call/cc.

**proof by reduction** — Showing a problem is undecidable by demonstrating that a decider for it could be used to build a decider for the halting problem, contradicting its undecidability.

**proof certificate** — Evidence produced with a computation's result that a small, trusted checker can validate at runtime, shifting trust from an untrusted solver to the verified checker.

**proof obligation** — Each discharge condition generated for a Hoare-logic or verification proof (e.g. invariant initially true, invariant maintained, invariant plus exit implies postcondition), or a hidden condition a language construct emits (exhaustive matches, nonzero divisors, in-bounds indices).

**proof reduction as computation** — The principle that reducing the detour of an introduction immediately followed by an elimination corresponds to a step of computation in a programming language.

**proof term (M : A)** — A syntactic term that both represents a proof of a proposition and is read as a program of that type, making proofs first-class objects (equations on which can force uniqueness of proofs).

**proof terms for quantifiers** — A ∀-proof is a function (λx.M, applied to a term); an ∃-proof is a pair ⟨t, M⟩ of witness and proof, eliminated by split rather than by projection.

**proof-directed debugging** — Discovering an error in code (or its specification) from a breakdown in an attempted correctness proof.

**proof-term annotated sequents** — Instrumenting each sequent rule with proof terms so a derivation computes an independently checkable term validated by a bidirectional checker.

**proof-theoretic semantics** — The view that the left and right (or introduction and elimination) rules of a connective are its meaning, an internal alternative to model-theoretic (Tarskian) semantics.

**proofs as processes** — The computational reading in which a linear-logic derivation is a concurrent process; antecedents and succedent are communication channels, the process being client of the left channels and provider of the right.

**proofs as programs (propositions as types)** — Brouwer's constructive reading that a proof is a program transforming evidence for the assumptions into evidence for the conclusion, so an intuitionistic proof corresponds to a function from which a program can be extracted; the informal basis of the Curry–Howard correspondence.

**proper returns** — The static requirement that every control-flow path from a function's entry to exit passes through an explicit return when the function must return a value; a must-property.

**proposition** — A statement whose meaning is given by what counts as a verification of it, kept strictly separate from the notion of judgment.

**propositional dynamic logic (PDL)** — The variable-free fragment of dynamic logic (arity-0 predicate symbols, uninterpreted atomic programs); decidable but of limited expressive power.

**protocol (object interaction ordering)** — A restriction on the temporal ordering of an object's events — which methods may be called when (e.g. a stream may be read only until closed) — that clients must follow to avoid runtime errors, often modeled as a state machine.

**protocol / packet / packet switching** — Rules governing cooperating hosts and routers; data is broken into packets (header + payload) that can be resent, reordered, and adaptively routed.

**protocol testing** — Testing representative or randomly generated sequences of operations on objects (e.g. Create, AddEntry, Lookup, Delete), covering conceptual states and object protocols.

**proxy** — An intermediary that acts as a server to the client and a client to the origin server, enabling caching, logging, anonymization, and filtering.

**pruned SSA** — SSA that omits φ-functions for variables dead at the join (not live-in), producing fewer φs than minimal SSA by using liveness information.

**Pthreads (POSIX threads)** — The standard C interface for creating, joining, and synchronizing threads.

**public-key cryptography (RSA)** — Asymmetric encryption using a related pair of keys, a public key to encrypt and a private key to decrypt; RSA is the classic example.

**publish-subscribe** — An architectural style in which components emit events and other components subscribe to them, decoupling producers from consumers.

**pure (nonexecutable) specification** — A specification function or predicate with no observable effect, used only to state correctness while abstracting away how a function is implemented.

**pure literal elimination** — In DPLL, a variable appearing with only one polarity can be set to satisfy all its clauses; a DPLL optimization dropped in DPLL(T).

**purification** — The Nelson-Oppen step replacing mixed-theory (alien) subterms with fresh variables equated to them, splitting a formula into per-theory pure parts.

**push / pop** — pushq decrements the stack pointer by 8 and stores; popq loads and increments the stack pointer by 8.

**Python** — A high-level, dynamically typed programming language with a large standard library, widely used for teaching and for general-purpose programming.

**QA plan** — A quality-assurance plan document stating which quality techniques are used and why, what will and will not be tested, goals and measurement targets, schedule and priorities, roles, and completion criteria.

**qualified name** — A dotted name (e.g. Ints.add) referring to a component defined inside a structure or substructure.

**quality (non-functional) requirement** — A constraint on how well the system performs (accuracy, safety, security, reliability, performance, usability, maintainability), ideally stated in measurable, verifiable ways.

**quality attributes** — Non-functional properties such as evolvability, security, reliability, performance, usability, and safety; contrasted with functional correctness and often not externally or deterministically measurable.

**quality gate** — An automated checkpoint (e.g. static checkers run at check-in) that code must pass before proceeding, used to enforce security and quality standards.

**quality goal** — A measurable target defining acceptable quality (e.g. defects/KLOC, response time, mean time to failure, number of concurrent users); generally domain-dependent.

**quantifier elimination (QE)** — A procedure transforming a first-order real-arithmetic formula into an equivalent quantifier-free one; the reason first-order real arithmetic is decidable.

**quantifier rules and freshness** — Sequent rules where ∀R/∃L introduce a fresh constant not occurring elsewhere and ∀L/∃R instantiate with an expression via capture-avoiding substitution.

**quantifier-free conjunctive fragment** — The syntactic restriction (no quantifiers, only conjunction and negated atoms) that the array and EUF decision procedures target to avoid case analysis.

**race condition** — A situation whose correctness depends on the relative timing of concurrent threads (events, device interaction, or interleaving), so the outcome depends on arbitrary scheduling; a non-local, nondeterministic bug that manifests only for certain interleavings.

**ragged list** — A non-rectangular 2D list whose rows have differing lengths.

**raise** — The expression raise E that signals a runtime error rather than returning a value; it has most general type 'a.

**random testing** — Selecting inputs at random from the input domain according to some distribution, which can give probabilistic bounds on failure rates.

**Rational Unified Process (RUP)** — An iterative commercial process framework organizing development into phases and disciplines.

**reachability** — Whether a state satisfying a property can be reached by running a program or automaton; the recurring reduction target of model checking, and dually constrained by the box modality.

**reaching definitions** — A forward dataflow analysis determining, at each program point, which definitions of a variable may reach it without being overwritten; underpins constant/copy propagation and def-use chains.

**reaction delay / reaction time** — The maximum time a controller may take to respond; a safe time-triggered controller must account for how far the physical system can move within its reaction delay.

**read / write** — System calls that copy bytes between memory and the current file position, returning a count that may be a short count (fewer bytes than requested, not an error).

**read-over-write axioms** — The two defining array axioms: reading the just-written index returns the written value, and reading any other index returns the original array's value at that index.

**readers-writers problem** — A pattern where any number of readers may access a shared object simultaneously but writers need exclusive access, solved with a reader/writer lock.

**real-arithmetic proof rule (R)** — The sequent-calculus rule that discharges a first-order real-arithmetic subgoal by an external decision procedure (quantifier elimination), closing arithmetic branches of a proof.

**reaping / zombie / orphan** — Reaping is a parent collecting a terminated child's exit status; an unreaped terminated child is a zombie (defunct), and a child whose parent exits first is an orphan adopted and reaped by the init process.

**recurrence relation** — An equation defining a function's running time in terms of its value on smaller inputs (e.g. W(n) = c + W(n−1)), extracted from the structure of the code.

**recursion / reentrancy** — Because stack frames give each procedure instantiation its own storage, recursion and mutual recursion work naturally under the standard calling conventions.

**recursive / equirecursive session types** — Session types defined in terms of themselves; when every definition is contractive (begins with a connective), a type name may be silently replaced by its unfolding.

**recursive backtracking** — A recursive search strategy that tentatively makes a choice, recurses, and undoes the choice if it leads to a dead end, exploring the space of possibilities.

**recursive type (rec(t.τ))** — A self-referential type solving a type equation up to isomorphism (e.g. rec(t. unit + (int × t)) is the type of integer lists).

**red zone** — The fixed-size area just below the stack pointer that a leaf function may use without adjusting the stack pointer, per the x86-64 ABI.

**red-black tree** — A balanced binary search tree whose nodes are colored red or black so that red nodes have black children and every root-to-leaf path has equal black height, keeping depth logarithmic.

**red-red violation** — The temporary red-black-tree invariant breach when inserting a red node under a red parent; fixed by rotation and recoloring, possibly propagated upward.

**redex** — A reducible expression — a destructor applied to a constructor (e.g. (λx.e) e′) — the site at which a reduction step applies.

**reduce** — The sequence operation combining all elements with an associative binary function and a base value using balanced parenthesization, giving O(n) work and O(log n) span.

**reducible flow graph** — A flow graph in which every retreating edge of a depth-first spanning tree is a back edge (head dominates tail); all structured code and most goto programs are reducible.

**reduction / step** — A single simplification of an expression (e ⇒ e′); the operational semantics defines steps abstractly, independent of any implementation.

**redundant load elimination (memory CSE)** — Replacing a load by a previously loaded value when alias analysis and an availability analysis prove the memory has not changed since the earlier (dominating) load.

**reference / capability** — A first-class value packaging the get/set capabilities for an assignable, confined to the assignable's scope by the mobility restriction so it cannot escape or be stored.

**referential transparency** — The principle that any expression may be replaced by an extensionally equivalent expression without affecting the program's value; substitution of "equals for equals."

**reflexive transitive closure** — The semantics of α* as the union over n of α run n times.

**region** — A set of CFG nodes with a header that dominates them all, nesting recursively until the whole program is one region; the unit of region-based analysis.

**region-based analysis** — An alternative to iterative dataflow that computes a transfer function summarizing the effect from the start of a region to the end of a block, built by recursively combining smaller regions; well-suited to reducible graphs and interprocedural analysis.

**register allocation** — Mapping the unbounded temporaries/pseudo-registers of the IR onto a finite set of machine registers, spilling excess to the stack; formulated as graph coloring of the interference graph.

**register coalescing** — Eliminating a register-to-register move by merging its non-interfering source and target into one interference-graph node so they share a register and the move is deleted; adds coloring constraints and can worsen colorability.

**register file** — The set of programmer-visible CPU registers, separate from memory and cache (x86-64 has 16 general-purpose 64-bit integer registers).

**register sub-parts** — Lower portions of a register addressed as byte, 2-byte, 4-byte, or 8-byte; any 32-bit write zeros the upper 32 bits.

**regression testing** — Re-running an accumulated test suite after changes to detect newly introduced faults; a bug fix is accompanied by a regression test that reproduces the bug.

**regular expression** — A notation for languages built inductively from singletons, alternation, concatenation, and iteration; used to specify a lexer's token classes, each driving a finite automaton.

**relational action of type constructors** — Each type constructor's defined action on candidates (e.g. C1 → C2 = {M | if M1 ∈ C1 then ap(M,M1) ∈ C2}), which makes the fundamental theorem of a logical relation automatic for each introduction and elimination rule.

**relational composition (∘)** — The semantics of sequential composition α; β as the composition of the two reachability relations via an intermediate state.

**relational interpretation of types** — Interpreting a type variable by an arbitrary relation between values (solving impredicativity in a logical relation) and defining ∀-equality by quantifying over all such relations.

**relevant type system** — A substructural system with contraction but not weakening: every variable is used at least once.

**relocatable / executable / shared object file** — A .o combinable into an executable; an executable copyable into memory and run; a .so linkable dynamically at load or run time — all in ELF format.

**relocation** — The linker step merging sections, assigning final run-time addresses to symbols, and patching all references, guided by relocation entries.

**repository model** — An architectural style in which components share and communicate through a common central data store.

**representation independence** — The theorem (a corollary of parametricity) that two implementations of an existential interface related by a bisimulation are indistinguishable to any client; the basis for proving an ADT correct against a reference implementation.

**representation invariant** — A property that every value of an abstract type must satisfy (e.g. "is a binary search tree"); information hiding lets code assume it and restore it by local reasoning after a temporary violation.

**requirements elicitation** — Techniques for gathering requirements from stakeholders, including interviews and content analysis of existing artifacts (manuals, bug reports, the system being replaced).

**requirements engineering** — Discovering, documenting, and validating what a system must do and the qualities it must have, articulating the relationship between a desired system and its environment.

**requirements qualities** — Good requirements are correct, consistent, unambiguous, complete, feasible, relevant, testable, and traceable.

**REQUIRES / ENSURES** — The specification comments on a function: REQUIRES states preconditions on the arguments, ENSURES states the postcondition.

**resource algebra (·, ε)** — The equational structure on resources: · is associative with unit ε; the equations are applied silently and hide an isomorphism between resource proofs and ordinary sequent proofs.

**resource bound / recurrence bound** — Two lower bounds on a software pipeline's initiation interval: the resource bound over resource types and the recurrence bound over dependence cycles.

**resource characterization of the logics** — Ordered resource semantics becomes linear by adding commutativity, structural by identifying every resource with ε, and affine by adding a resource inequality that permits discarding.

**resource semantics** — A Kripke-style semantics for substructural logic in which each antecedent carries a unique resource label and the succedent records, via a resource combinator, exactly which resources may be used.

**restricted (contraction-free) sequent calculus** — Dyckhoff's calculus that consumes principal formulas eagerly so every premise is smaller than its conclusion, guaranteeing terminating proof search; it has no contraction and uses refined left-implication rules.

**return address** — The address of the instruction after a call, saved on the stack so control can resume after the callee returns.

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

**rotation** — A local restructuring of a red-black (sub)tree that rebalances it while preserving sortedness and black height, used to repair red-red violations.

**rule induction** — The proof principle for an inductively defined judgment: to show a property holds of every derivable judgment, show it is closed under each rule (holds of the conclusion whenever it holds of the premises); equivalently, induction on derivation trees.

**rules as inductive definitions** — A set of inference rules defines its assertions as the least fixed point of the monotone operator that closes a set under the rules; a non-monotone "rule" (e.g. with a negative premise) defines nothing.

**runtime exceptions (arith, mem, abort)** — Final error states of execution: arith for arithmetic faults (division by zero), mem for null/out-of-bounds memory access, and abort from a failed assert.

**runtime monitor** — An executable condition, synthesized from a proof, checked online at runtime; if it always passes, the real system stays within the verified model's guarantees.

**runtime stack** — The region of memory holding procedures' local variables, saved registers, and arguments; it grows toward lower addresses and follows last-in-first-out call/return discipline.

**Russell's paradox** — The paradox that the set R = {x | x ∉ x} satisfies R ∈ R ↔ R ∉ R; a foundational crisis whose type-theoretic resolution foreshadows the propositions-as-types view.

**safety property** — A property asserting that nothing bad ever happens on any run, expressed with the box modality `[α]P`; partial-correctness properties are safety properties.

**safety vs. liveness** — Safety says "nothing bad ever happens" (e.g. mutual exclusion, `□¬(c1∧c2)`); liveness says "something good eventually happens" (e.g. `□(t→◇c)`), and requires termination/progress to establish.

**sampling** — The periodic observation of continuous state by a digital controller; the gap between the event-triggered ideal and real sampled control drives time-triggered controller design.

**sanitizer** — A dynamic bug oracle compiled into a program to detect errors at runtime, e.g. AddressSanitizer (use-after-free, buffer overflow), ThreadSanitizer (races), and UndefinedBehaviorSanitizer.

**satisfiability (SAT)** — Deciding whether a propositional (CNF) formula has a satisfying assignment; NP-complete (Cook–Levin), and the tractable propositional core to which verifiers ultimately reduce verification conditions.

**satisfiability modulo theories (SMT)** — Deciding satisfiability of formulas over first-order theories (arithmetic, arrays, uninterpreted functions) beyond plain propositional SAT, by combining a SAT search with theory solvers.

**satisfying assignment (model)** — A map from a formula's variables to values that makes it true; a formula with none is unsatisfiable.

**scaffolding** — Test-support code (stubs and drivers) that simulates external client or service code so a unit can be tested in isolation, localizing errors and catching bugs early.

**schedule** — An assignment of which unit of work each processor performs at each time step; ideally produced by the compiler/runtime rather than fixed in the program.

**scheduler / thread pool** — A finite set of concurrently executing threads together with a policy that chooses a non-final thread to advance; fair if it eventually runs every ready thread.

**schema of iteration** — Recursion of the form `f 0 = c`, `f(n+1) = g (f n)`, in which the step has access only to the previous result, not the predecessor.

**schema of primitive recursion** — Recursion of the form `f 0 = c`, `f(n+1) = h n (f n)`, in which the step also has access to the predecessor `n`.

**schematic variable** — A metavariable (A, B, …) in an inference rule or proof for which arbitrary propositions or judgments may be uniformly substituted.

**scope** — The syntactically determined region of a program throughout which a binding (of a name to a value, variable, or type) is in effect.

**Scrum** — An agile framework organizing work into fixed-length sprints with a product backlog, defined roles, and recurring ceremonies.

**security development lifecycle (SDL)** — Building security into every phase of development rather than bolting it on afterward, addressing complexity, changing assumptions, and flawed specifications as sources of insecurity.

**security properties (CIA and beyond)** — The goals a secure system upholds: confidentiality, integrity, and availability, plus authentication, authorization, and non-repudiation.

**security through obscurity** — Relying on secrecy of design or code for security; treated as an anti-pattern, since one should assume the attacker knows the source and infrastructure.

**segregated free list (size class)** — Several free lists partitioned by block-size class, searched by class to approximate best-fit allocation with higher throughput.

**self (receiver)** — The conventional name for a method's first parameter, referring to the instance on which the method was called.

**self-interpreter / universal function** — A function that interprets an encoded program on an input; a total language such as System T cannot define its own self-interpreter, though the untyped λ-calculus can implement a universal function for it.

**semantic equivalence** — Two programs are semantically equivalent when they denote the same state relation (e.g. `x←x+2` equals `x←x+1; x←x+1`).

**semaphore (P and V)** — A non-negative integer with atomic P (wait: block until positive, then decrement) and V (post: increment and wake a waiter); a binary semaphore acts as a mutex, a counting semaphore tracks available resources.

**semi-lattice** — A set of values with a meet (join) operator and a top element (bottom need not exist); the meet induces the partial order `x ≤ y ⟺ x ∧ y = x` used in dataflow frameworks.

**sequence** — An abstract parallel collection type with operations (`tabulate`, `nth`, `map`, `reduce`, `filter`) designed for good parallel work and span.

**sequent** — A judgment `Γ ⊢ Δ` (or `Γ ⟹ C`) with antecedents Γ and succedent(s) Δ, valid iff the conjunction of Γ implies the disjunction of Δ; single-succedent in intuitionistic systems, multiple in classical ones.

**sequent calculus** — Gentzen's proof system with a left and a right rule per connective and quantifier, decomposing antecedents and succedents bottom-up; its cut-free form has the subformula property and drives proof search.

**sequential composition** — The construct `α; β` that runs `α` then `β`; its meaning is the relational composition of the two programs' state relations.

**sequential-composition axiom** — The dynamic-logic/Hoare axiom `[α;β]P ↔ [α][β]P`, decomposing a compound program into nested modalities.

**series-parallel graph** — A directed graph with one source and one sink built by sequential and parallel composition of subgraphs; the shape of a cost graph.

**session type** — A proposition (from linear logic) typing the communication protocol on a channel between two composed processes, dictating the sequence of messages exchanged.

**set (data structure)** — An unordered collection of unique, hashable elements supporting fast membership testing; cannot be indexed but can be iterated.

**set / set index** — Cache lines are grouped into sets; middle address bits (the set index) select the set that a block maps to.

**set instructions** — x86 instructions (`sete`, `setl`, `setg`, …) that write a single byte based on the condition codes.

**set-associative cache** — A cache with E > 1 lines per set, so a block may occupy any of several lines in its set and one is chosen for eviction on a miss.

**share form** — An explicit syntactic form `share(e1; x1,x2.e2)` (a let-binding duplicating a value into two variables) that makes the contraction structural rule visible in the syntax.

**shared library (.so)** — A dynamically linked library, sharable by many processes at runtime as a single in-memory copy, resolved at load or run time.

**shared variable** — A variable is shared iff multiple threads reference some instance of it; globals have one instance, thread-local automatics one per stack, local statics one instance overall.

**sharing judgment** — `Γ ▷ (Γ1, Γ2)`, distributing a context's variables to subterms (left, right, or both), used to give a syntax-directed relevant type system.

**shell** — A program that runs programs for the user in a read/evaluate loop, handling built-ins directly and fork/exec-ing others as foreground or background jobs.

**shift / reduce actions and conflicts** — In shift-reduce parsing, a shift pushes the next input token and a reduce replaces a handle by its nonterminal; a shift-reduce or reduce-reduce conflict is a state where the parse table cannot decide uniquely.

**shift modalities (↑, ↓)** — Unary modal operators moving propositions between substructural modes (`↑` to a stronger mode, `↓` to a weaker one); operationally they signal a channel's change of direction, one receiving and one sending.

**short-circuit evaluation** — The rule that `and`/`or` stop evaluating as soon as the result is determined, so the right operand may never run (e.g. `False and f()` never calls `f`).

**side effect** — A state change (updating a cell, printing) caused by evaluating an expression in addition to producing a value; complicates referential transparency.

**Sieve of Eratosthenes** — The classic prime-enumeration algorithm, realized lazily as a stream that filters out multiples of each newly found prime.

**sign bit** — The most-significant bit of a two's-complement number: 0 for non-negative, 1 for negative.

**sign extension** — Widening a signed value to more bits by copying the sign bit into the new high positions, preserving its value.

**signal** — A small integer-ID message notifying a process that an event occurred (e.g. SIGINT, SIGKILL, SIGSEGV, SIGCHLD); it carries only its ID.

**signal handler** — A user-level function installed to catch a signal, running as a separate logical flow concurrent with the main program.

**signed subformulas** — The refinement that each subformula occurrence is destined for only the left or only the right of a sequent (implication flips its first argument's side), narrowing applicable rules and, with the subformula property, making the propositional search space finite.

**signed/unsigned conversion (T2U / U2T)** — Casting between signed and unsigned keeps the bit pattern but reinterprets it, effectively adding or subtracting 2ʷ; casts occur explicitly and implicitly.

**sigprocmask / sigsuspend** — Functions to explicitly block/unblock signals and to atomically unblock-and-wait for one, avoiding races and busy-waiting.

**SILL** — A core session-typed concurrent language whose operational semantics is encoded in a concurrent logical framework with intrinsic session-type-indexed typing.

**simplicial vertex** — A vertex whose neighbors form a clique; removing simplicial vertices one at a time yields a perfect elimination ordering, which exists exactly for chordal graphs and makes greedy coloring optimal.

**simply-typed λ-calculus with unit** — The base language (variables, abstraction, application, plus the unit type `1` with value `⟨⟩`) used to present substructural type systems.

**simulation** — A computational imitation of a real-world process that can be run on varied inputs to study how the process behaves under different circumstances.

**size (of a tree)** — The number of (non-leaf) nodes in a tree, computed recursively by summing children's sizes plus one.

**small vs. large type** — Small types (int, bool, pointer, array) fit in a register and may be held in variables and passed by value; large types (structs) exceed register size and must be kept in memory and manipulated by address.

**socket address / port** — An IP-address:port pair naming one connection endpoint; a port is a 16-bit process identifier, either an ephemeral client port or a well-known service port.

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

**soundness (of a program analysis)** — Analysis results over-approximate all possible runtime states (`α(η) ⊑ σ`, "truth ⊑ analysis"), so a sound analysis reports every defect of its class (no false negatives); in bug-finding tools "sound" can instead mean under-approximation.

**soundness (of a proof system)** — Every provable formula (or sequent) is valid: `⊢ ⊆ ⊨`; the minimal correctness requirement for a logic or proof calculus.

**source / sink** — In taint analysis, the point where untrusted (tainted) data enters (source) and the sensitive operation it must not reach without sanitization (sink).

**span** — An upper bound on running time given unlimited processors, determined by the longest dependency chain (critical path) in a computation; also called depth.

**spatial locality** — The tendency of a program to reference items with nearby addresses close together in time, exploited by cache lines and stride-1 access.

**specification** — A precise, declarative, logical statement of intended behavior against which an implementation is proved; contrasted with incomplete test cases and code review.

**speculation** — Executing an operation before the branch it control-depends on resolves; legal only if it is side-effect-free, raises no exception, and violates no data dependence.

**spilling** — Storing some temporaries in memory when live values exceed available registers, reloading before each use and storing after each definition; which node to spill is chosen by a cost-to-benefit heuristic weighted by loop-nesting depth.

**Spiral model** — Barry Boehm's risk-driven process that repeatedly cycles through requirements, design, and implementation, tackling the highest engineering risks first via prototypes.

**splitting (free block)** — Dividing a chosen free block when the allocation request is smaller than it, leaving the remainder free.

**splitting live ranges** — Inserting a copy to break one long live range into shorter ones, making the interference graph sparser so a heavily-used temporary can avoid being spilled.

**sprint / backlog** — A sprint is a short time-boxed iteration producing a working increment; the backlog is the prioritized list of pending work items.

**spurious counterexample / refinement** — An abstract counterexample with no feasible concrete execution, arising from over-approximation; if spurious it is ruled out by refining the abstraction (choosing better predicates) — the CEGAR loop.

**SRAM vs DRAM** — Static RAM stores each bit in ~6 transistors, needs no refresh, and is fast/costly (used for caches); Dynamic RAM stores each bit in one transistor + capacitor, must be refreshed, and is slow/cheap (used for main memory).

**SSA deconstruction (out-of-SSA)** — Translating SSA back to executable code by replacing φ-functions with ordinary copy instructions on the appropriate predecessor edges.

**SSA renaming** — Walking the dominator tree, giving each definition a fresh version pushed on a per-variable stack and rewriting each use to the version reaching it, filling in each successor φ's argument per predecessor edge.

**stable sequent** — A sequent with only negative antecedents and positive succedents, on which no inversion rule applies, so a focus must be chosen; where focusing decisions are made.

**stack canary (stack protector)** — A guard value placed beyond a buffer and checked before return, aborting the program if an overflow has overwritten it.

**stack frame (activation record)** — The per-call region of the runtime stack holding a procedure's saved registers, local variables, spilled temporaries, and outgoing arguments.

**stack machine / control stack** — An abstract machine whose state makes the control context explicit as a stack of frames representing pending computations.

**stack smashing** — A stack-based buffer overflow that corrupts adjacent stack state such as the saved return address.

**stack vs. queue interfaces** — In ordered logic programming, a store interface that inserts at the left forces last-in-first-out (stack) behavior, while inserting at the right yields first-in-first-out (queue); the discipline is forced by the interface type.

**staging** — Writing a multi-argument function so that partial application does useful work and returns a specialized function that runs more efficiently on the remaining arguments.

**stakeholder** — Any party with an interest in a system (users, clients, operators, regulators, affected third parties); a use case must satisfy its stakeholders' interests.

**Standard Annotation Language (SAL)** — A lightweight language of buffer/pointer contract annotations (`_in`, `_out`, `_ecount`, `_opt`, …) expressing pre-/post-conditions on memory usage, checked by PREfast.

**standard descriptors** — Every process starts with file descriptors 0 (stdin), 1 (stdout), and 2 (stderr) open.

**standard form (regexp)** — A regular expression in which no starred subexpression `r*` has ε in `L(r)`, required so a continuation-based matcher terminates.

**standard I/O (buffered streams)** — The C library's buffered `FILE *` streams that amortize kernel calls by reading/writing blocks; convenient but not async-signal-safe and unsuitable for sockets.

**state** — An assignment of values to program variables at a moment of execution; in dynamic logic a map from variables to reals, in dataflow a map `Var → Value`.

**state / resource interpretation** — Reading a multiset (or sequence) of linear propositions as the current state, where inference models actions that consume and produce resources.

**state-space explosion** — The core difficulty of model checking: reachable states grow exponentially in the number of atomic components, mitigated by partial-order reduction, bounded model checking, symbolic representations, and abstraction.

**statement coverage** — The fraction of program statements (CFG nodes) exercised by a test suite; dead code and error handlers are hard to reach.

**static analysis** — Analyzing a program without executing it to find classes of defects, ranging from syntactic pattern matching through type checking to dataflow analysis; by Rice's theorem it must be unsound, incomplete, or non-terminating.

**static library / archive (.a)** — A collection of relocatable object files from which the linker copies only the members that resolve outstanding references.

**static semantics (statics)** — The part of a language definition specifying the well-formed (well-typed) programs, given by typing judgments `Γ ⊢ e : τ`; declarative — it says what is the case, not how to check it.

**static single assignment (SSA)** — An intermediate representation in which every variable is assigned at most once, so each use refers to one unambiguous definition, making data flow explicit and simplifying optimizations.

**static symbolic execution (SSE)** — Symbolic execution over a program without concrete runs, better able to use loop invariants for verification (contrasted with dynamic symbolic execution).

**static vs. dynamic content** — Web content served from files versus content produced on the fly by a program the server runs.

**static vs. dynamic execution** — Statically a program is a finite text, but dynamically it may have infinitely many execution paths; dataflow analysis abstracts a program point by combining information over all dynamic instances of that point.

**static vs. dynamic linking** — Static linking copies needed library code into the executable at link time; dynamic linking leaves it out and links a shared copy at load or run time.

**Steensgaard's analysis** — A flow- and context-insensitive, unification-based points-to analysis in which each node points to at most one other (fan-out ≤ 1), implemented with union-find in near-linear time but less precise than Andersen's.

**Stochastic hybrid system (SHS)** — A hybrid system extended with stochastic dynamics (SHS = HS + stochastics).

**store / state** — A mapping from reference cells to values; paired with an environment it forms the state against which imperative equivalence is defined.

**stream** — A representation of a potentially infinite list as a suspension of a front, built and consumed lazily.

**strength reduction** — Replacing an expensive operation with a cheaper equivalent, classically turning a multiplication by an induction variable in a loop into repeated addition.

**strengthening the loop invariant** — Adding facts to a loop invariant so it becomes provable (analogous to generalizing an induction hypothesis), e.g. adding `b = fib(i+1)` to `a = fib(i)`.

**strict barrier certificate** — An invariant argument for strict inequalities `e > 0` (an open set); its incompleteness (not covering all cases) motivates differential cuts and ghosts.

**STRIDE** — A threat taxonomy — Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, Elevation of privilege — each mapped to the security property that counters it.

**stride / row-major order** — The address step between successive accesses; C stores arrays in row-major order, so traversing a row is stride-1 (good) and a column is not.

**strong induction** — Complete/course-of-values induction: prove the property for `n` assuming it for all `n' < n`; the hypothesis may assume the property for all smaller values.

**strong normalization** — The property that there are no infinite β-reduction sequences from a well-typed term; usefully stated as the validity of transfinite induction on reduction.

**strong update** — Overwriting a variable's points-to set when its target is known exactly (a must relationship), versus a weak update that only adds to the set under may-information.

**strong vs. weak reduction** — Strong reduction permits reducing under a λ (inside abstractions); weak reduction (call-by-name/value) does not, so all abstractions are normal forms.

**strong vs. weak symbols** — Strong symbols (functions, initialized globals) may not be multiply defined; between a strong and a weak symbol the strong one wins, and among multiple weak symbols one is chosen arbitrarily.

**strongest postcondition** — For precondition P and program α, the strongest formula implied by running α from a state satisfying P; encapsulates symbolic execution and propagates forward.

**strongly connected component (SCC) / accepting cycle** — A set of mutually reachable states; a reachable SCC (or cycle) containing an accepting state witnesses a nonempty ω-automaton language and yields a counterexample.

**struct** — A block of possibly different-typed fields at compile-time-fixed offsets in declaration order; a large type laid out with per-field alignment padding, kept in memory and accessed by address.

**structural congruence** — The least congruence on processes making parallel composition a commutative monoid and unrolling recursive processes, identifying processes with the same structure prior to transition.

**structural induction** — Induction over the structure of terms/values of a datatype (or over the rules defining a syntax): prove the property for base constructors, then for compound ones assuming it holds for their sub-parts.

**structural logic** — Ordinary (intuitionistic) logic admitting all three structural rules — exchange, weakening, and contraction — one endpoint of the substructural spectrum.

**structural operational semantics (SOS) / small-step semantics** — A dynamics given by a transition relation `e ⟼ e'` defined by induction on program structure, taking one atomic step at a time and modeling intermediate states and nontermination.

**structural properties** — Properties a type-system context may enjoy — weakening, contraction, and exchange — whose presence or absence characterizes substructural type systems.

**structure** — An implementation module grouping related type, value, and exception declarations, checked against an ascribed signature that may hide components.

**stub / driver** — A stub is a minimal substitute for underlying service code (a mock); a driver is client-side code that exercises the unit under test with calls and call sequences.

**stuck state** — A non-final machine state with no applicable transition, corresponding to a runtime error / undefined behavior; a type-safe language has none (progress).

**subformula property** — Every proposition in a cut-free (normal) proof is a subformula of the end sequent; it fails for non-normal proofs and yields decidability and consistency results.

**subsingleton logic** — The fragment of ordered logic where every sequent has at most one antecedent; its surviving connectives (`⊕`, `&`, `1`) give proofs corresponding to finite-state transducers.

**substitution** — Replacement of a variable `x` by an expression, written `[e/x]e'`, defined so as to avoid variable capture; the fundamental means by which variables acquire meaning.

**substitution (logic-programming)** — A finite map θ from logic variables to terms, threaded through computation as an input/output substitution and produced by unification.

**substitution lemma** — If `Γ, x:τ' ⊢ e:τ` and `Γ ⊢ e':τ'` then `Γ ⊢ [e'/x]e:τ`; substituting a well-typed expression preserves typing.

**substitution principle** — The defining property of hypothetical judgments: a proof of a hypothesis may be substituted for every use of that hypothesis, discharging it.

**substructural logic** — A logic that restricts or omits one or more structural rules (exchange, weakening, contraction), so hypotheses become ordered and/or consumable resources; includes linear, ordered, affine, strict, relevance, bunched, and separation logics.

**substructural operational semantics (SSOS)** — Specifying a language's operational semantics by substructural (ordered or linear) inference rules, so computation is proof reduction and synthetic rules obtained by focusing give the intended stepping rules.

**substructural type system** — A type system that controls variable use by restricting the structural rules, corresponding to substructural logics; used for memory management, access control, concurrency, and resource analysis.

**substructure** — A structure component nested inside another signature/structure, tying related types and operations together.

**subsumption** — Discarding a weaker (subsumed) derived sequent when a stronger one is present, since any inference using the weaker can use the stronger.

**subtyping of session types** — A decidable relation letting a process of one session type be used where a supertype is expected, permitting a relaxed identity/forwarding rule.

**success continuation** — A continuation invoked on success and discarded on failure, used to short-circuit control (e.g. returning immediately) or to represent the goals still to solve in proof search.

**successor / predecessor (CFG)** — The CFG neighbors of a node: successors are blocks control may flow to, predecessors those it may come from; dataflow equations propagate along these edges.

**sum type** — A type whose values are tagged (injected) values of one summand; a positive type with injections `inl`/`inr` and elimination by `case`, corresponding to logical disjunction (the nullary sum is `void`).

**superclass / subclass** — The parent class whose behavior is inherited and the child class that inherits from it and may extend or override it.

**superscalar / issue width / functional units** — Superscalar hardware issues several independent instructions per cycle (up to the issue width) across a finite set of functional units of each type.

**supervised / unsupervised / reinforcement learning** — The three broad categories of machine learning: supervised learning predicts outputs from labeled inputs, unsupervised learning finds structure in unlabeled data, and reinforcement learning learns from feedback on its actions.

**suspension / thunk** — A delayed computation of type `unit → τ` whose body is evaluated only when "forced" by application; the mechanism of lazy evaluation.

**swapping (paging) / thrashing** — Copying pages in and out between DRAM and disk swap space; thrashing is continuous swapping when the working set exceeds physical memory.

**switch / jump table** — A multi-way branch implemented by an indirect jump through an array of code addresses, used when the index is in range.

**symbol** — A named global variable or function a module defines or references, which the linker binds to exactly one definition.

**symbol resolution** — The linker step associating each symbol reference with exactly one definition.

**symbol table (.symtab)** — The assembler-built array of entries recording each symbol's name, size, and location.

**symbolic execution** — Executing a program on symbolic (rather than concrete) inputs, building a formula (path condition) over fresh symbolic variables along each path; a generalization of testing that explores paths and is captured by the strongest postcondition.

**symbolic execution tree** — The tree of feasible paths explored by symbolic execution, branching at each conditional into the true/false path constraints.

**symmetric vs. asymmetric encryption** — Symmetric encryption uses one shared key to both encode and decode, whereas asymmetric encryption uses a related pair of public and private keys.

**synchronization** — Coordinating threads so they never take an unsafe trajectory, guaranteeing mutually exclusive access to critical sections.

**synchronization / interaction** — The joint (silent) step by which two processes taking complementary actions advance together; the basis of communication between processes.

**synchronization order** — The ordering imposed by synchronization operations (acquire/release, wait-notify, fork-join, volatile access); accesses ordered by it are not data races.

**synchronous exception (trap / fault / abort)** — An exception caused by executing an instruction: a trap (system call, breakpoint) returns to the next instruction, a recoverable fault (page fault) may re-execute it, and an abort terminates the program.

**synchronous message passing** — A concurrency model in which sender and receiver step together as one transition; making communication asynchronous requires buffering.

**syntactic / structural analysis** — Analysis over the token stream or parse/AST structure (grep-style or structural pattern matching) rather than over program semantics.

**syntactic types (Lambek)** — Lambek's grammatical connectives `x/y` ("x over y", yields an x given a y to its right) and `y\x` ("y under x", given a y to its left), under which parsing becomes proof construction.

**syntactic vs. semantic logical framework** — A syntactic framework presents a system using only generators, so its equational theory is the framework's native decidable congruence; a semantic one also admits defining equations whose enriched equality may be undecidable.

**syntax-directed rules** — A rule set with exactly one rule per syntactic form, so the form of the expression determines the applicable rule; makes type checking straightforward.

**synthetic inference rule** — A macro-rule compiling an entire focusing phase (chaining plus inversion on one focused proposition) into a single big-step rule, collapsing small-step nondeterminism.

**synthetic vs. analytic judgment** — "A true" is synthetic (it needs external evidence, a derivation), whereas "M : A" is analytic (it contains its own evidence and can be effectively checked).

**system call** — A request to the kernel for an effect outside the process (I/O, time, memory, process creation), each with a unique ID invoked by a trap instruction.

**System F (polymorphic λ-calculus)** — Girard's and Reynolds's system of universally quantified types `∀t.τ`, with type abstraction `Λt.e` and type application; a polymorphic function takes a type as argument and behaves uniformly across all instances (parametric polymorphism).

**System T (Gödel's T)** — The total typed language of natural numbers, higher-order functions, and primitive recursion (the recursor); every well-typed program terminates, and it defines exactly the functions provably total in Peano arithmetic.

**system testing** — End-to-end testing of the whole system, higher-level than unit or integration testing.

**systematic interleaving exploration** — Deterministic controlled concurrency testing that explores thread interleavings systematically for good coverage and deep bugs, versus ad-hoc sleeps or random walks.

**T-validity / T-satisfiability / T-decidability** — A Σ-formula is `T`-valid if every model of theory `T`'s axioms satisfies it, `T`-satisfiable if some model does, and `T` is decidable if an algorithm always decides validity.

**T1–T2 transformations** — Hecht–Ullman flow-graph reduction rules: T1 removes a self-loop `n→n`; T2 lets a node absorb a successor that has it as sole predecessor. A graph is reducible iff exhaustively applying them collapses it to a single node.

**tabulate** — The sequence-building operation `tabulate f n` producing `⟨f 0, …, f(n−1)⟩`; O(n) work and O(1) span when `f` is constant time.

**tag / valid bit** — In a cache line, the high-order tag bits compared against the address's tag plus a valid bit indicating whether the line holds real data; a hit requires both to match.

**tags (runtime)** — Run-time markers (`Int`, `Bool`, `Fun`, …) attached to raw values so a dynamically typed language can identify a value's form; checking and stripping them costs time and space.

**tail call / tail-call optimization** — A call in tail position whose result is returned directly; tail-call optimization reuses the current stack frame (or, in a process calculus, compresses a recursive call followed by a forwarding identity into an in-place continuation) instead of growing the stack.

**tail recursion** — A recursive definition whose recursive call is the outermost operation (not wrapped in further computation), so it needs no growing stack; every function can in principle be rewritten in tail-recursive form.

**taint analysis** — A data-flow analysis tracking data from untrusted sources to sensitive sinks to detect leaks or injection; implementable statically or dynamically, and the two can be combined.

**Tarskian / Russellian universes** — A universe as a class of type codes with an extension (`ext`) map (Tarskian) versus universes whose codes are literally types (Russellian); with a cumulative hierarchy of levels with lift and cumulativity.

**team communication cost** — Coordination overhead that grows with team size as `n(n−1)/2` communication links, motivating structuring teams into smaller units.

**technical debt** — The accumulated cost of expedient design or implementation shortcuts that must later be repaid through rework.

**temporal locality** — The tendency of a recently referenced item to be referenced again soon; exploited by reusing data while it is still in cache (contrast spatial locality).

**temporary (temp)** — A virtual register in abstract assembly holding an intermediate value; the compiler assumes an unlimited supply and later maps temps to machine registers or stack slots.

**term** — An arithmetic expression built from variables, constants, and function symbols (e.g. `+`, `−`, `·`, `/`); it denotes a value relative to a state.

**terminal / non-terminal** — A terminal is an alphabet symbol or token appearing literally in the input; a non-terminal (grammar variable) is expanded by productions into sequences of terminals and non-terminals, with one distinguished as the start symbol.

**termination** — The property that a computation reaches a final state (halts); e.g. every closed well-typed term in a total language evaluates to a value.

**termination (session, `1`/close/wait)** — In session types the unit `1` types the end of a session: the provider executes `close` and disappears, and the paired client `wait`s for the close before proceeding.

**test / guard / challenge (`?Q`)** — A program (or hybrid-program) construct that succeeds leaving the state unchanged when formula `Q` holds and otherwise fails with no poststate (the run is discarded); models preconditions and assumptions, with `skip ≜ ?true` and `abort ≜ ?false`.

**test adequacy** — Whether a test suite is good enough; coverage criteria reveal where testing is missing but are not sufficient adequacy criteria on their own.

**test axiom (`[?]`)** — The dynamic-logic axiom `[?Q]P ↔ (Q → P)` (diamond form `⟨?Q⟩P ↔ Q ∧ P`): after a test `?Q`, the postcondition need hold only when the guard passes.

**test coverage** — A measure of how much of an artifact (statements, branches, paths, or input domain) a test suite exercises; good coverage is necessary but not sufficient for adequacy, while poor coverage proves the suite inadequate.

**test game (`?Q`)** — An atomic hybrid game in which Angel loses immediately if `Q` fails; its dual `(?Q)ᵈ` makes Demon lose if `Q` fails.

**test harness** — A tool (e.g. JUnit) that manages and runs unit tests so they are automatic, repeatable, and independent, with immediate pass/fail confirmation.

**test oracle / the oracle problem** — The mechanism that decides whether a test's observed output is correct; the difficulty of obtaining such an oracle for many properties is a fundamental limit of testing.

**test stub / mock** — A stand-in implementation of a dependency used so a unit can be tested in isolation under controlled conditions.

**test terms / infinitesimals and infinities** — The symbolic values (roots, root ± ε, ±∞) substituted during virtual substitution; strict inequalities are handled because infinitesimals and infinities never satisfy equalities.

**test-driven development (TDD)** — Writing a failing test as a specification before writing the code that satisfies it; on finding a bug, first write a failing test reproducing it, then fix.

**testing alongside verification** — Running code or asserting strict test postconditions to catch over-strict preconditions, over-lax postconditions, or prover weakness that a "Verified" result can mask.

**testing in production** — Validating changes under real workloads via beta tests, A/B tests, and staged rollouts across hardware/software diversity.

**the four judgments** — In computational type theory: `A type` (A is a type), `A ≐ A′` (type equality), `M ∈ A` (membership), and `M ≐ M′ ∈ A` (element equality), each explained via canonical forms.

**the inverse method** — Maslov's general theorem-proving method by forward inference and saturation over cut-free sequent calculi; unlike resolution it is not specialized to classical logic.

**the world and the machine** — Jackson's framing that requirements are properties of the environment (the world), specifications describe the shared environment–machine interface, and domain knowledge bridges the two; conflating them produces defective requirements.

**theorem proving / proof checking / type inference** — Three decision problems on `M : A`: theorem proving (given `A`, find some `M`), proof checking (given `M` and `A`, decide `M : A`), and type inference (given `M`, find some `A`).

**theory combination (T1 ⊕ T2)** — Deciding satisfiability over the union of two theories' signatures and axioms; checking each theory independently is unsound (each part satisfiable, the whole unsatisfiable).

**theory of arrays** — An axiomatic model of arrays with a `read a i` operation and a non-mutating `write a i v` constructor (denoting a new array), abstracting mutable arrays for logical reasoning.

**thread** — A logical control flow within a process that shares the process's code, data, and kernel context but has its own stack, registers, and thread ID; threads form a pool of peers rather than a tree.

**thread interleaving** — An ordering that merges the steps of concurrent threads into a single sequence; the space of interleavings defines program behavior under sequential consistency.

**thread locality** — Keeping data accessible to a single thread (local variables, event-thread confinement, read-only sharing, ownership transfer) so no synchronization is needed to avoid races.

**thread safety / reentrant function** — A function is thread-safe if it always produces correct results under concurrent calls; the thread-unsafe classes are fixed by locking or by reentrancy (accessing no shared state).

**threads memory model** — Each thread has a private context (TID, stack, registers) but all share code, data, heap, and library segments; stacks are unprotected, so a thread can read or write another's stack.

**threat modeling** — Systematically analyzing a design to enumerate potential threats (e.g. via STRIDE), rank them by risk, and decide where to add security mechanisms.

**three-address code** — An intermediate representation in which each instruction has at most one operator and up to three operands (e.g. `t ← s1 ⊕ s2`), making all intermediate results explicit in temporaries; the standard scalar IR.

**throughput vs. utilization** — Competing memory-allocator goals: throughput is the number of requests served per unit time; utilization is how efficiently the heap holds program data.

**time-triggered control** — A control design where the controller runs on a fixed sampling period, the plant evolving for at most the reaction time between control cycles; implementable and more robust than an idealized event trigger.

**TMax** — The largest two's-complement value, `2^(w−1) − 1` (bit pattern `011…1`).

**TMin** — The most negative two's-complement value, `−2^(w−1)` (bit pattern `100…0`); it is its own negation, a common source of bugs.

**top (⊤)** — The maximal (least precise) element of a dataflow lattice; `l ⊔ ⊤ = ⊤`, and interior nodes of a "must" analysis initialize to ⊤ to stay precise.

**top-down parsing (recursive descent, LL(1))** — Parsing that builds the parse tree from the start symbol down, predicting productions from lookahead; recursive descent is the hand-written form and LL(1) uses one token of lookahead, requiring elimination of left recursion.

**total correctness** — The property that a program terminates *and* its postcondition holds (a liveness property), written `⟨α⟩P` or `[P] S [Q]` and established via a variant; stronger than partial correctness.

**total language** — A language in which all programs terminate (e.g. System T), contrasted with partial languages like PCF and the untyped λ-calculus.

**totality** — For a function, the property that it returns a value on every valid input (no divergence or exception); enjoyed by total languages such as System T and F, where every well-formed expression terminates.

**Towers of Hanoi** — A classic recursive puzzle of moving a stack of disks between pegs, used to illustrate multiple recursive calls.

**traceability** — The ability to link requirements forward to design, code, and tests (and back), so each element's origin and rationale can be followed; valuable but costly to maintain.

**tractable / intractable** — A problem is tractable if it has an efficient (polynomial-time) algorithm and intractable if its known solutions require impractically many steps (e.g. exponential or factorial time).

**transactional memory** — Grouping updates into a transaction whose effects a runtime makes atomic (tracking reads/writes, committing if no interference, aborting otherwise); avoids deadlock and allows more concurrency at the cost of overhead.

**transfinite induction on reduction** — The principle that to prove a property `P` of every well-typed term it suffices to show `P(M)` whenever every immediate β-reduct of `M` satisfies `P`; the practically useful form of strong normalization.

**transistor** — A fundamental circuit component acting as an electronic switch between on and off, the physical building block underlying logic gates.

**transition (reachability) semantics** — The meaning of a program as a binary relation `⟦α⟧ ⊆ S × S` on states; deterministic programs relate each initial state to at most one final state, nondeterministic ones possibly many.

**transition system** — An abstract machine given by a set of states, initial and final states, and a binary transition relation `s ⟼ s′` describing step-by-step execution; deterministic if each state has at most one successor.

**transparent ascription (`:`)** — Ascribing a signature so that the concrete identity of the structure's types (mentioned in the signature) remains visible to clients outside.

**Travelling Salesperson Problem** — The classic hard optimization problem of finding the shortest route that visits every city in a weighted graph exactly once and returns to the start; brute force is O(n!).

**tree** — The recursive datatype for binary trees, e.g. `Empty | Node of tree * int * tree`, carrying data at nodes; supports its own structural-induction principle.

**tree tiling** — Covering the IR expression tree with tiles, each a pattern corresponding to one or a few machine instructions; a full cover yields the emitted instruction sequence.

**trigonometry (for graphics)** — Using sine and cosine to place points on circles and draw circular or radial patterns, such as clock hands or spokes.

**true concurrency** — The property that independent steps with no data dependency may occur in either order and yield indistinguishable computations.

**truncation** — Narrowing an integer by dropping high bits; equivalent to a modulo operation, correct only for small-magnitude values.

**truth (⊤)** — The nullary conjunction proposition: one introduction rule with no premises and no elimination rule (in linear logic, the additive unit whose proof consumes all current resources).

**truth table** — A table listing every combination of Boolean inputs together with the resulting output for an expression, logic gate, or circuit.

**tuple type** — An SML product type `t1 * t2` whose values are pairs `(v1,v2)` (generalizing to n-tuples), evaluated left to right.

**Turing completeness** — The property that a language can implement the same set of (partial) functions as any other universal model of computation; most practical languages share this.

**Turing equivalence** — The property that different languages can each simulate the other and so compute exactly the same number-theoretic functions, making their halting problems equally unsolvable.

**Turing machine** — Alan Turing's general theoretical model of computation — a finite control reading and writing an unbounded tape — that defines what it means to compute and underpins the Church–Turing thesis.

**two's complement (B2T)** — Signed integer encoding in which the most-significant bit carries weight `−2^(w−1)`; the negative of `x` is obtained by flipping all bits and adding one (`−x = ~x + 1`).

**two's-complement addition (TAdd)** — Signed addition whose bit-level behavior is identical to unsigned addition (the carry-out is discarded).

**type** — A classifier of expressions predicting the kind of value an expression will produce if evaluation succeeds; determined before evaluation.

**type abstraction and type application** — `Λ(t) e` abstracts over a type variable (System F) and `e [τ]` instantiates a polymorphic expression at a type, substituting into the result type.

**type candidate / candidate assignment** — A set of closed terms closed under head expansion (Girard) or a binary relation with that closure (Reynolds); a candidate assignment maps each free type variable to a candidate, resolving impredicativity in the logical-relation.

**type checking** — Verifying, via syntax-directed typing rules, that a program is well-typed under the judgment `Γ ⊢ e : τ`; a widely deployed sound-by-construction static analysis that rejects ill-typed programs.

**type class** — A mode of using signatures that describes a type equipped with a collection of operations (e.g. `ORDERED` = a type with a `compare`); usually the type is descriptive rather than abstract.

**type constructor** — An operator on types (e.g. `list`, `option`, `->`, `*`) that builds compound types from other types.

**type inference** — Deducing an expression's type without annotations by propagating constraints from its syntactic structure and the typing rules.

**type inference as a logic program** — Because typing rules are syntax-directed, rewriting them as a Prolog program makes unification perform Hindley–Milner-style inference on the remaining type equations.

**type safety / type soundness** — The property, proved via progress and preservation, that a well-typed program cannot get stuck ("well-typed programs don't go wrong"); the central link between a language's statics and dynamics.

**type subsumption** — A silent coercion rule allowing a value of one type to be used at another (e.g. the indefinite pointer type `any*` of `null` used as `τ*` for any `τ`).

**type synthesis vs. type checking (mode)** — Synthesis computes a type from an expression given `Γ` (used when the type is unknown); checking compares an expression against a known expected type; the choice of mode is guided by mode/bidirectional checking.

**type theory** — The systematic study of abstractions in which types classify different forms of data and computation.

**type variable** — An identifier (e.g. `'a`, `t`) standing for an arbitrary type, declared in a type context and used to express polymorphic types.

**type-based alias analysis (alias class)** — Inferring non-aliasing from types and offsets: each address is given an alias class, and two addresses may alias only if they share type and offset; sound for type-safe languages.

**typed quantifiers (`∃x:τ.A`, `∀x:τ.A`)** — First-order quantifiers over a data type `τ`; operationally `∃R`/`∀L` send a witness term and `∃L`/`∀R` receive a fresh parameter, enabling computation over integers, strings, etc.

**types as specifications / behavioral / extensional** — The view that types are inherently behavioral specifications of a program's extensional I/O behavior, so membership and equality are defined by observing evaluation rather than by syntactic form.

**typestate / protocol state machine** — Modeling an object's protocol as a state machine whose transitions correspond to method calls and whose state changes correspond to field changes, with classes/methods annotated by state.

**typing context (Γ) / type environment** — A finite map from variables to their types recording the hypotheses under which an expression is typed; extended when entering a binder's scope and consulted to type variable occurrences.

**typing judgment** — `Γ ⊢ e : τ`, asserting that expression `e` has type `τ` in variable context `Γ`.

**UMax** — The largest unsigned value, `2^w − 1` (all ones).

**undecidability (of verification)** — The fact that most deep program properties are undecidable, so there is no push-button verifier: the prover needs programmer hints (invariants, variants), and finding the right hints is hard.

**under-approximation** — An analysis in which every reported defect is real, so it has no false positives but is subject to false negatives.

**unification** — Finding a substitution `θ` making two terms equal (`s ≐ t / θ`, with `[θ]s = [θ]t`); Robinson's algorithm computes a most general unifier when one exists.

**uniform substitution (US)** — The mechanism that instantiates concrete axioms by uniformly replacing predicate, function, and program symbols with formulas/terms/programs, so "syntactic uniform substitution = semantic replacement"; makes soundness a check on a single literal formula rather than on a schema.

**uniform substitution lemma** — The soundness lemma stating that applying an admissible uniform substitution syntactically matches performing the corresponding semantic replacement (in the adjoint interpretation); the crux of US soundness.

**uniform substitution rule (US)** — The single proof rule that soundly applies a uniform substitution to a proved formula (or whole proof): any US instance of a valid formula is valid, replacing schema-instantiation with an explicit checkable step.

**union** — A C aggregate sized to its largest member in which only one member is valid at a time; used to reinterpret a value's bit pattern or as a sum type.

**union-find** — The disjoint-set data structure maintaining equivalence classes with near-constant `O(α(n))` amortized cost per operation; used to implement congruence closure and unification-based (Steensgaard) pointer analysis.

**uniqueness of identity proofs (UIP)** — The principle that any two elements of an identity type are (judgmentally) equal; holds for the extensional equality type.

**uniqueness of normal forms** — The consequence of confluence that an expression has at most one normal form (up to renaming), so the result of a computation is well-defined.

**uniqueness of types** — In System T, a given expression has at most one type in a given context (aided by type annotations on abstractions).

**unit (`1`)** — The multiplicative unit of concatenation/tensor in (sub)structural logic, corresponding to the empty context; provable only with no resources, and its left rule simply deletes a `1`.

**unit propagation** — When a clause reduces to a single literal, that literal must be assigned to satisfy the clause; a core DPLL step.

**unit testing** — Testing an individual component (method or class) in isolation against its specification, typically written by developers alongside the implementation.

**unit type (`1`)** — The nullary product type corresponding to logical truth ⊤, with sole value `⟨⟩` (`triv`) and no destructor.

**universal closure** — Prefixing a formula's free variables with universal quantifiers before running quantifier elimination, so proving validity reduces to deciding a closed formula.

**universal quantifier (∀I / ∀E)** — `∀x.A(x)`; introduced by proving `A(a)` for a fresh parameter `a` (subject to the eigenvariable condition) and eliminated by instantiating `A(t)` for any element `t`.

**universally quantified type** — `∀(t. τ)`, the type of a value that takes a type as an argument; e.g. the polymorphic identity has type `∀(t. t → t)`.

**Unix I/O** — The kernel's general, async-signal-safe operations on all files (open/close, read/write, stat, lseek), on which higher-level I/O is built.

**unrestricted assumptions (Γ)** — The ordinary, non-linear assumptions (left of the semicolon in `Γ ; Δ ⊢ C`), usable arbitrarily often; the single-conclusion intuitionistic form of linear logic combines them with linear ones.

**unrolling the recurrence** — Expanding a recurrence's terms repeatedly to detect a pattern for its closed-form solution.

**unsigned encoding (B2U)** — Representation of non-negative integers as plain binary, `B2U(x) = Σ xᵢ·2ⁱ`, giving range `0 … 2^w − 1`.

**unwind / unfold axioms** — Dynamic-logic axioms `[while(Q) α]P ↔ [if(Q){α; while(Q) α}]P` (and the `[α*]` form) that unroll a loop one iteration; sufficient only for loops with a fixed finite bound.

**up-shift ↑ (return / let val)** — In call-by-push-value, `↑A⁺` is the computation type embedding a value: `return V` introduces it and `let val x = M in N` binds the returned value.

**use (A↓)** — The judgment "A may be used," holding when `A` is a hypothesis or obtained from a hypothesis by elimination rules; uses are built top-down (dual to a verification `A↑`).

**use / def sets (liveness)** — For liveness analysis, `Use[b]` is the set of variables used in a block before any local definition and `Def[b]` the set the block defines; the backward transfer function is `in[b] = Use[b] ∪ (out[b] − Def[b])`.

**use case** — A structured description of a system's interaction with actors, capturing scope, primary actor, stakeholders and interests, preconditions, success guarantees, the main success scenario, and extensions.

**used expressions** — A backward PRE pass (liveness for expressions) that removes temporary assignments whose result is not used later; the final transformation inserts a fresh temporary at each `latest ∩ used` block.

**user mode vs. kernel mode** — A processor mode bit restricting which instructions and memory a process may access; system calls and exceptions transition to kernel mode.

**user story** — A short, user-centered statement of a desired capability, grouped into larger "epics" and managed on a board; a lightweight alternative to full use cases.

**V vacuous axiom** — `P → [α]P` when `P` does not depend on any variable that `α` changes; a fact with no free variables bound by `α` survives running `α`.

**validation** — Determining whether the system meets the needs of its users ("did we build the right system?"); targets flaws in the specification, e.g. incorrect requirements capture.

**validity** — The property that a formula is true in every state under every interpretation; the target property that a proof establishes.

**validity / of-course (`!A`, "bang")** — Girard's device for reusable resources: if `A` is provable with no resources it may be used arbitrarily often, internalized as `!A` with an "A valid" antecedent (a renewable resource).

**valuation / semantics of terms** — `Iν⟦θ⟧`, the real value of term `θ` in state `ν`, defined inductively over the structure of the term.

**value** — A final expression that evaluates to itself in zero steps and takes no further step (e.g. a numeral, a λ-abstraction/closure, a tuple of values); the result of a computation.

**value binding** — An association of an identifier to a value, written `[v/x]`; substituting the value for free occurrences of the variable (respecting scope) implements it.

**value constructor** — A tag introduced by a datatype declaration (e.g. `nil`, `::`, `Node`, `SOME`) used to build and pattern-match values of that type.

**value context** — A calling context represented by the incoming abstract state (argument values) to a function; gives the same precision as arbitrary-length call strings and always terminates, though it is still expensive.

**value judgment / evaluation** — The judgment "M value" marking a computation result; because results are values, functional computation is called evaluation, and `λx.M` is a value (no reduction under λ).

**value numbering** — A local technique that gives each computed value a number and maps variables to their current values, so two expressions with the same value number are common subexpressions that can be reused; extends to constant folding.

**value restriction** — The ML requirement that only syntactic values receive polymorphic type; it prevents the unsoundness of sharing a polymorphic reference cell across incompatible instantiations.

**value types vs. computation types** — In call-by-push-value, positive types `A⁺` (products, sums, `1`, `↓A⁻`) type values and hypotheses range over values, while negative types `A⁻` (functions, records `&`, `↑A⁺`) type computations.

**value-driven testing** — Focusing on the tests with the biggest benefit per unit cost, where value derives from finding severe, common, distinct, and general bugs.

**variable** — A placeholder standing for another term or expression, given meaning by substitution; an occurrence may be free or bound.

**variable capture** — The error in which a free variable of a substituted term becomes accidentally bound during naive substitution; avoided by renaming bound variables (α-conversion).

**variant / termination metric** — A nonnegative quantity (an integer expression or a bound on remaining iterations) that strictly decreases on each loop iteration or recursive call while staying ≥ 0, witnessing termination; also called a variant function.

**variant expression (with big steps)** — A generalization of the variant predicate to an expression paired with an invariant, closely matching a VC generator for `while` loops and permitting decreases larger than one.

**variant rule (`var`)** — The total-correctness proof rule for `while` loops using an invariant `J` plus a variant term `p` that strictly decreases and stays `≥ 0`.

**vector clock** — The data structure (per-thread logical clocks) used to track the happens-before relation when detecting data races dynamically.

**vectorization / SIMD** — Executing a parallelizable inner loop as single-instruction-multiple-data operations while an outer loop runs sequentially (inner-loop parallelism).

**velocity** — The amount of backlog a team completes per sprint, used to forecast future capacity.

**verifiable rewards** — Using compilation, static analysis, and unit tests as checkable signals to evaluate or train LLM-generated code.

**verification** — Determining whether a system meets its specification ("did we build the system right?"); targets flaws in design or code (contrasted with validation).

**verification (A↑)** — A proof whose evidence has a normal form, proceeding by introduction rules and analyzing only the subformulas of `A`; the meaning of a proposition is given by its verifications.

**verification condition (VC)** — A purely logical proposition, extracted from a program plus its contracts, whose validity establishes the program's correctness; discharged by automated theorem provers.

**verification condition generation (VCGen)** — Mechanically producing a single logical formula whose validity implies the correctness of the whole program, making axiomatic semantics practical and solvable by SAT/SMT solvers.

**verificationist point of view** — The position that the meaning of a connective is fixed by its introduction rules, from which the soundness and completeness of its elimination rules is derived.

**virtual / physical page (page frame)** — A virtual page may be unallocated, cached in a physical page, or uncached on disk; a physical page (page frame) is a page-sized DRAM slot.

**virtual memory (VM)** — An abstraction giving each process a large private address space stored on disk and cached in DRAM, which uses memory efficiently, simplifies management, and isolates and protects processes.

**virtual substitution** — An efficient quantifier-elimination technique for low-degree polynomials that substitutes symbolic test terms — including infinitesimals and infinities — for quantified variables instead of computing explicit roots.

**virtual vs. physical address** — The CPU issues virtual addresses that the MMU translates to physical addresses naming actual DRAM locations.

**Visitor pattern** — A common AST-walker architecture: a Visitor class has a `visitX` method per node type; the default descends the tree and overriding `visitX` does something interesting for node type `X`.

**vm_area_struct** — The Linux structure describing one contiguous area of a process's virtual memory (start, end, permissions, flags), consulted by the fault handler to distinguish normal faults, segmentation faults, and protection errors.

**volatile / std::atomic** — Language annotations (Java `volatile`, C++ `std::atomic<>`) marking a variable as synchronization so accesses to it do not count as data races.

**VPN / VPO / PPN / PPO** — The virtual page number and offset and the physical page number and offset; the offsets are identical because translation replaces only the page number.

**wait / waitpid** — Calls by which a parent suspends until a child terminates and reaps it, retrieving the exit status; `waitpid` can target a specific child and poll without blocking.

**walkthrough** — An informal review with no advance preparation in which the author leads peers through the artifact and there is no formal follow-up; low-cost and valuable for education.

**waterfall model** — The classic linear development sequence (requirements, design, coding, testing, operation and maintenance); a useful reference limited by its lack of feedback between phases.

**weakening** — The admissible structural rule that adds an unused hypothesis to the context (`Γ ⊢ C` gives `Γ, A ⊢ C`), permitting an assumption to go unused.

**weakest precondition (wp)** — The most general precondition `wp(S, Q)` (equivalently the weakest formula guaranteeing `[S]Q`) under which `S` establishes `Q`; `{P} S {Q}` holds iff `P ⇒ wp(S, Q)`, and it is the dominant approach in verifiers.

**well-founded / multiset ordering** — Orderings supporting terminating search: a well-founded measure has no infinite strictly-decreasing chain; the multiset ordering (Dershowitz–Manna) replaces an element by finitely many strictly smaller ones and is well-founded if the base order is.

**well-founded induction** — The general induction technique subsuming structural induction, induction on tree size or depth, and simple/complete induction on the naturals; justified by a well-founded ordering (one with no infinite descending chain).

**well-typed / type-checks** — An expression is well-typed if it has a type; only well-typed expressions are evaluated, otherwise a type error is reported.

**WHILE language** — A simple procedural language (assignment, sequencing, conditionals, while loops, integer variables, arithmetic/relational expressions, no explicit I/O) used as a sandbox for illustrating semantics and analyses.

**while program (nondeterministic)** — The imperative language of dynamic-logic semantics: `x := θ`, test `?Q`, sequential `α; β`, conditional, `while(Q) α`, nondeterministic choice `α ∪ β`, and nondeterministic repetition `α*`.

**while-loop semantics (bounded unrolling)** — `while P α` defined via an indexed relation counting iterations: zero iterations require the guard false, and `n+1` requires the guard true, one body execution, then `n` more.

**WHILE3ADDR** — A three-address-code intermediate representation of WHILE, simpler and more uniform than the AST, with instructions like `x := y op z`, `goto n`, and `if x opr 0 goto n`.

**white-box (structural / glass-box) testing** — Testing with visibility into internal code structure, enabling direct testing of internals and code-coverage analysis (contrast black-box testing).

**Why3** — A deductive-verification platform combining the WhyML programming language with a toolchain that generates VCs and dispatches them to automated provers (Z3, CVC, Alt-Ergo) or interactive provers (Coq).

**WhyML** — Why3's programming language (derived from OCaml), supporting functional and imperative code with `let ref` mutable bindings, `while` loops with `invariant`/`variant`, and `requires`/`ensures` contracts.

**wildcard** — The pattern `_`, which matches any value without binding it and may appear multiple times in a pattern.

**will-be-available expressions** — A forward PRE pass, assuming an expression is computed wherever anticipated, that gives where it will already be available; `earliest(b) = anticipated.in[b] − available.in[b]` marks the earliest safe placement.

**winning region** — The set of states from which a given player has a winning strategy; dGL/GL formulas denote winning regions, computed as fixpoints of monotone set operators.

**winning strategy** — A policy for a player that guarantees reaching (Angel) or avoiding (Demon) the goal regardless of the opponent's choices.

**word** — A multi-byte data unit; byte ordering concerns how the bytes within a word are arranged, and shifts by an amount ≥ the word size are undefined.

**work** — The total number of steps or operations a computation performs, equal to its sequential running time on a single processor.

**work, span, latency, throughput (parallel measures)** — Measures of parallel complexity: work is total steps ignoring parallelism, span is the longest dependency path (reaction time under maximal parallelism), latency is the steps to the first output, and throughput the steps to the whole output for a delay-free client.

**working set** — The data and instructions a program actively uses; caching is effective when the working set fits in the cache.

**worklist algorithm** — The iterative dataflow solver that maintains a set of nodes whose inputs have changed and reprocesses only their successors (re-queuing when a result changes) until a fixed point is reached; a refinement of naive round-robin iteration (Kildall's algorithm).

**worklist of contexts** — The interprocedural solver that iterates over (function, context) pairs, propagating results to callers over the context-sensitive call graph.

**worklist processing order** — The order in which the worklist algorithm visits nodes; any order is valid, but topological sort and reverse postorder explore loops inside-out and converge faster.

**wrapper function** — A non-recursive outer function that sets up the initial arguments and then calls the true recursive helper.

**write-allocate vs. no-write-allocate** — On a write miss, write-allocate loads the block into the cache first while no-write-allocate writes straight to memory.

**write-through vs. write-back** — On a write hit, write-through immediately propagates to the next level, while write-back defers until the line is evicted (tracked by a dirty bit).

**XMM registers / SSE / AVX** — Floating-point values live in XMM registers operated on by SSE/AVX scalar and SIMD instructions; FP arguments pass in `%xmm0…`, results return in `%xmm0`, and all XMM registers are caller-saved.

**Y combinator** — A λ-term `Y = λh.(λx. h (x x))(λx. h (x x))` with the fixed-point property `Y f ≡β f (Y f)`, letting untyped λ-terms express general recursion (and diverge).

**zero analysis** — An introductory dataflow analysis tracking for each variable whether it is definitely zero, definitely non-zero, or unknown (⊤); motivates division-by-zero and null-pointer checking.

**zero extension** — Widening an unsigned value by filling zeros in the new high positions (contrast sign extension); on x86-64, any 32-bit register write zero-extends into the full 64-bit register.

**Zig-zag completeness (ZZC)** — The closure condition `R ∘ Rᵒᵖ ∘ R ⊆ R` required of relational candidates, ensuring the induced equality is transitive (and, with symmetry, an equivalence).
