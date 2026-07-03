# SICP — Terms

Concepts and vocabulary from *Structure and Interpretation of Computer
Programs*, Abelson & Sussman (with Julie Sussman), 2nd ed. Organized by
chapter and section, in the book's own terms. One line per entry, numbered
continuously for reference.

Coverage is the vocabulary the book actually introduces and uses — from
`car`/`cdr` up through the explicit-control evaluator and compiler. Curated,
not the index verbatim.

---

## Chapter 1 — Building Abstractions with Procedures

### 1.1 The Elements of Programming

1. **Expression** — a thing the interpreter evaluates to produce a value.
2. **Primitive expression** — the simplest expressions: numerals, names of primitives.
3. **Combination** — a compound expression: an operator applied to operands, written as a parenthesized list.
4. **Operator / operand** — the leftmost subexpression (the procedure) and the remaining subexpressions (its arguments).
5. **Prefix notation** — operator first, then operands; combinations nest uniformly.
6. **Evaluating a combination** — evaluate the subexpressions, then apply the operator's value to the operands' values (a recursive rule).
7. **Tree accumulation** — the recursive shape of evaluation: values percolate upward from the leaves of the expression tree.
8. **Special form** — a syntactic form with its own evaluation rule (`define`, `if`, `lambda`, `cond`), not evaluated as an ordinary combination.
9. **Definition** — `define`, associating a name with a value; the simplest means of abstraction.
10. **Environment** — the memory that holds name-to-value associations (bindings).
11. **Binding** — an association of a name (variable) with a value in an environment.
12. **Compound procedure** — a procedure created with `lambda`/`define` from simpler operations, usable exactly like a primitive.
13. **Procedure application** — applying a procedure to arguments.
14. **Substitution model** — a model of application: substitute the argument expressions for the formal parameters in the body, then evaluate.
15. **Applicative order** — evaluate the arguments, then apply ("evaluate then substitute"); Scheme's rule.
16. **Normal order** — substitute unevaluated argument expressions, evaluating only when needed ("fully expand then reduce").
17. **Predicate** — an expression or procedure returning a truth value.
18. **`cond` / `if`** — case analysis; `cond` with clauses of predicate/consequent, `if` for the two-branch case.
19. **`and` / `or` / `not`** — logical composition of predicates, with short-circuit evaluation for `and`/`or`.

### 1.2 Procedures and the Processes They Generate

20. **Process** — the behavior a procedure generates as it runs, distinct from the procedure's text.
21. **Recursive process** — a process that builds a chain of deferred operations (grows then shrinks).
22. **Iterative process** — a process whose state is captured in a fixed set of state variables plus a rule to update them.
23. **Linear recursion** — deferred operations grow linearly with the input.
24. **Linear iteration** — number of steps grows linearly, but space stays constant (state variables only).
25. **Tail recursion** — an iterative process expressed with recursive syntax; runs in constant space.
26. **Tree recursion** — a process that branches, spawning two or more recursive calls (e.g. naïve Fibonacci).
27. **Order of growth** — Θ(f(n)) characterization of a process's time/space in the input size.
28. **Fast exponentiation** — computing `bⁿ` in Θ(log n) steps by successive squaring.
29. **Euclid's Algorithm (GCD)** — computing the greatest common divisor by repeated remainder; Θ(log n).
30. **Fermat test** — a probabilistic primality test based on Fermat's Little Theorem.
31. **Probabilistic algorithm** — an algorithm whose answer is correct with high probability, tunable by repetition.

### 1.3 Formulating Abstractions with Higher-Order Procedures

32. **Higher-order procedure** — a procedure that takes procedures as arguments or returns one as a value.
33. **Procedure as argument** — passing a procedure to abstract over a common pattern (e.g. a general `sum`).
34. **`lambda`** — constructing an anonymous procedure directly, without naming it.
35. **`let`** — introducing local names for the values of subexpressions (syntactic sugar for a `lambda` application).
36. **First-class element** — an object that may be named, passed as an argument, returned, and stored; procedures are first-class in Scheme.
37. **Procedure as returned value** — a procedure that constructs and returns another procedure.
38. **Half-interval method** — root-finding by repeatedly halving an interval that brackets a sign change.
39. **Fixed point** — a value `x` with `f(x) = x`, found by iterating `f` until it settles.
40. **Average damping** — averaging a value with `f(x)` to make a fixed-point search converge.
41. **Newton's method** — root-finding as a fixed-point search using the derivative.

---

## Chapter 2 — Building Abstractions with Data

### 2.1 Introduction to Data Abstraction

42. **Data abstraction** — separating how compound data is *used* from how it is *represented*.
43. **Constructor / selector** — procedures that build a compound datum and that extract its parts.
44. **Abstraction barrier** — the interface (constructors + selectors) isolating users of data from its representation.
45. **`cons` / `car` / `cdr`** — the pair constructor and its two selectors.
46. **Pair** — the primitive two-part compound datum from which all list structure is built.
47. **Wishful thinking** — programming against selectors/constructors before implementing them, deferring representation choices.

### 2.2 Hierarchical Data and the Closure Property

48. **Closure property** — the result of combining data can itself be combined; pairs of pairs build arbitrary structure.
49. **List** — a chain of pairs terminated by the empty list `nil`.
50. **`nil` / empty list** — the end-of-list marker.
51. **Box-and-pointer notation** — the diagram of pairs as boxes with pointers to their contents.
52. **List operations** — `list-ref`, `length`, `append`, `map`, `for-each`.
53. **`map`** — apply a procedure to each element of a list, yielding a list of results.
54. **Dotted-tail notation** — `(lambda (x . rest) …)` for procedures of variable arity.
55. **Tree** — list structure whose elements may themselves be lists; recursion mirrors the structure.
56. **`count-leaves`** — the canonical tree recursion: count the non-pair leaves.
57. **Sequence operations** — a conventional interface: `enumerate`, `filter`, `map`, `accumulate`.
58. **`filter`** — keep the sequence elements satisfying a predicate.
59. **`accumulate` (fold/reduce)** — combine the elements of a sequence with a binary operation and an initial value.
60. **Signal-flow / conventional interfaces** — designing programs as pipelines over sequences (enumerator → filter → map → accumulator).
61. **Nested mappings** — mapping combined with `accumulate`/`flatmap` to express nested loops (e.g. generating pairs).

### 2.3 Symbolic Data

62. **Quotation** — `quote` / `'`, treating an expression as a datum rather than evaluating it.
63. **Symbol** — an atomic name usable as data.
64. **`eq?`** — identity/equality test on symbols (and pointers).
65. **Symbolic differentiation** — manipulating algebraic expressions represented as list structure.
66. **Representation of sets** — sets as unordered lists, ordered lists, or binary trees, traded off by operation cost.
67. **Binary tree (balanced)** — set representation giving Θ(log n) membership.
68. **Huffman encoding tree** — a variable-length prefix code built from symbol frequencies.

### 2.4 Multiple Representations for Abstract Data

69. **Generic operation** — an operation that works across multiple representations of a datum.
70. **Tagged data** — attaching a type tag to a datum so its representation can be identified at runtime.
71. **Type tag / contents** — the symbol identifying a representation, and the datum stripped of its tag.
72. **Data-directed programming** — dispatching on type by table lookup (operation × type → procedure) rather than by explicit case analysis.
73. **Dispatch on type** — selecting behavior by examining a datum's type tag.
74. **Message passing** — representing a datum as a procedure that dispatches on the operation name it is sent.

### 2.5 Systems with Generic Operations

75. **Additivity** — adding a new representation or operation without changing existing code (via the dispatch table).
76. **Coercion** — converting a datum of one type to another so a generic operation can combine mixed types.
77. **Tower of types** — a linear hierarchy (integer → rational → real → complex) with raising/lowering between levels.
78. **Generic arithmetic package** — a layered system of generic `add`/`mul`/… over ordinary, rational, and complex numbers.

---

## Chapter 3 — Modularity, Objects, and State

### 3.1 Assignment and Local State

79. **Assignment** — `set!`, changing the value bound to a variable.
80. **Local state variable** — a variable, hidden inside a procedure, that persists and changes between calls.
81. **State** — the accumulated history that determines an object's future behavior.
82. **Object with local state** — a procedure carrying private, mutable state (e.g. a `make-account`).
83. **Loss of referential transparency** — once `set!` is used, equal expressions may no longer be substitutable.
84. **Sameness and change** — the philosophical problem assignment introduces: when are two objects "the same"?
85. **Imperative programming** — a style organized around assignment and state change.

### 3.2 The Environment Model of Evaluation

86. **Environment model** — the model replacing substitution once assignment exists: evaluation happens relative to environments.
87. **Frame** — a table of bindings plus a pointer to an enclosing environment.
88. **Enclosing environment** — the frame a frame extends, giving the chain that lexical lookup walks.
89. **Procedure object** — a procedure as code paired with the environment it was created in (a closure).
90. **Lexical scoping** — free variables resolved in the environment of a procedure's *definition*, not its call.

### 3.3 Modeling with Mutable Data

91. **Mutable data** — compound data whose parts can be changed after construction.
92. **`set-car!` / `set-cdr!`** — mutating the two parts of a pair.
93. **Sharing** — two structures pointing at the same pair; mutation through one is visible through the other.
94. **Queue** — a FIFO structure with front and rear pointers for constant-time insertion/deletion.
95. **Table** — a mutable structure of key/value bindings; one- and two-dimensional.
96. **Constraint network** — a system of connectors and constraints propagating values in any direction.

### 3.4 Concurrency: Time Is of the Essence

97. **Concurrency** — several processes executing with interleaved access to shared state.
98. **Serializer** — a mechanism forcing a set of procedures to run one at a time.
99. **Mutex** — the primitive (acquire/release) underlying a serializer.
100. **Deadlock** — processes each waiting on a resource another holds, so none proceeds.

### 3.5 Streams

101. **Stream** — a sequence whose elements are computed on demand (delayed lists).
102. **`delay` / `force`** — deferring an expression's evaluation and later demanding it.
103. **`cons-stream`** — a pair whose `cdr` is a delayed (promised) rest.
104. **`stream-car` / `stream-cdr`** — the head, and the forced tail, of a stream.
105. **Memoization** — caching a delayed value on first `force` so it is computed at most once (`memo-proc`).
106. **Infinite stream** — an unbounded stream (integers, primes) defined by a recursion that is safe because the tail is delayed.
107. **Stream paradigm** — modeling time-varying behavior as a timeless stream of values, avoiding assignment.

---

## Chapter 4 — Metalinguistic Abstraction

### 4.1 The Metacircular Evaluator

108. **Metalinguistic abstraction** — establishing new languages as a way of controlling complexity.
109. **Metacircular evaluator** — an evaluator for a language written in that same language.
110. **`eval` / `apply`** — the mutually recursive core: `eval` dispatches on expression syntax, `apply` binds arguments and evaluates a body.
111. **Syntax procedures** — the abstraction barrier between the evaluator and the representation of expressions.
112. **Driver loop (REPL)** — read an expression, evaluate it, print the result, repeat.
113. **Data as programs** — the evaluator treats programs as data structures it walks.
114. **Internal definitions** — definitions inside a body; their scanning-out and simultaneous scope.

### 4.2 Variations — Lazy Evaluation

115. **Lazy evaluation** — an evaluator variant using normal order: arguments are not evaluated until needed.
116. **Thunk** — a delayed argument: the expression plus its environment, forced on demand.
117. **Thunk memoization** — forcing a thunk at most once and caching the result.

### 4.3 Variations — Nondeterministic Computing

118. **Nondeterministic computing** — programs that automatically search among alternatives.
119. **`amb`** — the operator offering an ambiguous choice among its arguments.
120. **Backtracking** — on failure, returning to the most recent choice point and trying another alternative.
121. **`require`** — failing (forcing backtracking) unless a condition holds.
122. **Success / failure continuations** — the two continuations the `amb` evaluator threads to implement search.

### 4.4 Logic Programming

123. **Logic programming / query language** — computing by stating relations and querying them, without direction of data flow.
124. **Assertion** — a fact stored in the database.
125. **Rule** — a conclusion pattern with a body of conditions; the means of logical inference.
126. **Pattern matching** — matching a query pattern against assertions to bind pattern variables.
127. **Unification** — the two-sided generalization of matching used to apply rules.
128. **Stream of frames** — query processing as a flow of binding-frames through the query operations.
129. **Negation as failure** — treating a goal as false if it cannot be proven (closed-world assumption).

---

## Chapter 5 — Computing with Register Machines

### 5.1 Designing Register Machines

130. **Register machine** — a machine with a fixed set of registers, operations, and a controller sequencing them.
131. **Register** — a cell holding one value.
132. **Data paths** — the registers and operations, and the wiring among them.
133. **Controller** — the sequencing logic that drives the data paths (a controller diagram / instruction sequence).
134. **Stack** — a last-in-first-out register used to implement recursion on a register machine.

### 5.2 A Register-Machine Simulator

135. **Register-machine simulator** — a program that executes controller instructions for a described machine.
136. **Assembler** — translates a controller's instruction list into executable form, resolving labels.
137. **Instruction** — one controller step: `assign`, `test`, `branch`, `goto`, `save`, `restore`, `perform`.

### 5.3 Storage Allocation and Garbage Collection

138. **Memory as vectors** — representing list memory as the paired vectors `the-cars` and `the-cdrs`.
139. **Free list** — the chain of unused pairs available for allocation.
140. **Garbage collection** — reclaiming memory no longer reachable from the machine's registers.
141. **Stop-and-copy** — a GC that copies the live objects to a fresh space, compacting them.
142. **Mark-sweep** — a GC that marks all reachable objects, then sweeps unmarked ones onto the free list.

### 5.4 The Explicit-Control Evaluator

143. **Explicit-control evaluator** — the metacircular evaluator realized as a register machine, with control made explicit.
144. **Tail recursion (machine level)** — evaluating a tail call without growing the stack, giving iteration in constant space.

### 5.5 Compilation

145. **Compiler** — translates expressions into register-machine instructions ahead of time, rather than interpreting them.
146. **Compile-time environment** — the lexical-address information the compiler uses to resolve variables to frame/offset.
147. **Open coding** — compiling primitive operations inline instead of as general procedure calls.
148. **Lexical addressing** — locating a variable by its frame and position, computed at compile time.
