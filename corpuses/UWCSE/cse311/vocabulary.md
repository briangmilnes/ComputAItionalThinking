# CSE 311 — Foundations of Computing I · Vocabulary

Source: University of Washington CSE 311 (Foundations of Computing I). Vocabulary drawn from the public lecture slides. The Summer 2026 (26su) offering had only Lectures 1–5 posted (through predicate logic) at the time of collection, so the full-course vocabulary below is grounded in the most recent complete offering, Autumn 2025 (25au), Lectures 1–30; the early logic terms were cross-checked against the live 26su slides. Course pages: https://courses.cs.washington.edu/courses/cse311/26su/ and https://courses.cs.washington.edu/courses/cse311/25au/calendar/lecturelist.html

## Propositional logic

**Proposition** — A statement that has a truth value (true or false) and is well-formed. Propositions are the basic objects of propositional logic.

**Truth value** — The value of a proposition, either true (T) or false (F).

**Atomic proposition** — A true-or-false statement that cannot be broken down any further into simpler statements.

**Compound proposition** — A proposition built from simpler propositions combined with logical connectives.

**Propositional variable** — A symbol (typically p, q, r, s) standing for an arbitrary proposition.

**Logical connective** — An operator that combines propositions, such as negation, conjunction, disjunction, exclusive-or, implication, and biconditional.

**Negation (¬)** — The connective "not"; ¬p is true exactly when p is false.

**Conjunction (∧)** — The connective "and"; p ∧ q is true exactly when both p and q are true.

**Disjunction (∨)** — The connective "or" (inclusive); p ∨ q is true when at least one of p, q is true.

**Exclusive or (⊕, XOR)** — p ⊕ q is true exactly when p and q have different truth values.

**Implication (→)** — The connective "if…then"; p → q is false only when p is true and q is false. p is the hypothesis, q the conclusion.

**Biconditional (↔)** — The connective "if and only if"; p ↔ q is true exactly when p and q have the same truth value.

**Truth table** — A table listing every combination of truth values of the inputs and the resulting truth value of a proposition.

**Converse** — For an implication p → q, its converse is q → p.

**Contrapositive** — For an implication p → q, its contrapositive is ¬q → ¬p; a statement and its contrapositive are logically equivalent.

**Inverse** — For an implication p → q, its inverse is ¬p → ¬q.

**Tautology** — A proposition that is always true, regardless of the truth values of its variables.

**Contradiction** — A proposition that is always false.

**Contingency** — A proposition that can be either true or false depending on the truth values of its variables.

**Vacuous truth** — An implication that is true because its hypothesis is false, so the conclusion is irrelevant.

## Equivalences and normal forms

**Logical equivalence (≡)** — A ≡ B asserts that propositions A and B always have the same truth value; provable by a truth table or a chain of equivalences.

**Chain of equivalences** — A proof that transforms one proposition into another by applying known equivalence laws one step at a time, citing the law used at each step.

**Identity laws** — p ∧ T ≡ p and p ∨ F ≡ p.

**Domination laws** — p ∨ T ≡ T and p ∧ F ≡ F.

**Idempotent laws** — p ∨ p ≡ p and p ∧ p ≡ p.

**Commutative laws** — p ∨ q ≡ q ∨ p and p ∧ q ≡ q ∧ p.

**Associative laws** — (p ∨ q) ∨ r ≡ p ∨ (q ∨ r), and similarly for ∧.

**Distributive laws** — p ∧ (q ∨ r) ≡ (p ∧ q) ∨ (p ∧ r), and its dual for ∨ over ∧.

**Absorption laws** — p ∨ (p ∧ q) ≡ p and p ∧ (p ∨ q) ≡ p.

**Negation laws** — p ∨ ¬p ≡ T and p ∧ ¬p ≡ F.

**Double negation** — ¬¬p ≡ p.

**De Morgan's laws** — ¬(p ∨ q) ≡ ¬p ∧ ¬q and ¬(p ∧ q) ≡ ¬p ∨ ¬q.

**Law of implication** — p → q ≡ ¬p ∨ q.

**Boolean algebra** — The algebra of true/false values used for circuits, where ∧ is written as multiplication, ∨ as addition, and ¬ as an apostrophe; a companion notation to propositional logic.

**Literal** — A propositional variable or its negation.

**Disjunctive normal form (DNF)** — An OR of ANDs of literals; built from the true rows of a truth table (also called minterm expansion), it is a good representation for functions that are usually false.

**Conjunctive normal form (CNF)** — An AND of ORs of literals; built from the false rows of a truth table.

**Minterm** — A conjunction of literals corresponding to a single true row of a truth table; the terms summed in DNF (minterm expansion).

## Predicate logic

**Predicate** — A function that takes one or more arguments and outputs a Boolean, e.g. Prime(x) or LessThan(x, y).

**Domain of discourse** — The set of all values the variables in a predicate may take; roughly the "type" of the variables.

**Quantifier** — A symbol indicating how a variable ranges over the domain: universal (∀) or existential (∃).

**Universal quantifier (∀)** — ∀x P(x) asserts that P(x) is true for every x in the domain ("for all x").

**Existential quantifier (∃)** — ∃x P(x) asserts that there is at least one x in the domain for which P(x) is true ("there exists an x").

**Domain restriction** — The technique of limiting the domain of discourse to a smaller set of objects, or of encoding that restriction inside a quantified statement (using → for ∀ and ∧ for ∃).

**Bound variable** — A variable that is governed by a quantifier within a formula.

**Free variable** — A variable not bound by any quantifier.

**Nested quantifiers** — Quantifiers applied one inside another (e.g. ∀x ∃y …); order matters, and alike vs. unalike quantifiers behave differently.

**Negating quantifiers** — Pushing a negation through a quantifier: ¬∀x P(x) ≡ ∃x ¬P(x) and ¬∃x P(x) ≡ ∀x ¬P(x).

## Proofs and inference

**Proof** — A rigorous argument establishing that a statement is true, presented as a sequence of justified steps.

**Inference rule** — A pattern licensing a new true fact from facts already established; applies only to entire facts, not subexpressions.

**Modus ponens** — The inference rule from p → q and p, conclude q.

**Direct proof** — Proving p → q by assuming p and deriving q through valid steps.

**Proof by contrapositive** — Proving p → q by instead proving its equivalent contrapositive ¬q → ¬p.

**Proof by contradiction** — Proving p by assuming ¬p and deriving a contradiction (some q and ¬q), forcing p to hold.

**Proof by cases** — Splitting a proof into exhaustive cases and proving the goal in each.

**Counterexample** — A single instance that makes a universally quantified statement false, disproving it.

**Without loss of generality (WLOG)** — A phrase noting that one representative case covers others by symmetry, so only that case need be argued.

**Universal generalization** — The inference rule allowing a conclusion about an arbitrary element to be generalized to a "for all" statement.

**Existential generalization** — The inference rule concluding ∃x P(x) from P(c) for a particular c.

## Number theory

**Divides (|)** — For integers x, y, x | y ("x divides y") iff y = kx for some integer k.

**Division theorem** — For an integer a and positive integer d, there are unique integers q (quotient) and r (remainder) with a = dq + r and 0 ≤ r < d.

**Prime number** — An integer greater than 1 whose only positive divisors are 1 and itself.

**Composite number** — An integer greater than 1 that is not prime.

**Fundamental theorem of arithmetic** — Every integer greater than 1 has a unique factorization into primes (prime factorization).

**Modular arithmetic** — Arithmetic on integers reduced by a modulus n, treating numbers as equivalent when they differ by a multiple of n.

**Congruence mod n (≡ mod n)** — a ≡ b (mod n) iff n | (b − a); equivalently a and b have the same remainder mod n.

**Greatest common divisor (gcd)** — gcd(a, b) is the largest integer dividing both a and b.

**Euclidean algorithm** — A fast method to compute gcd(a, b) using gcd(a, b) = gcd(b, a mod b) with base case gcd(a, 0) = a.

**Bézout's theorem** — For integers a, b, gcd(a, b) can be written as sa + tb for some integers s, t.

**Extended Euclidean algorithm** — An extension of the Euclidean algorithm that also computes the Bézout coefficients s and t.

**Modular multiplicative inverse** — For a with gcd(a, n) = 1, the value b with ab ≡ 1 (mod n); found via the extended Euclidean algorithm.

**Fast (modular) exponentiation** — An algorithm computing large modular powers efficiently by repeated squaring.

**Fermat's Little Theorem** — A number-theoretic result about a^(p−1) mod p for prime p, used as a building block for RSA.

**RSA encryption** — A public-key cryptosystem built on modular exponentiation, large primes, and modular inverses, with a public key and a private key.

## Sets

**Set** — An unordered collection of distinct elements.

**Element (∈)** — x ∈ A means x is a member of the set A.

**Subset (⊆)** — A ⊆ B iff every element of A is also in B.

**Set equality** — A = B iff A ⊆ B and B ⊆ A (proved by showing both containments).

**Union (∪)** — A ∪ B is the set of elements in A or B (or both).

**Intersection (∩)** — A ∩ B is the set of elements in both A and B.

**Set difference** — A \ B is the set of elements in A that are not in B.

**Symmetric difference (⊕)** — The set of elements in exactly one of A, B (the set analogue of XOR).

**Complement** — For a universe, the complement of A is the set of elements not in A.

**Empty set (∅)** — The set with no elements.

**Cardinality** — The size (number of elements) of a set, written |A|.

**Power set** — The set of all subsets of a set A.

**Set-builder notation** — Defining a set by a property, e.g. { x : P(x) }.

## Induction

**Mathematical induction** — A proof technique for statements P(n) over the natural numbers: prove the base case, then prove each successor case from its predecessor.

**Base case** — The starting instance (e.g. P(0)) proved directly.

**Inductive hypothesis** — The assumption that P(k) holds for an arbitrary k, used to prove the next case.

**Inductive step** — The proof that the inductive hypothesis implies P(k + 1).

**Principle of induction** — The justification that proving the base case and inductive step establishes P(n) for all n.

**Strong induction** — A variant in which the inductive hypothesis assumes P holds for all values from the base up to k (P(b) ∧ … ∧ P(k)) to prove P(k + 1); may require multiple base cases.

**Recursive definition** — A definition giving a basis (starting elements) plus recursive rules that build new elements, so every element is reached in finitely many steps from the basis.

**Recursively defined set** — A set specified by a basis step and recursive construction rules (e.g. strings, binary trees).

**Structural induction** — A proof technique for a recursively defined set: prove P for the basis elements, then prove P is preserved by each construction rule.

**Binary tree (recursive definition)** — A recursively defined structure (empty tree, or a node with left and right subtrees) that is a common target for structural induction, with functions like size and height.

## Functions, relations, and graphs

**Function (f: A → B)** — A mapping that assigns to every element of the domain A exactly one element of the codomain B.

**Domain** — The set A of inputs of a function f: A → B.

**Codomain** — The set B of allowed outputs of a function f: A → B.

**Range** — The set of outputs actually attained by a function.

**One-to-one (injective)** — A function that maps distinct inputs to distinct outputs.

**Onto (surjective)** — A function whose range is all of the codomain — every element of B is hit.

**Bijection** — A function that is both one-to-one and onto, pairing each domain element with exactly one codomain element.

**Composition (∘)** — For f: A → B and g: B → C, the composition (g ∘ f): A → C applies f then g; the composition of two bijections is a bijection.

**Graph** — A structure G = (V, E) with a set V of vertices and a set E of edges.

**Directed graph** — A graph whose edges are ordered pairs of vertices (directed connections).

**Path** — A sequence of vertices v0, v1, …, vk with each consecutive pair an edge.

**Simple path** — A path in which all vertices are distinct.

**Cycle** — A path that returns to its start (v0 = vk with k > 0).

**Simple cycle** — A simple path plus an edge closing it back to the start.

**Relation** — A named course topic: a set of ordered pairs relating elements (directed graphs are the pictorial form). Properties studied include reflexive, symmetric, and transitive; relational composition and transitive closure are the standard 311 relations material. (Not given a dedicated lecture in the 25au slide set collected here; listed as a named topic.)

**Reflexive / symmetric / transitive relation** — Standard properties of relations: reflexive (every element related to itself), symmetric (relation holds both ways), transitive (relatedness chains compose). Named course topics.

**Transitive closure** — The smallest transitive relation containing a given relation. Named course topic.

## Formal languages and automata

**Alphabet (Σ)** — A finite set of symbols (characters) from which strings are built.

**String** — A finite sequence of symbols from an alphabet.

**Empty string (ε)** — The string of length zero.

**Concatenation** — The operation of joining two strings (or languages) end to end.

**Language** — A set of strings over an alphabet.

**Regular expression** — A pattern describing a language, built recursively from ∅, ε, single characters, union (A ∪ B), concatenation (AB), and Kleene star (A*).

**Kleene star (*)** — The operation A* denoting zero or more repetitions of strings from A.

**Regular language** — A language that can be described by a regular expression (equivalently, recognized by a DFA or NFA).

**Context-free grammar (CFG)** — A finite set of production rules over an alphabet of terminal symbols and a set of nonterminals, generating a language; strictly more powerful than regular expressions.

**Terminal symbol** — A character of the alphabet that appears in generated strings.

**Nonterminal** — A variable symbol in a grammar that can be rewritten by production rules.

**Production rule** — A rule A → (string of terminals and nonterminals) rewriting a nonterminal during derivation.

**Derivation** — The process of generating a string by repeatedly applying production rules starting from the start symbol.

**Parse tree** — A tree recording how a string is derived by a grammar.

**Deterministic finite automaton (DFA)** — A finite-state machine over an alphabet Σ where every state has exactly one outgoing edge per symbol; it accepts a string iff it ends in a final (accepting) state.

**State** — A configuration of a finite automaton; the machine changes state as it reads input.

**Transition** — The move from one state to another on reading a given input symbol.

**Accepting (final) state** — A state (drawn as a double circle) in which the machine accepts the input read so far.

**Nondeterministic finite automaton (NFA)** — A finite automaton that may have multiple (or zero) transitions per symbol and ε-transitions; accepts if some computation path reaches an accepting state.

**ε-transition** — An NFA edge taken without consuming an input symbol.

**Powerset (subset) construction** — The method converting an NFA to an equivalent DFA whose states are sets of NFA states.

**Cross-product construction** — A construction combining two DFAs into one recognizing the intersection, union, etc., of their languages.

**DFA minimization** — Reducing a DFA to the unique minimum-state DFA for its language.

**Equivalence of models** — The theorem that regular expressions, DFAs, and NFAs all recognize exactly the same class of languages (the regular languages).

## Limits of computation

**Irregular language** — A language that no DFA (hence no regular expression) can recognize, such as { 0^k 1^k : k ≥ 0 }.

**Distinguishing strings method** — The pigeonhole argument used to prove a language irregular: an infinite set of strings that must all reach different states cannot fit in a finite DFA, so two collide and lead to a contradiction with a distinguishing suffix.

**Cardinality (of infinite sets)** — A measure of set size extended to infinite sets via bijections.

**Countable set** — A set that is finite or can be put in bijection with the natural numbers (i.e. can be listed).

**Uncountable set** — A set too large to be listed — no bijection with the natural numbers exists (e.g. the real numbers).

**Diagonalization** — Cantor's technique constructing an element differing from every entry of a supposed list, proving a set uncountable.

**Halting problem** — The problem of deciding whether an arbitrary program halts on a given input; proved undecidable.

**Undecidability** — The property of a problem that no program can solve it for all inputs.

**Reduction** — Showing one problem is at least as hard as another by transforming instances of the second into the first (used to spread undecidability).

**Turing-complete** — Describing a computational model (e.g. Java, C++, Python) powerful enough to express any computation, and thus subject to the halting-problem limitation.
