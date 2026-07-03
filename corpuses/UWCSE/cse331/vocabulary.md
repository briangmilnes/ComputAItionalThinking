# CSE 331 — Software Design & Implementation · Vocabulary

Source: University of Washington CSE 331 (Software Design & Implementation), Spring 2025 (25sp) offering, taught in TypeScript/JavaScript with Java comparisons. Public PDF topic handouts and lecture notes at https://courses.cs.washington.edu/courses/cse331/25sp/topics/ . (The 26su offering listed on https://courses.cs.washington.edu/courses/cse331/26su/topics/ publishes only topics 1–2 as PDFs; its remaining decks are view-by-link Google Slides, so the fuller 25sp PDF set was used. The two 26su topic-01/02 handouts were also fetched and are consistent with 25sp.)

## Math and data foundations

**Set** — In this course's math notation the basic data type is a set, a collection of objects called elements; `x ∈ S` means x is an element of set S. Types such as ℤ (integers), ℕ (naturals), ℝ (reals), 𝔹 (booleans), and 𝕊* (strings) are the primitive sets.

**Union type** — A type formed from two sets that contains every object in either one; in TypeScript written `string | bigint`, meaning a value that could be one type or the other.

**Type narrowing** — Using a runtime check (e.g. `typeof x === "bigint"`) so the type checker refines a union-typed value to a single member type within that branch, without an unchecked type cast.

**Record type** — A type built from named fields, e.g. `{x: bigint, y: bigint}` in TypeScript or `{x : ℕ, y : ℕ}` in math; parts are distinguished by name, and field order does not matter in math.

**Tuple type** — A type built by position rather than name, e.g. `ℕ ⨉ ℕ` in math or `[bigint, bigint]` in TypeScript; parts are distinguished by order.

**Pattern matching** — Defining a function by cases on how its argument was constructed (e.g. `double(0) := 0`, `double(n+1) := double(n) + 2`); cases must be exclusive and exhaustive. TypeScript lacks it, so it is translated into `if` statements.

**Inductive data type** — A type defined recursively by listing the ways to create its elements (its constructors), combining union with recursion; the most important such type in the course is the list.

**Constructor** — One of the named ways to build a value of an inductive type; a constructor whose argument is the type itself (e.g. `cons(x, L : List)`) is recursive, and elements are equal only when built exactly the same way.

**List (nil / cons)** — The course's central inductive type `List := nil | cons(x : ℤ, L : List)`, with shorthand `x :: L` for cons and `[1,2,3]` for a full list; implemented in TypeScript with a tagged-record design pattern.

**Structural recursion** — Recursion that only calls itself on strictly smaller parts of its input (e.g. the tail of a list), which guarantees termination; the course restricts itself to structural recursion.

**Tag field** — A literal-valued field (e.g. `kind: "cons"`) used to distinguish members of a union of record types, enabling type narrowing; the mechanism used to encode inductive types in TypeScript.

## Specifications

**Specification** — A precise description of what a function must do, needed before correctness can even be discussed; consists of a precondition on inputs and a postcondition on outputs.

**Imperative specification** — A spec that says *how* to compute the answer by laying out the exact steps; code is then written "straight from the spec" by translating the math to TypeScript.

**Declarative specification** — A spec that says *what* the answer looks like (e.g. "return x such that b + x = a") without saying how to compute it, leaving the implementer to find code and argue it satisfies the spec.

**Precondition** — The facts the caller is promised to guarantee about the inputs (written in `@param` / `@requires`); the function has no obligation on inputs that violate it.

**Postcondition** — The facts the function is required to make true of its output (written in `@returns`), given that the precondition held.

**Correctness** — Satisfying the spec: for every input satisfying the precondition, the output satisfies the postcondition.

**JSDoc** — The `/** ... */` comment format (Java's equivalent is JavaDoc) in which TypeScript specs are written, using tags `@param`, `@requires`, `@returns`, `@modifies`, and `@effects`.

**Formalizing a specification** — Translating an imprecise or ambiguous English description into precise math (usually a recursively defined function), by studying examples and spotting the pattern.

**Straight from the spec** — Code obtained by directly translating an imperative specification into TypeScript, minimizing opportunities for mistakes; contrasted with implementing a different (e.g. faster) algorithm that then needs a correctness argument.

## Testing

**Unit test** — A test that checks one function in isolation, ideally without exercising anything else; the course focuses on unit testing.

**Integration test** — A test that checks that units work correctly together, where many real-world bugs live.

**End-to-end test** — A test that exercises almost all of the code at once, which makes debugging failures harder because the search space is large.

**Programmatic test** — Test code that tests other code (vs. running the program "manually"), so it can be re-run automatically whenever the code changes; the course uses Mocha with `assert.strictEqual` / `assert.deepStrictEqual`.

**Test case** — A chosen input/configuration together with the expected answer, where the expected answer is derived from the specification, not from running the code under test.

**Clear-box (glass-box) testing** — Choosing test cases by looking at the actual code, so tests exercise its specific structure (e.g. a hidden lookup table vs. a loop); the course's primary testing heuristic. Contrasted with black-box testing, which picks tests from the spec alone.

**Statement coverage** — The fraction of statements executed by at least one test; the course requires full coverage of all statements reachable on allowed inputs.

**Branch coverage** — The fraction of conditional branches (both the "then" and "else", including an implicit empty else) executed by some test; required for all reachable branches.

**Loop / recursion coverage** — A course-specific requirement that each loop or recursive call be exercised 0, 1, and many (2+) times, because values written on one iteration may not be read until a later one.

**Path coverage** — A stronger metric requiring every path through the branches to be tested; noted as growing exponentially in the number of branches, so the course requires only branch coverage for straight-line/conditional code.

**Boundary / special values** — A practical heuristic of testing special inputs (null, undefined, NaN, empty array, zero, endpoints) where bugs commonly hide.

## Reasoning about code

**Reasoning** — "Thinking through" what code does on *all* inputs to convince oneself it is correct, which neither testing nor type checking can do; the core skill of programming, done formally at first and informally later.

**Code review** — Having a second person reason through your code, standard industry practice for catching defects that the author's own reasoning misses.

**Fact** — Something known to be true about the variables at a point in the code (typically an equation or inequality), collected by reading along the path from the top of the function to a return statement.

**Implication** — The claim that some fact follows from (is implied by) other known facts; checking correctness reduces to proving that the postcondition's facts follow from the facts known at each return.

**Proof by calculation** — Proving an equation or inequality by a chain of `=` / `≤` steps (a "calculation block"), each justified by a known fact or a definition; the workhorse proof technique.

**Proof by cases** — Splitting a proof into exhaustive cases (e.g. `x ≥ 0` and `x < 0`) and proving the claim in each, when it cannot be proved for all values at once.

**Structural induction** — Proving a claim P(S) for every value of an inductive type by proving it for the base constructor(s) and proving it for each recursive constructor assuming it holds for the substructures.

**Base case** — In structural induction, the part of the proof establishing the claim for a non-recursive constructor (e.g. P(nil)).

**Inductive hypothesis** — The assumption, used only in the inductive step, that the claim already holds for the smaller substructure(s) (e.g. assume P(L) when proving P(x :: L)).

**Inductive step** — The part of the proof establishing the claim for a recursive constructor using known facts, definitions, and the inductive hypothesis.

## Floyd–Hoare logic

**Program state** — The values of all the variables at a point in execution; assertions make claims about the state.

**Assertion** — A true/false mathematical claim about the program state, written in `{{ ... }}`; it "holds" at a point if it is true there, and it is math rather than code.

**Hoare triple** — A precondition, some code, and a postcondition, written `{{ P }} S {{ Q }}`; the triple is *valid* if running S from any state satisfying P yields a state satisfying Q.

**Stronger / weaker assertion** — One assertion is stronger than another if it holds in a subset of the states (and thus implies it); "stronger" is a synonym for "implies", "weaker" for "is implied by". The strongest assertion is `false` (no states), the weakest is `true` (all states).

**Forward reasoning** — Filling in the postcondition of a triple by pushing facts downward through the code, producing the *strongest* postcondition that makes the triple valid; each assignment adds a fact.

**Backward reasoning** — Filling in the precondition by pushing the desired postcondition upward, producing the *weakest* precondition; for an assignment `x = y` this is the substitution `Q[x ↦ y]`.

**Assignment rule** — The mechanical rule for how an assignment transforms an assertion: substitution `Q[x ↦ y]` going backward, and renaming the old value to a subscripted name (e.g. `x0`) going forward when a variable is mutated.

**Loop invariant** — An assertion (marked `Inv:`) that is true every time execution reaches the top of the loop; loop correctness cannot be made mechanical without one (a consequence of Rice's Theorem).

**Three loop triples** — The correctness of a loop with invariant I splits into three checks: I holds initially, the body preserves I (`{{ I and cond }} S {{ I }}`), and I together with the negated condition implies the postcondition on exit.

**SSA form** — Static single assignment; the observation that mutation in straight-line code is unnecessary because each value can get a fresh name, a transformation compilers perform automatically.

## Arrays

**Array vs. list** — Arrays support O(1) access by index (`S[j]`), unlike the recursively defined list; an array can serve as one implementation of the List ADT.

**"For-any" (sublist) fact** — An assertion that summarizes many indexed facts at once, e.g. `S[i] ≠ y for any 0 ≤ i < j`, needed to reason about arrays where any element is directly accessible; applies to preconditions, postconditions, and invariants.

**Linear search** — Scanning an array element by element for a target, with loop invariant stating that all earlier indices differ from the target.

**Binary search** — Searching a sorted array (`A[0] ≤ ... ≤ A[n-1]`) by repeatedly halving the range; used as a worked example that is famously easy to get subtly wrong.

**Termination argument** — Showing a loop finishes by exhibiting a quantity that strictly decreases and is bounded (e.g. the shrinking `hi - lo` range in binary search), separate from the partial-correctness invariant.

## Data abstraction and ADTs

**Procedural abstraction** — Hiding a function's implementation behind its specification: the caller reads only the spec and promises valid inputs, the implementer promises correct outputs by any means.

**Abstraction barrier** — The specification viewed as the boundary between client and implementer; clients depend only on the spec, which yields correctness, changeability, and modularity.

**Data abstraction** — Giving clients only operations (public) and hiding the data (private), achieved via procedural abstraction over the data representation.

**Abstract data type (ADT)** — A type defined by its operations rather than its representation (introduced by Barbara Liskov); in the course's pattern an `interface` declares the ADT, a non-exported `class` implements it, and a factory function creates instances.

**Factory function** — A named function that constructs and returns an ADT instance (e.g. `makeFastList`), hiding the concrete class and letting the implementation change; also a design pattern that overcomes constructor limitations.

**Concrete state (representation)** — The actual fields of the record and the data stored in them — what the implementer manipulates.

**Abstract state ("obj")** — How clients should think about the object (e.g. a mathematical List), independent of the fields; specifications are written entirely in terms of `obj`.

**Abstraction function (AF)** — A mathematical function mapping the concrete field values to the abstract object they represent (written `obj = ...`); a reasoning tool, not code, defined only when the rep invariant holds.

**Representation invariant (RI)** — The facts about the field values that must always be true (which combinations of fields are legal); the constructor must establish it and every mutator must preserve it.

**Observer** — An ADT method that returns information about the object without changing it (e.g. `size`, `containsKey`).

**Producer** — An ADT method (on an immutable type) that returns a new object rather than modifying the receiver (e.g. `cons`, `enqueue` returning a new queue).

**Mutator** — An ADT method (on a mutable type) that changes the object in place, documented with `@modifies` and `@effects` and typically returning `void`.

**@modifies / @effects** — Spec clauses for mutators: `@modifies` names which objects may change, `@effects` states the new abstract state in terms of the old (e.g. `obj = set-value(x, v, obj_0)`).

**Association list** — A list of (key, value) pairs used to specify a map; `set-value` prepends a pair and `get-value` returns the first matching key's value, so two association lists are "the same" when they answer every key identically.

**Binary search tree (BST)** — An inductive tree type storing keys and values with the added rep invariant that all keys in the left subtree are smaller and all in the right are larger; supports O(log n) lookup and functional (path-copying) update.

**Immutable vs. mutable ADT** — Immutable ADTs never change after construction (only the constructor must establish the RI, and instances can be shared/aliased freely); mutable ADTs allow methods to change state, requiring more complex specs and RI re-checking.

## Aliasing and mutation

**Aliasing** — Two references pointing at the same object; harmless for immutable data but able to break reasoning when the shared object is mutated, since the math no longer models the program.

**Mutation XOR aliasing** — The course's core discipline: allow mutation or aliasing but never both for the same data — either keep data immutable, or ensure no outside aliases exist (a rule Rust enforces in its type system).

**Representation exposure** — Leaking an alias to an ADT's mutable internal data (or storing an external mutable reference), letting clients break the rep invariant from outside.

**Defensive copying (copy-on-read / copy-on-write)** — Making a private copy of mutable data when it enters or leaves an ADT (e.g. `arr.slice(...)`), so the ADT holds the only reference and no aliasing bugs arise.

**Readonly** — A TypeScript annotation (`readonly`, `ReadonlyArray`, `Readonly<T>`) that prevents modification of a value; a compile-time-only check, not a runtime guarantee.

## Subtyping and object orientation

**Subtype** — For concrete types, a subset of another type's values (e.g. even integers ⊆ ℤ; a record with extra fields is a subtype of one with fewer); an element of a subtype "is a" element of the supertype.

**Substitutability** — The property that a value of type B may be used wherever a value of type A is expected; the defining criterion of subtyping for ADTs.

**Liskov Substitution Principle** — Subtypes must be substitutable for their supertypes (due to Barbara Liskov); the course's definition of subtyping for abstract types.

**Behavioral subtyping** — B is a subtype of A only if B provides all of A's methods and each has the *same or a stronger* spec — accepting all of A's inputs (weaker preconditions) and promising all of A's outputs (stronger postconditions, fewer modifies).

**Structural vs. nominal typing** — Structural typing (TypeScript) makes two types interoperable when they have the same shape; nominal typing (Java) requires the declared type names to match, which is why adapters are needed.

**Subclass vs. subtype** — Subclassing is a mechanism for sharing code (inheriting fields/methods), which does *not* guarantee a subtyping relationship; a subclass whose overridden method has a weaker spec is legal Java but not a subtype.

**Fragile base class / tight coupling** — The problem that subclassing binds a subclass tightly to a superclass's internal details (field access, which methods call which, call order, RI holding only at public boundaries), so superclass changes silently break subclasses; a reason the course avoids subclassing.

**Equality (equivalence relation)** — A user-defined `equal` should behave like mathematical `=`: reflexive, symmetric, and transitive; needed because TypeScript `===` is reference equality (same object in memory) and even deep equality can disagree with an ADT's notion of "same".

**Reference equality** — What `===` (Java `==` on objects) tests — whether two references point to the same object in memory — as opposed to structural or abstract-state equality.

**Constructor limitations** — Constructors are error-prone and cannot return an existing object, return a different class, or carry a descriptive name; factory functions (and patterns like singleton) exist to overcome these.

**Dynamic dispatch** — Automatically selecting the right method implementation based on the runtime type of the receiver (`e.typeCheck()`), which OO languages make easy for the receiver but not for other arguments.

**Double dispatch** — A technique that selects a method based on the runtime types of two objects by chaining two dynamic dispatches (`e.perform(p)` calls back `p.process(this)`), working around the lack of multiple dispatch in Java.

## Design patterns

**Design pattern** — A named, reusable solution to a recurring design problem, popularized by the 1994 "Gang of Four" book; each pattern names a problem, a solution, and the name itself, grouped into creational, structural, and behavioral categories.

**Singleton** — A creational pattern that reuses a single shared instance instead of constructing a new object each time (safe only for immutable types), e.g. one shared empty-list value.

**Builder** — A creational pattern using a mutable helper object to assemble an immutable value piece by piece (e.g. Java's `StringBuilder`), also avoiding argument-order bugs by naming each part.

**Adapter** — A structural pattern that wraps one interface to present another, needed under nominal typing to make otherwise-incompatible but same-shaped types interoperate.

**Iterator** — A behavioral pattern that enumerates a collection's elements while hiding its underlying data structure, exposing "current element" and "advance" operations.

**Interpreter vs. procedural pattern** — Two ways to organize operations over an inductive (e.g. parse-tree) type: the interpreter pattern groups by expression type (easy to add types, hard to add operations), the procedural pattern groups by operation (easy to add operations, hard to add types).

**Visitor** — A behavioral pattern that combines double dispatch with tree traversal, letting a visitor object run an operation over every node of an inductive structure while keeping the operation's code separate from the node classes.
