# SICP — Structure and Interpretation of Computer Programs — Vocabulary
A glossary of 148 distinct terms curated from *Structure and Interpretation of Computer Programs* by Harold Abelson and Gerald Jay Sussman with Julie Sussman (2nd ed.).

**Abstraction barrier** — the interface (constructors + selectors) isolating users of data from its representation.
**`accumulate` (fold/reduce)** — combine the elements of a sequence with a binary operation and an initial value.
**Additivity** — adding a new representation or operation without changing existing code (via the dispatch table).
**`amb`** — the operator offering an ambiguous choice among its arguments.
**`and` / `or` / `not`** — logical composition of predicates, with short-circuit evaluation for `and`/`or`.
**Applicative order** — evaluate the arguments, then apply ("evaluate then substitute"); Scheme's rule.
**Assembler** — translates a controller's instruction list into executable form, resolving labels.
**Assertion** — a fact stored in the database.
**Assignment** — `set!`, changing the value bound to a variable.
**Average damping** — averaging a value with `f(x)` to make a fixed-point search converge.
**Backtracking** — on failure, returning to the most recent choice point and trying another alternative.
**Binary tree (balanced)** — set representation giving Θ(log n) membership.
**Binding** — an association of a name (variable) with a value in an environment.
**Box-and-pointer notation** — the diagram of pairs as boxes with pointers to their contents.
**Closure property** — the result of combining data can itself be combined; pairs of pairs build arbitrary structure.
**Coercion** — converting a datum of one type to another so a generic operation can combine mixed types.
**Combination** — a compound expression: an operator applied to operands, written as a parenthesized list.
**Compiler** — translates expressions into register-machine instructions ahead of time, rather than interpreting them.
**Compile-time environment** — the lexical-address information the compiler uses to resolve variables to frame/offset.
**Compound procedure** — a procedure created with `lambda`/`define` from simpler operations, usable exactly like a primitive.
**Concurrency** — several processes executing with interleaved access to shared state.
**`cond` / `if`** — case analysis; `cond` with clauses of predicate/consequent, `if` for the two-branch case.
**`cons` / `car` / `cdr`** — the pair constructor and its two selectors.
**`cons-stream`** — a pair whose `cdr` is a delayed (promised) rest.
**Constraint network** — a system of connectors and constraints propagating values in any direction.
**Constructor / selector** — procedures that build a compound datum and that extract its parts.
**Controller** — the sequencing logic that drives the data paths (a controller diagram / instruction sequence).
**`count-leaves`** — the canonical tree recursion: count the non-pair leaves.
**Data abstraction** — separating how compound data is *used* from how it is *represented*.
**Data as programs** — the evaluator treats programs as data structures it walks.
**Data-directed programming** — dispatching on type by table lookup (operation × type → procedure) rather than by explicit case analysis.
**Data paths** — the registers and operations, and the wiring among them.
**Deadlock** — processes each waiting on a resource another holds, so none proceeds.
**Definition** — `define`, associating a name with a value; the simplest means of abstraction.
**`delay` / `force`** — deferring an expression's evaluation and later demanding it.
**Dispatch on type** — selecting behavior by examining a datum's type tag.
**Dotted-tail notation** — `(lambda (x . rest) …)` for procedures of variable arity.
**Driver loop (REPL)** — read an expression, evaluate it, print the result, repeat.
**Enclosing environment** — the frame a frame extends, giving the chain that lexical lookup walks.
**Environment model** — the model replacing substitution once assignment exists: evaluation happens relative to environments.
**Environment** — the memory that holds name-to-value associations (bindings).
**`eq?`** — identity/equality test on symbols (and pointers).
**Euclid's Algorithm (GCD)** — computing the greatest common divisor by repeated remainder; Θ(log n).
**`eval` / `apply`** — the mutually recursive core: `eval` dispatches on expression syntax, `apply` binds arguments and evaluates a body.
**Evaluating a combination** — evaluate the subexpressions, then apply the operator's value to the operands' values (a recursive rule).
**Explicit-control evaluator** — the metacircular evaluator realized as a register machine, with control made explicit.
**Expression** — a thing the interpreter evaluates to produce a value.
**Fast exponentiation** — computing `bⁿ` in Θ(log n) steps by successive squaring.
**Fermat test** — a probabilistic primality test based on Fermat's Little Theorem.
**`filter`** — keep the sequence elements satisfying a predicate.
**First-class element** — an object that may be named, passed as an argument, returned, and stored; procedures are first-class in Scheme.
**Fixed point** — a value `x` with `f(x) = x`, found by iterating `f` until it settles.
**Frame** — a table of bindings plus a pointer to an enclosing environment.
**Free list** — the chain of unused pairs available for allocation.
**Garbage collection** — reclaiming memory no longer reachable from the machine's registers.
**Generic arithmetic package** — a layered system of generic `add`/`mul`/… over ordinary, rational, and complex numbers.
**Generic operation** — an operation that works across multiple representations of a datum.
**Half-interval method** — root-finding by repeatedly halving an interval that brackets a sign change.
**Higher-order procedure** — a procedure that takes procedures as arguments or returns one as a value.
**Huffman encoding tree** — a variable-length prefix code built from symbol frequencies.
**Imperative programming** — a style organized around assignment and state change.
**Infinite stream** — an unbounded stream (integers, primes) defined by a recursion that is safe because the tail is delayed.
**Instruction** — one controller step: `assign`, `test`, `branch`, `goto`, `save`, `restore`, `perform`.
**Internal definitions** — definitions inside a body; their scanning-out and simultaneous scope.
**Iterative process** — a process whose state is captured in a fixed set of state variables plus a rule to update them.
**`lambda`** — constructing an anonymous procedure directly, without naming it.
**Lazy evaluation** — an evaluator variant using normal order: arguments are not evaluated until needed.
**`let`** — introducing local names for the values of subexpressions (syntactic sugar for a `lambda` application).
**Lexical addressing** — locating a variable by its frame and position, computed at compile time.
**Lexical scoping** — free variables resolved in the environment of a procedure's *definition*, not its call.
**Linear iteration** — number of steps grows linearly, but space stays constant (state variables only).
**Linear recursion** — deferred operations grow linearly with the input.
**List** — a chain of pairs terminated by the empty list `nil`.
**List operations** — `list-ref`, `length`, `append`, `map`, `for-each`.
**Local state variable** — a variable, hidden inside a procedure, that persists and changes between calls.
**Logic programming / query language** — computing by stating relations and querying them, without direction of data flow.
**Loss of referential transparency** — once `set!` is used, equal expressions may no longer be substitutable.
**`map`** — apply a procedure to each element of a list, yielding a list of results.
**Mark-sweep** — a GC that marks all reachable objects, then sweeps unmarked ones onto the free list.
**Memoization** — caching a delayed value on first `force` so it is computed at most once (`memo-proc`).
**Memory as vectors** — representing list memory as the paired vectors `the-cars` and `the-cdrs`.
**Message passing** — representing a datum as a procedure that dispatches on the operation name it is sent.
**Metacircular evaluator** — an evaluator for a language written in that same language.
**Metalinguistic abstraction** — establishing new languages as a way of controlling complexity.
**Mutable data** — compound data whose parts can be changed after construction.
**Mutex** — the primitive (acquire/release) underlying a serializer.
**Negation as failure** — treating a goal as false if it cannot be proven (closed-world assumption).
**Nested mappings** — mapping combined with `accumulate`/`flatmap` to express nested loops (e.g. generating pairs).
**Newton's method** — root-finding as a fixed-point search using the derivative.
**`nil` / empty list** — the end-of-list marker.
**Nondeterministic computing** — programs that automatically search among alternatives.
**Normal order** — substitute unevaluated argument expressions, evaluating only when needed ("fully expand then reduce").
**Object with local state** — a procedure carrying private, mutable state (e.g. a `make-account`).
**Open coding** — compiling primitive operations inline instead of as general procedure calls.
**Operator / operand** — the leftmost subexpression (the procedure) and the remaining subexpressions (its arguments).
**Order of growth** — Θ(f(n)) characterization of a process's time/space in the input size.
**Pair** — the primitive two-part compound datum from which all list structure is built.
**Pattern matching** — matching a query pattern against assertions to bind pattern variables.
**Predicate** — an expression or procedure returning a truth value.
**Prefix notation** — operator first, then operands; combinations nest uniformly.
**Primitive expression** — the simplest expressions: numerals, names of primitives.
**Probabilistic algorithm** — an algorithm whose answer is correct with high probability, tunable by repetition.
**Procedure application** — applying a procedure to arguments.
**Procedure as argument** — passing a procedure to abstract over a common pattern (e.g. a general `sum`).
**Procedure as returned value** — a procedure that constructs and returns another procedure.
**Procedure object** — a procedure as code paired with the environment it was created in (a closure).
**Process** — the behavior a procedure generates as it runs, distinct from the procedure's text.
**Queue** — a FIFO structure with front and rear pointers for constant-time insertion/deletion.
**Quotation** — `quote` / `'`, treating an expression as a datum rather than evaluating it.
**Recursive process** — a process that builds a chain of deferred operations (grows then shrinks).
**Register** — a cell holding one value.
**Register machine** — a machine with a fixed set of registers, operations, and a controller sequencing them.
**Register-machine simulator** — a program that executes controller instructions for a described machine.
**Representation of sets** — sets as unordered lists, ordered lists, or binary trees, traded off by operation cost.
**`require`** — failing (forcing backtracking) unless a condition holds.
**Rule** — a conclusion pattern with a body of conditions; the means of logical inference.
**Sameness and change** — the philosophical problem assignment introduces: when are two objects "the same"?
**Sequence operations** — a conventional interface: `enumerate`, `filter`, `map`, `accumulate`.
**Serializer** — a mechanism forcing a set of procedures to run one at a time.
**`set-car!` / `set-cdr!`** — mutating the two parts of a pair.
**Sharing** — two structures pointing at the same pair; mutation through one is visible through the other.
**Signal-flow / conventional interfaces** — designing programs as pipelines over sequences (enumerator → filter → map → accumulator).
**Special form** — a syntactic form with its own evaluation rule (`define`, `if`, `lambda`, `cond`), not evaluated as an ordinary combination.
**Stack** — a last-in-first-out register used to implement recursion on a register machine.
**State** — the accumulated history that determines an object's future behavior.
**Stop-and-copy** — a GC that copies the live objects to a fresh space, compacting them.
**Stream** — a sequence whose elements are computed on demand (delayed lists).
**`stream-car` / `stream-cdr`** — the head, and the forced tail, of a stream.
**Stream of frames** — query processing as a flow of binding-frames through the query operations.
**Stream paradigm** — modeling time-varying behavior as a timeless stream of values, avoiding assignment.
**Substitution model** — a model of application: substitute the argument expressions for the formal parameters in the body, then evaluate.
**Success / failure continuations** — the two continuations the `amb` evaluator threads to implement search.
**Symbol** — an atomic name usable as data.
**Symbolic differentiation** — manipulating algebraic expressions represented as list structure.
**Syntax procedures** — the abstraction barrier between the evaluator and the representation of expressions.
**Table** — a mutable structure of key/value bindings; one- and two-dimensional.
**Tagged data** — attaching a type tag to a datum so its representation can be identified at runtime.
**Tail recursion** — an iterative process expressed with recursive syntax; runs in constant space.
**Tail recursion (machine level)** — evaluating a tail call without growing the stack, giving iteration in constant space.
**Thunk** — a delayed argument: the expression plus its environment, forced on demand.
**Thunk memoization** — forcing a thunk at most once and caching the result.
**Tower of types** — a linear hierarchy (integer → rational → real → complex) with raising/lowering between levels.
**Tree accumulation** — the recursive shape of evaluation: values percolate upward from the leaves of the expression tree.
**Tree** — list structure whose elements may themselves be lists; recursion mirrors the structure.
**Tree recursion** — a process that branches, spawning two or more recursive calls (e.g. naïve Fibonacci).
**Type tag / contents** — the symbol identifying a representation, and the datum stripped of its tag.
**Unification** — the two-sided generalization of matching used to apply rules.
**Wishful thinking** — programming against selectors/constructors before implementing them, deferring representation choices.
