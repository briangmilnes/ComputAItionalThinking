# 15-150 — Principles of Functional Programming · Vocabulary

Source: CMU 15-150 "Principles of Functional Programming," Summer 2026 offering (M26), lecture notes and slides. https://www.cs.cmu.edu/~15150/lect.html

Terms are ordered by course progression, from the evaluation model through data, cost analysis, higher-order programming, the module system, and closing special topics. Every term is grounded in the actual lecture note text.

**expression** — A syntactic programming construct that can be presented to the SML compiler; when evaluated it may produce a value, raise an exception, or loop forever.

**value** — A special kind of expression that evaluates to itself in zero steps; e.g. `16`, `true`, `(v1,v2)`, or a function value (closure).

**type** — A prediction about the kind of value an expression must have if its evaluation produces a value; SML determines an expression's type before evaluating it.

**well-typed / type-checks** — An expression is well-typed if it has a type; SML only evaluates well-typed expressions, otherwise it reports a type error.

**evaluation** — The process by which SML reduces a well-typed expression via zero or more reductions, ultimately yielding a value, an exception, or nontermination; written `e → v`.

**reduction / step** — A single simplification of an expression, written `e ⇒ e'` for one step; the operational semantics defines steps abstractly, independent of any implementation.

**operational semantics** — The rule-based definition of how expressions reduce step by step; correctness proofs about SML programs appeal directly to these evaluation rules.

**value binding** — An association of an identifier to a value, written `[v/x]`; substituting the value for free occurrences of the variable (respecting scope) implements binding.

**environment** — The collection of value bindings in scope at a given point; a function value's environment is captured as part of its closure.

**scope** — The syntactically determined region of a program throughout which a binding (of a name to a value or type) is in effect.

**closure** — A function value, consisting of a lambda expression together with the environment of bindings present when the function value was defined.

**lambda expression / abstraction** — SML code of the form `fn x:t => e` denoting an anonymous function with formal parameter `x` and body `e`; the SML analogue of `λx.e` from the lambda calculus.

**application** — The only operation on functions, written by juxtaposition `f e`; evaluated by reducing the function, then the argument, then substituting the argument value for the parameter in the body.

**call-by-value** — SML's evaluation discipline: a function always evaluates its argument to a value before substituting it into the function body.

**totality** — A function `f : t1 -> t2` is total if it reduces to a value and `f(x)` reduces to a value for every value `x : t1`; totality guarantees no divergence or exception on valid inputs.

**extensional equivalence** — The equivalence relation `e ≅ e'` on well-typed expressions of the same type: both produce the same value, both raise the same exception, or both loop forever; for functions, they map equivalent arguments to equivalent results.

**referential transparency** — The principle that any expression may be replaced by an extensionally equivalent expression without affecting the program's value; substitution of "equals for equals."

**congruence** — The property that every SML syntactic construct respects extensional equivalence, so replacing a subexpression with an equivalent one yields an equivalent whole.

**REQUIRES / ENSURES** — The specification comments accompanying a function: REQUIRES states preconditions on the arguments, ENSURES states the postcondition (what the result is / how it behaves).

**pattern** — A constant, variable, wildcard, tuple of patterns, or (later) value-constructor application, used to match against a value and bind its components; patterns must be linear (each variable at most once).

**wildcard** — The pattern `_`, which matches any value without binding it and may appear multiple times in a pattern.

**clausal function definition** — A function defined by several clauses `fn p1 => e1 | ... | pn => en`, where an argument value is matched against each pattern in turn.

**case expression** — An expression `case e of p1 => e1 | ... | pn => en` that evaluates `e`, matches its value against patterns in order, and evaluates the corresponding branch.

**nonexhaustive match** — A warning that a function's clauses do not cover all values of the argument type; applying it to an unmatched value causes a runtime `Match` exception.

**tuple / product type** — A type `t1 * t2` whose values are pairs `(v1,v2)` (generalizing to n-tuples), evaluated left to right.

**let expression** — A construct `let val ... in e end` that introduces local bindings visible only within the body `e`.

**lemma** — An established correctness property of a function (or a needed mathematical fact) that can be cited when proving the correctness of later functions.

**mathematical induction** — Also called standard, simple, or weak induction: prove a property for 0 (base case), then assume it for `n` and prove it for `n+1` (induction step); characterized by the step from `n` to `n+1`.

**strong induction** — Also called complete or course-of-values induction: prove the base case, then prove the property for `n` assuming it holds for all `n' < n`; used when a function recurses on smaller-than-predecessor arguments.

**induction hypothesis** — The assumption, within an inductive proof, that the property holds for the smaller case(s); the inductive step derives the property for the current case from it.

**generalizing the induction hypothesis** — Strengthening the statement to be proved (e.g. quantifying over an accumulator argument) so that an otherwise-failing induction goes through; no general recipe exists.

**datatype declaration** — A definition such as `datatype PrimColor = Red | Green | Blue` introducing a new type together with its value constructors.

**value constructor** — A tag introduced by a datatype declaration (e.g. `nil`, `::`, `Node`, `SOME`) used to build and pattern-match values of that type.

**algebraic datatype** — A type defined as a sum of constructors, each optionally carrying data; the basis for lists, trees, options, and user-defined structured data.

**structural induction** — Induction over the structure of values of a datatype: prove the property for the base constructor(s), then for compound constructors assuming it holds for their sub-values.

**list** — The recursive datatype `nil | :: of t * list`; SML sugar `[e1,...,en]` and the right-associative infix cons `::` build lists.

**cons (`::`)** — The list constructor prepending an element to a list; `x::L` takes constant time.

**append (`@`)** — The infix operation concatenating two lists; `L1 @ L2` takes time proportional to the length of `L1` and is associative.

**accumulator** — An extra function argument that builds up the final result during recursion, often enabling a tail-recursive (and more efficient) formulation.

**tail recursion** — A recursive definition whose recursive call is the outermost operation (not wrapped in further computation), so it needs no growing stack; every function can in principle be rewritten in tail-recursive form.

**tree** — The recursive datatype for binary trees, e.g. `Empty | Node of tree * int * tree`, carrying data at nodes (or leaves); supports its own structural induction principle.

**depth** — The length of the longest path from a tree's root to a leaf; computed recursively as `1 + max` of the children's depths.

**size** — The number of (non-leaf) nodes in a tree; computed recursively by summing children's sizes plus one.

**in-order traversal** — Visiting a non-empty tree's left child, then root, then right child, used (e.g. via `trav`) to flatten a tree into a list and to define what it means for a tree to be sorted.

**well-founded induction** — The general technique subsuming structural induction, induction on tree size, induction on tree depth, and simple/complete induction on the naturals.

**asymptotic analysis** — Predicting how long code takes on large inputs without running it, assuming primitive operations take constant time and ignoring constant factors; the main tool for comparing algorithms.

**big-O** — The classification `f is O(g)` meaning there exist constant `c` and `N` with `|f(n)| ≤ c|g(n)|` for all `n ≥ N`; abstracts away constant factors and low-order terms.

**big-O classes** — Standard growth classes: O(1) constant, O(n) linear, O(n²) quadratic, O(n³) cubic, O(log n) logarithmic, O(n log n), and O(2ⁿ) exponential.

**recurrence relation** — An equation defining a function's running time in terms of its value on smaller inputs (e.g. `W(n) = c1 + W(n-1)`), extracted from the structure of the code.

**closed-form solution** — A non-recursive formula for a recurrence (e.g. `W(n) = n·c1 + c0`), often found by unrolling the recurrence or proving a guess by induction.

**unrolling the recurrence** — Expanding a recurrence's terms repeatedly to detect a pattern for its solution.

**work** — The total number of steps/operations a computation performs, equal to sequential running time on a single processor.

**span** — An upper bound on running time given unlimited processors; determined by the data dependencies (the critical path) in the computation.

**data dependency** — A relationship where one step uses data produced by another and so must run later; dependencies are what force serial ordering and determine span.

**permutation** — A list containing the same elements as another, possibly reordered; sorting specifications require the output to be a sorted permutation of the input.

**sorted** — A list in which each item is no greater than all items occurring later (with respect to a comparison); a tree is sorted if its in-order traversal is sorted.

**insertion sort** — Sorting by repeatedly inserting each element into its place in an already-sorted list; O(n²) work with no parallelism.

**mergesort** — Sorting by splitting the input in half, recursively sorting, and merging; O(n log n) work, but on lists the sequential split/merge limit span to O(n).

**comparison function** — A function of type `t * t -> order` returning `LESS`, `EQUAL`, or `GREATER` (SML's `order` datatype), abstracting the ordering used for sorting and searching.

**parallelism** — Doing independent subcomputations at once; pure functional evaluation has no side effects, so independent subexpressions may be evaluated in parallel with the same result.

**balanced tree** — A tree in which each subtree holds roughly half the remaining data, giving depth O(log n) and enabling logarithmic-span operations.

**type constructor** — An operator on types (e.g. `list`, `option`, `tree`, `->`, `*`) that builds compound types from other types.

**type variable** — An SML identifier like `'a` standing for an arbitrary type, used to express polymorphic types.

**parametric polymorphism** — The ability to give a single function a polymorphic type (e.g. `'a list -> 'a list`) representing a whole family of monomorphic types, usable at any instance.

**instance (of a type)** — A type obtained by substituting concrete types for the type variables of a polymorphic type; a polymorphic expression may be used at any instance.

**parameterized datatype** — A datatype with type variables, e.g. `datatype 'a tree = Empty | Node of 'a tree * 'a * 'a tree`, abstracting a data template over the element type.

**option type** — The parameterized datatype `NONE | SOME of 'a`, used to represent partial functions and gracefully signal the absence of a result.

**overloading** — The reuse of a symbol (e.g. `+`, `*`) at several unrelated types (`int` or `real`); distinct from polymorphism, since there is no single `'a * 'a -> 'a` version.

**type checking** — Deciding, via syntax-directed type rules, whether a given expression has a given type.

**type inference** — Deducing an expression's type without annotations, by propagating constraints from the syntactic structure and the typing rules.

**most general type (m.g.t.)** — The type `t` for an expression such that `e:t` holds and every valid type for `e` is an instance of `t`; SML reports the m.g.t.

**first-order function** — A function whose arguments and results are ordinary data values (integers, lists, trees), not functions.

**higher-order function** — A function that takes a function as an argument and/or returns a function as a result; function values are ordinary values that can be passed and returned.

**function composition (`o`)** — The higher-order operator with `(f o g)(x) ≅ f(g x)`, of type `('a->'b) * ('c->'a) -> ('c->'b)`.

**map** — The higher-order function applying a given function to each element of a list (or tree/sequence), producing a collection of results; `map f [x1,...,xn] ≅ [f x1,...,f xn]`.

**filter** — The higher-order function keeping exactly the elements of a collection that satisfy a given predicate, preserving order.

**fold (foldl / foldr)** — Higher-order functions combining a collection's elements with a base value using a binary function, left-to-right (`foldl`) or right-to-left (`foldr`); note `foldl` and `foldr` are not extensionally equivalent in general.

**predicate** — A total function of type `t -> bool` classifying values as satisfying it (`true`) or not (`false`).

**currying** — Representing a multi-argument (tuple-taking) function as a chain of single-argument functions returning functions; `curry : ('a*'b->'c) -> 'a->'b->'c`, and `->` associates to the right.

**partial application** — Applying a curried function to some but not all of its arguments, yielding a specialized function (e.g. `divides' 2` gives an evenness test).

**staging** — Writing a multi-staged function that does useful work when partially applied, generating a specialized function that runs more efficiently when later applied to remaining arguments.

**β-value reduction** — The equivalence law `(fn x:t => e') v ≅ [v/x]e'` for a value `v`; substitution is only valid once the argument has been reduced to a value (call-by-value).

**point-free / pointless programming** — Defining a function by combining other functions without naming its argument (e.g. via combinators), facilitated by curried higher-order functions.

**combinator** — A higher-order function that "lifts" operations from a base type to functions mapping into that type (e.g. `(f ++ g)(x) = f(x) + g(x)`).

**continuation** — A function passed as an extra argument representing the computation to be done on a result; in base cases it is applied instead of returning, in recursive cases it acts as a functional accumulator.

**continuation-passing style (CPS)** — A programming technique that threads a continuation through a computation, giving a direct handle on future computation; enables tail-recursive rewrites and backtracking search.

**success continuation** — A continuation invoked on success while being discarded on failure, used to short-circuit control (e.g. returning `NONE` immediately).

**exception** — A value of type `exn` signaling a runtime error; exceptions can be declared, raised, and handled, and may carry data (e.g. `Fail of string`).

**raise** — The expression `raise E` that signals a runtime error rather than returning a value; `raise E` has most general type `'a`.

**handle** — The construct `e1 handle E => e2` that evaluates `e2` if `e1` raises exception `E`, and otherwise behaves like `e1`; used for graceful error recovery.

**greedy algorithm** — An algorithm (e.g. the first change-making attempt) that commits to a locally optimal choice at each step; may fail to find a solution requiring backtracking.

**proof-directed debugging** — Discovering an error in code (or its specification) from a breakdown in a correctness-proof attempt, as in the regular-expression matcher.

**formal language** — Any subset of `Σ*`, the finite-length strings over a fixed finite alphabet `Σ`; the mathematical notion abstracted from grammar and pattern matching.

**alphabet (Σ)** — A nonempty finite set of characters (terminals); `Σ*` is the set of finite strings over it, with `ε` the empty string.

**regular expression** — A notation for languages built inductively from singletons, `0`, `1`, alternation (`+`), concatenation, and iteration (`*`); each denotes a language `L(r)`.

**standard form (regexp)** — A regular expression in which no starred subexpression `r*` has `ε` in `L(r)`; required so the continuation-based matcher terminates.

**signature** — An interface specification listing the types, values, and exceptions a module provides; plays for structures the role that types play for values.

**structure** — An implementation (module) grouping related type, value, and exception declarations; SML checks it against an ascribed signature and hides components not in the signature.

**qualified name** — A dotted name like `Ints.add` or `Key.compare` referring to a component defined inside a structure (or substructure).

**information hiding** — Omitting a structure's components from its ascribed signature so external users cannot access them, protecting invariants and helper definitions.

**abstract type** — A type named in a signature without its implementation exposed, so clients can only manipulate it through the signature's operations; makes the signature prescriptive.

**representation invariant** — A property that every value of an abstract type must satisfy (e.g. "is a binary search tree"); information hiding lets code assume and preserve it while local reasoning restores it after temporary violation.

**transparent ascription (`:`)** — Ascribing a signature so that the concrete identity of the structure's types (mentioned in the signature) remains visible outside.

**opaque ascription (`:>`)** — Ascribing a signature so that the implementation of the structure's types is hidden, making them genuinely abstract to clients.

**functor** — A function from structures to structures, i.e. a parameterized module (e.g. `Digits(B:BASE):ARITH`), used to avoid duplicating closely related structure code.

**type class** — A mode of using signatures that describes a type equipped with a (non-exhaustive) collection of operations (e.g. `ORDERED` = a type `t` with a `compare`); usually the type is descriptive rather than abstract.

**substructure** — A structure component nested inside another signature/structure (e.g. `structure Key : ORDERED` inside `DICT`), tying related types and operations together.

**datatype generativity** — The rule that each evaluation of a datatype declaration (including each functor application) yields a fresh, distinct type, preventing unsound mixing of look-alike types.

**dictionary** — An abstract data type mapping keys to values, with `empty`, `insert`, and `lookup`; implemented over ordered keys via association lists or binary search trees.

**binary search tree** — A sorted binary tree in which every key in a node's left subtree is less and every key in its right subtree is greater; supports logarithmic lookup when balanced.

**red-black tree** — A balanced binary search tree whose nodes are colored red or black, maintained so that red nodes have black children and every root-to-leaf path has the same black height, keeping depth ≤ 2·log₂(n+1).

**black height** — The number of black nodes on any path from a given node down to an empty leaf; the red-black invariant requires this count be equal on all such paths.

**red-red violation** — The temporary invariant breach when inserting a red node under a red parent; fixed by rotation and recoloring, possibly propagated upward.

**rotation** — A local restructuring of a red-black (sub)tree that rebalances it while preserving sortedness and black height, used to repair red-red violations.

**cost semantics** — A formal account of a program's work and span (via cost graphs) that lets one reason about time complexity abstractly, independent of any schedule.

**cost graph** — A series-parallel directed graph modeling a computation's structure via sequential and parallel composition; work is its node count and span is its longest source-to-sink path.

**series-parallel graph** — A directed graph with one source and one sink built from sequential and parallel composition of subgraphs; the shape used for cost graphs.

**critical path** — The longest path from source to sink in a cost graph; its length is the span, the minimum time even with unlimited processors.

**fork-join parallelism** — A computation model in which work forks into parallel subcomputations that reunite at a well-nested join point, as with divide-and-conquer.

**deterministic parallelism** — The property of pure functional programs that their extensional behavior is independent of any scheduling decisions during parallel evaluation.

**schedule** — An assignment of which unit of work each processor performs at each time step; ideally produced by the compiler rather than baked into the program.

**Brent's Theorem** — An expression with work `w` and span `s` can be evaluated on `p` processors in time bounded by `max(w/p, s)`; it bounds achievable speedup given the work and span.

**pebbling** — A game on a cost graph modeling scheduling: place up to `p` pebbles per step on nodes whose predecessors are all visited, generating a `p`-processor schedule (e.g. pDFS or pBFS).

**greedy schedule** — A schedule that assigns as many processors as possible to available work at every time step.

**sequence** — An abstract parallel collection type (`'a seq`) with operations like `tabulate`, `nth`, `map`, `reduce`, and `filter` designed for good parallel work and span (e.g. constant-time `nth`, logarithmic-span `reduce`).

**tabulate** — The sequence-building operation `tabulate f n` producing `<f 0,...,f (n-1)>`; O(n) work and O(1) span when `f` is constant time.

**reduce** — The sequence operation combining all elements with an associative binary function and base value using balanced parenthesization, giving O(n) work and O(log n) span.

**associativity** — The property `g(a,g(b,c)) ≅ g(g(a,b),c)`; when a combining operation is associative, the order of pairwise combination is irrelevant, enabling parallel reduction.

**fusion law** — An equivalence letting two passes be merged into one, e.g. `map g (tabulate f n) ≅ tabulate (g o f) n` or `map (f o g) ≅ (map f) o (map g)`, avoiding an intermediate structure.

**laziness / lazy evaluation** — Demand-driven computation that evaluates only as much of a data structure as is needed, side-stepping SML's eager call-by-value default for potentially infinite data.

**suspension / thunk** — A function of type `unit -> τ` whose body is a delayed computation; it is "forced" by applying it to `()`, only then evaluating the body.

**stream** — A representation of a potentially infinite list as a suspension of a front (`Stream of unit -> 'a front`), built and consumed lazily via `delay`, `expose`, `cons`, and `take`.

**productive stream** — A stream whose every exposure yields `Empty` or a `Cons` of a value and another productive stream; an infinite stream is productive and never exposes `Empty`.

**Sieve of Eratosthenes** — The classic prime-enumeration algorithm, here realized lazily as a stream that filters out multiples of each newly found prime.

**mutable cell / reference** — A value of type `t ref` holding an updatable value; created by `ref`, read by `!`, and written by `:=`; the imperative core of SML.

**side effect** — A state change (e.g. updating a cell or printing) caused by evaluating an expression, in addition to producing a value; complicates reasoning and referential transparency.

**store / state** — A mapping from ref cells to values (the store); paired with an environment it forms the state against which imperative extensional equivalence is defined.

**benign effect** — A side effect (e.g. a locally created, garbage-collected ref cell in imperative list reversal) that produces no observable change, so the code still behaves purely functionally.

**memoization** — Caching the results of expensive computations in mutable state so they need not be recomputed, a beneficial use of side effects.

**sequential composition (`;`)** — The associative construct `e1;e2` that evaluates `e1` (for its effect), then evaluates and returns `e2`; important when effects must occur in a specific order.

**race condition** — A situation in which multiple processors access the same cell simultaneously with at least one writing, yielding unpredictable, schedule-dependent results; avoided by keeping parallel code pure.

**context-free grammar** — A four-tuple `(Σ,V,P,S)` of terminals, non-terminals, productions `A → α`, and a start symbol; its language `L(G)` is the set of terminal strings derivable from `S`.

**terminal / non-terminal** — Terminals are the alphabet characters appearing in sentences; non-terminals (variables) are the symbols expanded by productions, one distinguished as the start symbol.

**derivation** — A sequence of production applications expanding non-terminals; a leftmost derivation always expands the leftmost non-terminal, and multiple distinct leftmost derivations show a grammar is ambiguous.

**BNF (Backus-Naur Form)** — A common notation for context-free grammars, with bracketed non-terminals, `::=` for productions, and `|` for alternatives.

**concrete vs. abstract syntax** — Concrete syntax is the string form specified by a grammar; abstract syntax is a datatype (parse tree) capturing the parsed structure, e.g. `Plus(Int 3, Times(Int 4, Int 5))`.

**parsing** — Determining whether a string is in `L(G)` and, if so, its grammatical structure; done here by operator-precedence parsing (shift/reduce with a stack) or recursive-descent parsing (LL(1), one symbol of lookahead).

**left recursion / left factoring** — Grammar transformations for recursive-descent parsing: eliminating left-recursive rules (which cause infinite loops) and factoring shared rule prefixes so the parser can decide with one lookahead symbol.

**decision problem** — A well-defined yes/no question about well-specified instances (e.g. primality); it is decidable if some SML function evaluates to `true`/`false` correctly on every instance.

**decidable / decision procedure** — A problem is decidable (solvable, computable) if a total SML function—its decision procedure—answers every instance correctly.

**halting problem** — The undecidable problem of deciding, for a function `f:int->int` and input `x`, whether `f(x)` evaluates to a value; no SML function `H` can decide it for all `f`, `x`.

**diagonalization** — Cantor's technique, used in the halting-problem proof, of defining an adversary (`diag`) that calls the hypothetical decider on itself and does the opposite, forcing a contradiction.

**proof by reduction** — Showing a problem `P` is undecidable by demonstrating that a decider for `P` could be used to build a decider for the halting problem, contradicting its undecidability.

**Church's Thesis** — The claim that all (current and future) programming languages compute exactly the partial recursive functions on the naturals; all such Turing-equivalent languages have the same expressive power.

**Turing equivalence** — The property that different languages can each simulate the other and so compute the exact same number-theoretic functions, making their halting problems equally unsolvable.

**lambda calculus** — The minimal formalism of variables, abstraction, and application underlying functional programming; `fn x => e` corresponds to `λx.e`.

**β-reduction** — The lambda-calculus reduction rule applying a function to an argument by substitution; the formal basis of SML's β-value reduction.

**Church numeral / Church encoding** — The lambda-calculus encoding of a natural number `n` as a term that takes a function `f` and value `x` and applies `f` to `x` `n` times, with arithmetic defined on these encodings.

**Y combinator** — A lambda term that implements recursion via its fixed-point property `Y f ≡β f (Y f)`, letting untyped lambda terms express recursive functions.
