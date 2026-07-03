# UW CSE — Deduplicated Vocabulary

A single deduplicated glossary of distinct concepts merged across 15 UW CSE courses (121, 122, 123, 311, 312, 331, 332, 333, 341, 344, 351, 401, 503, 505, 507); 1408 unique terms.

**abort** — An unintentional, unrecoverable exception that terminates a program; also the IMP statement that halts execution.
**Absorption laws** — p ∨ (p ∧ q) ≡ p and p ∧ (p ∨ q) ≡ p.
**abstract class** — A class containing at least one pure virtual method; it cannot be instantiated and must be extended and overridden.
**abstract data type (ADT)** — A type defined by its operations rather than its representation, independent of any implementation; introduced by Barbara Liskov.
**abstract domain** — A finite or coarse set of approximations of concrete values (e.g. even/odd, or numeric intervals) over which a static analysis reasons.
**abstract grammar** — A BNF-style specification of an AST's node types, describing the IR's data structures rather than concrete syntax.
**abstract interpretation** — A framework for sound static analysis that "runs" a program over an abstract domain, typically implemented via dataflow analysis.
**abstraction barrier** — A specification viewed as the boundary between client and implementer; clients depend only on the spec, yielding changeability and modularity.
**abstraction function (AF)** — A mathematical function mapping an ADT's concrete field values to the abstract object they represent; a reasoning tool, defined only when the rep invariant holds.
**abstraction function (α)** — In abstract interpretation, a map α: C → A from the concrete domain to the abstract domain (e.g. {4} ↦ even).
**abstract state (obj)** — How clients should think about an object (e.g. a mathematical List), independent of the fields; specifications are written in terms of it.
**abstract syntax** — The structural essence of a program, stripped of parsing concerns.
**abstract syntax tree (AST)** — A tree capturing a program's grammatical structure while discarding syntactic markers (delimiters, precedence scaffolding); the primary front-end IR.
**abstract type** — A type named in a signature without exposing its definition, so clients cannot depend on its representation; enables reimplementation without client changes.
**accepting (final) state** — A state (drawn as a double circle) in which an automaton accepts the input read so far.
**access modifiers (public / private / protected)** — Visibility levels controlling who may access a member: public (everyone), private (the class itself / self), protected (the class and its subclasses).
**accessor / mutator (getter / setter)** — Member functions that read (getter) or modify (setter) an object's private data.
**accumulator** — An extra parameter that carries the result-so-far through a tail-recursive function or fold, replacing a mutable loop variable.
**accuracy** — A correct estimate; guaranteed by a sound analysis. Distinct from precision (tightness): an analysis can be precise yet inaccurate.
**ACID** — The guarantees of a transaction: Atomicity (all or none), Consistency (preserves invariants), Isolation (appears to run alone), Durability (committed effects survive crashes).
**action table / goto table** — The two parts of an LR parse table: the action table (state × terminal) gives shift/reduce/accept/error, the goto table (state × nonterminal) gives the next state after a reduction.
**Adapter** — A structural design pattern that wraps one interface to present another, needed under nominal typing to make same-shaped but incompatible types interoperate.
**adaptive / online** — Adaptive: an algorithm runs faster as the input nears sorted; online: it can begin before the whole input is available (insertion sort is both).
**address** — The unique index of a byte in memory; memory is conceptually one large byte-addressed array numbered from 0.
**address space** — The domain of all addresses a process may use; each process is given the illusion of its own private virtual space (up to 2^64 bytes on 64-bit).
**address-of (&) and dereference (*)** — `&x` yields the virtual address of `x`; unary `*` accesses the memory a pointer refers to.
**Address Space Layout Randomization (ASLR)** — A security feature randomizing the base of the stack and shared-library locations to make buffer-overflow exploits harder.
**address translation** — Mapping a virtual address to a physical address, performed by the memory management unit using page tables.
**addressing mode** — How an instruction computes an operand's memory address, e.g. `D(Rb,Ri,S)` = Reg[Rb] + Reg[Ri]×S + D.
**adequacy** — The theorem that a typed term steps iff its type-erasure steps; type information does not affect run-time behavior.
**ad-hoc polymorphism** — Reusing one name for different implementations chosen by type (e.g. operator overloading); a dispatch mechanism, not genuine genericity.
**adjacency list** — A graph representation storing, per vertex, a list of its neighbors; Θ(|V|+|E|) space.
**adjacency matrix** — A |V|×|V| matrix whose (v,w) entry records whether/with what weight edge (v,w) exists; Θ(|V|²) space, O(1) edge lookup.
**aggregate** — A SQL function mapping many values to one: count, sum, avg, min, max.
**aggregation (analysis)** — Combining static and dynamic analysis by feeding one analysis's output as input to another.
**alarm / OK** — Analysis outputs: an alarm (positive) means "program might be wrong"; OK (negative) means "program is right."
**algebraic data type (variant / inductive data type)** — A type defined recursively by listing the constructors that create its values, combining union with recursion (e.g. `nat := zero | succ nat`); the list and tree are canonical examples.
**algebraic simplification** — Rewriting expressions using algebraic identities (`x+0 → x`, `x*1 → x`).
**algorithm** — A high-level, language-independent, step-by-step description of a process for solving a problem.
**alias (SQL)** — A short name bound to a table in the FROM clause via `AS`, used to qualify attribute references.
**aliasing** — Two references pointing at the same object; harmless for immutable data but able to break reasoning when the shared object is mutated.
**alignment** — A datum is aligned when its address is a multiple of its size; often required or preferred by hardware and compiler.
**alphabet (Σ)** — A finite set of symbols/characters from which strings are built.
**ambiguous grammar** — A grammar in which some string has more than one parse (leftmost derivation); ambiguity is a property of grammars, not languages, and is resolved by the parser.
**Amdahl's Law** — With sequential fraction S, speedup is 1/(S+(1−S)/P), so overall parallelism is bounded by 1/S.
**amortized complexity** — The maximum total steps over M consecutive worst-case operations divided by M, spreading occasional expensive operations across many cheap ones.
**analogous analyses** — Solving the same analysis problem in a different domain (e.g. static vs. dynamic type checking, or static vs. dynamic slicing).
**andmap / ormap** — Higher-order predicates testing whether all / any list elements satisfy a predicate, stopping early like short-circuit `and`/`or`.
**angelic execution (angelic nondeterminism)** — Executing a program with `choose` operators whose values an oracle (solver/model finder) selects to satisfy the specification.
**anonymous function (lambda)** — A function written inline without a name (`fun x -> ...`, `λx. t`); an abstraction that binds x in its body and is itself a value.
**antecedent** — In a SAT solver, the unit clause that forced an implied literal's assignment, used when computing the conflict clause.
**ANY / ALL** — SQL predicates comparing a value against some (`ANY`) or every (`ALL`) element of a subquery result.
**append operator (@)** — The OCaml operator concatenating two lists; O(n) because the first list is copied.
**application (lambda calculus)** — A function call t₁ t₂; the only lambda-term form that can step, via β-reduction.
**application binary interface (ABI)** — The standard (e.g. System V/AMD64) governing binary interoperation: calling convention, register roles, and stack discipline.
**apply** — A procedure that calls a given function on a list of arguments.
**arithmetic (integer) overflow** — A calculation producing a result unrepresentable in the fixed width; C and Java silently wrap, leaving a bad value.
**Armstrong's Axioms** — The inference rules (reflexivity, augmentation, transitivity) for deriving all functional dependencies implied by a given set.
**array** — A contiguous, fixed-size block of same-typed elements with O(1) indexed access; in C it has no bounds checking and does not know its own length.
**array of pointers** — A layout where each element points to a separately allocated array, contrasted with a contiguous array of arrays.
**array representation of a heap** — Storing a complete tree in an array with 1-based indexing so node i has parent i/2, children 2i and 2i+1, needing no explicit links.
**array-to-pointer decay** — An array argument is promoted to a pointer to its first element and passed by value, so a callee can modify contents but not the caller's pointer.
**ASCII** — A 1-byte-per-character encoding of English text, digits, and symbols.
**assembler** — The tool that translates assembly into machine-code object files.
**assert (macro)** — A C macro that aborts the program if its condition is false; disabled by defining `NDEBUG`.
**assertion** — A true/false mathematical claim about the program state at a point; an `assume` instead constrains the inputs a solver may consider.
**assignment operator (operator=)** — The C++ `=` assigning into an already-constructed object; should guard self-assignment and return `*this` for chaining.
**assignment rule (Hoare)** — The rule for how an assignment transforms an assertion: backward it is the substitution `Q[x ↦ e]`; forward it renames the mutated variable's old value.
**association list** — A list of (key, value) pairs used to specify a map; two association lists are "the same" when they answer every key identically.
**associativity (algebraic)** — The operator property (x+y)+z = x+(y+z) that a parallel reduction requires so partial results can be combined in any grouping.
**associativity (operator grouping)** — Whether an operator groups left-to-right or right-to-left (subtraction left, exponentiation right); encoded by the ordering of nonterminals in a grammar.
**asymptotic complexity categories** — The standard growth classes: O(1), O(log n), O(n), O(n log n), O(n²), O(n³), O(nᵏ), O(kⁿ).
**atomicity** — The property of an operation appearing to happen as one indivisible, uninterruptible step, never exposing an intermediate state.
**atomic proposition** — A true-or-false statement that cannot be broken into simpler statements.
**attribute (column, field)** — A named component of a relation, e.g. `Name` or `Salary`.
**attribute-level constraint** — A constraint attached to one attribute, e.g. `NOT NULL`, `UNIQUE`, or a single-column `CHECK`.
**AT&T vs. Intel syntax** — Two assembly notations; AT&T puts the destination operand last, Intel puts it first.
**auto / range-based for** — C++11 `auto` infers a variable's type from its initializer; `for (auto& x : container)` iterates a sequence binding each element by reference.
**auto-active verification** — A verification style (Dafny) combining automatic solving with interactive annotation in the program text, without step-by-step tactics.
**autocommit** — A mode in which each SQL statement is its own transaction, committed immediately.
**autocompletion** — Suggesting which methods/identifiers to offer next, framed as a program-analysis problem.
**automated debugging** — Techniques that localize or explain faults automatically.
**automaton** — A recognizer: a machine that accepts an input string if it belongs to the language and rejects it otherwise.
**available expressions** — A forward must-analysis computing the expressions already computed on every path to a point and not since killed; drives CSE.
**average memory access time (AMAT)** — AMAT = hit time + miss rate × miss penalty.
**average / expected complexity** — The average number of steps over random inputs of size n.
**axiom** — An inference rule with no premises; an unconditionally true base case.
**axiomatic semantics** — Semantics defining meaning via logical assertions (pre- and post-conditions) satisfied during execution.
**axioms of probability** — Probabilities are non-negative, the whole sample space has probability 1, and the probability of a union of disjoint events is the sum of their probabilities.

**Backus–Naur Form (BNF)** — A recursive notation of productions defining a language's structure (e.g. `e := n | x | e + e`); first used for ALGOL 60, also used to specify abstract grammars.
**backward reasoning** — Filling in a Hoare triple's precondition by pushing the desired postcondition upward, producing the weakest precondition.
**backlog / connection queue** — The queue of pending client connections a listening socket holds; the OS refuses new connections once it is full.
**bad interleaving** — A race condition (other than a data race) exposing a bad intermediate state, e.g. using a stale index while another thread resizes a structure.
**base case** — The non-recursive starting instance of an inductive proof or recursive definition, proved or handled directly (e.g. P(0), nil, or n = 0).
**base class / derived class** — The parent and child in C++ inheritance (Java's superclass and subclass).
**base type** — The underlying language type to which a type qualifier is attached (e.g. `Optional<String>` under `@Present`).
**basic block** — A maximal straight-line, branch-free instruction sequence that control flow can enter only at the top and leave only at the bottom.
**Bayes' theorem (Bayes' rule)** — Inverts conditioning: P(A|B) = P(B|A)·P(A)/P(B), used to update a prior into a posterior after observing evidence.
**Belady / "best" algorithm** — The locally optimal eviction/spill rule of evicting the value whose next use is farthest in the future; realizable only statically.
**Bernoulli distribution** — A single trial succeeding with probability p; a 0/1 variable with mean p and variance p(1−p).
**best-case complexity** — The minimum number of steps an algorithm takes over all inputs of size n.
**behavioral subtyping** — B is a subtype of A only if it provides all of A's methods, each with the same or a stronger spec (weaker preconditions, stronger postconditions).
**Bézout's theorem** — For integers a, b, gcd(a, b) can be written as sa + tb for some integers s, t.
**biased notation (bias)** — Storing a float's exponent as an unsigned value offset by a bias (127 for single precision) so Exp = E − bias.
**biconditional (↔)** — The connective "if and only if"; p ↔ q is true exactly when p and q have the same truth value.
**Big-O — O(g(n))** — The set of functions asymptotically ≤ g(n); an asymptotic upper bound.
**Big-Omega — Ω(g(n))** — The set of functions asymptotically ≥ g(n); an asymptotic lower bound.
**Big-Theta — Θ(g(n))** — A tight bound Ω(g) ∩ O(g): within a constant factor of g both above and below for large n.
**big-step operational semantics** — Semantics relating a state directly to its final valuation, (v, c) ⇓ v′, in a single evaluation step.
**bijection** — A function that is both injective and surjective, pairing each domain element with exactly one codomain element.
**binary (base 2)** — The base-2 number system, using only 0 and 1.
**binary heap** — A priority queue kept in a complete binary tree maintaining the heap property; Θ(log n) insert and deleteMin.
**binary relation** — A set of ordered pairs relating elements; properties include reflexive, symmetric, and transitive, and it may be pictured as a directed graph.
**binary search** — Searching a sorted array by repeatedly examining the middle element and discarding the half that cannot contain the key; Θ(log n).
**binary search tree (BST)** — A binary tree obeying the order property (all left-subtree keys smaller, all right-subtree keys larger than a node), giving comparison-based descent.
**binary tree** — A recursively defined structure (empty, or a node with left and right subtrees); a common target for structural induction with functions like size and height.
**binder** — The `λx` part of an abstraction, whose scope is the body.
**binding** — An association of an identifier with a value; a `let x = e` definition evaluates e and extends the environment to bind x.
**binomial coefficient (n choose k)** — C(n,k) = n!/(k!(n−k)!), the number of k-element subsets of an n-element set.
**binomial distribution** — The number of successes in n independent Bernoulli(p) trials; mean np, variance np(1−p).
**binomial theorem** — The identity expanding (x+y)^n as a sum of binomial-coefficient-weighted terms.
**birthday problem / collisions** — The analysis of how likely two of n items share a value among m possibilities, underpinning hashing collision analysis.
**bit** — A binary digit (0 or 1), the smallest unit of data.
**bitmask** — A chosen bit vector combined with data via &, |, or ^ to set, clear, keep, or flip selected bits.
**bitwise operators** — Boolean operations (AND, OR, XOR, NOT) applied to bit vectors one position at a time.
**block (disk page)** — The unit the disk reads and writes; a query processor always reads one entire block at a time.
**block (Ruby)** — A chunk of code passed to a method with `{ }` or `do...end`; a closure that may take parameters between `|...|`.
**block (scope)** — A region of program text (e.g. delimited by braces) that introduces a new lexical scope.
**block / payload (allocator)** — The allocator manages the heap as variable-sized blocks; the payload is the usable portion returned to the program.
**block nested-loop join** — A nested-loop join that reads R in chunks of (M−2) pages to reduce passes over S.
**blocking call** — A call that does not return until it can proceed (connect, read awaiting data, accept awaiting a connection); the default behavior.
**Boogie** — The intermediate verification language into which Dafny and similar tools lower programs before generating verification conditions.
**Boolean abstraction (T2B) / refinement (B2T)** — T2B replaces each theory atom with a fresh Boolean variable for the SAT solver; B2T maps a Boolean assignment back to theory constraints.
**Boolean algebra** — The algebra of true/false values for circuits, writing ∧ as product, ∨ as sum, ¬ as apostrophe.
**Boolean expression (SQL)** — A WHERE/ON condition built with AND, OR, NOT over comparisons.
**bootstrapping** — Starting a generated program by linking it with a small C driver that sets up the process and calls the compiled entry point.
**Bottom (⊥)** — A lattice's least element, meaning "no values / the empty set."
**bottom-up parsing** — Parsing that builds the tree from the leaves up, matching right-hand sides while scanning left-to-right; reconstructs a rightmost derivation in reverse.
**boundary / special values** — A testing heuristic of trying special inputs (null, empty, zero, endpoints) where bugs commonly hide.
**bound variable** — A variable governed by (in the scope of) a quantifier or binder.
**bounds checking** — Verifying at run time that array indices are in range; present in Java, absent in C/C++.
**bounded model checking (BMC)** — Checking whether a program can violate an assertion within k steps by encoding all bounded executions as a formula and asking a SAT solver for a counterexample.
**bounded verification** — Checking that all executions up to a bounded length satisfy a property, contrasted with unbounded Hoare-style verification.
**Boyce-Codd Normal Form (BCNF)** — A relation is in BCNF if for every nontrivial FD X → Y that holds, X is a superkey; the algorithm decomposes violators, eliminating anomalies.
**branch coverage** — The fraction of conditional branches (both then and else) executed by some test.
**branch prediction** — The processor's guessing of branch outcomes to keep deep pipelines busy.
**breadth-first search (BFS)** — A traversal visiting vertices in increasing distance from a start using a queue; Θ(|V|+|E|); finds unweighted shortest-path distances.
**B+ tree** — A perfectly balanced index tree whose leaves hold the keys; with fan-out m a lookup costs about log_m N block reads, kept balanced by splitting/merging.
**bucket / counting sort** — For integers in a known range 0..k−1, index each value into a bucket and read the buckets in order; Θ(n + k), stable, not in place.
**buffer** — An array used to temporarily store data, often user input.
**buffer overflow** — Writing past the end of an array/buffer, overwriting adjacent memory; a classic bug and security vulnerability.
**buffering** — stdio copies data into an in-process buffer drained on flush, buffer-full, newline, close, or exit; batches small I/O but risks data loss on crash.
**buffer pool (main memory)** — The M pages of main memory available to hold disk blocks during query processing.
**buildHeap (Floyd's method)** — Turning an arbitrary array into a valid heap by percolating down each node from the last internal node to the root, in Θ(n) total.
**Builder** — A creational pattern using a mutable helper object to assemble an immutable value piece by piece (e.g. `StringBuilder`).
**bytecode** — A compiled virtual-machine instruction format (e.g. for the JVM) interpreted rather than run as native machine code.
**byte** — A group of 8 bits; the fundamental addressable unit of memory.
**β-reduction** — The rule (λx. t) t₂ → t[t₂/x]: applying a function substitutes the argument for the bound variable in the body.
**β-equivalence** — The equivalence relating (λx. t) t₂ and t[t₂/x], generated by β-reduction.

**C** — A small, procedural, low-level language (Ritchie, 1972) for system software; typed but unsafe and portable across architectures.
**C++ as a superset of C** — C is roughly a subset of C++, so C code still compiles, though mixing C and C++ idioms is bad style.
**C preprocessor (cpp)** — A stateful text search-and-replace stage transforming source before compilation, processing `#`-directives.
**C standard library (glibc)** — The standard C library on Linux; part ordinary functions and part wrappers around POSIX/OS system calls.
**C string** — A null-terminated (`\0`) array of one-byte characters (`char*`); has no methods, but `string.h` provides utilities.
**cache** — A small fast memory holding recently or frequently used blocks so future accesses are faster.
**cache block / line** — The fixed-size unit of transfer between cache and memory; an entire block is brought in on a miss.
**cache blocking / cache-friendly code** — Reordering memory accesses (e.g. blocked matrix multiply) to reuse cache blocks while resident, maximizing locality.
**cache hit / miss** — A hit finds requested data already in the cache; a miss requires fetching the block from a lower level.
**cache parameters** — Block size, cache size, associativity (blocks per set), and number of sets that define a cache's geometry.
**calling convention** — The ABI rules by which caller and callee pass control and data: arguments in registers, return value in a fixed register, and register-saving responsibilities.
**call-by-name** — An evaluation strategy applying β-reduction before evaluating the argument; the basis of laziness.
**call-by-reference** — Passing a parameter that aliases the caller's argument so changes propagate back; C simulates it with pointers, C++ with references.
**call-by-value** — The default where a parameter receives a copy (or the evaluated value) of the argument, so changing the parameter does not affect the caller's variable.
**call / ret** — `call` pushes the return address and jumps to a procedure; `ret` pops it into the program counter to resume the caller.
**caller-saved / callee-saved registers** — Registers the caller must save before a call if needed afterward (caller-saved) versus registers the callee must preserve across the call (callee-saved).
**canonical forms lemma** — A lemma characterizing which values inhabit each type (e.g. the only bools are true and false); needed in the progress proof.
**capture-avoiding substitution** — Substitution that renames binders as needed so a free variable in the substituted term is not accidentally captured.
**car / cdr** — The historic Lisp names for the head and tail of a list.
**cardinality (set size)** — The number of elements of a set, |A|; extended to infinite sets via bijections (countable vs. uncountable).
**cardinality estimation** — Estimating the number of tuples each intermediate query result produces, computed bottom-up to estimate plan cost.
**Cartesian product (cross product)** — Combining every tuple of one relation with every tuple of another; a join with no matching condition.
**casting** — Converting a value from one type to another; type-safe casts perform a real conversion, while C/C++ casts can reinterpret raw bits, change width, or change interpretation.
**Central Limit Theorem (CLT)** — As n → ∞, the standardized sum or average of n i.i.d. random variables converges in distribution to a normal, regardless of the original shape.
**chain of equivalences** — A proof transforming one proposition into another by applying known equivalence laws one step at a time.
**chain rule (multiplication rule)** — Expresses a joint event's probability as a product of conditionals, e.g. P(A∩B) = P(A)·P(B|A).
**Chebyshev's inequality** — Bounds deviation from the mean using variance: P(|X − 𝔼[X]| ≥ a) ≤ Var(X)/a².
**checked exception** — An exception the compiler forces the programmer to either catch or declare (e.g. Java's `FileNotFoundException`); contrasted with unchecked (runtime) exceptions.
**Checker Framework** — A framework for building custom pluggable type-checkers for full Java, used in industry and research.
**checking (semantic analysis)** — The compiler pass(es) that filter out grammatically valid but illegal programs and annotate the AST with types and symbol information.
**Chernoff bound** — An exponentially decaying tail bound for sums of independent random variables, far tighter than Markov or Chebyshev.
**chip and conquer** — Recursion T(n) = T(n−c) + f(n): each call shrinks the input by a constant amount.
**Chomsky hierarchy** — The nested classification of languages: regular ⊂ context-free ⊂ context-sensitive ⊂ recursively-enumerable, each tied to a grammar and machine class.
**Church encoding** — Representing data (booleans, naturals) purely as lambda terms, e.g. true := λt.λf.t.
**circular array** — An array-backed queue where indices wrap modulo the array length, reusing freed front slots and resizing when full.
**CISC / RISC** — Complex Instruction Set Computing adds many specialized instructions (x86-64); Reduced Instruction Set Computing keeps a small regular set (ARM, RISC-V).
**class / object** — A class is a user-defined type with member functions and data; an object is an instance of a class.
**class variable (@@)** — A single variable shared across all instances of a Ruby class; analogous to a Java static field.
**clause deletion** — Periodically discarding learned clauses that are old, long, or irrelevant to keep a SAT solver's database manageable.
**clause learning** — Augmenting the formula with conflict clauses derived during search so the solver prunes future assignments due to the same root cause.
**clear-box (glass-box) testing** — Choosing test cases by looking at the actual code so tests exercise its specific structure; contrasted with black-box testing from the spec alone.
**client/server model** — A pattern where a server receives connections from clients that establish connections to it.
**closure (attribute set) (X⁺)** — The set of all attributes functionally determined by X; used to test whether an FD holds or whether X is a superkey.
**closure (functions)** — The pairing of a function's code with the environment in effect when it was defined, so free variables resolve to their defining-time bindings.
**closure (LR items)** — The operation that, given a set of LR items, adds all items `[B ::= . γ]` for nonterminals B just after a dot, to a fixed point.
**clustered vs. unclustered index** — An index is clustered if the data file is physically sorted by its search key (one per table); clustering strongly affects an index-based selection's I/O cost.
**cmp / test** — Instructions setting condition codes without storing a result: `cmp` computes a subtraction, `test` computes a bitwise AND.
**coalescing (live ranges)** — Merging the live ranges of two variables connected by a copy that do not otherwise interfere, eliminating the copy.
**coalescing (memory)** — Merging a newly freed block with adjacent free blocks into one larger block to combat fragmentation.
**code motion** — Moving computations as an optimization; see loop-invariant code motion.
**code review** — A person other than the author reasoning through code (or manual inspection) to catch defects; standard industry practice and a form of program analysis.
**code shape** — The systematic way a compiler lowers each source construct into target code while maintaining chosen invariants (e.g. "expression result in %rax").
**codomain** — The set B of allowed outputs of a function f: A → B.
**combination** — An unordered selection of k objects from n distinct objects, counted by the binomial coefficient.
**combinator** — A closed lambda term with no free variables, used as a reusable macro (including recursion combinators).
**command language** — A language of statements (skip, assignment, sequencing, while) whose semantics is a transformer over valuations.
**comment** — A note the programmer writes in source code to explain it; ignored by the compiler and not executed (e.g. `// ...` or `/* ... */` in Java).
**common subexpression elimination (CSE)** — Detecting a repeated computation whose operands are unchanged and reusing the earlier result.
**commutative laws** — p ∨ q ≡ q ∨ p and p ∧ q ≡ q ∧ p.
**comparison function** — A function reporting x < y, x = y, or x > y; the only information a comparison sort may use.
**comparison-sort lower bound Ω(n log n)** — No comparison-based sort can beat Θ(n log n) worst case, proved via decision-tree height and log(n!) = Θ(n log n).
**compile time vs. run time** — Static properties deducible before execution versus dynamic properties apparent only while a program runs.
**compiler** — A program that translates code from one representation into an equivalent program in another (e.g. source to machine code), often optimizing.
**compiler correctness** — The property that a compiler preserves semantics: source and compiled programs evaluate to the same result (e.g. the verified compiler CompCert).
**compiler pass** — One of the sub-compilers a full compiler is decomposed into; each transforms one representation into another.
**completeness** — A type system or analysis is complete if it never rejects a correct program / has no false positives (100% precision).
**complement (event)** — The event that a given event does not occur; its probability is 1 minus the event's probability.
**complement (set)** — For a universe, the set of elements not in A.
**complementary counting** — Counting the outcomes you do not want and subtracting from the total, when the complement is easier to count.
**complete tree** — A binary tree with every level full except possibly the bottom, filled left-to-right; guarantees height Θ(log n).
**complexity class** — A set of problems whose most efficient algorithm shares a bound on running time or memory.
**composite number** — An integer greater than 1 that is not prime.
**composite (multi-attribute) key** — A key formed from a combination of attributes when no single attribute is unique.
**composition (function)** — Combining functions so the output of one feeds the input of the next, (g ∘ f)(x) = g(f(x)); the composition of two bijections is a bijection.
**compound proposition** — A proposition built from simpler propositions combined with logical connectives.
**computational thinking** — The language-agnostic skill of formulating a problem and its solution so the steps can be carried out by an information-processing agent, through decomposition, abstraction, pattern recognition, and algorithm design; the organizing theme of the introductory programming courses.
**computer-aided reasoning** — Using automated logical reasoning engines (SAT, SMT, model finders) to check, repair, and generate software.
**concatenation** — Joining two strings (or languages) end to end.
**concentration inequality** — Any bound showing a random variable is close to its expectation with high probability (Markov, Chebyshev, Chernoff).
**concolic testing** — Combining concrete and symbolic execution: run on concrete inputs, collect the path condition, negate a branch, and solve for inputs driving a new path.
**concrete domain** — The exact run-time values a program manipulates (e.g. 0, 1, 2, 3, …).
**concrete state (representation)** — The actual fields of a record and the data stored in them — what an ADT's implementer manipulates.
**concrete syntax** — The actual string of characters a programmer writes.
**concurrency** — Working on multiple tasks with overlapping (not necessarily simultaneous) execution, and the correct management of shared resources among them.
**concurrent server architectures** — Designs for serving many clients at once: process-per-client, thread-per-client, and event-driven.
**cond** — A Scheme multi-way conditional trying a sequence of tests and returning the expression for the first true one.
**condition codes** — Processor status flags (carry, zero, sign, overflow) set by arithmetic and cmp/test instructions and read by conditional jumps.
**conditional compilation** — `#ifdef`/`#ifndef`/`#else`/`#endif` directives including or excluding code based on defined symbols.
**conditional distribution / conditional expectation** — The distribution (or expected value) of one random variable given a specified value of another; conditional expectation is itself a random variable.
**conditional independence** — Events that are independent once a third event is conditioned on, even if not independent unconditionally.
**conditional probability** — P(A|B) = P(A∩B)/P(B); reweights the sample space to the outcomes where B holds.
**confidence interval** — A data-computed range containing the true parameter with a stated probability, derived via concentration inequalities or the CLT.
**conflict (transactions)** — A pair of operations that cannot be swapped without possibly changing the result (read-write, write-read, or write-write on the same element).
**Conflict-Driven Clause Learning (CDCL)** — The algorithm at the core of modern SAT solvers, extending DPLL with clause learning and non-chronological backtracking.
**conflict clause** — A new clause, implied by the formula, summarizing the cause of a conflict so the solver never revisits the same bad partial assignment.
**conflict serializability** — A schedule is conflict-serializable if reachable from a serial one by swapping non-conflicting adjacent operations; implies serializability but is stricter.
**confluence (Church–Rosser theorem)** — The order of β-reductions does not affect the final result; divergent reductions can always be rejoined.
**congruence closure** — The algorithm deciding conjunctive EUF formulas by computing the smallest congruence containing the asserted equalities, then checking disequalities.
**congruence mod n (≡ mod n)** — a ≡ b (mod n) iff n | (b − a); a and b have the same remainder mod n.
**congruence relation / congruence class** — An equivalence relation that also respects function application (equal arguments give equal results); its classes are congruence classes.
**congruence rule** — A small-step rule lifting a sub-step to a larger term (e.g. stepping the left side of a sequence).
**conjunction (∧)** — The connective "and"; p ∧ q is true exactly when both are true.
**conjunctive normal form (CNF)** — An AND of ORs of literals; the standard input form for SAT solvers, built from the false rows of a truth table.
**connected graph** — A graph with a path between every pair of vertices (weakly connected if this holds only ignoring edge directions).
**cons operator (::)** — The list-construction operator prepending one element to a list; O(1).
**conservative analysis** — An analysis that errs on the safe side, accounting for abstracted-away state so it never misses a real property it claims to rule out.
**consistency (transfer function)** — The abstract transfer function must agree with the concrete function: the concretization of its result must over-approximate the concrete result.
**consistent locking** — Always holding the same designated lock whenever reading or writing a given location; the field→lock mapping must be documented and followed.
**constant folding** — Evaluating at compile time expressions whose operands are all constants.
**constant propagation** — Replacing a variable known to hold a constant with that constant at its use sites.
**constraint** — A rule the DBMS checks on every update (attribute-level, tuple-level, or referential-integrity).
**constructor (data type)** — A named tag that builds a value of an inductive/variant type (capitalized in OCaml); may carry data and be used in patterns; values are equal only when built identically.
**constructor (ctor)** — A C++ member function initializing a newly-created object; named for the class, with no return type; may be overloaded by parameters.
**constructor limitations** — Constructors cannot return an existing object, return a different class, or carry a descriptive name; factory functions overcome these.
**container** — An object storing a collection of elements; sequence containers (vector, list, deque) and associative containers (map, set).
**containment-of-values assumption** — Assuming one join attribute's value set is contained in the other's when estimating join cardinality.
**context switch** — The kernel mechanism saving one process/thread's state and restoring another's, passing control between them.
**context-free grammar (CFG)** — A finite set of productions over terminals and nonterminals with a start symbol; specifies syntax with power for nesting and recursion, stronger than regular expressions.
**context-free language** — A language specifiable by a CFG and recognizable by a pushdown automaton; the level used for parsers.
**context-sensitive type checking** — Type analysis that accounts for the calling context, used e.g. to rank autocompletion suggestions.
**contingency** — A proposition that can be either true or false depending on its variables.
**continuity correction** — An adjustment (shifting boundaries by ±0.5) when approximating a discrete distribution by a continuous normal one.
**continuous random variable** — A random variable taking values on a continuum, described by a probability density function rather than point masses.
**continuous uniform distribution** — A variable equally likely to fall anywhere in [a,b], with constant density 1/(b−a).
**contradiction** — A proposition that is always false.
**contrapositive** — For p → q, its contrapositive ¬q → ¬p; a statement and its contrapositive are logically equivalent.
**convex theory** — A theory in which any entailed disjunction of equalities entails one disjunct; non-convex theories (e.g. LIA) force case-splitting.
**converse** — For an implication p → q, its converse q → p.
**copy constructor (cctor)** — `Point(const Point& other)` building a new object as a copy; invoked on initialization from another object or on by-value pass/return.
**copy propagation** — Replacing uses of a variable just copied from another (`x := y`) with the original variable.
**correctness** — Satisfying the spec: for every input meeting the precondition, the output meets the postcondition.
**correlated subquery** — A subquery referencing an attribute from the outer query, re-evaluated for each outer row.
**correlation** — A normalized covariance (dividing by the product of standard deviations) giving a unitless linear association between −1 and 1.
**cost model parameters** — B(R) = blocks holding R, T(R) = tuples, V(R,A) = distinct values of R.A, M = memory pages; cost is measured in disk I/Os.
**count(\*)** — Counts all rows in a group; `count(attr)` counts non-null entries, `count(DISTINCT attr)` distinct non-null entries.
**countable set** — A set that is finite or can be put in bijection with the naturals (i.e. can be listed).
**counterexample** — A single instance disproving a universally quantified statement, or a concrete execution the solver returns that violates a property.
**Counterexample-Guided Inductive Synthesis (CEGIS)** — A synthesis loop alternating a synthesizer (program correct on current examples) with a verifier (find a counterexample), adding each until correct on all inputs.
**covariance** — Cov(X,Y) = 𝔼[XY] − 𝔼[X]𝔼[Y], measuring the linear co-variation of two variables; zero for independent variables.
**covariance matrix** — A matrix collecting the pairwise covariances of a random vector, describing multivariate spread via its eigenstructure.
**coverage** — A dynamic measure of what an execution exercised: statements, branches, paths, procedure calls, types, or dispatches.
**CREATE TABLE** — A statement defining a new persistent table with its attribute types and constraints.
**critical path** — The longest latency-weighted path to the exit in a dependency DAG, used to prioritize instructions during list scheduling.
**critical section** — A region operating on shared data that only one thread may execute at a time, atomically.
**cross-product construction** — A construction combining two DFAs into one recognizing the intersection or union of their languages.
**cumulative distribution function (CDF)** — F(x) = P(X ≤ x), defined for any random variable, non-decreasing from 0 to 1.
**curried function** — A multi-argument function expressed as a function returning a function, applied one argument at a time (e.g. `(+)` : `int -> int -> int`).
**curry / uncurry** — Conversions between the tupled form of a two-argument function and its curried form.
**cut** — A partition of a graph's vertices into S and V−S; an edge crosses the cut if its endpoints lie on opposite sides.
**cut theorem** — If edge set A is part of some MST and (S, V−S) is a cut A does not cross, adding the least-weight crossing edge keeps A part of an MST.
**cycle** — A path that returns to its start (v0 = vk with k > 0).
**Dafny** — A verification-aware imperative/functional language (Leino) whose compiler checks correctness against `requires`/`ensures`/`invariant`/`decreases` annotations.
**dangling pointer** — A pointer still referring to memory that has been freed; using it is undefined behavior.
**data abstraction** — Giving clients only operations (public) and hiding the data (private), achieved via procedural abstraction over the representation.
**data anomalies** — Problems of a redundant table: redundancy (repeated data), update anomaly (a change needs many row updates), and deletion anomaly (deleting one fact loses another).
**data bias** — Skew in a model's training data that the trained model reproduces ("garbage in, garbage out"); a central fairness concern in machine learning.
**data hazards (RAW / WAR / WAW)** — Ordering constraints between instructions sharing a resource: read-after-write, write-after-read, write-after-write; preserved when reordering.
**data invariant** — A property of a type's representation the implementation guarantees (e.g. a fraction always in lowest terms), enforced by controlling construction.
**data member** — A variable belonging to a class (conventionally named with a trailing underscore), typically kept private.
**data model** — A mathematical definition of data; the relational model is one of several (semi-structured, key-value, graph, object-oriented).
**data race** — Two accesses by different threads to the same location where at least one is a write, so the result varies with timing.
**data structure** — An organization of data plus the family of algorithms that implement an ADT over it.
**data types (SQL)** — Attribute types such as `CHAR(n)`, `VARCHAR(n)`, `INT`, `FLOAT`, `DATETIME`; statically enforced except in SQLite.
**database** — A collection of files storing related data (e.g. a payroll or products database).
**database architectures** — Deployment tiers: single-client/single-server (SQLite in the app), 2-tier client-server, and 3-tier (adding an application server).
**database consistency** — An invariant that should always hold on the data; correct transactions preserve it.
**Database Management System (DBMS)** — A large program that efficiently manages a large database and lets it persist (e.g. PostgreSQL, SQLite, Oracle).
**dataflow analysis** — A static analysis propagating approximate facts through the CFG using per-statement transfer functions until a fixed point.
**dataflow graph** — A graph representing how data flows between computations; derivative in traditional compilers but definitive in ML systems like PyTorch.
**dead-code elimination (DCE)** — Removing code that can never execute or whose result is never used (and has no side effects).
**deadlock** — A cycle of blocked threads or transactions, each waiting on a resource held by the next, so none can proceed.
**decision heuristic** — A rule for choosing the next SAT variable to branch on (e.g. DLIS, or VSIDS which favors variables in recent conflicts).
**decision tree** — A tree modeling a comparison sort where each internal node is a comparison and each of the n! leaves is a permutation; its height is the worst-case comparison count.
**decision tree (machine learning)** — A classifier in which each internal node tests a feature against a threshold and each leaf carries a label, used to categorize inputs.
**declaration vs. definition** — A declaration describes a thing defined elsewhere (e.g. a prototype); a definition is the thing itself (allocates storage / provides code). Exactly one definition may exist.
**declarative specification** — A spec saying what the answer looks like (e.g. "return x such that b + x = a") without saying how to compute it.
**decomposition** — Splitting a relation into pieces guided by a functional dependency; a good (lossless) decomposition is recoverable by rejoining.
**decorating (annotating) the AST** — Adding derived information such as types to AST nodes via extra fields, a parallel IR, or a side map.
**decreaseKey / increaseKey** — Lowering (or raising) the priority of a heap item at a known index, then percolating to restore the heap property.
**deductive synthesis** — Deriving a program from a complete specification by constructive theorem proving (turning a proof of ∀x.∃y.φ into code).
**def-use chain** — An IR augmentation linking each definition to all its uses and each use back to its definition(s).
**default constructor** — A constructor taking no arguments; needed e.g. to create arrays of objects.
**default qualifier** — The type qualifier assumed when none is written (e.g. `@MaybePresent` for `Optional`).
**defensive copying (copy-on-read / copy-on-write)** — Making a private copy of mutable data as it enters or leaves an ADT so no external aliases arise.
**define-struct** — A Racket form creating a record type with named fields, auto-generating a constructor, predicate, and accessors.
**definite loop** — A loop that repeats a known, fixed number of times (typically a `for` loop); contrasted with an indefinite loop.
**definitive vs. derivative IR** — A definitive IR defines the program being compiled; a derivative IR is built from it for a specific analysis and discarded when the definitive form changes.
**degree / indegree / outdegree** — The number of edges touching a vertex; for directed graphs, the counts of incoming and outgoing edges.
**delayed evaluation** — A function body is not evaluated until the function is called, unlike a `let` definition which is evaluated immediately.
**Delayed Theory Combination (DTC)** — An alternative to Nelson–Oppen that lets the SAT engine guess interface equalities as fresh Boolean variables instead of propagating them explicitly.
**DELETE** — Removes one, several, or all tuples from a table per a WHERE condition.
**demand paging** — Bringing pages into physical memory only when actually referenced, treating physical memory as a cache of virtual memory.
**De Morgan's laws** — ¬(p ∨ q) ≡ ¬p ∧ ¬q and ¬(p ∧ q) ≡ ¬p ∨ ¬q; used to push negations inward (e.g. into NNF).
**demonic vs. angelic oracle** — Used demonically, a solver searches for an input making the program fail (verification); used angelically, it supplies choices making an under-specified program succeed.
**denormalized numbers** — The IEEE case E = 0, M ≠ 0 representing values near zero, closing the gap between 0 and the smallest normalized number.
**denotation** — The value a denotational semantics assigns to a program, written with the ⟦·⟧ brackets.
**denotational semantics** — Defining a program's meaning as a mathematical function from syntax (the AST) to a value.
**dense vs. sparse graph** — Dense: |E| ∈ Θ(|V|²); sparse: |E| ∈ Θ(|V|).
**density vs. mass** — For continuous variables, probability comes from integrating a density over a region (any single point has probability 0), unlike discrete point masses.
**dependence graph** — A graph of data/control dependences over which static program slicing computes reachability.
**dependency DAG** — The directed acyclic graph of targets and sources make uses; a target is rebuilt only if older than or missing relative to a source.
**dependency graph** — A derivative IR showing which instructions depend on which, used to decide legal reorderings (scheduling).
**depth-first search (DFS)** — A traversal fully exploring one neighbor's subtree before the next, using a stack or recursion; Θ(|V|+|E|); its back edges reveal cycles.
**derivation** — Generating a string by repeatedly applying productions from the start symbol; a leftmost/rightmost derivation always expands the leftmost/rightmost nonterminal.
**design pattern** — A named, reusable solution to a recurring design problem (from the 1994 "Gang of Four" book), grouped into creational, structural, and behavioral categories.
**destructor (dtor)** — A C++ member (`~Point()`) invoked automatically when an object is deleted or goes out of scope; the place to release owned resources.
**deterministic finite automaton (DFA)** — A finite automaton with at most one transition per state and symbol and no ε-edges; runs without backtracking, so it is preferred for speed.
**DFA minimization** — Reducing a DFA to the unique minimum-state DFA for its language.
**diagonalization** — Cantor's technique constructing an element differing from every entry of a supposed list, proving a set uncountable.
**dictionary (map) ADT** — A collection of key/value pairs with comparable, non-repeatable keys, supporting insert, find, and delete.
**difference (−)** — Returns tuples in one relation but not another; the basis for negation and non-monotone queries.
**difference logic** — The polynomial-time fragment of linear arithmetic restricted to constraints x − y ≤ c.
**Dijkstra's algorithm** — Single-source shortest path for non-negative weights: repeatedly extract the nearest unfinalized vertex from a priority queue and relax its neighbors; Θ(|E| log |V|).
**direct-mapped cache** — A cache where each block maps to exactly one set (associativity 1) via (block number) mod (number of sets).
**direct proof** — Proving p → q by assuming p and deriving q through valid steps.
**directed acyclic graph (DAG)** — A directed graph with no cycles; required input for topological sort and used to depict dependencies.
**directed graph** — A graph whose edges are ordered pairs of vertices (directed connections).
**dirty (inconsistent) read** — Reading a value written by an uncommitted transaction.
**disassembler** — A tool (`objdump -d`) that reconstructs assembly instructions from object or machine code.
**discrete random variable** — A random variable taking values in a countable set, described by a probability mass function.
**discrete uniform distribution** — Assigns equal probability to each of a finite set of values (e.g. a fair die).
**disjoint-set (union-find)** — A structure tracking connected components and testing in near-constant time whether two vertices are in the same set (used by Kruskal's).
**disjunction (∨)** — The inclusive "or"; p ∨ q is true when at least one of p, q is true.
**disjunctive normal form (DNF)** — An OR of ANDs of literals; trivial to check for satisfiability but a direct conversion can blow up exponentially; built from the true rows of a truth table (minterm expansion).
**disk / SRAM / DRAM** — Static RAM (fast, for cache), dynamic RAM (main memory, refreshed), and disk (large, slow, non-volatile).
**DISTINCT** — A modifier removing duplicate tuples from a result, converting bag to set semantics.
**distinguishing strings method** — The pigeonhole argument proving a language irregular: infinitely many strings must reach different states but a finite DFA has too few, forcing a collision.
**distributive laws** — p ∧ (q ∨ r) ≡ (p ∧ q) ∨ (p ∧ r), and its dual.
**divide and conquer** — Recursion T(n) = a·T(n/b) + f(n): split into a subproblems of size n/b, solve recursively, and combine.
**divides (|)** — For integers x, y, x | y iff y = kx for some integer k.
**division theorem** — For integer a and positive d, unique integers q and r with a = dq + r and 0 ≤ r < d.
**DNS (Domain Name System)** — A hierarchy of name servers and a protocol resolving a domain name into one or more IP addresses.
**domain** — The set A of inputs of a function f: A → B.
**domain of discourse** — The set of all values the variables in a predicate may take; roughly their "type."
**domain restriction** — Limiting the domain of discourse to a smaller set, or encoding that restriction inside a quantified statement (→ for ∀, ∧ for ∃).
**domain / attribute type** — Each attribute has a type; a value violating it (e.g. a string where INT is required) is not allowed.
**dominating term** — The fastest-growing term of an operation-count expression, which alone determines the complexity class for large n (so n² + 100000n is O(n²)).
**domination laws** — p ∨ T ≡ T and p ∧ F ≡ F.
**dominance** — Block b dominates d if every path from the CFG entry to d passes through b; strictly dominates if additionally b ≠ d.
**dominance frontier** — For a block x, the blocks just past the region x dominates; the criterion for φ-function placement.
**dominator tree** — The tree induced by the dominance relation (each block's parent is its immediate dominator), like a tree of nested scopes.
**double dispatch** — Selecting a method by the runtime types of two objects, by chaining two dynamic dispatches (`e.perform(p)` calls back `p.process(this)`).
**double free** — Calling free twice on the same block, a form of memory corruption.
**double hashing** — Open addressing using a second hash function g, probing i, i+g(k), i+2g(k), … (mod length).
**double negation** — ¬¬p ≡ p.
**DPLL (Davis–Putnam–Logemann–Loveland)** — The classic backtracking search deciding CNF satisfiability: choose a variable, propagate with BCP, backtrack on conflict.
**DPLL(T)** — The lazy SMT architecture combining a CDCL SAT solver (Boolean structure) with a theory solver deciding conjunctions of theory literals.
**DROP TABLE** — Deletes an entire table.
**duality (subsets of behavior)** — The view that static analysis focuses on a subset of data structures and dynamic on a subset of executions, each corresponding to one in the other domain.
**duck typing** — Accepting any object that responds appropriately to the messages used, regardless of its declared class.
**duplicate elimination** — The extra step turning a bag result into a set (needed for set-semantics union, projection, etc.).
**dynamic analysis** — Analysis reasoning about a program from some actual executions, observing concrete behavior; typically precise but unsound.
**dynamic checking** — Checks performed while a program runs, as in dynamically typed languages that do little static checking.
**dynamic dispatch** — Selecting the method to invoke at runtime based on the receiver's actual type, typically via a vtable pointer in the object.
**dynamic memory allocation** — Requesting a memory block at run time whose size or lifetime is not known in advance and which persists until explicitly freed.
**dynamic-programming instruction selection** — A bottom-up selection assigning each subtree the cheapest cost over matching patterns, yielding an optimal tiling under a cost model.
**dynamic scope** — Resolving a variable by the run-time chain of active calls rather than program text; rare today but used by most shell scripts.
**dynamically typed language** — A language checking types at run time, so variables carry no declared types and may hold different types over time.
**eager vs. lazy evaluation** — Computing a result immediately versus deferring it until first needed; with an abstract type the client cannot tell which is used.
**early pruning** — Calling a theory solver on partial assignments to detect theory-inconsistent prefixes early and avoid exploring doomed subtrees.
**edge classification (tree / back / forward / cross)** — DFS labels each edge: tree (to an unvisited node), back (to an ancestor, indicating a cycle), forward (to a finished descendant), or cross.
**edit–compile–link–load–execute workflow** — The C build pipeline: edit source, compile+assemble into object files, link with libraries into an executable, load, then execute.
**E-graph / E-graph matching** — A data structure compactly representing many equivalent expressions; a superoptimizer builds one of equivalent programs and searches it for the best.
**EINTR** — An error code meaning a system call was interrupted by a signal and should be retried.
**element (∈)** — x ∈ A means x is a member of the set A.
**empty groups** — `GROUP BY` never produces a group with `count(*) = 0`; zero-count cases need extra work (e.g. an outer join).
**empty set (∅)** — The set with no elements.
**empty string (ε)** — The string of length zero.
**encapsulation (networking)** — Nesting one protocol layer's packet as the payload of the layer below (HTTP inside TCP inside IP inside Ethernet).
**encapsulation (OOP)** — Hiding an object's implementation details and restricting access to its internals, associating behaviors (methods) with data.
**end-to-end test** — A test exercising almost all of the code at once, making failures harder to debug because the search space is large.
**endianness** — The convention for ordering a multi-byte value's bytes: big-endian puts the most significant byte at the lowest address, little-endian (x86-64) the least significant.
**entailment / implication (logic)** — F₁ implies F₂ iff F₁ → F₂ is valid; a semantic relationship between formulas rather than a connective.
**entity** — A single object; the same idea as an object in programming.
**entity set** — A collection of entities of the same type (like a class); each becomes a relation, and may be a subclass of another entity set.
**Entity-Relationship (E/R) diagram** — A pen-and-paper diagram of entity sets, attributes, and relationships, used to design a schema before writing SQL.
**enumerated type** — A variant type whose constructors carry no data (e.g. `type color = Red | Blue | Green`).
**enumerative search** — Synthesizing by systematically enumerating candidate programs of increasing size until one satisfies the specification.
**environment** — The set of bindings in effect at a point; expressions are evaluated in the current environment.
**environment modeling** — Supplying models or concrete stubs for native/system/library calls that symbolic execution cannot see into.
**ε-transition** — An edge taken without consuming an input symbol, allowed only in NFAs.
**eq? / eqv? / equal?** — Scheme's equality predicates in increasing looseness: pointer identity, simple-value equality, and deep structural comparison.
**equality (equivalence relation)** — A user-defined `equal` should behave like mathematical `=`: reflexive, symmetric, and transitive.
**equally likely outcomes (uniform probability)** — A model where every outcome has the same probability, so an event's probability is favorable/total.
**equisatisfiability** — Two formulas are equisatisfiable iff both are satisfiable or both unsatisfiable, even if not equivalent; preserved by Tseitin's transformation.
**equivalence of models** — The theorem that regular expressions, DFAs, and NFAs all recognize exactly the regular languages.
**equivalence relation / equivalence class** — A reflexive, symmetric, transitive relation; its classes partition the elements.
**errno / perror** — `errno` is a global set to an error code on failure; `perror` prints a message plus the human-readable error for it.
**estimator** — A rule (function of the data) used to estimate an unknown parameter; itself a random variable.
**Euclidean algorithm** — Computes gcd(a, b) via gcd(a, b) = gcd(b, a mod b) with base case gcd(a, 0) = a; the extended version also computes the Bézout coefficients.
**eval** — A procedure that evaluates a quoted list as code, exploiting Scheme's uniform treatment of code and data.
**evaluation relation (⇓)** — The big-step relation; (v, c) ⇓ v′ reads "(v, c) evaluates to final state v′".
**evaluation strategy** — A discipline choosing which redex to reduce next, determining evaluation order (e.g. call-by-value vs. call-by-name).
**event** — A subset of the sample space; a collection of outcomes to which a probability is assigned.
**event-driven programming** — Structuring a program as an event loop (get next event → dispatch to a handler), avoiding locks but splitting sequential logic into handlers carrying task state.
**exception** — A transfer of control to the OS kernel in response to an event, dispatched through an exception table indexed by an exception number.
**exception (thrown)** — In a high-level language, an object signaling a runtime error or invalid input that interrupts normal control flow; it is thrown and then caught (handled) or propagated, letting code fail fast rather than continue in a bad state.
**exceptional control flow (ECF)** — The mechanism by which the system reacts to events by transferring control; the basis for context switches, system calls, and signals.
**exclusive or (⊕, XOR)** — p ⊕ q is true exactly when p and q have different truth values.
**exec** — The system call a forked child uses to replace its program with a new one (a shell forks then execs the requested program).
**executable** — The final linked binary program that can be loaded and run.
**execution tree / path explosion** — All program paths form an execution tree; the number of paths grows exponentially, the central scalability challenge of symbolic execution.
**exhaustive search** — Systematically exploring every candidate in a solution space, typically implemented as recursion with an accumulator; the basis of brute-force and backtracking algorithms.
**exhaustiveness** — Whether a match covers all possible cases; OCaml warns when patterns are not exhaustive.
**EXISTS / NOT EXISTS** — SQL predicates testing whether a subquery returns a non-empty or empty set; the natural way to express existential and universal quantification.
**existential generalization** — The inference rule concluding ∃x P(x) from P(c) for a particular c.
**existential quantifier (∃)** — ∃x P(x) asserts there is at least one x in the domain for which P(x) is true; expressed in SQL by `EXISTS` and in Ruby by `any?`.
**exit code (EXIT_SUCCESS / EXIT_FAILURE)** — The integer status a process returns on termination (0/1 conventionally), readable by the parent.
**expectation (expected value, 𝔼[X])** — The long-run average value of a random variable, Σ x·P(X=x) for discrete X; a weighted mean.
**explicit** — A C++ keyword on a one-argument constructor disabling its use as an implicit conversion.
**exponential distribution** — Models the waiting time until the next Poisson event; the continuous memoryless distribution, rate λ, mean 1/λ.
**exponential time** — Running time O(2^(nᵖ)); the regime of brute-force approaches.
**expression** — A piece of code that computes a value (e.g. `1 + 4 * 5`); the simplest expression is a literal, and expressions combine via operators.
**expression problem** — The tension (Wadler) between grouping code by data type versus by operation; compilers usually group by pass since operations change more often than node types.
**extended relational algebra** — Relational algebra augmented with grouping/aggregation so full SQL (e.g. `HAVING`) needs no extra operator.
**external linkage / extern** — The default for globals and functions, making a name visible to other translation units; `extern` declares a variable defined in another file.
**external-memory algorithm** — An algorithm designed to minimize disk I/O because data does not fit in main memory.
**external fragmentation** — Free memory scattered in holes between allocated blocks, so no single hole fits a request even though total free space suffices.
**fact** — Something known true about the variables at a point in the code, collected by reading along a path to a return statement.
**factorial (n!)** — The number of orderings of n distinct objects, n·(n−1)···2·1.
**factory function** — A named function that constructs and returns an ADT instance, hiding the concrete class and letting the implementation change.
**fail fast** — The practice of halting execution immediately when an input is invalid (e.g. by throwing an exception) rather than continuing in a corrupted state.
**false positive / false negative rate (testing)** — In a test, the chance of a positive result when the condition is absent (FP) and of a negative result when present (FN).
**fast (modular) exponentiation** — Computing large modular powers efficiently by repeated squaring.
**fault** — A synchronous, unintentional but possibly recoverable exception (e.g. a page fault); the handler re-executes the faulting instruction or aborts.
**favor composition over inheritance** — The guideline (Bloch) to give a class a field of another type rather than subclassing it, avoiding inheritance's equality/behavior pitfalls.
**featurization** — Converting raw data into numeric features a model can process, such as turning words into embeddings or images into arrays of pixel values; a stage of the machine-learning pipeline.
**fencepost loop** — A "loop-and-a-half" pattern that performs the first repeated action once before the loop so a separator is placed between items but not after the last (like fence posts between rails).
**Fermat's Little Theorem** — A result about a^(p−1) mod p for prime p, a building block for RSA.
**fflush / setbuf** — `fflush` forces a stream's buffer out; `setbuf(stream, NULL)` turns buffering off.
**field access (. and ->)** — `.` accesses a field of a struct value; `->` accesses a field through a struct pointer (`p->x` is `(*p).x`).
**file descriptor** — A small integer returned by `open` identifying an open file; 0/1/2 are stdin/stdout/stderr.
**filter (pack)** — Keeping only the elements satisfying a predicate; parallelized (pack) via a map of flags, a prefix sum for positions, then a placing map.
**finite geometric series** — The closed form Σ aⁱ (i=0..L) = (aᴸ⁺¹−1)/(a−1), used to sum per-level work in the tree method.
**finite state automaton (FSA)** — A machine of finitely many states with a start state, final states, and labeled transitions, used to recognize regular languages.
**finitization / inlining** — Bounding loops and inlining calls to reduce a program to a finite formula suitable for SAT.
**FIRST / FOLLOW / NULLABLE** — Three fixed-point grammar analyses: terminals that can begin a string from A, terminals that can follow A, and whether A can derive ε.
**first-class citizens (first-class values)** — Values that can be stored, passed as parameters, and returned; in functional languages, functions themselves are first-class.
**first-order logic (FOL)** — The logic of terms (constants, functions applied to terms), atoms (predicates), connectives, and quantifiers.
**fixed-length representation** — Because storage is finite, data is stored in fixed-size chunks (1, 4, 8 bytes) with leading zeros filled in.
**fixed-point (fixpoint)** — A value unchanged by a function; iterative dataflow/abstract-interpretation analyses repeatedly apply transfer functions and joins until the state stops changing.
**fixed-point combinator (Y combinator)** — A combinator satisfying Y F ≈ F (Y F), enabling recursion by letting a function refer to itself without names.
**fixed-width integer types** — C99 `stdint.h` types like `int32_t`/`uint8_t` guaranteeing an exact bit width.
**flat table** — A relation may not contain sub-tables; attribute values are atomic.
**floating point** — A representation of real numbers in base-2 scientific notation, trading exact representation for a wide range.
**flow-sensitive type refinement** — Giving an expression a more specific type after a run-time test (e.g. inside `if (x.isPresent())`, x is `@Present`).
**fold (fold_left / fold_right)** — Generalized reduce taking an initial accumulator and a combining function, able to build a result of a different type than the list elements; direction controls processing order.
**fopen / fclose / fread / fwrite / fprintf / fscanf** — The C stdio functions to open, close, read, write, and format streams.
**for-any (sublist) fact** — An assertion summarizing many indexed facts at once (e.g. `S[i] ≠ y for any 0 ≤ i < j`), needed to reason about arrays.
**for-each (nested-loop) semantics** — The meaning of a SQL query: iterate over each row (or combination), test the condition, and output matching tuples.
**foreign key** — One or more attributes uniquely identifying a row in another table; declared with `REFERENCES` and pointing to a unique (usually primary) key.
**fork** — The system call creating a child process that is a near-exact clone of the parent, returning the child's PID to the parent and 0 to the child.
**fork / join** — Fork schedules a subtask to run in parallel; join blocks until it finishes and returns its result, preventing a race on unfinished results.
**ForkJoin framework** — A standard library implementing divide-and-conquer parallelism (RecursiveTask/RecursiveAction run via a ForkJoinPool) so raw threads need not be managed.
**formal inspection** — A structured, rigorous code-review process, required for many safety-critical systems.
**formalizing a specification** — Translating an imprecise English description into precise math (usually a recursively defined function) by studying examples.
**forward reasoning** — Filling in a Hoare triple's postcondition by pushing facts downward through the code, producing the strongest postcondition.
**forward vs. backward analysis** — Whether dataflow facts propagate from predecessors to successors (forward) or from successors to predecessors (backward).
**fragile base class / tight coupling** — Subclassing binds a subclass tightly to a superclass's internal details, so superclass changes silently break subclasses.
**free list** — The structure tracking free allocator blocks: implicit (linked by size arithmetic), explicit (linked by pointers), or segregated (lists by size class).
**free variable** — A variable referenced where no enclosing binder or quantifier binds it (not a parameter or local); resolved by the enclosing environment.
**friend function** — A nonmember function/class granted access to a class's non-public members by a `friend` declaration.
**front end / back end** — The compiler front end ingests programs and decides whether they are legal (scanning, parsing, checking); the back end optimizes and generates target code.
**Fundamental theorem of arithmetic** — Every integer greater than 1 has a unique prime factorization.
**function (f: A → B)** — A mapping assigning to every element of the domain A exactly one element of the codomain B.
**function prototype** — A declaration of a function's name, parameter types, and return type, letting the compiler check calls before the definition appears.
**function template / class template** — A template applied to a function or class; the compiler infers or is given the type argument.
**function type (arrow type)** — T₁ → T₂, the type of a function taking a T₁ and returning a T₂; STLC's inductive type constructor.
**functional dependency (FD)** — An assertion X → Y that any two tuples agreeing on X agree on Y.
**functional language** — A language (Lisp/OCaml/Scheme) that computes by evaluating functions and avoids mutable state; descends from Church's lambda calculus.
**fuzzing** — Generating many (often random or mutated) inputs to a program to find crashes or faults; a dynamic analysis.
**Galois connection** — The correctness condition relating abstraction α and concretization γ: for all concrete c, c ≤ γ(α(c)), with both order-preserving.
**garbage collection** — Automatic reclamation of heap storage no longer reachable, used by languages such as Java, OCaml, and Lisp.
**GEN / KILL / IN / OUT** — The generic dataflow sets: facts generated (and not killed) in a block, facts killed, and facts holding on entry and exit; `OUT = GEN ∪ (IN − KILL)`.
**General Simplex** — The method typically used in practice to decide conjunctions of linear-arithmetic constraints.
**generics** — The modern term for parametric polymorphism; analogous to Java's `ArrayList<E>` type parameter.
**geometric distribution** — The number of independent Bernoulli(p) trials up to and including the first success; memoryless, mean 1/p.
**get() / release() / reset()** — Smart-pointer operations: `get()` returns the raw pointer without giving up ownership, `release()` relinquishes ownership, `reset()` deletes the current pointer and adopts a new one.
**getaddrinfo()** — The POSIX call resolving a hostname and service into a linked list of `addrinfo` results, freed with `freeaddrinfo`.
**goto (LR operation)** — The operation that advances the dot past a grammar symbol in every item of an LR state and takes the closure, producing the next state.
**goto (statement)** — A C statement transferring control directly to a label, mirroring the assembly-level jump.
**grammar** — A generator: a system for producing exactly the strings of a language and no others.
**graph** — A structure G = (V, E) of vertices connected by edges, which may be directed or undirected, weighted or unweighted.
**graph coloring** — Assigning each interference-graph node a color (register) so adjacent nodes differ; equivalent to register allocation and NP-complete in general.
**greatest common divisor (gcd)** — gcd(a, b) is the largest integer dividing both a and b.
**greatest lower bound (glb / meet)** — The largest abstract element below two elements in a lattice.
**ground truth** — The actual correctness of the code, against which analysis results (TP/FP/TN/FN) are judged.
**GROUP BY** — Partitions rows into groups by attributes/expressions and applies aggregates per group; like `DISTINCT` plus aggregation.
**guarded commands** — Dijkstra's nondeterministic language and predicate-transformer semantics underpinning weakest-precondition reasoning.
**halting problem** — Deciding whether an arbitrary program halts on a given input; proved undecidable.
**handle** — The location and production at which a reduction should occur in a rightmost derivation step.
**hash-consing (memoization of types)** — Storing already-constructed types in a table and reusing them so each structural type has a unique representation, making equality an O(1) pointer comparison.
**hash function** — A function mapping a key to an integer index; should be fast, scatter keys uniformly, and use the whole table. A pairwise-independent hash family gives provable collision-probability guarantees.
**hash join** — A join building a hash table on one input and probing it with the other; usually O(n) but can degrade to O(n²).
**hash table** — A dictionary using a fixed-size array plus a hash function to map keys to indices, giving average-case Θ(1) insert/find/delete (worst case Θ(n)); also used to implement joins and grouping.
**HAVING** — Filters groups by a condition on aggregates or grouping attributes, after `GROUP BY`.
**head / tail** — The first element of a list (`List.hd`) and the rest of the list (`List.tl`); constant-time operations.
**header / footer (boundary tags)** — Bookkeeping words storing an allocator block's size and allocated bit; boundary tags let the allocator coalesce with neighbors in both directions.
**header file (.h)** — A file included via `#include` holding a module's interface declarations, never definitions.
**header guard** — The `#ifndef NAME_H_ / #define NAME_H_ / #endif` idiom preventing a header from being included more than once per translation unit.
**heap** — A large pool of memory for dynamically-allocated data, managed explicitly (malloc/free) and grown by the allocator via `sbrk`.
**heap modeling** — Representing pointers and dynamically allocated structures symbolically, often using the theory of arrays for bit-precise memory.
**heap property** — The heap ordering invariant: in a min heap every node's priority ≤ its children's; in a max heap every node's ≥ its children's.
**heap sort** — Build a max heap, then repeatedly deleteMax placing each maximum at the shrinking end of the array; Θ(n log n).
**helper function** — An auxiliary function introduced to break a problem into subproblems or carry extra state, often localized via `let`.
**heuristics (query optimization)** — Rule-of-thumb transformations that always help, such as pushing selections below joins.
**hexadecimal (base 16)** — A base-16 notation (0–9, A–F, prefix 0x) where each hex digit maps to exactly 4 bits.
**higher-order function** — A function that takes other functions as parameters or returns them as results.
**histogram** — A statistic refining T(R) and V(R,A) per value range; 1-d histograms mitigate the uniformity assumption, 2-d the independence assumption.
**Hoare logic (Floyd–Hoare logic)** — A proof system of rules relating a precondition, a command, and a postcondition; the rules are sound and, with an oracle for implications, relatively complete. Due to Hoare and Floyd.
**Hoare triple** — {P} S {Q}: if S starts in a state satisfying precondition P and terminates, the resulting state satisfies postcondition Q; valid when this proposition holds.
**HTTP** — Hypertext Transfer Protocol: an application-layer request/response protocol over TCP in which a client requests a resource and the server returns its bytes or an error.
**HTTP request / method / GET** — A request is `METHOD request-uri HTTP/version` plus headers and an optional body; methods include GET, POST, and HEAD.
**HTTP response / status code** — A response is `HTTP/version status reason` plus headers and body; the status code's first digit categorizes it (2xx success, 4xx client error, 5xx server error).
**hybrid analysis** — A single analysis blending static and dynamic techniques, trading precision against soundness rather than merely aggregating them.
**hypergeometric distribution** — The number of successes in draws made without replacement from a finite population with a fixed number of successes.
**i.i.d. (independent and identically distributed)** — Mutually independent random variables sharing the same distribution; the standard setting for the CLT and estimation.
**idempotent laws** — p ∨ p ≡ p and p ∧ p ≡ p.
**identity laws** — p ∧ T ≡ p and p ∨ F ≡ p.
**idiom** — The typical, conventional way a computation is expressed in a given language.
**IEEE 754** — The 1985 standard specifying floating-point representation and operation results for portability across CPUs.
**immutability** — The property that a value can never change once created (OCaml lists, Java `String`s), eliminating whole classes of bugs.
**immutable vs. mutable ADT** — Immutable ADTs never change after construction and can be shared freely; mutable ADTs allow methods to change state, requiring RI re-checking.
**imperative specification** — A spec saying how to compute the answer by laying out the exact steps; code is then written straight from the spec.
**implication (→)** — The connective "if…then"; p → q is false only when p is true and q is false. p is the hypothesis, q the conclusion.
**implication (code reasoning)** — The claim that some fact follows from other known facts; checking correctness reduces to proving the postcondition follows from the facts at each return.
**implicit leading 1** — The normalized IEEE mantissa's leading 1 is not stored, giving one extra bit of precision.
**implicit parameter** — The unstated receiver argument (`self`/`this`) every method carries, which drives dynamic dispatch.
**Impagliazzo's Five Worlds** — Five hypothetical worlds (Algorithmica, Heuristica, Pessiland, Minicrypt, Cryptomania) describing computation and cryptography depending on how P vs NP and one-way/public-key functions resolve.
**impredicative (first-class) polymorphism** — Parametric polymorphism where type variables may be instantiated with any type, including polymorphic ones; System F's style.
**in-place sort** — A sort using only Θ(1) extra space by swapping within the given array (selection, insertion, in-place heap sort).
**IN / NOT IN** — SQL predicates testing membership or non-membership of a value in a subquery result.
**incremental solving / solution caching** — Reusing solver state and caching results across many similar path-condition queries to reduce solver load.
**indefinite loop** — A loop whose number of iterations is not known in advance (typically a `while` loop); contrasted with a definite loop.
**independence (of events)** — Two events are independent if P(A∩B) = P(A)·P(B); one occurring gives no information about the other.
**independence assumption** — Assuming distinct predicates or attributes are statistically independent when combining their selectivities.
**independence of random variables** — X and Y are independent when their joint PMF/density factors into the product of the marginals.
**index** — An auxiliary file speeding access to data by a search key, giving direct access to reduce I/Os.
**index-based selection** — Answering a selection through an index rather than a full scan; its cost depends on whether the index is clustered.
**indicator random variable** — A 0/1 variable equal to 1 exactly when a specified event occurs; its expectation equals that event's probability, central to linearity-of-expectation arguments.
**inductive definition (inductive set)** — A set built from base cases (always in the set) and inductive cases (in the set whenever their premises are), generating the whole set from the base upward.
**inductive hypothesis** — The assumption that the claim holds for an arbitrary k (or for the smaller substructures), used to prove the next case.
**inductive invariant** — An invariant provable directly by induction over →: it holds initially and is preserved by every step. Not all invariants are inductive.
**inductive (syntax-guided) synthesis** — Searching a syntactically restricted candidate space for a program consistent with a partial specification such as input/output examples.
**inductive step** — The part of a proof establishing the claim for a recursive constructor / successor case, using the inductive hypothesis.
**induction over →*** — Proving a property of all reachable states by inducting over paths: base case for initial states, inductive case for "add one more step".
**inductively defined proposition** — A relation (like →* or the step relation) defined by inference rules whose conclusions are propositions.
**inference rule** — A pattern (premises above a line, one conclusion below) licensing a new fact from established facts; encodes the base and inductive cases of an inductive definition.
**infinity / NaN** — Special IEEE encodings (E all ones): ±infinity for overflow and Not-a-Number for undefined results such as 0/0.
**information hiding** — Localizing implementation details so they are not visible to clients.
**inheritance** — Deriving a class from another ("is-a") to reuse and extend its methods (`super`/`class B < A`); gives code reuse, polymorphism, and extensibility.
**inject** — Ruby's fold method: with no seed it behaves like `reduce`, and with a seed like `foldl`.
**inlining** — Replacing a function call with a copy of the callee's body (renamed to respect scopes), the main way to expose inter-procedural optimizations.
**inner class** — A class defined inside another class so its implementation stays hidden from outside clients while remaining accessible to the enclosing class.
**inner join / JOIN … ON** — The explicit join syntax `FROM A JOIN B ON <cond>`, equivalent to listing tables in FROM with the condition in WHERE.
**INSERT** — Adds one or more (persistent) tuples to a table.
**insertion sort** — Maintain a sorted prefix and insert each next element leftward; Θ(n²) worst, Θ(n) best; in place, stable, adaptive, and online.
**instance** — The actual data currently in a relation (the set of tuples).
**instance variable (@)** — A per-object Ruby variable, prefixed with `@`, coming into existence when first assigned in a method.
**instruction scheduling** — Reordering instructions within a basic block to hide latencies and exploit parallel functional units, while respecting dependencies.
**instruction selection** — Mapping the machine-independent IR onto concrete target instructions; fast if greedy, NP-hard optimally.
**Instruction Set Architecture (ISA)** — The contract between hardware and software: visible state (program counter, registers, memory) plus the instruction set and each instruction's effect.
**instrumentation** — Adding checks/probes to a program (or its memory) to observe behavior at run time.
**integer division** — Division of two integers that discards the fractional remainder and yields an integer (e.g. `14 / 4` is `3` in Java).
**integration test** — A test checking that units work correctly together, where many real-world bugs live.
**interface (module)** — A module's set of public functions, typedefs, and globals, specified in its header file.
**interface / shared constants** — Constants occurring in both purified conjuncts of a Nelson–Oppen combination; theories communicate only by propagating equalities among them.
**interference graph** — An undirected graph with a node per variable/live-range and an edge whenever two are simultaneously live, so they cannot share a register.
**interleaving** — The unpredictable order in which concurrent threads' or commands' operations execute; naturally expressible in small-step but not big-step semantics.
**internal definition** — A `define` nested inside another `define`, the preferred way to write local helper functions in Racket.
**internal fragmentation** — Wasted space inside an allocated block when the payload is smaller than the block (e.g. due to alignment or headers).
**internal linkage / static** — The `static` specifier at global scope restricts a definition's visibility to its own file.
**interpretation (logic)** — An assignment mapping every variable of a formula to a truth value; written I ⊨ F when F is true under I.
**interpreter** — A program (a recursive function over program syntax) that executes source or intermediate code directly; more portable but generally slower than native execution.
**interpreter vs. procedural pattern** — Two ways to organize operations over an inductive type: the interpreter pattern groups by expression type, the procedural pattern by operation.
**interrupt** — An asynchronous exception caused by an event external to the processor (e.g. I/O completion, Ctrl-C); the handler returns to the next instruction.
**intersection (∩)** — The set of elements in both A and B; in relational algebra, tuples common to two relations.
**interval domain** — An abstract domain approximating a variable by a numeric interval [lo, hi].
**inter-process communication (IPC)** — Mechanisms by which isolated processes communicate: pipes, sockets, shared memory, lockfiles, and RPC.
**invariant** — A property that holds in every reachable state of a system (the "safe" states).
**invariant detection** — Dynamically inferring likely invariants by reporting properties left unfalsified across observed executions (Daikon-style).
**inverse** — For an implication p → q, its inverse ¬p → ¬q.
**I/O latency / hiding latency** — The delay of I/O (especially disk); hiding it by doing other work while one task blocks is a main motivation for concurrency.
**iostream** — The C++ standard-library header declaring the stream objects; C++ standard headers are included without a `.h` suffix.
**IP (Internet Protocol)** — The network-layer protocol routing packets across interconnected networks; every host has a unique IP address and routers forward hop by hop.
**IP address (IPv4 / IPv6)** — A host's numeric identifier: IPv4 is 32 bits in dotted-decimal (subject to exhaustion); IPv6 is 128 bits in colon-separated hextets.
**irregular language** — A language no DFA (hence no regular expression) can recognize, such as { 0^k 1^k : k ≥ 0 }.
**ite (if-then-else) value** — A merged symbolic value representing a conditional outcome, used to encode branches without enumerating paths.
**iterative development** — A problem-solving strategy of first building a simpler or partial version of a solution and then incrementally extending it to the full solution.
**iterator** — A per-container object or method that steps through a collection's elements while hiding its underlying structure, over the half-open range `[begin, end)`.
**Java Virtual Machine (JVM)** — A virtual machine that executes Java bytecode, adding a layer between source-like code and the hardware.
**JDBC** — The Java client interface used to connect an application to a database server.
**join** — An operation linking records from different tables, often via a key/foreign-key relationship; in relational algebra (⋈) a Cartesian product followed by a selection, with eq-join, theta-join, and natural join variants.
**join semilattice** — A partially ordered set in which every pair has a least upper bound (join).
**joint distribution** — The combined distribution of two or more random variables, giving probabilities of their values simultaneously.
**JSDoc** — The `/** ... */` comment format in which TypeScript specs are written, using tags `@param`, `@requires`, `@returns`, `@modifies`, `@effects`.
**jump table / indirect jump** — A table of code addresses indexed by a value, used with an indirect jump to compile a switch statement efficiently.
**JUnit** — A unit-testing framework for Java that provides method annotations (e.g. `@Test`) and assertion methods for writing and running automated tests.
**k-limiting** — A static abstraction representing each object reachable within ≤ k pointers precisely and approximating more distant objects together.
**kernel** — Code with complete control over hardware, responsible for exception handling, device drivers, process scheduling, memory management, and resource protection.
**key** — One or more attributes that uniquely identify a row of a table.
**Kleene star (closure)** — The operator A* denoting zero or more concatenated repetitions of strings from A.
**Kleene fixed-point theorem** — Result used to show the fixed point defining a loop's denotation exists, salvaging denotational semantics for non-terminating-capable languages.
**Kruskal's algorithm** — Builds an MST by repeatedly adding the globally lowest-weight edge that does not create a cycle; O(|E| log |V|) using union-find.
**LALR(1)** — An LR(1) variant merging states differing only in lookahead, giving far smaller tables; used by YACC, Bison, and CUP.
**lambda calculus** — Church's 1936 formalism characterizing computation via functions (variable, abstraction, application); Turing complete, and the mathematical foundation of functional programming.
**language** — A set of strings over an alphabet, possibly empty or infinite; an infinite language can be specified finitely.
**Las Vegas vs. Monte Carlo algorithms** — A Las Vegas algorithm is always correct but has random running time; a Monte Carlo algorithm runs in bounded time but may be wrong with small probability.
**lattice** — A partially ordered set that is both a join semilattice and a meet semilattice.
**law of implication** — p → q ≡ ¬p ∨ q.
**law of the unconscious statistician (LOTUS)** — Computes 𝔼[g(X)] as Σ g(x)·P(X=x) directly from the PMF, without first finding the distribution of g(X).
**law of total probability** — For a partition A₁,…,Aₖ of the sample space, P(E) = Σ P(E|Aᵢ)·P(Aᵢ).
**laziness** — Evaluating a function argument only if actually needed (Haskell's call-by-name variant) rather than eagerly.
**lazy concretization** — Materializing symbolic heap objects/pointers only when first dereferenced, to model dynamically allocated data structures.
**leader** — The first instruction of a basic block: the first instruction overall, any branch target, or any instruction after a branch.
**leaf (tree)** — A tree node with no children (both subtrees empty); the base case of many recursive tree algorithms.
**leaq (load effective address)** — An instruction computing `D(Rb,Ri,S)` and storing the resulting address (or arithmetic result) in a register without accessing memory.
**least upper bound (lub / join)** — The smallest abstract element above two elements; used to merge information at control-flow joins.
**left-deep / right-deep / bushy plans** — Shapes of join trees; optimizers commonly limit the search space to left-deep plans.
**left factoring** — Rewriting productions sharing a common prefix into a separate nonterminal so the parser can defer the choice until after the prefix.
**left recursion** — A rule `A ::= A α` that causes infinite recursion in a recursive-descent parser and must be rewritten to right recursion plus a tail nonterminal.
**level of abstraction** — How close an IR sits to the source (high-level) versus the machine (low-level); mid-level IRs balance the two for target-independent optimization.
**lexeme** — The actual character string in the source that a token matches.
**lexical class** — The category a token belongs to (operator, keyword, identifier, integer constant); each keyword and operator is its own distinct class.
**lexical scope (static scope)** — Resolving a variable by the textual (nested) structure of the program, determinable before execution; used by Java and OCaml.
**library / archive (.a)** — A pre-assembled collection of object files; a static-library archive is linked with `-L<path> -l<name>`.
**lifting** — Rosette's mechanism of extending a host operation to work on symbolic values; unlifted constructs require care because symbolic values may not flow safely through them.
**likelihood** — The probability of the observed data viewed as a function of the model's unknown parameters; its logarithm (log-likelihood) is often maximized instead because sums differentiate more easily.
**linear integer / real arithmetic (LIA / LRA)** — Theories of linear constraints over ℤ or ℝ; LRA is polynomial-time, LIA is NP-complete, and nonlinear multiplication is harder.
**linear probing** — Open addressing trying i+1, i+2, … (mod length) until an open cell is found; simple but prone to clustering.
**linear search** — Scanning an array element by element for a target, with a loop invariant that all earlier indices differ from the target.
**linearity of expectation** — 𝔼[X+Y] = 𝔼[X] + 𝔼[Y] and 𝔼[aX] = a·𝔼[X], holding for any random variables whether or not independent.
**linked list** — A structure of nodes each holding a payload and a pointer to the next node, with NULL (or front/back references) marking the ends.
**linker (ld)** — The tool that combines object files and libraries into an executable, resolving symbol references across them.
**Lisp / Scheme / Racket** — Lisp (McCarthy, 1958) is the first functional language; Scheme is a lexically scoped descendant; Racket is the modern Scheme dialect used in the course.
**list** — The central inductive type `list := nil | cons(x, L)`, the empty list or an element prefixed onto another list; shorthand `x :: L`.
**list (C++)** — A doubly-linked list: no random access, but constant-time insertion/deletion anywhere, with a member `sort` that relinks rather than copies.
**list scheduling** — A greedy algorithm repeatedly picking the best ready instruction (e.g. by critical-path latency) from those whose predecessors are scheduled.
**literal** — A propositional variable or its negation; more generally an atom or its negation.
**Liskov Substitution Principle** — Subtypes must be substitutable for their supertypes; the definition of subtyping for abstract types (due to Barbara Liskov).
**live variable analysis (liveness)** — A backward may-analysis computing, at each point, the variables that may be used before redefinition; used for register allocation, DCE, and detecting uninitialized use.
**load factor (λ)** — The average items per bucket, n / table-length; drives expected chain lengths and probe counts.
**loading** — The OS step creating a process's address space, copying the executable's segments into place, and doing final linking/relocation before execution.
**local binding (let ... in)** — A `let` used as an expression introducing a binding scoped only to the following expression, without adding to the top-level environment.
**locality** — The tendency of programs to reuse data near recent accesses: temporal (the same item soon) and spatial (nearby addresses).
**lock (mutex)** — A mutual-exclusion primitive with acquire (atomically take or block) and release (free), used to bracket critical sections.
**lock (transaction)** — A token a transaction must acquire on an element before reading or writing it; a shared (read) lock permits concurrent readers, an exclusive (write) lock excludes all others.
**lock contention** — Overhead threads incur competing for the same lock; a reason locked code can be slower than sequential.
**lock granularity** — The trade-off between coarse-grained locking (simpler, less parallel) and fine-grained locking (more parallel, harder to get right).
**logical connective** — An operator combining propositions: negation, conjunction, disjunction, exclusive-or, implication, biconditional.
**logical equivalence (≡)** — A ≡ B asserts propositions A and B always have the same truth value (under every interpretation); provable by a truth table or a chain of equivalences.
**logical operators** — &&, ||, ! that treat any nonzero value as true and 0 as false and always evaluate to 0 or 1.
**logical query plan** — A relational-algebra expression tree representing a query independent of execution algorithms.
**loop implementation** — while, for, and do-while loops implemented in assembly using conditional and unconditional jumps around a loop body.
**loop invariant** — An assertion true every time execution reaches the top of a loop, and preserved by each iteration; the key ingredient for proving loops correct (unavoidable per Rice's Theorem).
**loop-invariant code motion** — Moving a computation whose value does not change across loop iterations out of the loop.
**loop induction variable elimination** — Rewriting a loop counter used only for array indexing into direct pointer increments, reducing in-loop index arithmetic.
**loop / recursion coverage** — A requirement that each loop or recursive call be exercised 0, 1, and many (2+) times.
**loop unrolling** — Replicating a loop body to create larger basic blocks with more scheduling opportunities and fewer branch mispredictions.
**lowering** — Transforming a higher-level IR into a lower-level one closer to the target machine (e.g. AST to linear IR to assembly).
**LR(k) parsing** — Left-to-right scan, Rightmost derivation, k tokens of lookahead; the most powerful practical bottom-up scheme, and almost all real languages have an LR(1) grammar.
**LR(0) automaton** — The DFA over item-sets, built by closure and goto, that recognizes viable prefixes and drives shift/reduce decisions.
**LR item** — A production with a dot marking a position in its right-hand side (e.g. `A ::= X . Y`), tracking how far a rule has been matched.
**LL(k) parsing** — Left-to-right scan, Leftmost derivation, k tokens of lookahead; less powerful than LR but simpler to hand-code.
**LL(1) property** — The condition that each nonterminal's alternatives have disjoint FIRST sets (and, if nullable, disjoint from FOLLOW), enabling one-symbol-lookahead prediction.
**machine code / object code** — The binary instruction encoding the CPU executes, produced from assembly.
**machine learning (ML)** — A subfield of computer science concerned with learning patterns and trends from data rather than following explicitly programmed rules.
**#define / macro** — Defines a symbol the preprocessor substitutes textually; function-like macros take arguments and must guard against precedence bugs with parentheses.
**main / argc / argv** — The program entry point; `argc` is the count of command-line strings and `argv` an array of pointers to them.
**make** — A classic build tool controlling what gets recompiled via command scripts plus dependency tracking.
**Makefile rule (target : sources; command)** — A make rule naming a target, its source dependencies, and a TAB-indented command to (re)build the target.
**make variables / automatic variables** — Reusable string variables (CC, CFLAGS) and built-ins like `$@` (target), `$^` (all sources), `$<` (first source).
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
**maximum likelihood estimation (MLE)** — Choosing the parameter value that maximizes the likelihood of the observed data.
**MaxSAT / Partial (Weighted) MaxSAT** — An optimization variant of SAT: satisfy all hard clauses while maximizing the weight of satisfied soft clauses.
**may vs. must analysis** — Whether a dataflow fact must hold on all paths (intersection at merges) or may hold on some path (union at merges).
**median-of-three** — A practical quicksort pivot choice: the median of three sampled values, cheaply avoiding the worst case.
**meet semilattice** — A partially ordered set in which every pair has a greatest lower bound (meet).
**member function / method** — A function that is a member of a class, defined inside it or as `retType Class::Method(...)`.
**member initialization list** — A constructor clause (`Point(...) : x_(x) {}`) initializing fields directly in declaration order, avoiding a redundant default-construct-then-assign.
**memoization** — Caching function-call results so repeated calls with the same argument return instantly; speeds recursive definitions like Fibonacci.
**memory checking** — Finding array-bound violations and uses of uninitialized memory (e.g. Purify/Valgrind dynamically, LCLint statically).
**memory hierarchy** — The layered organization of storage (registers → L1/L2/L3 cache → main memory → disk) trading speed for capacity, each level caching the one below.
**memory layout / segments** — The regions of a process's memory: read-only text/rodata (instructions, literals), read/write data (globals/statics), heap (grows up), shared libraries, and stack (grows down).
**memory leak** — Failing to free dynamically-allocated memory no longer in use, so the program's footprint grows and may exhaust memory.
**memory management unit (MMU)** — The hardware translating virtual addresses to physical addresses on each memory access.
**memory protection / isolation** — Using page-table permission bits and per-process address spaces to prevent processes from accessing each other's or the kernel's memory.
**memorylessness** — The property (geometric and exponential distributions) that P(X ≥ s+t | X ≥ s) = P(X ≥ t): past waiting gives no information about remaining waiting time.
**merge** — Merge sort's combine step: walk two sorted sublists with front pointers, repeatedly emitting the smaller front element.
**merge join (sort-merge join)** — A join scanning two sorted inputs in tandem; O(n log n) including the sort.
**merge sort** — Divide-and-conquer sort: split into halves, sort each recursively, and merge; Θ(n log n); stable but not in place.
**message passing** — The OO model in which computation proceeds by sending messages (method calls) to objects; `self` names the receiver.
**metacircular interpreter** — An interpreter for a language written in that same language, useful for understanding and extending the language.
**microarchitecture** — The specific hardware implementation of an ISA, distinct from the architecture itself.
**minimal / pruned SSA** — Minimal SSA places a φ only where two definitions first meet (dominance-frontier criterion); pruned SSA additionally omits φ-functions for dead variables.
**minimal unsat core** — A minimal subset of theory literals that is already unsatisfiable, used to produce a short, strong theory conflict clause.
**minimum spanning tree (MST)** — A spanning tree of minimum total edge weight.
**minterm** — A conjunction of literals corresponding to a single true row of a truth table; the terms summed in DNF.
**mixed interpretation** — Interleaving ordinary imperative execution with angelic choice, running concrete code while a solver resolves the nondeterministic choices.
**mixin** — A module of methods `include`d into a class to add functionality without inheritance (e.g. `Comparable`, `Enumerable`).
**ML pipeline** — The stages of building a machine-learning model: data collection and cleaning, featurization, model training and tuning, evaluation, and deployment, with the ability to iterate backward.
**model checking** — Exhaustively (or boundedly) exploring a system's states to verify properties.
**model / satisfying interpretation** — An interpretation under which a formula evaluates to true; F is satisfiable iff some interpretation models it.
**modular arithmetic** — Arithmetic on integers reduced by a modulus n, treating numbers as equivalent when they differ by a multiple of n.
**modular multiplicative inverse** — For a with gcd(a, n) = 1, the value b with ab ≡ 1 (mod n); found via the extended Euclidean algorithm.
**modularity** — Structuring a program via decomposition into subprograms, information hiding, and careful interfaces.
**module** — A self-contained named collection of types, variables, and functions with a public interface and hidden internal details, developable and reusable independently.
**modus ponens** — The inference rule: from p → q and p, conclude q.
**monitoring** — Observing a running program to collect behavioral data.
**monotone function** — A function f where x ≤ y implies f(x) ≤ f(y); aggregates are generally not monotone.
**monotone query** — A query Q where I ⊆ J implies Q(I) ⊆ Q(J); SELECT-FROM-WHERE without subqueries or aggregation is monotone, whereas aggregation and negation are non-monotone.
**monotonicity requirement** — The lub (join) operator must be monotone for an analysis to be sound; a per-statement transfer function alone need not be.
**most/least significant bit (MSB/LSB)** — The highest-order (leftmost, largest weight) and lowest-order (rightmost, weight 1) bit of a fixed-length value.
**mov (data movement)** — The instruction copying data between registers and memory (`mov src, dst`).
**move semantics / std::move** — Transferring a value from one object to another without copying; `std::move(a)` moves ownership out of a `unique_ptr`, leaving the source null.
**movz / movs** — Move instructions copying a smaller source into a larger register with zero extension (movz) or sign extension (movs).
**multidimensional array (row-major)** — An array of arrays stored as one contiguous block in row-major order (row by row); element [r][c] is at a computed linear offset.
**multi-level page table** — A hierarchical page table saving space by not allocating tables for unused regions of the huge virtual address space.
**multinomial coefficient** — A generalization of the binomial coefficient counting the ways to partition n objects into groups of specified sizes.
**multiplicity (cardinality) constraint** — A limit on how many entities may participate in a relationship: one-to-one, one-to-many, or many-to-many.
**mutation XOR aliasing** — The discipline of allowing mutation or aliasing but never both for the same data (a rule Rust enforces in its type system).
**mutable state** — A memory location whose value can change over time; central to procedural programming and avoided in functional programming.
**mutator (ADT method)** — An ADT method on a mutable type that changes the object in place, documented with `@modifies`/`@effects` and typically returning `void`.
**mutual exclusion** — The guarantee that while one thread uses a resource, all others must wait.
**mutually exclusive (disjoint) events** — Events that cannot both occur (empty intersection); the probability of their union is the sum of their probabilities.
**Naive Bayes (Bayesian classification)** — Applying Bayes' theorem with a conditional-independence assumption among features to classify inputs (e.g. spam detection).
**name resolution** — Determining, for each use of an identifier, which declaration it refers to.
**namespace** — A named scope that lets different modules reuse the same identifiers without collision (e.g. `List.length` vs. `Array.length`); all of the C++ standard library is in `std`.
**natural join** — A join matching on all commonly named attributes and keeping one copy of each.
**natural ordering** — The default total order a type defines for its own values (in Java via `Comparable`/`compareTo`), used by sorted collections such as `TreeSet` and `TreeMap`.
**negation (¬)** — The connective "not"; ¬p is true exactly when p is false.
**negation laws** — p ∨ ¬p ≡ T and p ∧ ¬p ≡ F.
**negating quantifiers** — Pushing a negation through a quantifier: ¬∀x P(x) ≡ ∃x ¬P(x) and ¬∃x P(x) ≡ ∀x ¬P(x).
**Negation Normal Form (NNF)** — A form in which negation appears only on atoms, obtained via De Morgan's laws and eliminating →/⟺.
**negative binomial distribution** — The number of independent trials needed to obtain a fixed number r of successes, generalizing the geometric distribution.
**negative-weight edge** — An edge with negative weight, which breaks Dijkstra's correctness because a later path through an unfinalized vertex could beat a finalized distance.
**Nelson–Oppen combination** — A procedure combining decision procedures for two theories with disjoint signatures (sharing only =) into one for their union.
**nested-loop join** — The simplest join algorithm: for each tuple of R, scan S for matches.
**nested quantifiers** — Quantifiers applied one inside another (∀x ∃y …); order matters, and alike vs. unalike quantifiers behave differently.
**network byte order (htons/ntohs, htonl/ntohl)** — The big-endian ordering in which addresses and ports travel on the network; helper functions convert integers between host and network byte order.
**network programming** — Writing software that moves bytes between systems by packaging data into packets and asking the OS to transport them (here via the sockets API).
**new / delete** — C++ heap operators replacing malloc/free; `new` calls the constructor and returns a typed pointer, `delete` calls the destructor. Never mix with malloc/free.
**new[] / delete[]** — `new type[size]` allocates an array and `delete[]` deallocates it; using plain `delete` on an array is undefined behavior.
**n-gram model** — A language model predicting a token from the previous n−1 tokens; used in ML-for-code tasks.
**nondeterministic finite automaton (NFA)** — A finite automaton that may have multiple (or zero) transitions per symbol and ε-transitions; accepts if some computation path reaches an accepting state.
**non-blocking / asynchronous I/O** — I/O modes where read/write return immediately; the program asks the OS which descriptors are ready or registers interest and is notified by an event.
**non-chronological backtracking (backjumping)** — Backtracking multiple levels at once, to the asserting level implied by the learned clause, rather than undoing one decision at a time.
**non-determinism** — When a relation ascribes more than one result to a state; small-step semantics model it as multiple applicable rules.
**non-executable memory (W^X)** — Marking the stack, static data, and heap non-executable so injected data cannot be run as code.
**nonterminal** — A grammar variable (e.g. `expr`, `<term>`) that can be rewritten by productions, as opposed to a terminal token.
**normal (Gaussian) distribution** — The bell-shaped continuous distribution 𝒩(μ,σ²); the limiting distribution in the Central Limit Theorem. The standard normal 𝒩(0,1) has mean 0 and variance 1.
**normal form** — A syntactic restriction such that every formula has an equivalent formula in that form.
**normalization (database)** — Redesigning tables to remove anomalies by decomposition guided by functional dependencies.
**normalization (type theory)** — The property that all well-typed programs terminate; System F has it, so the Y combinator is untypable.
**NP-Hard** — A problem to which every NP problem reduces in polynomial time; solving any in polynomial time would solve all of NP.
**NP-Complete** — A problem both in NP and NP-Hard; either all are in P or none are, so P = NP iff any one is in P.
**NULL (pointer)** — A pointer value guaranteed invalid (0x0 on Linux); dereferencing it causes a segfault, making it a safe sentinel for uninitialized or failed pointers.
**NULL (SQL)** — A special value meaning missing or unknown; aggregates (except `count(*)`) ignore NULLs, and any arithmetic containing a NULL evaluates to NULL.
**nullable type** — A type that may hold either a normal value or "no value" (e.g. C#'s `int?`); modeled in OCaml by the option type.
**NullPointerException** — The Java run-time error the `Optional` and null checkers aim to prevent at compile time.
**nullptr** — A C++11 typed null-pointer literal, preferred over `NULL` because it is not an integer.
**numerical encoding** — Assigning a unique numeral to each element of a countable set so it can be stored in binary; x digits in base b represent b^x things.
**object file (.o)** — A compiled but not-yet-linked machine-code file (header, code, symbol table, relocation table) for one translation unit.
**object layout** — The in-memory arrangement of an object: a vtable pointer in the first word followed by storage for every field, including inherited ones.
**object slicing** — Assigning a derived value to a base instance drops the derived class's extra fields; a hazard when storing objects (not pointers) in STL containers.
**object-oriented programming (OOP)** — A programming paradigm in which behavior arises from the interaction of objects (instances of classes) that bundle state with the methods acting on it; contrasted with procedural programming.
**observer** — An ADT method returning information about the object without changing it (e.g. `size`, `containsKey`).
**offline vs. online DPLL(T)** — Offline invokes the theory solver only on full Boolean assignments; online consults it on partial assignments during search for earlier pruning.
**omega combinator** — (λx. x x)(λx. x x); β-reduces to itself forever, demonstrating non-termination in the lambda calculus.
**one-to-one (injective)** — A function mapping distinct inputs to distinct outputs.
**one-way function** — A function computable in polynomial time whose inverse requires exponential time; the basis of public-key cryptography.
**"one of" vs. "each of" type** — A "one of" type (variant/option) holds exactly one of several alternatives; an "each of" type (tuple/record) holds all its components at once.
**onto (surjective)** — A function whose range is all of the codomain — every element of B is hit.
**ON vs WHERE** — In an inner join the `ON` predicate behaves like `WHERE`; the distinction matters for outer joins.
**opaque** — Describing an implementation change invisible to clients because the signature uses an abstract type.
**open / read / write / close / lseek** — The POSIX I/O system calls, lower-level unbuffered counterparts to the C stdio `f*` functions.
**open addressing** — Collision resolution placing a colliding item elsewhere in the table itself via a probe sequence.
**open classes (reopening a class)** — Ruby's ability to define a class in multiple places, adding methods to existing classes—even built-in ones.
**open term / closed term** — An open term has free variables; a closed term has none. The course restricts to closed terms to sidestep capture.
**operand types** — Immediate (`$`, a constant), Register (`%`), and Memory (`()`, usually dereferenced).
**operating system** — Trusted software that interacts with hardware, manages and protects resources, and abstracts devices behind convenient portable abstractions.
**operational semantics** — Semantics defining meaning as transitions between machine states.
**operator overloading** — Defining how operators (`+`, `<<`, `=`, `->`) behave for user-defined types, as member or nonmember functions.
**optimization** — Transforming code to run faster or use less power/memory/space without changing observable behavior.
**option type** — The type `None | Some of 'a`, used when a result may be absent; OCaml's way of expressing nullable values.
**Optional<T>** — Java 8 wrapper type whose contents may be present or absent; misuse rules are enforceable by a type system.
**ORDER BY** — Sorts a query result by one or more attributes; multiple sort keys break ties left to right.
**order preserving (monotone)** — A function respecting the partial order (x ≤ y ⇒ f(x) ≤ f(y)).
**OSI model / layering** — The software and hardware moving packets is organized into layers (physical, data-link, network, transport, application), each doing part of the work at every hop.
**out-of-order execution / register renaming** — Processor techniques that dynamically reschedule instructions and remap architectural to physical registers, redoing much of the back end's work at runtime.
**out-of-SSA translation** — Removing φ-functions before final code by inserting copies at the ends of predecessor blocks, then cleaning up with copy propagation and coalescing.
**outcome** — A single element of the sample space; one possible result of an experiment.
**outer join** — A join that also keeps unmatched tuples (LEFT/RIGHT/FULL OUTER JOIN), padding missing attributes with NULL.
**output parameter** — A pointer parameter through which a function stores results the caller can read.
**overcounting** — Counting an arrangement multiple times, then dividing out the repetitions to get the correct count.
**overfitting / underfitting** — Two failure modes of a trained model: overfitting matches the training data too closely and generalizes poorly, while underfitting fails to capture the underlying pattern; detected by evaluating on held-out validation and test sets.
**overriding** — A derived class redefining an inherited member function while preserving its interface.
**P vs NP** — The open question of whether P = NP — equivalently whether any NP-Complete problem lies in P — carrying a $1M prize.
**page** — A fixed-size block (e.g. 4 KiB) that virtual and physical memory are divided into; the unit of mapping between them.
**page fault handler** — The OS routine that, on a fault, selects a victim page (writing it back if dirty), loads the required page from disk, updates the PTE, and restarts the instruction.
**page frame** — A page-sized slot of physical memory that holds a virtual page.
**page hit / page fault** — A hit finds the referenced page in physical memory; a fault is an exception raised when it is not, invoking the page-fault handler.
**page table / page table entry (PTE)** — The per-process table mapping virtual page numbers to physical frames; each PTE holds a physical page number plus management bits.
**pairwise vs. mutual independence** — Pairwise independence requires each pair of events independent; mutual independence additionally requires the product rule for every subset.
**parallel composition (c₁ ‖ c₂)** — A concurrency construct whose small-step rules interleave steps of the two commands, introducing non-determinism.
**parallelism** — Executing multiple instructions simultaneously (e.g. on multiple cores) to finish one task sooner; distinct from concurrency, which only requires overlapping execution.
**parallelism (max speedup)** — T₁ / T∞, the greatest possible speedup; beyond it added processors do not help, and its value is set by the span.
**parametric polymorphism** — Generic code operating uniformly on values of any type via type variables (e.g. `'a`); ML was the first language to have it.
**parametricity** — The property that parametrically polymorphic terms behave uniformly over their type variables, so a type alone constrains behavior; broken by features like reflection.
**parse tree (concrete syntax tree)** — The full tree recording every derivation step of a string, including all syntactic detail and the grouping implied by precedence and associativity.
**parser** — The component that translates concrete syntax (a character string) into an AST, resolving ambiguity along the way.
**parsing** — Recovering the syntactic structure (parse tree) of a token sequence, the inverse of derivation; decides whether w ∈ L(G).
**partial application (partial instantiation)** — Supplying only some of a curried function's arguments to obtain a new specialized function (e.g. `let inc = (+) 1`).
**partial correctness** — The reading of {P} c {Q} guaranteeing Q only if c terminates; says nothing about non-terminating runs.
**partially ordered set (poset)** — A set with a binary relation that is reflexive, antisymmetric, and transitive.
**partition (probability)** — A family of subsets pairwise disjoint and together covering the sample space (or an event), used to split a probability calculation into cases.
**partition (quicksort)** — Quicksort's O(n) rearrangement putting all elements less than the pivot on its left and all greater on its right.
**partitioned hash join** — A join that hash-partitions both R and S into buckets on disk, then joins matching buckets in memory using a second hash function.
**pass-by-reference** — Passing a reference parameter that aliases the caller's argument (`void Swap(int& x, int& y)`), giving true call-by-reference.
**path** — A sequence of vertices v0,…,vk with each consecutive pair an edge; a simple path repeats no vertex.
**path condition** — The quantifier-free formula over symbolic inputs encoding the branch decisions taken to reach a program point; solving it yields concrete inputs for that path.
**path coverage** — A metric requiring every path through the branches to be tested; grows exponentially, so branch coverage is usually required instead.
**pattern matching** — Defining a function by cases on how its argument was constructed (matching tuples, list shapes, or constructors and binding sub-parts); cases should be exclusive and exhaustive.
**Peano axioms** — Axiomatization of the naturals as an inductive set: 0 is a natural, and succ(n) is a natural for any natural n.
**peephole optimization** — Replacing a short sequence of adjacent instructions with a faster equivalent sequence.
**PEG / parser combinators** — Parsing Expression Grammars and parser-combinator libraries: formalisms expressing only unambiguous grammars.
**percolate up / down** — Restoring the heap property after insert (up) or deleteMin (down) by repeatedly swapping a node with its parent or smaller child; Θ(log n).
**permutation** — An ordered arrangement of objects; the number of length-k selections from n distinct items is P(n,k) = n!/(n−k)!.
**persistence** — A table (and its tuples) continues to exist after the computer is shut down.
**phantom read** — A read returning different sets of rows within a transaction because another transaction inserted or deleted qualifying rows.
**phase-ordering problem** — The difficulty that optimizations enable and interact with one another, so no single order of passes is best.
**φ-function (phi function)** — A pseudo-instruction at a control-flow merge, `x := φ(x1, x2, …)`, selecting the value from whichever predecessor control arrived from; encoded as an `ite` and removed before code emission.
**phony target** — A make target (e.g. `clean`, `all`) whose command produces no file of that name, so it always runs.
**physical operator** — A concrete algorithm implementing a relational-algebra (logical) operator.
**physical query plan** — A logical plan in which every operator is assigned a physical algorithm.
**pigeonhole principle** — If n items go into k containers and n > k, some container holds at least two (the generalized form: at least ⌈n/k⌉).
**pipelining vs. blocking** — Whether an operator streams its output as it produces it (pipelining) or must fully materialize its input first (blocking).
**pivot** — The element quicksort partitions around; an even split (ideally the median) gives the best behavior.
**placement / allocation strategy** — How the allocator picks a free block: first fit, next fit, or best fit.
**pluggable type-checking** — Adding stronger, user-defined types (specifications) to a language so a static checker can reveal errors, with no effect on execution.
**pointer** — A variable storing a memory address; its size equals the word size, and its type determines the size of the thing pointed at.
**pointer arithmetic** — Arithmetic on address-valued expressions scaled by the size of the target type (e.g. `p+1` on an `int*` advances 4 bytes).
**Poisson distribution** — Models the count of rare events in a fixed interval given rate λ; PMF e^(−λ)λ^k/k!, mean and variance both λ.
**polyhedral model** — A geometric view of linear-arithmetic constraint sets as polyhedra, referenced for compiler-optimization reasoning.
**polymorphism** — Providing one interface to entities of different types; an umbrella covering parametric, ad-hoc, and subtype polymorphism.
**polynomial time** — Running time O(nᵖ) for some constant p; the standard bar for an efficient algorithm.
**port number** — A 16-bit identifier (0–65535) distinguishing the multiple applications on one host.
**POSIX** — The Portable Operating System Interface: a standardized C-level API of lower-level, unbuffered OS calls common across UNIX systems.
**POSIX threads (pthreads)** — The POSIX threading API in `pthread.h`; `pthread_create` starts a thread, `pthread_join` waits for and collects its result, `pthread_detach` self-cleans.
**postcondition** — The facts a function/command is required to make true of its output (written `@returns`), given the precondition held; the Q of a Hoare triple.
**power set** — The set of all subsets of a set A.
**powerset domain** — An abstract domain whose elements are sets of concrete values (e.g. the powerset of the integers).
**precedence** — Which operators bind more tightly and are evaluated first; encoded by how deep a rule sits in the grammar (one nonterminal per precedence level).
**precedence graph** — A graph with one node per transaction and an edge for each conflicting pair; the schedule is conflict-serializable iff this graph is acyclic.
**precision (analysis)** — |TP| / (|TP| + |FP|): the fraction of alarms that are real faults; also, tightness of an estimate.
**precision vs. accuracy (numeric)** — Precision is the count of bits used to represent a value; accuracy is how close the represented value is to the true value.
**precondition** — The facts the caller must guarantee about the inputs (written `@requires`/`invalid_arg`); the function has no obligation on inputs violating it. The P of a Hoare triple.
**predicate** — A function taking one or more arguments and returning a Boolean, used as a test (e.g. by `filter`) or a query (e.g. Prime(x)).
**predictive parser** — An LL parser choosing the correct production using only the next input symbol(s), without backtracking.
**pre-coloring** — Fixing certain interference-graph nodes to specific registers in advance to honor dedicated registers (argument/return) mandated by the calling convention.
**prefix sum (scan)** — Computing an output array whose index i holds the sum of all input values up to i; done in parallel by a two-pass tree algorithm.
**premise / conclusion** — The statements above the line (premises) justifying the statement below (conclusion) in an inference rule.
**preservation (subject reduction)** — Lemma: if a well-typed term steps, the result is well-typed at the same type.
**primary clustering** — The self-reinforcing feedback in linear probing where contiguous occupied blocks grow as λ approaches 1.
**primary key** — The one key SQL requires a table to designate among candidate keys, declared with `PRIMARY KEY`.
**prime number** — An integer greater than 1 whose only positive divisors are 1 and itself.
**primitive operation** — A basic counted step (+, −, comparison, array index, .length) whose occurrences are summed as an expression in the input size.
**primitive recursion** — Recursion only on the immediate sub-arguments of a constructor, so each call is smaller; one way to guarantee termination.
**primitive types** — C's built-in scalar types (char, int, float, double) plus size/sign modifiers; sizes can vary by platform.
**principle of induction** — The justification that proving the base case and inductive step establishes P(n) for all n.
**principle of inclusion-exclusion** — A formula for a union's size that alternately adds single-set sizes, subtracts pairwise intersections, adds triple intersections, and so on.
**principle of longest match** — The scanning rule that at each point the scanner takes the longest string forming a valid token (so `!=` is one token).
**Prim's algorithm** — Grows an MST from a start vertex, repeatedly adding the minimum-weight edge from the tree to a vertex outside it; O(|E| log |V|) with a heap.
**prior / posterior** — The prior is a hypothesis's probability before evidence; the posterior is its updated probability after applying Bayes' theorem.
**priority queue ADT** — A collection giving quick access to and removal of the top-priority item, with insert, deleteMin/extract, and isEmpty.
**privileged vs. unprivileged mode** — The CPU runs user processes unprivileged and the OS privileged; only privileged code may touch hardware, enforcing isolation.
**Proc / lambda** — A Ruby block reified into a first-class object via `lambda`, storable in a variable and invoked with `call`.
**procedural abstraction** — Hiding a function's implementation behind its specification: the caller reads only the spec and promises valid inputs.
**procedural (imperative) language** — A language (C/C++/Java) organized around functions that computes by changing mutable state; descends from Turing's machine model. C has no objects, methods, or classes.
**procedure** — Scheme's term for a function.
**process** — An OS container holding a program's address space, open resources, and execution state, isolated from other processes and giving the illusion of its own control flow.
**process ID (PID)** — The unique identifier assigned to each process; a forked child receives a new PID.
**process isolation** — Separate address spaces, privilege levels, and fault containment protecting processes from each other and the kernel from user processes.
**producer** — An ADT method (on an immutable type) returning a new object rather than modifying the receiver (e.g. `cons`, an enqueue returning a new queue).
**production** — A grammar rule α ::= β rewriting a nonterminal α by the sequence β of terminals and nonterminals.
**profile-directed compilation** — Using dynamic profiles to guide static optimization (loop unrolling, inlining, dispatch reordering).
**profiling** — A dynamic analysis measuring run-time or memory behavior of executions.
**program** — A set of instructions for a computer to carry out; running (executing) the program is the act of performing those instructions.
**program analysis** — Techniques for answering "what does your program do, and how do you know?" by reasoning about behavior, statically or dynamically.
**program counter (%rip)** — The register holding the address of the next instruction to execute.
**program slicing** — Determining which computations could affect a value; done statically via reachability over a dependence graph or dynamically via tracing.
**program state** — The values of all variables at a point in execution; assertions make claims about the state.
**program synthesis** — Automatically discovering a program P satisfying a specification φ on all inputs, drawn from a space of candidate programs.
**programmatic test** — Test code that tests other code, re-runnable automatically whenever the code changes (e.g. Mocha with `assert.strictEqual`).
**programming language** — A systematic set of rules for describing computations in a form humans can write and edit and a computer can carry out (e.g. Java).
**progress** — Lemma: a well-typed term is either a value or can take a step (it is never stuck).
**projection (Π)** — `Π_attrs(R)`: keeps only the listed attributes (with duplicate elimination under set semantics).
**prologue / epilogue** — The instruction sequences at a function's entry (set up the frame) and exit (tear down the frame and return).
**proof** — A rigorous argument establishing a statement, presented as a sequence of justified steps.
**proof by calculation** — Proving an equation or inequality by a chain of `=`/`≤` steps, each justified by a known fact or definition.
**proof by cases (case analysis)** — Splitting a proof into exhaustive cases (or on a value's constructors) and proving the claim in each.
**proof by contradiction** — Proving p by assuming ¬p and deriving a contradiction, forcing p to hold.
**proof by contrapositive** — Proving p → q by instead proving its equivalent contrapositive ¬q → ¬p.
**proof by deduction (semantic argument)** — Proving validity/unsatisfiability by applying sound proof rules over an assumed interpretation until a contradiction appears in every branch.
**proof tree (derivation)** — A tree of inference-rule applications justifying a judgment such as a big-step evaluation.
**property** — A set of states P ⊆ S, equivalently a predicate over states.
**proposition** — A well-formed statement that has a truth value (true or false); the basic object of propositional logic.
**propositional formula** — A formula built from propositional variables and the connectives ¬, ∧, ∨, →, ⟺.
**propositional variable** — A symbol (p, q, r, s) standing for an arbitrary proposition.
**protocol** — A standardized set of rules for the format, meaning, sequencing, and error handling of messages between systems; roughly a network API.
**pruning (search)** — Recognizing that a partial solution cannot lead to a valid answer and skipping (not exploring) that branch of the search, saving work in backtracking.
**pseudo-Boolean constraint** — A linear constraint over 0/1 variables (e.g. a₁x₁ + … ≥ b) accepted by pseudo-Boolean solvers in addition to CNF.
**pseudocode** — An informal, plain-language outline of how a method or algorithm will work, written to plan a solution before committing it to real code.
**public inheritance** — The usual C++ form (like Java `extends`): non-private base members keep their access, but constructors, destructor, copy ctor, and operator= are never inherited.
**pure object-oriented language** — A language in which every value is an object, including numbers; `3 + 4` is the message `+` sent to the object `3`.
**pure virtual function** — A virtual function with no implementation (`= 0;`), to be implemented by derived classes; C++'s abstract method.
**purification** — Rewriting a mixed formula into an equisatisfiable conjunction where each conjunct is pure in one theory, introducing fresh constants for alien subterms.
**push / pop** — Instructions that store a value onto the stack (decrement %rsp, write) or remove one (read, increment %rsp).
**quadratic probing** — Open addressing trying i+1², i+2², … (mod length); with a prime size and λ < ½ it finds a slot within length/2 probes, avoiding primary clustering.
**quantifier** — A symbol indicating how a variable ranges over the domain: universal (∀) or existential (∃).
**quantifier-free (ground) fragment** — The subset of FOL without quantifiers; the fragment most SMT solvers decide efficiently.
**query (verify / solve / synthesize)** — The three solver-aided queries: `verify` finds a failing input, `solve` finds values satisfying the assertions, `synthesize` fills holes to make the program correct for all inputs.
**query optimization** — Transforming a logical plan into an equivalent, least-cost physical plan.
**queue ADT** — A First-In-First-Out collection with enqueue, dequeue (remove the oldest), and isEmpty.
**quicksort** — Divide-and-conquer sort picking a pivot, partitioning around it, and recursively sorting each side; Θ(n log n) average (analyzed with indicator variables and linearity of expectation), Θ(n²) worst.
**quote** — The Scheme special form (abbreviated `'`) returning a symbol or list literally instead of evaluating it, distinguishing code from data.
**race condition** — A defect where the result depends on the timing/interleaving of concurrent threads; a correct program must produce the right answer regardless of scheduling.
**Racket** — The Lisp/Scheme-descended host language ("a language for making languages") that Rosette extends with symbolic constructs via macro-based metaprogramming.
**radix sort** — Non-comparison sort bucket-sorting by one digit at a time from least to most significant; Θ(digits · (n + b)).
**RAII (Resource Acquisition Is Initialization)** — The C++ idiom of acquiring a resource in a constructor and releasing it in the destructor when the object goes away.
**randomized algorithm** — An algorithm making random choices during execution; its running time and/or correctness are analyzed probabilistically.
**range** — The set of outputs actually attained by a function.
**reachability (garbage collection)** — A heap block is reachable if it can be reached by following pointers from root nodes (registers, stack, globals); unreachable blocks are garbage.
**reachability (transition systems)** — A state s is reachable if some initial state s₀ satisfies s₀ →* s.
**reachability analysis** — Determining which code can execute; used for dead-code elimination.
**reaching definitions** — A forward may-analysis computing, for each point, the definitions that can reach it without an intervening redefinition.
**readonly** — A TypeScript annotation (`readonly`, `ReadonlyArray`) preventing modification of a value; a compile-time-only check, not a runtime guarantee.
**reaping / zombie / orphan** — A terminated (zombie) process holds resources until reaped by its parent's `wait`/`waitpid`; an orphan whose parent died is reaped by init (PID 1).
**recall** — |TP| / (|TP| + |FN|): the fraction of real faults that are reported.
**record type** — A type built from named fields (e.g. `{x: bigint, y: bigint}`); parts are distinguished by name, and field order does not matter in math.
**recursion** — Defining a function in terms of itself; the primary looping mechanism in functional languages (requiring `let rec`), where each call gets its own stack frame.
**recursive backtracking** — Exhaustive search that shares a mutable accumulator across recursive calls, following a "choose, explore, un-choose" pattern: apply an option, recurse, then undo it before trying the next.
**recursive case** — The part of a recursive method that reduces the problem to a smaller subproblem, makes the recursive call, and combines the results; complements the base case.
**recursive definition / recursively defined set** — A definition giving a basis plus recursive rules that build new elements (e.g. strings, binary trees), so every element is reached in finitely many steps.
**recursive descent parsing** — A top-down parser with one procedure per grammar nonterminal, each matching its nonterminal against the input; the earliest parser type still in wide use.
**recursive equation** — A definition mentioning the thing being defined (e.g. the naive while-loop denotation); may fail to have a solution.
**recursive type** — A variant type defined partly in terms of itself, such as a binary tree.
**red-black tree** — A BST variant with more relaxed shape rules than AVL: somewhat taller but moving nodes less often; used by Java's TreeMap.
**reduce / reduction** — Collapsing a collection to a single value using an associative binary combining function, so subresults can be merged in any grouping in parallel.
**reduce (parser action)** — Replacing the right-hand side β on top of the LR stack with its left-hand-side nonterminal A, using production A ::= β.
**reduced grammar** — A grammar in which every production is used in some derivation (no useless productions).
**reduce-reduce conflict** — An LR state where two different reductions both apply, a form of parsing conflict.
**reduction (between problems)** — Showing one problem is at least as hard as another by transforming instances of one into the other; used to spread undecidability and NP-hardness.
**re-entrant (recursive) lock** — A lock recording its holding thread and a count, letting that thread re-acquire without blocking and freeing only when the count returns to 0.
**reference** — An alias (another name) bound to an existing variable at initialization; mutating the reference mutates the aliased variable. Introduced by C++.
**reference counting** — An ownership/GC strategy tracking how many references share heap data, deallocating it only when the count reaches zero.
**reference cycle** — Two or more `shared_ptr`s referencing each other in a loop, so their counts never reach zero and the objects leak.
**reference equality** — What `===` (Java `==` on objects) tests: whether two references point to the same object in memory, as opposed to structural or abstract-state equality.
**reference semantics** — The treatment of object types (arrays, `ArrayList`, `Scanner`, …) in which a variable stores a reference to a value in memory, so assignment copies the reference and two variables can share (alias) one underlying object; contrasted with value semantics.
**referential integrity constraint** — A foreign-key constraint requiring that referenced values exist in the target table, enforced with update/delete policies.
**referential transparency** — The property that a call can be replaced by its result (so `f(x)+f(x)` equals `2*f(x)`); holds only for functions with no side effects.
**refactoring** — Restructuring existing code without changing its external behavior.
**reflection** — A program's ability to inspect itself at run time, e.g. asking an object for its class or methods.
**reflexive / symmetric / transitive relation** — Standard properties of a relation: reflexive (every element related to itself), symmetric (holds both ways), transitive (relatedness chains compose).
**reflexive transitive closure (→*)** — The multi-step ("step-star") relation; s₁ →* s₂ means s₁ reaches s₂ in zero or more steps.
**register** — A small fast processor storage location holding about a word of data, accessed far faster than memory; x86-64 has 16 general 64-bit registers plus %rip.
**register allocation** — Mapping the unbounded virtual registers of the IR down to the machine's K physical registers, informed by liveness analysis.
**regular expression** — A pattern over an alphabet built from primitives (character, ε, ∅) and operators concatenation, alternation (|), and Kleene star (*); specifies token structure and regular languages.
**regular language** — A language specifiable by a regular expression and recognizable by a finite automaton; the level used for scanners.
**rehashing** — When λ grows too large, allocating a larger (still prime) array and re-inserting all items so they land at new indices.
**relation (table)** — A named, flat collection of tuples of the same shape.
**relational algebra** — A set of operators over relations providing the logical query plan a SQL query compiles into.
**relational model** — Codd's model storing data in simple flat relations, retrieved via a set-at-a-time query language, with no prescription of physical representation.
**relationship** — An association relating entities from two or more entity sets; may itself carry attributes.
**relaxation / decreaseKey** — Lowering a vertex's recorded best distance (and its priority-queue key) when a shorter path to it is discovered.
**relocation table** — A list of code locations whose final addresses the linker must fix up once the executable layout is known.
**reliable byte stream** — The abstraction TCP presents: an ordered, gap-free flow of bytes between two endpoints.
**Rename (ρ)** — Renames a relation or its attributes so operators can refer to them unambiguously.
**REPL (read-eval-print loop)** — An interactive top-level that reads an expression, evaluates it, prints the result, and loops; pioneered by Lisp.
**replacement policy (LRU)** — The rule for choosing which cache block to evict when a set is full; caches typically approximate Least Recently Used.
**representation exposure** — Leaking an alias to an ADT's mutable internal data, letting clients break the rep invariant from outside.
**representation invariant (RI)** — The facts about field values that must always hold; the constructor must establish it and every mutator must preserve it.
**requirements engineering** — The software-engineering task of eliciting, specifying, and managing what a system must do.
**resolution** — A proof rule deriving (α ∨ β) from clauses (α ∨ x) and (β ∨ ¬x); repeated resolution deriving the empty clause proves unsatisfiability.
**resource analysis** — Measuring an algorithm by a function mapping input size to a count of resources used, so algorithms can be compared before coding.
**return address** — The address of the instruction after a `call`, pushed on the stack so the callee knows where to return.
**Rosette** — A solver-aided programming language, built on Racket, that lifts a subset of the host language to operate on symbolic values and compiles queries to SMT.
**rotation** — A local left/right restructuring that rebalances an AVL subtree after an insert/delete while preserving the BST order property.
**rounding** — Approximating a real value to the nearest representable float; floating-point arithmetic is not associative because of rounding.
**RSA encryption** — A public-key cryptosystem built on modular exponentiation, large primes, and modular inverses, with a public and a private key.
**rule inversion** — Reasoning backward from a derivation's conclusion to which rule(s) must have produced it and their premises; used in soundness proofs.
**rule of consequence** — The Hoare rule allowing one to weaken the precondition and strengthen the postcondition, giving logical wiggle room.
**Rule of Three** — If you define any one of the destructor, copy constructor, or assignment operator, you normally should define all three.
**rule/pattern-based analysis** — Static analysis matching code against bug patterns (e.g. PMD, FindBugs).
**safety vs. liveness** — Safety says "nothing bad happens" (checkable on finite executions); liveness says "something good eventually happens."
**sample mean** — The average of n i.i.d. observations, itself a random variable concentrating around the true mean as n grows.
**sample space (Ω)** — The set of all possible outcomes of a random experiment.
**SAT (satisfiability)** — Deciding whether a Boolean formula (usually in CNF) has an assignment making it true; NP-complete, and the target of highly optimized SAT solvers.
**Satisfiability Modulo Theories (SMT)** — Deciding satisfiability of first-order formulas whose symbols are constrained by a background theory (arithmetic, arrays, bitvectors); F is (un)satisfiable/valid modulo T relative to that theory's models.
**scanner (lexer)** — The front-end phase translating the input character stream into tokens and reporting lexical errors, skipping whitespace and comments.
**scanner generator** — A tool (Lex, Flex, JFlex) building a scanner automatically from a set of regular expressions.
**schedule** — An interleaving of the read/write operations of several concurrent transactions.
**schema** — The type of the data: the relation name plus its attribute names and types.
**scientific / normalized notation** — Writing a number as numeral × base^power with exactly one nonzero digit left of the (binary) point.
**scope** — A region of the program with its own bindings/symbol table; nested scopes are searched from innermost outward, and a bound variable refers to its binder within the binder's scope.
**scope of optimization** — The extent an optimization examines: peephole, local (a basic block), intra-procedural (a function), or inter-procedural (whole program).
**scripting language** — A language (Perl, Python, Ruby) suited to quickly writing server-side and glue code.
**search space** — The set of all candidate plans for a query; huge, so optimizers restrict it (e.g. to left-deep plans).
**segmentation fault (SIGSEGV)** — The fault/signal raised when a program accesses memory it may not (e.g. dereferencing NULL); the "good" failure because it stops corruption early.
**selection (σ)** — `σ_pred(R)`: keeps the tuples of R satisfying a predicate.
**selection sort** — Repeatedly find the next-smallest element and swap it into place; Θ(n²) best and worst; in place.
**selectivity factor (θ)** — The fraction of tuples expected to satisfy a predicate; for `σ_{A=const}`, θ = 1/V(R,A).
**self-finitizing (bounded loops)** — The requirement that loops and recursion terminate under concrete guards or bounds on symbolic data, so symbolic evaluation halts.
**self join** — A join of a table with itself, using two different aliases.
**SELECT-FROM-WHERE** — The basic SQL query form: `SELECT` chosen attributes, `FROM` tables, `WHERE` a filter condition.
**semantic action** — Code attached to a production that runs during parsing to build the AST node for that rule via structural recursion.
**semantics** — What programs mean — how they behave and evaluate — often given by evaluation rules mapping expressions to values.
**sentinel loop** — An indefinite loop that repeats until a special sentinel value signals it to stop; the sentinel marks the end of input and is not processed as data.
**separate chaining** — Collision resolution storing a secondary structure (e.g. a linked list) at each index and searching within it.
**sequential access** — Reading consecutive blocks, cheaper than scattered reads; why clustered indexes and full scans can be efficient.
**sequential cutoff** — A problem-size threshold below which a divide-and-conquer parallel algorithm switches to sequential work.
**sequential execution** — Processing one task fully before the next; simple but performs poorly because clients queue and the CPU idles on I/O.
**serial schedule** — A schedule where every operation of one transaction precedes all of the next (no interleaving); by definition safe.
**serializable schedule** — A schedule equivalent in effect to some serial schedule; the goal of concurrency control.
**set** — An unordered collection of distinct elements; `x ∈ S` means x is an element of S.
**set!** — Scheme's mutating assignment changing an existing binding's value; the trailing `!` marks a mutating procedure by convention.
**set / conditional jump instructions** — Instructions (je, jne, jg, sete) that branch or set a byte based on the condition codes after a cmp/test.
**set-associative / fully-associative cache** — A cache with E > 1 blocks per set (set-associative), or a single set holding all blocks (fully-associative).
**set-builder notation** — Defining a set by a property, e.g. { x : P(x) }.
**set difference** — A \ B is the set of elements in A that are not in B.
**set equality** — A = B iff A ⊆ B and B ⊆ A (proved by showing both containments).
**set semantics / bag semantics** — Under set semantics tuple order does not matter and duplicates are not allowed; bag semantics permits duplicates and is SQL's default.
**shadowing** — An inner-scope binding that hides an outer binding of the same name.
**shallow copy** — A member-by-member copy; when a member is a pointer it copies only the pointer, the bug motivating user-defined copy/assignment.
**shallow vs. deep embedding** — Two ways to host a guest language: a library (shallow) embedding reuses host constructs directly, while an interpreter (deep) embedding gives the guest explicit semantics.
**shared address space** — Threads in a process see the same heap, globals, and code and communicate through shared memory (each still has its own stack).
**shift (parser action)** — Pushing the next input token onto the LR stack and advancing the scanner.
**shift operations** — Moving a bit vector left (×2^n) or right (÷2^n); a logical right shift fills 0s (unsigned), an arithmetic right shift replicates the sign bit (signed).
**shift-reduce conflict** — An LR state where the automaton could either shift or reduce on the same input, indicating the grammar is not LR for that construction.
**short read / partial read** — `read` may return fewer bytes than requested (0 at EOF, -1 on error), so robust code loops until all bytes are read.
**short-circuit evaluation** — `&&`/`||` skipping the second operand once the result is determined by the first (e.g. `p && *p`); implemented with a conditional jump, and affecting side effects and errors.
**side effect** — Any observable effect of a function beyond its return value, such as changing a global variable or producing output.
**sign and magnitude** — A signed scheme using the MSB as a sign bit and the rest as magnitude; not used in practice due to two zeros and awkward arithmetic.
**sign extension** — Widening a value by replicating the old sign bit into the new high bits (used for signed) to preserve value.
**sign / exponent / mantissa fields** — The three bit fields of an IEEE float: value = (−1)^S × 1.M × 2^(E−bias).
**signal** — A standardized higher-level inter-process message that triggers specific handling in a process (e.g. SIGSEGV, SIGINT).
**signature (logic)** — The set of constant, function, and predicate symbols available; logical symbols (connectives, =) versus non-logical (theory) symbols.
**signature (module)** — OCaml's module-interface form (`sig ... end`) abstractly describing what a structure exposes; unlisted items become effectively private.
**signed integer** — An encoding of negative and non-negative values; two's complement range −2^(w−1) to 2^(w−1) − 1.
**simple graph** — A graph with no self-edges and no duplicate edges between the same pair.
**simplify-and-color heuristic** — The Chaitin/Briggs method repeatedly removing low-degree interference-graph nodes onto a stack, then coloring them back in reverse, spilling when none remain.
**simply typed lambda calculus (STLC)** — The lambda calculus extended with a type system of base types and function types; the "essence of type systems".
**single-source shortest path** — Given a start vertex s, find for every vertex v the least-weight path from s to v, δ(s,v).
**Singleton** — A creational pattern reusing a single shared instance instead of constructing a new object each time (safe only for immutable types).
**size suffix** — A letter on an instruction naming operand width: b (1), w (2), l (4), q (8 bytes).
**sizeof** — A compile-time operator giving the size in bytes of a type or object, used to compute allocation sizes.
**sketch** — A partial program with holes (`??`) giving the desired shape; the synthesizer fills the holes to meet the specification.
**SLR (Simple LR)** — An LR variant that reduces via `[A ::= β .]` only when the next token is in FOLLOW(A), filtering out some invalid reductions.
**small-step operational semantics** — Semantics giving one small transition (v, c) → (v′, c′) at a time, where the command component acts like a program counter.
**smart pointer** — A class behaving like a raw pointer but automatically managing heap memory, tying the pointed-to object's lifetime to the smart pointer.
**socket** — A file descriptor used for network communication; UNIX makes network I/O look like file I/O, so `read`/`write` send and receive bytes.
**sockets API (Berkeley/POSIX)** — The standard C network API from 4.2BSD: `socket`, `connect`, `bind`, `listen`, `accept`, `read`/`write`, `close`.
**socket() / connect()** — `socket()` creates a socket and returns a descriptor; the client's `connect()` drives the TCP handshake to a remote address.
**soundness** — A type system, proof system, or analysis is sound if it never gives a wrong guarantee: it never accepts a program that would commit the errors it rules out / has no false negatives / every provable statement truly holds.
**sound (safe) approximation** — An abstract result that never contradicts the concrete behavior; "sound" and "safe" approximation are synonyms.
**source code** — The human-written, human-readable instructions that make up a program before it is compiled or run; also simply called "code."
**spaceship operator (<=>)** — Ruby's three-way comparison method; defining it and mixing in `Comparable` supplies `<`, `<=`, `>`, `>=`, `between?`.
**span — T∞(n)** — The running time on infinitely many processors: the longest chain of dependent steps (critical path length / computation depth).
**spanning tree** — A tree connecting all of a graph's vertices using exactly |V|−1 acyclic edges.
**special form** — A syntactic construct (like `define`, `if`, `quote`) that does not evaluate all its arguments the way an ordinary procedure call does.
**specification** — A precise statement of intended program behavior (a precondition on inputs and a postcondition on outputs); correctness is judged against it.
**specification checking** — Verifying a program against a specification: statically via theorem proving, dynamically via assert statements.
**specification generation** — Producing specifications: statically by hand or abstract interpretation, dynamically by invariant detection.
**specification statement** — Morgan's refinement-calculus construct describing a computation by its pre/post relation rather than its code, refined step-wise into an implementation.
**speedup** — T₁ / T_P, how much faster P processors run than one; perfect linear speedup is T_P = T₁/P.
**spilling** — Moving a value out of a register to memory (with inserted loads/stores) when more than K values are simultaneously live.
**splitting** — Dividing a chosen free block, giving part to the request and returning the remainder to the free list.
**SQL (Structured Query Language)** — A declarative, set-at-a-time language for relational databases: you describe what data you want and the system decides how to compute it.
**SQLite lock modes** — SQLite's concrete lock progression — shared/read, reserved, pending, and exclusive (to commit) — illustrating locking-based concurrency control.
**stable sort** — A sort preserving the original relative order of equal elements; merge sort is stable.
**stably infinite theory** — A theory in which every satisfiable quantifier-free formula has a model with an infinite universe; a precondition for Nelson–Oppen combination.
**stack ADT** — A Last-In-First-Out collection with push, pop, peek, and isEmpty.
**the stack** — The last-in-first-out region of memory holding per-function-call data (stack frames), automatically allocated/freed on call and return; grows toward lower addresses.
**stack canary** — A guard value placed between a buffer and the return address, checked before returning to detect overflow.
**stack frame** — The per-invocation region a call pushes on the stack, holding the return address, saved registers, local variables, and spilled/outgoing arguments.
**stack machine / stack machine code** — A simple abstract machine and linear IR operating on an implicit operand stack (push/add/store), eliminating names for intermediates; used by the JVM, CIL, and p-code.
**stack overflow** — Exhausting the stack region (e.g. via unbounded recursion) so it grows past its limit.
**stack pointer (%rsp) / base (frame) pointer (%rbp)** — %rsp points to the top of the runtime stack; %rbp points to a fixed offset in the current frame relative to which locals are addressed.
**stack smashing / code injection** — An exploit overflowing a stack buffer to overwrite the return address, redirecting execution into attacker-supplied machine code.
**standard deviation** — The square root of the variance, giving spread in the same units as the random variable.
**standardization (z-score)** — Transforming a random variable to mean 0 and standard deviation 1 by subtracting its mean and dividing by its standard deviation.
**stars and bars** — A method counting the ways to distribute k identical items into n distinct bins, using "stars" for items and "bars" as dividers.
**state** — A configuration of a finite automaton; the machine changes state as it reads input.
**statelessness** — HTTP's request/response model keeps no state across connections; sessions (e.g. cookies) are layered on top.
**statement** — A single command to be executed by a program, typically terminated by a semicolon (e.g. an assignment or a method call).
**statement coverage** — The fraction of statements executed by at least one test.
**static analysis** — Analysis reasoning about a program without executing it, building an abstraction of run-time states over an abstract domain; typically sound but conservative.
**static checking** — Anything done to possibly reject a program after it parses but before it runs.
**static/global vs. automatic allocation** — Globals and statics live in the data segment (allocated at process start, freed at exit); locals are automatic, allocated on stack entry and freed on return.
**static single assignment (SSA)** — An IR in which each variable is assigned exactly once, giving immutable, math-like names that simplify analysis; uses φ-functions at control-flow merges.
**static typing** — Ruling out bad programs by type-checking without running them.
**static vs. dynamic error** — A static error is caught by the compiler without running the program (type errors, undefined variables); a dynamic error occurs at runtime for particular inputs.
**static vs. dynamic type** — The static (compile-time) type is what the checker reasons about; the dynamic (runtime) type is the object's actual class.
**static vs. shared libraries** — Static libraries (`.a`) are linked into the executable at build time; shared libraries (`.so`) are loaded and linked at load/run time.
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
**STL (Standard Template Library)** — The part of the C++ standard library providing containers, iterators, and algorithms, all built from class templates.
**stochastic search** — Synthesizing by randomly mutating candidate programs, accepting mutations with probability tied to fit, trading guarantees for scalability.
**store by value** — STL containers store copies: inserting copies the object and rearranging makes more copies.
**straight from the spec** — Code obtained by directly translating an imperative specification into code, minimizing opportunities for mistakes.
**strace** — A Linux utility printing the sequence of system calls a process makes.
**stream** — stdio's abstraction of a sequence of characters flowing to/from a device, buffered by default and manipulated through a `FILE*`.
**stream vs. datagram socket** — A stream socket is connection-oriented, reliable, point-to-point (TCP); a datagram socket is connectionless, unreliable, one-to-many (UDP).
**strength reduction** — Replacing an expensive operation with a cheaper equivalent (e.g. multiply by a power of two with a shift).
**strengthening the inductive hypothesis** — Proving a more general (inductive) lemma and specializing it to the desired theorem; a recurring PL proof pattern.
**string** — A finite, possibly empty sequence of symbols drawn from an alphabet.
**string interning** — Keeping a single shared copy of equal string literals so `==` comparisons succeed; a Java optimization enabled by string immutability.
**string interpolation** — Embedding an expression in a string (e.g. Ruby `#{...}`), whose value is converted to a string; later borrowed by Python as f-strings.
**string literal** — A double-quoted constant automatically stored as a char array with space for `'\0'`; cannot be modified in place.
**strong induction** — Induction whose inductive hypothesis assumes P holds for all values from the base up to k, to prove P(k+1); may require multiple base cases.
**stronger / weaker (assertion)** — One assertion is stronger than another if it holds in a subset of the states (and thus implies it); the strongest is `false`, the weakest `true`. Weakening enlarges the state set; strengthening shrinks it.
**structural induction** — Proving a claim for every value of an inductive type by proving it for the base constructor(s) and for each recursive constructor assuming it holds for the substructures.
**structural recursion** — Recursion that only calls itself on strictly smaller parts of its input, which guarantees termination; the dominant pattern for AST passes.
**structural sharing** — Reusing the nodes of an existing immutable list rather than copying, making operations like `::` cheap and safe.
**structural vs. nominal typing** — Structural typing (TypeScript) makes two types interoperable when they have the same shape; nominal typing (Java) requires the declared type names to match.
**structure (module)** — OCaml's concrete module form (`module M = struct ... end`) grouping definitions together.
**structure / interpretation (universe)** — M = ⟨U, I⟩ pairing a universe U of values with an interpretation I mapping each symbol to an element, function, or relation over U.
**struct** — A C datatype grouping named fields (like a class but with no methods); laid out contiguously, assignable and passable by value.
**struct alignment / padding** — Rules keeping each field aligned to its size and the total size a multiple of the largest alignment, inserting padding; reordering fields can shrink a struct.
**struct sockaddr / sockaddr_in / sockaddr_in6 / sockaddr_storage** — Socket address structures: the protocol-independent `sockaddr`, the IPv4 and IPv6 variants, and `sockaddr_storage` large enough to hold either.
**stuck term** — A term that is not a value yet cannot step (e.g. `true (λx. x)`); the semantic notion behind a type error.
**subclass / ISA / inheritance (E/R)** — An entity set that is a subclass of another via `isA`, inheriting its attributes; represented in SQL by separate related tables.
**subclass vs. subtype** — Subclassing is a mechanism for sharing code, which does not guarantee a subtyping relationship; a subclass with a weaker method spec is legal Java but not a subtype.
**subquery** — A query nested inside another, appearing in SELECT (must return one value), FROM (a derived table), or WHERE/HAVING.
**subset (⊆)** — A ⊆ B iff every element of A is also in B.
**subset construction (powerset construction)** — The fixed-point algorithm converting an NFA to an equivalent DFA whose states are sets of NFA states.
**substitutability** — The property that a value of type B may be used wherever a value of type A is expected; the defining criterion of subtyping for ADTs.
**substitution (P[e/x])** — Replacing every free occurrence of x in P by e ("e squashes x").
**substitution lemma** — Lemma that substituting a well-typed term for a variable preserves the term's type; the crux of preservation for β-reduction.
**subtype / subtyping** — A relation where a value of type A can be used wherever a B is expected (an element of a subtype "is a" element of the supertype), e.g. a subclass for its superclass.
**subtype polymorphism** — Letting a term of a subtype stand in for its supertype (a Cat used as an Animal), as in OO inheritance.
**successor (succ)** — The constructor giving the next natural number after n; Peano naturals are 0, succ(0), succ(succ(0)), etc.
**sum rule** — When outcomes split into disjoint cases, the total count is the sum of the counts of each case.
**superkey** — A set of attributes whose closure is all attributes of the relation (it functionally determines every attribute).
**superoptimizer** — A synthesizer that searches for the optimal (lowest-cost) instruction sequence equivalent to a given program (e.g. Denali).
**support (range)** — The set of values a random variable can actually take with nonzero probability.
**swap space** — Disk storage that backs virtual pages not currently resident in physical memory.
**symbol resolution / linkage** — The linker matching each use of a global name to its single definition; names have external (shared) or internal (file-local) linkage.
**symbol table (compiler)** — A map from identifiers to information (types, memory layout, links to code), supporting lookup, insertion, and redirection to wider scopes.
**symbol table (object file)** — A list of a file's labels and data that can be referenced by other files.
**symbolic compiler** — A component translating a program (and its interpreter) into logical constraints; hand-writing one is the "classic hard way" Rosette automates.
**symbolic execution** — Running a program on symbolic inputs, computing a symbolic state and, per path, the strongest postcondition; introduced by King (1976).
**symbolic value** — A placeholder standing for an arbitrary value of its type; queries reason about all its possible concrete instantiations at once.
**symbolic virtual machine (SVM)** — Rosette's engine that symbolically evaluates a program and produces SMT constraints efficiently even for an interpreter.
**symmetric difference (⊕)** — The set of elements in exactly one of A, B (the set analogue of XOR).
**synchronization** — Coordinating concurrent threads so they do not interfere when operating on shared data, e.g. blocking others from a resource while one thread uses it.
**synthesized special members** — The constructor, copy constructor, and assignment operator the compiler generates when you declare none; the synthesized copy/assign do a shallow copy.
**syntactic type safety** — The modern proof method (Wright–Felleisen, Harper) establishing safety via progress and preservation.
**syntax** — How the parts of a language are written; the surface form/structure of a program, given here by an abstract syntax tree.
**syntax error (compiler error)** — A violation of a language's grammatical rules (e.g. a missing semicolon or misspelled keyword) that prevents a program from compiling.
**syntax-guided proof** — A proof proceeding by matching Hoare rules to the program's syntax, never consulting the operational semantics; enables automation.
**syntax-guided synthesis (SyGuS)** — Formulating synthesis as searching a space defined by a syntactic template plus a semantic specification.
**System F** — A parametrically polymorphic typed lambda calculus (Girard 1972, Reynolds 1974); the "essence of parametric polymorphism".
**system call** — The mechanism by which a user-level program requests a service from the OS, crossing from unprivileged into privileged mode.
**system-call dispatch table / handler** — The kernel table mapping each system-call number to its handler routine.
**systems programming** — The skills, discipline, and knowledge needed to build a system, centered on the "layer below" (OS, hardware) using C and C++.
**tag field** — A literal-valued field (e.g. `kind: "cons"`) distinguishing members of a union of record types, enabling type narrowing.
**tag / index / offset** — The three fields an address is split into for cache lookup: index selects the set, tag identifies the block, offset selects the byte.
**tail bound** — An inequality bounding the probability that a random variable deviates far from its mean.
**tail recursion** — A recursive form performing no further computation after the recursive call returns, so it can execute as a loop without growing the stack.
**tautology** — A proposition that is always true, regardless of its variables' values.
**TCP** — Transmission Control Protocol: a transport protocol giving a reliable, ordered, congestion-controlled byte stream by sequencing, retransmitting, and reordering IP packets; connection-oriented (more cost) versus UDP's connectionless thinness.
**template** — A function or class parameterized by a type (or constant), defined once type-agnostically; C++'s form of parametric polymorphism.
**template instantiation** — The compiler generating code from a template only where used, producing a specialized version per type/value argument (and only for methods called).
**terminal** — A concrete token that appears in generated programs (e.g. `if`, `+`); the leaves of a parse tree.
**termination (analysis)** — A property of an ideal analysis: it must halt; abstract interpretation sacrifices completeness/precision to guarantee it.
**termination argument** — Showing a loop finishes by exhibiting a quantity that strictly decreases and is bounded, separate from the partial-correctness invariant.
**termination metric (decreases)** — An annotation giving a well-founded measure that strictly decreases each loop iteration/recursive call, proving termination for total correctness.
**test case** — A chosen input together with the expected answer, where the expected answer is derived from the specification, not from running the code under test.
**test oracle** — The mechanism deciding whether a test's observed output is correct.
**test-driven development (TDD)** — Writing specification-based tests before writing the code that must satisfy them.
**theorem proving** — Static, logical proof that a program satisfies its specification.
**theory** — A set of axioms over a signature; its models are the first-order structures satisfying those axioms.
**theory conflict clause** — The negation of a theory-inconsistent assignment (ideally its minimal unsat core) added as a learned clause to the Boolean problem.
**theory of arrays (T_A)** — A theory with `read` and `write` axiomatized so reading back a written index yields the written value (read-over-write) and arrays are extensional.
**theory of equality with uninterpreted functions (EUF)** — The theory in which = is the only interpreted symbol and all functions/predicates are uninterpreted but must respect congruence.
**theory of fixed-width bitvectors (T_BV)** — A theory of arithmetic and logical operations on k-bit words, modeling machine integers precisely.
**theory propagation (T-propagation)** — Having the theory solver deduce and communicate further implied literals to the Boolean search, tightening it beyond pure BCP.
**theory solver** — A decision procedure for conjunctions of literals in a single theory, invoked by the SAT core in DPLL(T).
**theta-join / eq-join** — A join whose condition is an arbitrary predicate (theta-join) or an equality (eq-join).
**this pointer** — The implicit first argument (a pointer/reference) giving a method the object it operates on; `return *this;` returns the object.
**thread** — An independent sequential execution stream within a process, with its own stack, program counter, and registers, but sharing the process's address space.
**thread pool** — A fixed set of worker threads created at startup that pull tasks from a shared, lock-guarded queue, avoiding per-request creation cost.
**thread-safe** — A property of data structures built to be used correctly from multiple threads without external synchronization.
**thread vs. process tradeoffs** — Processes are isolated and need no language support but are heavyweight; threads are cheaper and share memory but require synchronization and share fate.
**three-address code (3AC/TAC)** — A linear IR whose instructions have the form `x ← y op z`, one operator and up to three names, assuming unbounded temporaries.
**three loop triples** — Loop correctness with invariant I splits into three checks: I holds initially, the body preserves I, and I with the negated condition implies the postcondition on exit.
**Third Normal Form (3NF)** — A normal form weaker than BCNF; mentioned as more complicated and not covered.
**three-valued conditions with NULL** — A WHERE condition evaluating to NULL (neither true nor false) does not pass the filter.
**tombstone deletion** — Marking a removed open-addressing slot with a sentinel that does not stop a find's probe chain but can be overwritten by a later insert.
**token** — An atomic unit of scanner/parser input (a.k.a. word or lexeme), such as IF, LPAREN, or ID(x); tokens may carry associated data.
**Top (⊤)** — A lattice's greatest element, meaning "unknown / could be anything."
**top-down parsing** — Parsing that starts from the start symbol and repeatedly expands nonterminals to match the input, producing a leftmost derivation.
**topological sort / ordering** — An ordering of a DAG's vertices such that every edge (u,v) has u before v; computed by listing vertices in reverse DFS-finish order.
**total correctness** — The stronger reading [P] c [Q] that additionally guarantees c terminates.
**total function** — A function defined for every constructor of its argument type, so it produces a result on all inputs.
**tractable vs. intractable** — Tractable problems are feasibly solvable (often polynomial time); intractable ones are not.
**transaction** — A sequence of reads and writes that must execute as a unit, delimited by `BEGIN TRANSACTION` … `COMMIT`; `COMMIT` makes its effects permanent, `ROLLBACK`/`ABORT` undoes them.
**transfer function** — A function describing how a program statement transforms the (abstract or concrete) state.
**transition** — The move from one automaton state to another on reading a given input symbol.
**transition relation (→)** — The one-step relation of a transition system; s₁ → s₂ means "s₁ steps to s₂".
**transition system** — A model of a program as states S, initial states S₀ ⊆ S, and a transition relation → over S × S.
**transitive closure** — The smallest transitive relation containing a given relation.
**translation lookaside buffer (TLB)** — A small hardware cache of recent page-table entries; a TLB hit avoids the memory access needed to walk the page table.
**translation unit** — A single .c source file plus everything it `#include`s, compiled together into one object file.
**trap (exception)** — A synchronous, intentional exception from executing an instruction (e.g. a system call or breakpoint); execution resumes after it.
**trap into the kernel** — The hardware transition (via a fast-syscall instruction) that raises privilege and jumps to a kernel entry point on a system call.
**tree method** — Solving a recurrence by drawing the recursion as a tree, computing per-level work, and summing across all levels.
**tree pattern matching (tiling)** — Covering the IR expression tree with patterns (tiles), each pairing a target instruction with an IR-tree shape, so a valid tiling generates correct code.
**tree traversal** — Systematically visiting every node: pre-order (Root, Left, Right), in-order (Left, Root, Right — sorted order in a BST), and post-order (Left, Right, Root).
**trie** — A tree-based dictionary keyed on sequences (e.g. strings) that merges shared prefixes to save space; used for text/web search and genomes.
**trivial FD** — An FD X → Y where Y ⊆ X; it always holds.
**true positive / false positive / true negative / false negative** — Analysis outcomes judged against ground truth: an alarm on a real fault (TP), an alarm with no fault (FP), a correct "OK" (TN), and an "OK" missing a real fault (FN).
**truncation** — Dropping the upper bytes when casting a longer type to a shorter one.
**truth table** — A table listing every combination of input truth values and the resulting truth value of a proposition.
**truth value** — The value of a proposition, either true (T) or false (F).
**Tseitin transformation** — A linear-size conversion of an arbitrary formula to an equisatisfiable CNF by introducing fresh variables for subformulas, avoiding the exponential blowup of a direct conversion.
**tuple** — A fixed-size, positionally-distinguished grouping of values, possibly of different types (e.g. `(2, 3)` : `int * int`).
**tuple (row, record)** — A single record in a relation; one horizontal entry of the table.
**tuple-level constraint** — A `CHECK` constraint over several attributes of the same row.
**tuple type** — A type built by position rather than name, e.g. `ℕ ⨉ ℕ` or `[bigint, bigint]`.
**Turing complete** — Describing a computational model powerful enough to express any computation, and thus subject to the halting-problem limitation (e.g. Java, IMP, the untyped lambda calculus).
**two-phase locking (2PL)** — The rule that in every transaction all lock acquisitions precede all unlocks; it guarantees conflict-serializable schedules. Strict 2PL holds all locks until commit/rollback, also ensuring recoverability.
**two's complement** — The signed integer encoding used by modern hardware, where the MSB carries weight −2^(w−1); negation is bitwise complement plus one.
**type** — A classification of data giving meaning to bits and enabling error detection, overloading, and optimization; base/primitive versus constructed/compound types.
**type abstraction (Λα. t)** — A term abstracting over a type, making its body generic in the type variable α.
**type annotation** — Writing an abstraction as λx:T. t to record the argument's type, enabling the term to be typed.
**type application (type instantiation)** — Supplying a concrete type to a type abstraction, t T, yielding the term with α replaced by T.
**type cast vs. coercion** — A cast is an explicitly written type conversion; a coercion is one the compiler inserts implicitly; the type checker discards coercions by making conversions explicit in the IR.
**type checking** — Assigning a type (or an error) to each expression and using types to rule out certain errors, verifying operations are applied to compatible operands.
**type equivalence** — When two types are considered the same: nominal equivalence (same declared name) versus structural equivalence (same constructor and component types).
**type erasure** — Deleting type abstractions and annotations from a typed term, leaving a functionally equivalent untyped lambda term.
**type error** — Interpreting or combining bits inconsistently with their type (e.g. reinterpreting a char array's bytes as an int).
**type hierarchy (subtyping)** — The ordering among type qualifiers, where lower types have fewer values and more properties (e.g. `@Present ≤ @MaybePresent`).
**type inference** — Deducing types without explicit annotations; decidable for ML-style let-polymorphism, undecidable for System F.
**type introduction** — Rules assigning types to newly created values (e.g. `Optional.of(...)` yields `@Present`).
**type narrowing** — Using a runtime check (e.g. `typeof x === "bigint"`) so the type checker refines a union-typed value to a single member type within that branch.
**type qualifier** — An annotation refining a base type (e.g. `@Present`); a type = type qualifier + base type.
**type reconstruction (typability)** — Deciding whether an untyped term is the erasure of some well-typed term; undecidable for full System F, motivating let-polymorphism.
**type rules** — Rules specifying which operations are illegal (e.g. `Optional.get()` only on a `@Present` receiver).
**type safety (type soundness)** — The property that well-typed programs do not commit type errors / get stuck; Milner: "well-typed programs cannot go wrong."
**type synonym** — An alias giving a new name to an existing type (e.g. `type int2 = int * int`).
**type system** — A language's rules for assigning types to terms and statically checking programs, ruling out different classes of errors.
**type variable (α)** — A placeholder type that a polymorphic term abstracts over and that gets instantiated with concrete types.
**typed but unsafe** — C associates types with data but permits casts bypassing type checking, so type safety is not enforced.
**typedef** — A C mechanism giving a synonym (alias) for an existing type, commonly used to name struct types.
**types of misses** — Compulsory (cold) misses on first access, conflict misses when blocks contend for a set, and capacity misses when the working set exceeds the cache.
**typing judgment / typing relation** — The relation Γ ⊢ t : T, "under context Γ, term t has type T", defined by inference rules.
**typing context (Γ)** — A map from variables to their types, extended as `Γ, x : T` when entering an abstraction's body.
**UDP** — User Datagram Protocol: a thin transport over IP providing unreliable, unordered, connectionless datagram delivery, suited to streaming media and DNS.
**UMin/UMax/TMin/TMax** — The extreme representable values: minimum/maximum unsigned and minimum/maximum two's-complement signed integers for a bit width.
**unbiased estimator** — An estimator whose expected value equals the true parameter, so it is correct on average.
**unconditional vs. conditional jump** — `jmp` always transfers control; conditional branches (jCC) transfer control only when a condition holds.
**uncountable set** — A set too large to be listed — no bijection with the naturals exists (e.g. the reals).
**undecidability** — The fact that some problems (and almost any interesting static property) cannot be decided by a procedure that always terminates and is both sound and complete.
**Unicode** — A standard using 1–4 bytes per character to encode a large range of languages and emoji via code points.
**Unique Implication Point (UIP)** — A node on all paths from the current decision level's decision to the conflict; the first UIP (closest to the conflict) gives the shortest useful learned clause.
**unique ownership** — The model where exactly one smart pointer owns a resource, enforced by disabling copying.
**union (∪)** — The set of elements in A or B (or both); in relational algebra, combining two union-compatible relations.
**union bound** — P(A₁∪…∪Aₙ) ≤ Σ P(Aᵢ): the probability at least one event occurs is at most the sum of their probabilities.
**union type** — A type formed from two sets containing every object in either one (e.g. TypeScript `string | bigint`).
**uniformity assumption** — Assuming an attribute's values are uniformly distributed when estimating selectivity.
**unit resolution / Boolean Constraint Propagation (BCP)** — Repeatedly applying resolution with unit (single-literal) clauses to force assignments until a fixed point; the workhorse of SAT solvers.
**unit test** — A test checking one function in isolation on chosen inputs, re-runnable; an example dynamic analysis for checking a specification.
**universal generalization** — The inference rule generalizing a conclusion about an arbitrary element to a "for all" statement.
**universal quantifier (∀)** — ∀x P(x) asserts P(x) is true for every x in the domain; expressed in SQL via `NOT EXISTS` and in Ruby by `all?`.
**universal type (∀α. T)** — The type of a term generic in α; e.g. the polymorphic identity has type ∀α. α → α.
**unnesting** — Rewriting a nested query as an equivalent flat SELECT-FROM-WHERE (sometimes needing a left outer join or aggregation).
**unrepeatable read** — Re-reading a value within a transaction and getting a different result because another transaction changed it.
**unsigned integer** — An encoding of only non-negative values using base-2 weights; range 0 to 2^w − 1.
**untyped (pure) lambda calculus** — The lambda calculus with no type system; every syntactically well-formed term is admitted.
**unwinding** — Unrolling a loop a fixed number of times and adding an unwinding assertion flagging executions needing more iterations than the bound.
**upcasting / downcasting** — Casting up a hierarchy (base pointer from a derived object) is safe; casting down is dangerous, where `dynamic_cast`'s run-time check matters.
**vacuous truth** — An implication true because its hypothesis is false, so the conclusion is irrelevant.
**Valgrind** — A tool used to detect memory errors and leaks (`valgrind --leak-check=full`).
**valid bit** — A per-cache-line bit indicating whether the cached block holds meaningful data.
**validity** — A formula is valid iff every interpretation models it (equivalently ¬F is unsatisfiable); a Hoare triple is valid when the proposition it states is true.
**valuation (variable map)** — A function mapping variable names to values, threaded through the semantics of a language with variables.
**value** — A fully evaluated result that cannot be reduced further (e.g. `13`, `"hello"`, an abstraction); the final result of evaluation.
**value semantics** — The treatment of primitive types (`int`, `double`, `boolean`) and Java Strings in which a variable holds the value itself, so assignment copies the value and the two variables are independent; contrasted with reference semantics.
**variable capture** — The error of a substitution turning a previously free variable into a bound one, changing meaning; avoided by renaming.
**variance (Var(X))** — A measure of spread, 𝔼[(X − 𝔼[X])²] = 𝔼[X²] − 𝔼[X]², quantifying how far X typically falls from its mean.
**vector** — A dynamically resizable, contiguous array: O(1) random access and amortized-constant append, but linear-time middle insertion; grows by reallocating and copying.
**verification condition (VC) generation** — Mechanically producing FOL implications (from weakest preconditions / invariants) whose validity, discharged by an SMT solver, establishes correctness; loop invariants must be supplied externally.
**verifier** — An algorithm that checks whether a candidate solution is correct; a problem can be easy to verify even when hard to solve (the basis of NP).
**very busy (anticipable) expressions** — A backward must-analysis of expressions evaluated on every path leaving a point, enabling code hoisting.
**viable prefix** — A prefix of a right-sentential form not extending past the rightmost handle; exactly the possible LR stack contents, and the set of them is a regular language.
**virtual address space** — The set of addresses a process can use; each process has its own, providing isolation and protection.
**virtual destructor** — A destructor declared `virtual`, needed because static dispatch of destructors through a base pointer is almost always a bug.
**virtual function** — A member function marked `virtual` to request dynamic dispatch; unlike Java (all virtual by default), C++ lets you choose.
**virtual memory** — An abstraction giving each process its own private virtual address space, decoupled from physical memory through address translation.
**virtual vs. physical address** — Programs use virtual addresses; physical addresses name actual hardware memory locations and are invisible to programs.
**visitor pattern** — A design grouping a pass's code in one class and using double dispatch (`node.accept(visitor)` then `visitor.visit(node)`) to select behavior by both node type and pass.
**void* (generic pointer)** — A raw address pointer with no element type, used with casts to build generic data structures.
**VPN / PPN / page offset** — A virtual address splits into a virtual page number (translated) and page offset (unchanged); a physical address is a physical page number plus the same offset.
**vptr (virtual table pointer)** — A hidden per-object member pointing to its class's vtable, set by the constructor so a call becomes `p->vtable[i](p, ...)`.
**vtable (virtual method table)** — A per-class table of pointers to the class's virtual method implementations, kept at consistent offsets in subclasses so dispatch is an O(1) indirect call.
**wait() / waitpid()** — Calls a parent uses to wait for and reap a terminated child and collect its exit status; the process analog of `pthread_join`.
**watched literals** — An efficient BCP implementation (from zChaff) watching two unassigned literals per clause, avoiding a scan of every clause on each assignment.
**weak typing** — Doing neither adequate static nor dynamic checks, so some programs pass checking yet can corrupt memory at run time (C/C++).
**weakest precondition (wp)** — wp(S, Q) is the weakest predicate guaranteeing Q after executing S; computing it backward over a program is the basis of automated verification.
**weighted graph** — A graph in which each edge carries a numeric weight w(e).
**well-typed term** — A term to which some type can be assigned (⊢ t : T in the empty context).
**whitebox fuzzing** — Concolic testing applied to test-input generation, systematically covering paths using the program's internal structure (e.g. SAGE).
**with high probability (w.h.p.)** — A guarantee that an event holds with probability approaching 1 (failure probability shrinking), typically via concentration bounds.
**WITH clause (common table expression)** — Names a temporary table computed by a subquery for use in the main query; common in data pipelines.
**witness / argmax** — The record(s) achieving a min or max value; finding the max is easy, but returning the tuple attaining it needs a join or `HAVING`.
**without loss of generality (WLOG)** — A phrase noting that one representative case covers others by symmetry, so only that case need be argued.
**word / word size** — The fixed length used for addresses on a machine; by convention address size equals word size (x86-64 uses 64-bit/8-byte words).
**word embedding** — A vector representation of a word (e.g. from word2vec) on which arithmetic can reveal synonyms and analogies, and which can also encode bias present in the training text.
**work — T₁(n)** — The total running time on a single processor; the cumulative work all processors must perform.
**work law / span law** — P·T_P ≥ T₁ (parallel time cannot beat total work over P) and T_P ≥ T∞ (finitely many processors cannot beat infinitely many).
**working set** — The set of pages a process actively uses over a period; thrashing occurs if it exceeds physical memory.
**worst-case complexity** — The maximum number of steps an algorithm takes over all inputs of size n.
**wrapper class** — An object type that wraps a primitive value (e.g. Java's `Integer`, `Double`, `Boolean`, `Character`) so it can be stored in a collection, which can hold only objects.
**write policies** — Write-through updates memory on every write; write-back defers writes and uses a dirty bit to mark modified blocks written on eviction.
**x86-64** — The 64-bit target architecture: 16 general registers, 64-bit addresses, SSE registers, and register-based calling conventions.
**yield** — The statement a Ruby method uses to invoke the block it was passed, transferring control to the block and then resuming.
**zero extension** — Widening a value by adding leading zeros (used for unsigned).
**zero-based indexing** — The convention that the first element of an array or list is at index 0, so valid indexes run from 0 to length − 1.
