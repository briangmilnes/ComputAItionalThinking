# CSE 505 — Concepts of Programming Languages · Vocabulary

Source: University of Washington CSE 505, Concepts of Programming Languages. Extracted from the public 23wi lecture notes (weeks 01–09; week 10 was unpublished): https://courses.cs.washington.edu/courses/cse505/23wi/notes/notes/

## Induction and inductive definitions

**mathematical induction** — Proof technique for "for all naturals n, P(n)": prove the base case P(0) and the inductive case P(k) ⇒ P(k+1).

**inductive hypothesis** — The assumption P(k) (or P(m) for all m ≤ k) granted in the inductive case of an induction proof.

**strong induction** — Variant of induction whose inductive case assumes P(m) for every m from the base up to k, giving a stronger hypothesis than ordinary induction.

**structural induction** — Generalization of induction to any inductive set: prove P for each axiom (base) and, assuming P of each premise, prove P of the conclusion (inductive rules).

**inductive definition (inductive set)** — A set built from base cases (always in the set) and inductive cases (in the set whenever their premises are), generating the whole set from the base upward.

**inference rule** — Notation with premises above a horizontal line and a single conclusion below; encodes base and inductive cases of an inductive definition.

**premise / conclusion** — The statements above the line (premises) that justify the statement below the line (conclusion) in an inference rule.

**axiom** — An inference rule with no premises; a base case that is unconditionally true.

**Peano axioms** — Axiomatization of the naturals as an inductive set: 0 is a natural, and succ(n) is a natural for any natural n.

**successor (succ)** — The constructor giving the next natural number after n; Peano naturals are 0, succ(0), succ(succ(0)), etc.

**case analysis** — Proof by splitting on the constructors of a value without recursion; used when a definition does not recurse and induction would be overkill.

## Algebraic data types and functional programming

**algebraic data type (ADT)** — A type defined by a grammar of constructors, mirroring an inductive definition's syntax (e.g. `nat := zero | succ nat`).

**constructor** — A purely syntactic tag (possibly taking arguments) that builds values of an ADT; not a function and involving no evaluation.

**pattern matching** — Defining a function by cases over an ADT's constructors, one right-hand side per constructor.

**total function** — A function defined for every constructor of its argument type, so it produces a result on all inputs.

**primitive recursion** — Recursion only on the immediate sub-arguments of a constructor, so each call is "smaller"; one way to guarantee termination.

**list** — ADT `list := nil | cons elem list`; the empty list or an element prefixed onto another list. "cons" is from Lisp.

**tree** — Binary-tree ADT `tree := leaf | node tree elem tree`; an empty tree or a node with two child subtrees and a value.

## Syntax and semantics

**syntax** — The "what" of a language: the shape/structure of programs, given here by an abstract syntax tree.

**semantics** — The "how" of a language: what programs mean, how they behave and evaluate.

**Backus-Naur Form (BNF) / grammar** — A recursive notation defining a language's expressions (e.g. `e := n | x | e + e | e * e`).

**ambiguity** — A grammar defect where one string has more than one parse (e.g. `1 + 2 * 3`); resolved by the parser.

**concrete syntax** — The actual string of characters a programmer writes.

**abstract syntax** — The structural essence of a program, stripped of parsing concerns.

**abstract syntax tree (AST)** — An ADT representing a program's abstract syntax; the starting point for semantics in this course.

**parser** — The component that translates concrete syntax (a character string) into an AST, resolving ambiguity along the way.

## Denotational semantics

**denotational semantics** — Defining a program's meaning as a mathematical function D from syntax (the AST) to a value.

**denotation** — The value that a denotational semantics assigns to a program; written with the ⟦·⟧ (Oxford/semantic) brackets.

**interpreter** — A recursive function that takes program syntax and evaluates it to a result; the operational embodiment of a denotational semantics.

**valuation (variable map)** — A function mapping variable names to values, threaded through the semantics of a language with variables.

**map update** — The operation v[x ↦ a] producing a map equal to v except that x now maps to a.

**command language** — A language of statements (skip, assignment, sequencing, while) whose semantics is a transformer over valuations.

**recursive equation** — A "definition" that mentions the thing being defined (e.g. the naive while-loop denotation); may fail to have a solution.

**fixed point** — A value unchanged by a function; the semantics of a while loop is defined as a fixed point of its recursive equation.

**Kleene fixed-point theorem** — Result used to show the fixed point defining a loop's denotation exists, salvaging denotational semantics for non-terminating-capable languages.

**strengthening the inductive hypothesis** — Proving a more general lemma (that is inductive) and specializing it to the desired theorem; a recurring PL proof pattern.

## Compilers and stack machines

**stack machine** — A simple abstract machine whose instructions (Push, Add, Multiply) manipulate a stack, modeled as a list.

**compiler correctness** — The property that a compiler preserves semantics: source and compiled programs denote/evaluate to the same result (e.g. CompCert, a verified compiler).

## Transition systems

**transition system** — A model of a program as a set of states S, a set of initial states S₀ ⊆ S, and a transition relation → over S × S.

**binary relation** — A set of pairs of elements; the transition relation is a subset of S × S relating states to successor states.

**transition relation (→)** — The one-step relation; s₁ → s₂ means "s₁ steps to s₂".

**reflexive transitive closure (→*)** — The multi-step ("step-star") relation; s₁ →* s₂ means s₁ reaches s₂ in zero or more steps.

**reachability** — A state s is reachable if some initial state s₀ satisfies s₀ →* s.

**property** — A set of states P ⊆ S, equivalently a predicate over states.

**invariant** — A property that holds in every reachable state (R ⊆ I); the "safe" states of the system.

**inductive invariant** — An invariant provable directly by induction over →: it holds initially and is preserved by every step. Not all invariants are inductive.

**induction over →*** — Proving a property of all reachable states by inducting over paths: base case for initial states, inductive case for "add one more step".

**inductively defined proposition** — A relation (like →* or the operational-semantics step relation) defined by inference rules whose conclusions are propositions.

**proposition** — A statement that is true or false (e.g. "s₁ can reach s₂").

## Operational semantics (IMP)

**IMP** — A small imperative language (skip, assignment, sequencing, if, while) used as a canonical example throughout the semantics lectures.

**operational semantics** — Semantics defining meaning as transitions between machine states, automating the per-program transition systems of week 4.

**small-step operational semantics** — Semantics giving one small transition (v, c) → (v′, c′) at a time, where the command component acts like a program counter.

**congruence rule** — A step rule that lifts a sub-step to a larger term (e.g. stepping the left side of a sequence), disassembling and reassembling the program.

**big-step operational semantics** — Semantics relating a state directly to its final valuation, (v, c) ⇓ v′, in a single "evaluation" step.

**evaluation relation (⇓)** — The big-step relation; (v, c) ⇓ v′ reads "(v, c) evaluates/reduces to final state v′".

**proof tree (derivation)** — A tree of inference-rule applications justifying a judgment such as a big-step evaluation.

**non-determinism** — When a relation ascribes more than one result to a state; small-step semantics model it as multiple applicable rules.

**parallel composition (c₁ ‖ c₂)** — A concurrency construct whose small-step rules interleave steps of the two commands, introducing non-determinism.

**interleaving** — An execution order that mixes steps of concurrent tasks; naturally expressible in small-step but not big-step semantics.

**Turing complete** — Capable of expressing any computation; claimed of IMP and proved of the (untyped) lambda calculus.

## Axiomatic semantics / Hoare logic

**axiomatic semantics** — Semantics defining meaning via logical assertions (pre- and post-conditions) satisfied during execution.

**Hoare logic (Floyd-Hoare logic)** — A proof system of rules over programs relating a precondition, a command, and a postcondition; due to Tony Hoare (and Robert Floyd).

**Hoare triple** — The proposition {P} c {Q}: if P holds before c runs (and c terminates), then Q holds after.

**precondition / postcondition** — The assertion P assumed to hold before a command (pre) and the assertion Q guaranteed after (post).

**assertion** — A predicate over program states used as a pre- or post-condition.

**partial correctness** — The reading of {P} c {Q} that guarantees Q only if c terminates; says nothing about non-terminating runs.

**total correctness** — The stronger reading [P] c [Q] that additionally guarantees c terminates.

**validity (of a triple)** — A Hoare triple is valid when the proposition it states is actually true.

**assignment rule (substitution)** — HAssign: {P′[e/x]} x ← e {P′}; prove the postcondition by substituting e for x in it. The "backwards" rule.

**substitution (P[e/x])** — Replacing every (free) occurrence of x in P by e; "e squashes x".

**rule of consequence** — HCons: may weaken the precondition and strengthen the postcondition (P ⇒ A, {A} c {B}, B ⇒ Q ⊢ {P} c {Q}), giving logical "wiggle room".

**weakening / strengthening** — Weakening a property enlarges its set of states (less specific); strengthening shrinks it (more specific).

**loop invariant** — A property I that holds on entry to a while loop and is preserved by each iteration; on exit, I ∧ (guard = 0) holds.

**syntax-guided proof** — A proof that proceeds by matching Hoare rules to the program's syntax, never consulting the operational semantics; enables automation.

**verification-condition generator** — A tool that turns a Hoare triple into a logical formula valid iff the triple is; loop invariants must be supplied externally.

**SAT / SMT solver** — Automated decision procedures used to discharge the verification conditions a VC-generator produces (underpin tools like Dafny).

**soundness (of Hoare logic)** — The theorem that any triple provable with the rules truly holds of the program, proved by induction over the derivation using the big-step semantics.

**rule inversion** — Reasoning backward from a derivation's conclusion to which rule(s) must have produced it and thus their premises; used in soundness proofs.

## Lambda calculus

**lambda calculus** — A minimal calculus of computation with three syntactic forms (variable, abstraction, application); Turing complete despite its simplicity. Due to Alonzo Church.

**untyped (pure) lambda calculus** — The lambda calculus with no type system; every syntactically well-formed term is admitted.

**abstraction** — An anonymous function λx. t that binds x in body t; a value that cannot step.

**application** — A function call t₁ t₂, the only term form that can step (via β-reduction).

**value** — A term that cannot be reduced further (an abstraction, and in extensions true/false); the final result of evaluation.

**β-reduction** — The workhorse rule (λx. t) t₂ → t[t₂/x]: applying a function substitutes the argument for the bound variable in the body.

**β-equivalence** — The equivalence relating (λx. t) t₂ and t[t₂/x], generated by β-reduction.

**evaluation strategy** — A discipline choosing which redex to reduce next; determines evaluation order.

**call-by-value** — Strategy that reduces an argument to a value before applying the function (used by most languages and by this course's calculus).

**call-by-name** — Strategy that applies β-reduction as early as possible, before evaluating the argument; the basis of laziness.

**laziness** — Evaluating a function argument only if it is actually needed (Haskell's call-by-name variant), rather than eagerly.

**confluence (Church–Rosser theorem)** — Property that the order of β-reductions does not affect the final result: divergent reductions can always be rejoined.

**capture-avoiding substitution** — Substitution that renames binders as needed so a free variable in the substituted term is not accidentally captured.

**bound variable** — A variable occurring within the scope of a binder λx that binds it.

**free variable** — A variable occurring where no enclosing abstraction binds it.

**binder** — The λx part of an abstraction, whose scope is the body t.

**scope** — The region of a term (the body of its binder) in which a bound variable refers to that binder.

**variable capture** — The error of a substitution turning a previously free variable into a bound one, changing meaning; avoided by renaming.

**α-equivalence** — Terms differing only in the names of bound variables are equivalent (λx. x ≡ λy. y); bound names do not matter.

**open term / closed term** — An open term has free variables; a closed term has none. The course restricts to closed terms to sidestep capture.

**Church encoding** — Representing data (booleans, naturals) purely as lambda terms, e.g. true := λt.λf.t, and numeral n applying f to x n times.

**combinator** — A closed lambda term with no free variables, used as a reusable "macro" (including the recursion combinators).

**omega combinator** — (λx. x x)(λx. x x); β-reduces to itself forever, demonstrating non-termination in the lambda calculus.

**fixed-point combinator (Y combinator)** — A combinator satisfying Y F ≈ F (Y F), enabling recursion by letting a function refer to itself without names.

**stuck term** — A term that is not a value yet cannot step (e.g. `true (λx. x)`); the semantic notion behind a "type error".

## Simply typed lambda calculus (STLC) and type safety

**type system** — A set of rules assigning types to terms, statically ruling out some (e.g. stuck) programs.

**simply typed lambda calculus (STLC)** — The lambda calculus extended with a type system having base types and function types; the "essence of type systems".

**function type (arrow type)** — T₁ → T₂, the type of a function taking a T₁ and returning a T₂; the inductive type constructor of STLC.

**typing judgment / typing relation** — The relation Γ ⊢ t : T, "under context Γ, term t has type T", defined by inference rules.

**typing context (Γ)** — A map from variables to their types, extended as `Γ, x : T` when entering an abstraction's body.

**type annotation** — Writing an abstraction as λx:T. t to record the argument's type, enabling the term to be typed.

**well-typed term** — A term to which some type can be assigned (⊢ t : T in the empty context).

**static typing** — Ruling out bad programs by type-checking without running them.

**type safety (type soundness)** — The property that well-typed programs do not get stuck; Milner: "well-typed programs cannot go wrong".

**syntactic type safety** — The modern proof method (Wright–Felleisen, Harper) establishing safety via progress and preservation.

**progress** — Lemma: a well-typed term is either a value or can take a step (it is never stuck).

**preservation (subject reduction)** — Lemma: if a well-typed term steps, the result is well-typed (here, at the same type).

**canonical forms lemma** — A lemma characterizing which values inhabit each type (e.g. the only values of type bool are true and false); needed in the progress proof.

**substitution lemma** — Lemma that substituting a well-typed term for a variable preserves the term's type; the crux of preservation for β-reduction.

## System F and polymorphism

**polymorphism** — A type-system feature letting one piece of code be used at multiple types; an umbrella for several distinct notions.

**parametric polymorphism** — Generic code with type variables whose behavior is uniform across all instantiating types (Java/ML generics).

**impredicative (first-class) polymorphism** — Parametric polymorphism where type variables may be instantiated with any type, including polymorphic ones; System F's style.

**let-polymorphism (ML-style polymorphism)** — A restricted parametric polymorphism (limiting where type variables appear) that admits a decidable type-inference algorithm.

**ad-hoc polymorphism** — Reusing one name for different implementations chosen by type (e.g. operator overloading in C++/Python); a dispatch mechanism, not genuine genericity.

**subtype polymorphism** — Letting a term of a subtype stand in for its supertype (e.g. a Cat used as an Animal), as in object-oriented inheritance.

**System F** — A parametrically polymorphic typed lambda calculus (Girard 1972, Reynolds 1974); the "essence of parametric polymorphism".

**type variable (α)** — A placeholder type that a polymorphic term abstracts over and that gets instantiated with concrete types.

**universal type (∀α. T)** — The type of a term generic in α; e.g. the polymorphic identity has type ∀α. α → α.

**type abstraction (Λα. t)** — A term that abstracts over a type, making its body generic in the type variable α.

**type application (type instantiation)** — Supplying a concrete type to a type abstraction, t T, yielding the term with α replaced by T.

**normalization** — The property that all well-typed programs terminate; System F has it (so the Y combinator is untypable), proved in Girard's thesis.

**type erasure** — Deleting type abstractions and annotations from a typed term, leaving a functionally equivalent untyped lambda term.

**adequacy** — Theorem that a typed term steps iff its erasure steps; type information does not affect run-time behavior.

**type reconstruction (typability)** — Deciding whether an untyped term is the erasure of some well-typed term; undecidable for full System F, motivating let-polymorphism.

**type inference** — Deducing types without annotations; decidable for ML-style let-polymorphism, undecidable for System F.

**parametricity** — The property that parametrically polymorphic terms behave uniformly over their type variables, so a type alone constrains behavior (e.g. ∀α. α → α has only the identity). Broken by features like reflection.
