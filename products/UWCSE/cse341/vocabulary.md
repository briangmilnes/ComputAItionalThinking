# CSE 341 — Programming Languages · Vocabulary

Source: University of Washington CSE 341, Programming Languages, Spring 2026 (Stuart Reges). Lecture notes (notes01–notes25) and slides. https://courses.cs.washington.edu/courses/cse341/26sp/

Terms are ordered by course progression: language-agnostic foundations, then OCaml, then Racket/Scheme, then Ruby, with the static/dynamic typing lecture near the end.

## Foundations and language description

**syntax** — How the parts of a language are written; the surface form of a program.

**semantics** — What programs mean, often answered by giving the evaluation rules that say how expressions produce values.

**paradigm** — The primary approach a language takes to structuring code, e.g. procedural versus functional versus object-oriented.

**idiom** — The typical, conventional way a computation is expressed in a given language.

**procedural (imperative) language** — A language in the tradition of C/C++/Java that computes by changing mutable state over time; descends from Turing's model of a machine reading and writing a tape.

**functional language** — A language in the tradition of Lisp/OCaml/Scheme that computes by evaluating functions and avoids mutable state; descends from Church's lambda calculus.

**lambda calculus** — Alonzo Church's 1936 formalism characterizing computation in terms of functions; the mathematical foundation of functional programming.

**REPL (read-eval-print loop)** — An interactive top-level that reads an expression, evaluates it, prints the result, and loops; pioneered by Lisp and now common (Python, Ruby's irb, Java's JShell).

## OCaml: bindings, values, and types

**binding** — An association of an identifier with a value; an OCaml program is a sequence of bindings evaluated in order.

**environment** — The set of bindings in effect at a point in the program; expressions are evaluated in the current environment.

**variable binding** — A `let x = e` definition that evaluates `e` in the current environment and extends the environment to bind `x` to the resulting value.

**value** — A fully evaluated result such as `13`, `4.8`, `"hello"`, or `[3; 4; 5]`.

**tuple** — A fixed-size grouping of values, possibly of different types, written in parentheses, e.g. `(2, 3)` of type `int * int`.

**list** — A sequence of values all of the same type, written in square brackets, e.g. `[18; 9; 7]` of type `int list`.

**type inference** — The compiler's ability to deduce the types of expressions and functions without explicit annotations, e.g. inferring `int` from use of the `*` operator.

**cons operator (`::`)** — The list-construction operator that prepends one element to a list; always runs in constant O(1) time.

**append operator (`@`)** — The operator that concatenates two lists; runs in O(n) time because the first list must be copied.

**head / tail** — The first element of a list (`List.hd`) and the rest of the list (`List.tl`); constant-time operations.

**recursion** — Defining a function in terms of itself; the primary looping mechanism in functional languages, requiring `let rec` in OCaml.

**base case** — The non-recursive case of a recursive definition that stops the recursion, e.g. the empty list or `n = 0`.

**helper function** — An auxiliary function introduced to break a problem into subproblems or to carry extra state; often localized inside the function that uses it via `let`.

**precondition** — A documented requirement on a function's arguments (e.g. `n >= 0`) that the caller must satisfy; may be enforced with `invalid_arg`.

## OCaml: polymorphism, mutation, and purity

**parametric polymorphism** — The ability of a function to operate on values of any type, shown by type variables like `'a`; ML was the first language to have it.

**generics** — The modern term for parametric polymorphism; analogous to Java's `ArrayList<E>` type parameter.

**mutable state** — A memory location whose value can be changed (mutated) over time; central to procedural programming and deliberately avoided in functional programming.

**immutability** — The property that a value can never change once created; OCaml lists and Java `String`s are immutable, which eliminates whole classes of bugs.

**free variable** — A variable referenced inside a function but not defined within it (not a parameter or local); resolved by looking to the enclosing environment.

**side effect** — Any observable effect of a function beyond its return value, such as changing a global variable or producing output.

**referential transparency** — The property that a call can be replaced by its result (so `f(x) + f(x)` equals `2 * f(x)`); holds only for functions with no side effects.

**structural sharing** — Reusing the nodes of an existing immutable list rather than copying, which makes operations like `::` cheap and safe.

**string interning** — Keeping a single shared copy of equal string literals so `==` comparisons succeed; a Java optimization enabled by string immutability.

**local binding (`let ... in`)** — A `let` used as an expression that introduces a binding scoped only to the following expression, without adding to the top-level environment.

## OCaml: pattern matching and higher-order functions

**pattern matching** — Defining behavior by matching a value against structural patterns (tuples, list shapes, constructors) and binding sub-parts; expressed with `match ... with`.

**wildcard (`_`)** — A pattern that matches anything but binds no name, used for values you do not need.

**exhaustiveness** — Whether a match covers all possible cases; OCaml warns when patterns are not exhaustive.

**tail recursion** — A recursive form that performs no further computation after the recursive call returns, so once the base case is reached the answer is complete; can be executed as a loop without growing the stack.

**accumulator** — An extra parameter that carries the result-so-far through a tail-recursive function (or a fold), replacing a mutable loop variable.

**first-class citizens (first-class values)** — Values that can be stored in variables, passed as parameters, and returned from functions; in functional languages, functions themselves are first-class.

**higher-order function** — A function that takes other functions as parameters or returns them as results.

**map** — A higher-order function that applies a given function to every element of a list, producing a new list.

**filter** — A higher-order function that keeps only the list elements satisfying a given predicate.

**predicate** — A function returning a boolean, used as a test (e.g. by `filter`).

**reduce** — A higher-order function that collapses a list to a single value using a binary combining function (e.g. summing a list).

**fold (fold_left / fold_right)** — Generalized reduce functions that take an initial accumulator value and a combining function, and can build a result of a different type than the list elements; direction controls left-to-right vs. right-to-left processing.

**MapReduce** — Google's large-scale computation model built on map and reduce, whose independence makes it easy to parallelize across processors.

## OCaml: currying and composition

**curried function** — A multi-argument function expressed as a function returning a function, applied one argument at a time without a tuple; the standard OCaml style (e.g. `(+)` has type `int -> int -> int`).

**partial application (partial instantiation)** — Supplying only some of a curried function's arguments to obtain a new specialized function, e.g. `let inc = (+) 1`.

**uncurry / curry** — Conversions between the tupled form of a two-argument function and its curried form.

**anonymous function (lambda)** — A function written inline without a name, using `fun x -> ...` in OCaml (`lambda` in Python/Scheme); named after the lambda calculus.

**function composition** — Combining functions so the output of one feeds the input of the next, `f(g(h(x)))`; expressible as a reusable operator that itself returns a function.

## OCaml: type safety

**type safety** — The property that a language prevents type errors; has largely replaced the older term "strongly typed."

**type error** — Interpreting or combining bits inconsistently with their type, e.g. reinterpreting a char array's bytes as an int via a C++ cast.

**casting** — Converting a value from one type to another; type-safe casts perform a real conversion, while C/C++ casts can reinterpret raw bits.

**bounds checking** — Verifying that array indices are in range at run time; present in Java, absent in C/C++ (leading to segmentation faults).

## OCaml: user-defined types

**type synonym** — An alias giving a new name to an existing type, e.g. `type int2 = int * int`.

**algebraic data type (variant type)** — A type with several alternative forms separated by `|`, each introduced by a constructor, e.g. `Empty | Node of int * int_tree * int_tree`.

**constructor** — A named tag that builds a value of a variant type (capitalized in OCaml); may carry associated data introduced with the keyword `of`, and can be used in patterns.

**enumerated type** — A variant type whose constructors carry no data, e.g. `type color = Red | Blue | Green`.

**recursive type** — A variant type defined partly in terms of itself, such as a binary tree.

**option type** — The type `None | Some of 'a`, used when a result may be absent ("0 or 1 of" something); OCaml's way of expressing nullable values.

**"one of" vs. "each of" type** — A "one of" type (a variant/option) holds exactly one of several alternatives; an "each of" type (a tuple/record) holds all of its components at once.

**nullable type** — A type that may hold either a normal value or "no value" (e.g. C#'s `int?`); modeled in OCaml by the option type.

## OCaml: closures and scope

**closure** — The pairing of a function's code with the environment in effect when it was defined, so free variables resolve to their defining-time bindings.

**delayed evaluation** — The fact that a function body is not evaluated until the function is called, unlike a `let` definition which is evaluated immediately.

**lexical scope (static scope)** — Resolving a variable by the textual (nested) structure of the program, determinable before execution; used by Java and OCaml.

**dynamic scope** — Resolving a variable by the run-time chain of active calls rather than program text; rare today but used by most shell scripts.

**shadowing** — An inner-scope binding that hides an outer binding of the same name.

**block** — A region of program text (in Java, delimited by curly braces) that introduces a new lexical scope.

**compile time vs. run time** — The static properties of a program deducible ahead of execution versus the dynamic properties apparent only while it runs.

## OCaml: modules

**modularity** — Structuring a program via decomposition into subprograms, information hiding of details, and careful interfaces between the pieces.

**information hiding** — Localizing implementation details so they are not visible to clients.

**module** — A named collection of types, variables, and functions that establishes its own namespace.

**namespace** — A naming region that lets different modules reuse the same identifiers without collision (e.g. `List.length` vs. `Array.length`).

**structure** — OCaml's concrete module form (`module M = struct ... end`) grouping definitions together.

**signature** — OCaml's module-interface form (`sig ... end`) that abstractly describes what a structure exposes, analogous to a Java interface; unlisted items become effectively private.

**data invariant** — A property of a type's representation that the implementation guarantees (e.g. a fraction is always in lowest terms), enforced by controlling how values are constructed.

**abstract type** — A type named in a signature without exposing its definition, so clients cannot see or depend on its representation; enables reimplementation without client changes.

**opaque** — Describing an implementation change that is invisible to clients because the signature uses an abstract type.

**eager vs. lazy evaluation** — Computing a result immediately versus deferring it until first needed (e.g. reducing a fraction in `make_fraction` versus only in `to_string`); with an abstract type the client cannot tell which is used.

## Racket / Scheme

**Lisp / Scheme / Racket** — Lisp (McCarthy, 1958) is the first functional language; Scheme is a lexically scoped descendant; Racket is the modern Scheme dialect/environment used in the course.

**procedure** — Scheme's term for a function.

**special form** — A syntactic construct (like `define`, `if`, `quote`, `begin`) that does not evaluate all its arguments the way an ordinary procedure call does.

**quote** — The special form (abbreviated `'`) that returns a symbol or list literally instead of evaluating it, distinguishing code from data.

**car / cdr** — The historic Lisp names for the head and tail of a list (equivalent to OCaml's `List.hd`/`List.tl`).

**cond** — A multi-way conditional that tries a sequence of tests and returns the expression for the first true one; cleaner than nested `if` for three or more branches.

**let / let\* / letrec** — Local-binding forms: `let` binds independently, `let*` binds sequentially so later bindings can use earlier ones, and `letrec` additionally allows recursive/mutually recursive bindings.

**internal definition** — A `define` nested inside another `define`, the course's preferred way to write local helper functions in Racket.

**define-struct** — A Racket form that creates a structured record type with named fields, auto-generating a constructor, predicate, and field accessors.

**metacircular interpreter** — An interpreter for a language written in that same language (a Scheme interpreter in Scheme), useful for understanding and extending the language.

**eq? / eqv? / equal?** — Scheme's equality predicates in increasing looseness: `eq?` is pointer identity, `eqv?` also equates simple values like numbers, and `equal?` does deep structural comparison.

**short-circuit evaluation** — `and`/`or` stopping as soon as the result is determined (`#f` for `and`, non-`#f` for `or`), which also affects side effects and errors.

**andmap / ormap** — Higher-order predicates that test whether all / any list elements satisfy a predicate, stopping early like short-circuit `and`/`or`.

**set!** — Scheme's mutating assignment that changes an existing binding's value; the trailing `!` (bang) marks a mutating procedure by convention.

**eval** — A procedure that evaluates a quoted list as code, exploiting Scheme's uniform treatment of code and data (homoiconicity).

**apply** — A procedure that calls a given function on a list of arguments.

## Recursive-descent parsing

**recursive descent parsing** — A parsing technique that writes one mutually recursive procedure per grammar rule; a lightweight approach to interpreting/compiling.

**BNF grammar / production** — A set of rules (productions) defining a language's structure in Backus-Naur Form; typically mutually recursive.

**nonterminal** — A grammar symbol (like `<term>` or `<factor>`) defined by productions, as opposed to a literal token.

**token** — An atomic unit of input (a number, operator, or string) in the list being parsed.

**consuming tokens** — Removing processed tokens from the front of the input list and replacing them with the computed value.

**precedence** — Which operators bind more tightly and are evaluated first; encoded by how deep a rule sits in the grammar.

**associativity** — Whether an operator groups left-to-right or right-to-left (e.g. subtraction is left-associative, exponentiation right-associative); controlled by the ordering of nonterminals in a rule.

**parse tree** — A tree showing how an input string is derived from the grammar, revealing the grouping implied by precedence and associativity.

## Ruby

**pure object-oriented language** — A language in which every value is an object, including numbers; `3 + 4` is the message `+` sent to the object `3`.

**dynamically typed language** — A language that checks types at run time rather than in advance, so variables and parameters carry no declared types and may hold different types over time.

**duck typing** — Accepting any object that responds appropriately to the messages used, regardless of its declared class ("if it can quack, it's a duck").

**reflection** — A program's ability to inspect itself at run time, e.g. asking an object for its class (`3.class`) or its methods (`3.methods`).

**message passing** — The object-oriented model in which computation proceeds by sending messages (method calls) to objects; `self` names the receiver (Ruby's equivalent of Java's `this`).

**scripting language** — A language like Perl, Python, or Ruby suited to quickly writing server-side and glue code.

**open classes (reopening a class)** — Ruby's ability to define a class in multiple places, adding methods to existing classes—even built-in ones like `Integer` or `Array`.

**block** — A chunk of code passed to a method, written with `{ }` or `do...end`; a closure that can take parameters between `|...|`.

**yield** — The statement a method uses to invoke the block it was passed, transferring control to the block (optionally passing values) and then resuming.

**instance variable (`@`)** — A per-object variable, prefixed with `@`; in Ruby, instance variables come into existence when first assigned in a method.

**class variable (`@@`)** — A single variable shared across all instances of a class, prefixed with `@@`; analogous to a Java static field.

**getter / setter** — Accessor methods to read and write a field; Ruby generates them via `attr_reader` and `attr_writer`, and a setter is named with a trailing `=`.

**string interpolation** — Embedding an expression in a string with `#{...}`, whose value is converted to a string via `to_s`; later borrowed by Python as f-strings.

**inject** — Ruby's fold method: with no seed it behaves like `reduce`, and with a seed it behaves like `foldl`.

**existential / universal quantifier** — Ruby's `any?` and `all?` methods, the computational equivalents of "there exists" and "for all."

**encapsulation** — Restricting access to an object's internals; Ruby instance variables are private to the object and cannot be read as `other.@x`.

**public / private / protected** — Method visibility levels: public callable by anyone, private callable only by `self`, protected callable by objects of the same class or a subclass.

**inheritance** — Deriving a class from another (`class B < A`) to reuse and extend its methods; `super` invokes the superclass version of the current method.

**iterator** — An object or method that yields a collection's elements one at a time; in Ruby, defining an `each` method (with `yield`) provides lazy, efficient traversal and enables the for-each loop.

**polymorphism / dynamic dispatch (late binding, runtime binding)** — Selecting which method to run based on the receiving object's actual type at run time; implemented via the implicit receiver parameter (`self`/`this`).

**implicit parameter** — The unstated receiver argument (`self` in Ruby, `this` in Java) that every method carries and that drives dynamic dispatch.

**Proc / lambda** — A block reified into a first-class object via `lambda`, storable in a variable and invoked with `call`; blocks alone are not first-class.

**mixin** — A module of methods `include`d into a class to add functionality without inheritance, giving code reuse without a subtype relationship; standard examples are `Comparable` and `Enumerable`.

**spaceship operator (`<=>`)** — Ruby's three-way comparison method; defining it and mixing in `Comparable` supplies `<`, `<=`, `>`, `>=`, and `between?`.

**favor composition over inheritance** — The design guideline (Joshua Bloch) to give a class a field of another type rather than subclassing it, avoiding the equality/behavior pitfalls of inheritance (e.g. `Point` vs. `Point3D`).

**memoization** — Caching the results of function calls so repeated calls with the same argument are returned instantly; dramatically speeds recursive definitions like Fibonacci that recompute subproblems.

## Static vs. dynamic typing (typing lecture)

**type checking** — Assigning a type (or an error) to each expression and using types to rule out certain errors.

**type system** — A language's rules for statically checking programs; different type systems prevent different classes of errors.

**static checking** — Anything done to possibly reject a program after it parses but before it runs.

**dynamic checking** — Checks performed while the program runs, as in dynamically typed languages that do little or no static checking.

**soundness** — A type system's guarantee that it never accepts a program that would commit the errors the system aims to prevent (no false negatives); the usual design goal.

**completeness** — A type system's property of never rejecting a program that would in fact behave correctly (no false positives); generally sacrificed, since a checker cannot be sound, complete, and always-terminating at once.

**undecidability** — The fact that almost any interesting static property cannot be checked by a procedure that always terminates and is both sound and complete, forcing type systems to be approximate.

**weak typing** — Doing neither adequate static nor dynamic checks, so some programs pass checking yet can corrupt memory at run time (C/C++); contrasted with the strong/type-safe checking of Java, OCaml, and Ruby.
