# 15-312 — Foundations of Programming Languages · Vocabulary

Source: CMU 15-312 "Foundations of Programming Languages," Fall 2023 offering (CMU-Qatar, Giselle Reis, https://web2.qatar.cmu.edu/cs/15312/). The F23 lecture-note PDFs are handwritten/scanned images with no extractable text, so the vocabulary below is grounded in F23's own assigned readings — Robert Harper's *Practical Foundations for Programming Languages* (PFPL) supplement PDFs that the F23 schedule links directly (ulc, interpreters, natconat, pcfv, rico, stacks, exceptions, letcc, ma-derived, pcfn, automata, mca, par, parsos) — supplemented for the foundational half by the typeset per-lecture notes of Karl Crary's Spring 2005 offering (https://www.cs.cmu.edu/~crary/312/). Ordered by course progression.

## The untyped λ-calculus

**λ-term** — An expression of Church's λ-calculus, of one of three forms: a variable `x`, an application `ap(M1; M2)`, or an abstraction `λ(x.M)`. The calculus has no constants or primitive operations — only functions — yet is a universal model of computation.

**application** — The λ-term `ap(M1; M2)`, applying function `M1` to argument `M2`; written `M1 M2` and left-associative in the informal notation.

**abstraction** — The λ-term `λ(x.M)` defining a function with parameter `x` and body `M`; written `λx.M`. Abstraction binds `x` within `M`.

**variable** — A placeholder that stands for another term; given meaning by substitution. Variables range over λ-terms (unlike algebra, where they range over numbers).

**binding and scope** — A binding is the point at which a variable is introduced (e.g. by `λ` or `let`); its scope is the region of the program over which that binding is in force. A use of a variable refers to the nearest enclosing binding of the same name.

**free and bound variables** — An occurrence of a variable is bound if it lies within the scope of a binder for it, and free otherwise. `x ∈ FV(M)` is the inductively defined judgment that `x` occurs free in `M`. A term with no free variables is closed; one with free variables is open.

**substitution** — `[M/x]N`, the result of replacing every free occurrence of `x` in `N` by `M`, defined by the relation `subst(M, x, N, P)`. It is the fundamental means by which variables acquire meaning.

**capture** — The error in which a free variable of the substituted term `M` falls under a binder in `N`, changing its meaning; substitution is undefined where capture would occur, and is repaired by renaming bound variables.

**capture-avoiding substitution** — Substitution defined up to α-equivalence, renaming bound variables of the target so that no free variable of the substituted term is captured; thereby always defined.

**α-equivalence** — The congruence `M ≡α M'` equating terms that differ only in the names of their bound variables. λ-terms are identified up to α-equivalence, so a bound variable is always "fresh," different from any other variable in use.

**fresh variable** — A bound-variable name chosen to be distinct from every other variable currently in use; the α-equivalence convention guarantees one always exists.

**β-reduction** — The computation step replacing `ap(λ(x.N); M)` by `[M/x]N` anywhere within a term; the sole rule of calculation in the λ-calculus.

**β-equivalence** — `M ≡β M'`, the least reflexive, symmetric, transitive, and compatible relation containing β-reduction; a notion of equality of λ-terms by calculation.

**β-normal form** — A term that is β-irreducible (no β-reduction applies). β-normalization is the process of reducing to normal form; not every term has one, and some reduction sequences diverge even when a normal form exists.

**(weak) head reduction** — Performing one β-reduction at the outermost level of a term (`M ⟼β M'`); the reduction strategy that must be followed if a normal form is to be reached.

**Church–Rosser theorem** — `M ≡β M'` iff `M` and `M'` have a common reduct; hence a term has at most one β-normal form. Confluence of β-reduction.

**Y combinator / fixed point** — A λ-term `Y` such that `Y F ≡β F (Y F)`, letting a function refer to itself; Kleene's construction obtains recursion via self-application (`add ≜ addself addself`).

**Church numerals** — The representation of natural number `n` as `λb.λs.s^(n) b`, the n-fold application of the successor function `s` to the base `b`.

**Church booleans** — `T ≜ λx.λy.x` and `F ≜ λx.λy.y`; a boolean is an active program that itself selects between two alternatives (`if(M, M0, M1) ≜ M M0 M1`).

**Barendregt numerals** — An alternative numeral encoding representing `n` as a sequence of `F`-tagged Church pairs ending in the identity combinator `I`, making case analysis (`ifz`) easy to program.

**Church's law** — The assertion that the λ-calculus can express every computable function on the natural numbers; a scientific law (like the Church–Turing thesis) predicting the nature of computation.

## Defining a language

**judgment** — An assertion that a property holds of an object (e.g. `M tm`, `x nat`, `Γ ⊢ e : τ`). The basic unit that inference rules define.

**inference rule** — An implication `J1 … Jn / J` stating that conclusion `J` may be derived whenever premises `J1,…,Jn` are derivable. A rule with no premises is an axiom.

**derivation** — A tree of inference-rule instances whose root is the derived judgment and whose leaves are axioms (or assumed premises); the evidence that a judgment holds.

**inductive definition** — A collection of inference rules defining one or more judgments as the strongest (least) assertion closed under the rules.

**rule induction** — The proof principle for an inductively defined judgment: to show a property `P` holds of every derivable judgment, show `P` is closed under each rule (holds of each conclusion whenever it holds of the premises).

**structural induction** — Rule induction applied to the rules defining the abstract syntax of a language; proof by cases on the outermost form of an expression, assuming the property for its subterms.

**admissible vs. derivable rule** — A rule is derivable if its conclusion has a derivation from its premises using the existing rules; it is admissible if its conclusion is derivable-from-nothing whenever its premises are. Derivable rules survive any extension of the rule set; admissible ones may not.

**transition system** — An abstract machine given by a set of states, initial and final states, and a binary transition relation `s ⟼ s'` describing step-by-step execution; deterministic if each state has at most one successor.

**stuck state** — A non-final state with no transition; corresponds to a run-time error. A type-safe language has no stuck states (progress).

**concrete syntax** — The representation of programs as strings of characters, given by a context-free grammar; designed for readability and disambiguated by precedence, associativity, and parenthesization.

**context-free grammar (CFG)** — Terminals, non-terminals (syntactic categories), and productions; understood as a simultaneous inductive definition of sets of strings. Ambiguity is a string derivable in more than one way.

**abstract syntax tree (AST)** — A first-order term `o(t1,…,tn)` over operators of fixed arity, capturing the hierarchical ("deep") structure of a program and eliminating the ambiguity of concrete syntax.

**abstract binding tree (ABT / abt)** — An AST enriched with binding information: arguments may be abstractors `x.t` that bind variables within a subtree. ABTs give a uniform account of free/bound variables, α-equivalence, and capture-avoiding substitution.

**de Bruijn indices** — A name-free representation of bound variables in which each variable is a natural number counting the number of enclosing binders to its own binder; avoids the need to choose bound-variable names.

**lexing / parsing** — Lexing consolidates characters into tokens (governed by a regular grammar); parsing translates the token stream into an abstract syntax tree (governed by a context-free grammar). Together they form the front end of an interpreter.

**interpreter pipeline** — parse → elaborate → execute → format: a parser produces an AST, an elaborator validates it against the statics producing an ABT, an executor runs it per the dynamics, and a formatter renders the result. A compiler is one strategy for implementing the executor by phases.

**statics** — The static semantics: an inductive definition of typing judgments `Γ ⊢ e : τ` (with context `Γ` assigning types to free variables) selecting the well-formed programs. Declarative — it says what is the case, not how to check it.

**dynamics** — The dynamic semantics specifying how programs execute, either as a structural operational semantics (transition system, `e ⟼ e'`) or an evaluation semantics (big-step, `e ⇓ v`).

**structural operational semantics (SOS)** — A dynamics given by a transition relation defined by induction on the structure of programs, taking one step at a time; also called transition semantics.

**evaluation semantics** — A big-step dynamics `e ⇓ v` relating an expression directly to its final value, suppressing intermediate states.

**hypothetical judgment** — A judgment that holds under assumptions, e.g. `Γ ⊢ e : τ` (typing relative to a context of variable typings); reasoning under hypotheses is discharged by substitution.

**context (Γ)** — A finite assignment of types to variables, recording the hypotheses under which an expression is typed; extended when entering the scope of a binder.

**type safety** — The property that a well-typed program cannot get stuck, established by two theorems: preservation and progress.

**preservation** — If `e : τ` and `e ⟼ e'`, then `e' : τ`; types are preserved under transition (subject reduction).

**progress** — If `e : τ` then either `e` is a value or there exists `e'` with `e ⟼ e'`; a well-typed program is never stuck.

**canonical forms** — A lemma characterizing the closed values of each type (e.g. a value of `nat` is `z` or `s(e)`; a value of `τ1 ⇀ τ2` is a λ-abstraction); the bridge between statics and dynamics in the progress proof.

## Function, product, and sum types

**function type (τ1 → τ2)** — A negative type whose introduction form is λ-abstraction and whose elimination form is application; characterized by how it behaves when applied to an argument.

**product type (τ1 × τ2, unit)** — Types whose values are tuples of component values; a negative type characterized by projection. The nullary product is `unit` with sole value `⟨⟩`; the binary product pairs two values, eliminated by `split`.

**sum type (τ1 + τ2, void)** — Types whose values are tagged (injected) values of one of the summands; a positive type. The nullary sum is `void` (no values); the binary sum has injections `inl`/`inr`, eliminated by `case`.

**introduction and elimination forms** — The constructors that produce values of a type (introduction) and the operators that consume them (elimination); e.g. λ-abstraction/application for functions, pairing/projection for products, injection/case for sums.

**polarity (positive / negative types)** — A classification of type constructors: a positive type is characterized by its introduction rules (values determined by constructors — sums, inductive types), a negative type by its elimination rules (behavior determined by observation — functions, products, coinductive types).

**System T (Gödel's T)** — The total language of function types with natural numbers and primitive recursion (the recursor `natrec`); every well-typed program terminates. Typing is a sufficient condition for termination.

**primitive recursion / recursor** — The elimination form `natrec[ρ](x; e0; x.e1)` (iterator) for the natural numbers, expressing the minimality of `nat` among types closed under zero and successor; defines total functions by recursion on the predecessor.

**totality** — The property, enjoyed by System T and F, that every well-formed expression has a unique value (terminates). A type system can encode only some termination proofs, so total languages are necessarily restrictive.

## Inductive and coinductive types

**inductive type (μ(t.τ))** — A positive type that is the least type closed under the constructor `fold`; its elements are exactly those built by finitely many applications of the type operator. `nat = μ(t. unit + t)`.

**coinductive type (ν(t.τ))** — A negative type that is the greatest type consistent with the destructor `unfold`; its elements are determined by how they behave when observed, and may be infinite. `conat = ν(t. unit + t)`, the natural numbers with a point at infinity.

**generator** — The introduction form `gen[σ](e; x.e1)` for a coinductive type: a state machine with a transition operation that, on demand, yields the next observation; the dual of the recursor.

**proof by coinduction** — The principle that equality on a coinductive type is the greatest (maximal) consistent relation: two elements are equal unless unfolding can refute it ("innocent unless proven guilty"), dual to induction's "guilty unless proven innocent."

## Recursion and recursive types (PCF and FPC)

**PCF** — Plotkin's language: PCF adds general recursion (`fix`) to the typed λ-calculus with naturals, making it partial — a well-typed program need not terminate. The programmer, not the type system, bears responsibility for termination.

**general recursion (fix)** — The construct `fix[τ](x.e)`, which unrolls to `[fix[τ](x.e)/x]e`, permitting arbitrary self-reference and hence divergent computations at any type.

**partiality** — The situation in PCF-like languages where well-typed programs may diverge; contrasted with the totality of System T and F.

**by-value (eager) vs. by-name (lazy)** — Two interpretations of PCF differing in what variables range over: by-value variables range only over values (arguments evaluated before the call), by-name variables range over unevaluated computations (arguments passed unevaluated). The distinction is invisible without non-termination.

**PCFv / computation modality** — The by-value reformulation of PCF that draws a modal distinction between values (`Γ ⊢ v : τ`) and computations (`Γ ⊢ e ∼ τ`), with a type `comp(τ)` of encapsulated computations whose elimination form `bnd` sequences evaluation; scales cleanly to exceptions and parallelism.

**by-need (memoization)** — The maximally lazy dynamics that shares the work of evaluating a bound expression by evaluating it at most once and reusing (memoizing) the result; modeled without state by non-deterministically "guessing" whether a value will be needed.

**black hole** — A pseudo-value `•` marking a `fix`-bound variable under evaluation; if the recursion depends on itself before unrolling (`fix(x.x)`), reaching the black hole aborts gracefully rather than looping forever.

**FPC** — PCF extended with unrestricted recursive types `rec(t.τ)`; sufficient to encode the untyped λ-calculus, so divergence is unavoidable once recursive types are admitted.

**recursive type (rec(t.τ))** — A self-referential type solving a type equation up to isomorphism; e.g. `rec(t. unit + (int × t))` is the type of integer lists.

**fold / unfold** — The isomorphism mediators for recursive types: `fold` maps the unrolling `[rec(t.τ)/t]τ` into `rec(t.τ)`, and `unfold` back. Under eager dynamics `fold(e)` is a value only if `e` is; under lazy dynamics it is always a value.

**iso-recursive types** — The formulation in which a recursive type and its unrolling are isomorphic (rather than equal), with `fold`/`unfold` witnessing the isomorphism explicitly; under eager dynamics such a `rec` type is inductive, under lazy dynamics coinductive.

## Dynamic typing

**dynamic typing** — A discipline in which type clashes are checked, rather than unchecked, errors: the static semantics is dispensed with and every ill-typed operation transitions to `error` at run time, preserving progress (hence safety) without a type discipline.

**checked vs. unchecked error** — A checked error is detected and signalled during execution (division by zero, a type-tag mismatch), keeping the state unstuck; an unchecked error is one the static semantics rules out in advance.

**tags** — Run-time markers (`Int`, `Bool`, `Fun`, …) attached to "raw" values so a dynamically typed language can identify a value's form; computation checks and strips tags, incurring time and space overhead.

**dynamic typing as static typing** — The observation that a dynamically typed language is a mode of use of a statically typed one with a single recursive sum type `tagged` of tagged values; by the pay-as-you-go principle, static typing subsumes dynamic typing without paying for tags where unneeded.

**dynamic dispatch** — Selecting a method implementation at run time from the class of the receiving object; formalized (with subtyping and inheritance) in Featherweight Java via the `body(m, c)` lookup on `this`.

## Modularity and abstraction (System F)

**System F / parametric polymorphism** — The language of universally quantified types `∀t(σ)`, with polymorphic abstraction `Fun t in e` and instantiation `inst(e, τ)`; a polymorphic function takes a type as argument and behaves uniformly across all instances.

**parametricity** — The principle (Reynolds) that a parametrically polymorphic function behaves identically at every type instance, so its type sharply constrains its behavior (e.g. the only interesting value of `∀t(t→t)` is the identity). Formalized by relational interpretation of type quantifiers.

**existential type (∃t(σ))** — The type of an interface of an abstract type; a package `pack τ with v as ∃t(σ)` bundles a representation type `τ` with an implementation `v`, and a client `open`s it to use the operations without knowing `τ`.

**data abstraction** — Separating a client from an implementor by an interface that hides the representation type; realized by existential types, so the implementor may change the representation without affecting clients.

**representation independence** — The theorem (a corollary of parametricity) that two implementations of an existential interface related by a bisimulation are indistinguishable to any client; the basis for proving an ADT implementation correct against a reference implementation.

**generativity** — The property that each `open` of a package introduces a "new," distinct abstract type, realized simply by renaming the bound type variable to be fresh; abstract types are held abstract only during type checking, with no run-time cost.

**value restriction** — The requirement in ML that only syntactic values receive polymorphic type; it prevents the unsoundness that arises when a polymorphic reference cell (`ref (fn x => x)`) is shared across incompatible instantiations.

## Control: stack machines, exceptions, continuations

**stack machine / control stack** — An abstract machine whose state `k # e` (or `k ▷ e` / `k ◁ e`) makes the control context explicit as a stack `k` of frames; the by-name and by-value machines each satisfy safety via canonical-forms and stack lemmas.

**frame** — A single element of the control stack representing a pending computation with a hole, e.g. `ap(−; e2)` or `ifz[τ](−; e0; x.e1)`; the by-value machine has more frame forms of a given type than the by-name machine.

**exceptions (control and data aspects)** — The control aspect: a computation completes either by returning normally or by raising; the elimination form `bnd` for `comp(τ)` provides both a normal and an exceptional continuation. The data aspect: a raised value has type `exn`.

**dynamic classification** — Defining `exn` as the type `clsfd` of dynamically classified values: an exception declaration allocates a fresh class (a run-time storage effect), so by α-equivalence the class name is an unguessable secret shared only between raisers and handlers with access to it — giving modular, non-anti-modular exceptions.

**continuation** — A reified control stack, a value `cont(k)` of type `τ cont` capturing the state of control at a point in execution; captured by `letcc` and invoked by `throw`.

**letcc / throw** — `letcc(x.e)` binds the current continuation to `x` within `e`; `throw(e; k)` abandons the current control state and resumes the reified continuation `k`. Together they give first-class control.

**law of the excluded middle (via continuations)** — The program `letcc(ret. l · letcc(x. throw(r · x; ret)))` of type `τ + τ cont` that "changes its mind" by backtracking through a captured continuation, illustrating the Curry–Howard reading of first-class control as classical logic.

## Imperative programming (Modernized Algol)

**Modernized Algol (MA)** — An imperative language cleanly separating expressions from commands, and variables (bound, immutable) from assignables (mutable, allocated cells); exposes the semantic structure of imperative programming.

**assignable vs. variable** — An assignable `a` is a mutable storage cell accessed by the commands `get[a]`/`set[a](e)`; a variable is an immutable binding. Conflating them (writing `a + a` as an expression) is invalid under concurrency, since two fetches may see different contents.

**command / return** — A command `m` performs storage effects and yields a value via `ret(e)`; commands are sequenced by `bnd(cmd(m1); x.m2)` (block notation `{x ← m1; m2}`) and encapsulated by `cmd`. The `dcl a := e in m` form allocates an assignable with stack discipline.

**reference / capability** — A first-class value (`τ REF`) packaging the get/set capabilities for an assignable; confined to the assignable's scope by the mobility restriction (no procedure type is mobile), so it cannot escape or be stored.

**mobility restriction** — The MA constraint that procedures and encapsulated commands may be passed as arguments but not returned or stored, preserving the stack discipline of storage management.

## Concurrency (process calculus)

**process calculus (π-calculus)** — A compositional language for concurrent programs `P ::= 1 | P1 ⊗ P2 | P1 ⊕ P2 | !a;P | ?a;P | X | µX.P`, understood as a generalization of automata theory to interacting automata (Milner).

**action** — A label on a transition: a signal `a!` ("write"), a query `a?` ("read"), or the silent action `ε`; `a!` and `a?` are complementary/dual, and interaction occurs when two processes take complementary actions.

**structural congruence (P ≡ Q)** — The least congruence making `⊗` a commutative monoid and `⊕` commutative/associative, and unrolling recursive processes; identifies processes with the same structure prior to transition.

**synchronization / interaction** — The joint (ε-labeled) step by which two processes taking complementary actions advance together (rule INTERACT); the basis of communication between processes.

**interference** — The problem that a third process can "steal" a synchronization intended between two others, disrupting their behavior; contains essentially all the difficulties of concurrent programming.

**channel restriction (νa.P)** — Binding a symbol `a` privately within `P` so that, by α-equivalence, it is an unguessable secret inaccessible to outside processes; the means of preventing interference.

**Concurrent Algol (CA)** — Modernized Algol extended with channel allocation, process spawning, and message emit/receive, its global state understood as a π-calculus process; messages are dynamically classified values, received by matching on class.

## Parallelism and cost

**fork–join parallelism** — Parallel evaluation in which independent subcomputations are forked, then joined at a point that consumes their values; static (`par x1=e1 and x2=e2 in e`, number of tasks fixed at compile time) or dynamic (a sequence tabulation, number fixed at run time).

**cost dynamics** — An evaluation semantics `e ⇓^c v` annotated with a cost graph `c` recording the dependency structure of a computation, separating essential sequential dependencies from admissible parallelism.

**work and span** — Two measures extracted from a cost graph: work is the total number of steps (sequential time, `wk(c)`), span (depth) is the length of the longest dependency chain (idealized parallel time, `dp(c)`). "The essence of parallelism is sequentiality."

**cost-dynamics validation / Brent's theorem** — Relating the cost graph to a transition dynamics: work equals the length of a sequential transition sequence and span the length of a parallel one; a Brent-type theorem bounds real running time on a machine with a fixed number of processors via a scheduler.

**lazy product (τ1 & τ2) / parallel bind** — The type of two encapsulated computations evaluated in parallel; its elimination form `parbnd` evaluates both and binds their eager pair at the join point, generalizing to sequences (`seqgen`/`seqbnd`) for dynamically sized parallelism.

**scheduler / thread pool** — A finite set of concurrently executing states (threads/tasks); a scheduler deterministically chooses a non-final thread to advance, and is fair if it eventually runs every ready thread.
