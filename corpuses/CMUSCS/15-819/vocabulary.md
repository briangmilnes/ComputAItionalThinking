# 15-819 — Computational Type Theory · Vocabulary

Source: CMU 15-819 *Computational Type Theory* (an "Advanced Topics in Programming
Language Theory" offering), Spring 2021, Robert Harper.
<http://www.cs.cmu.edu/~rwh/courses/chtt/>

Terms are ordered by the course's progression (intuitionism → Tait's method →
inductive/coinductive types → normalization → logical relations → Girard's method →
parametricity → formal/definitional equality → the LF logical framework → formal and
semantic dependent type theory). Each entry is grounded in the per-lecture "blackboard"
notes and their paired typeset reading notes.

## Foundations: intuitionism and the two presentations of type theory

**Intuitionism (Brouwer's program)** — The foundation of mathematics on the idea of an
effective construction, i.e. a program; mathematics is a human activity communicating
about infinite objects in a finite way, and logic is grounded in constructive mathematics
rather than the reverse.

**Constructivism** — The stance that constructive reasoning *refines* rather than
*refutes* classical principles (e.g. rejecting unrestricted excluded middle), while
admitting a computational interpretation; an open problem such as P/NP has as yet neither
proof nor refutation.

**Proof as program / proofs-as-programs** — Brouwer's reading that a proof is a program
transforming evidence for the assumptions into evidence for the conclusion, with all
mathematical objects similarly constructed.

**Intuitionistic (Martin-Löf) type theory** — A codification of Brouwer's constructivism
in which computable constructions are classified by *types* specifying their abstract
properties rather than their concrete realization as sets; simultaneously a constructive
mathematics and a comprehensive theory of computation.

**Computational (semantic) type theory** — The presentation in which types specify the
*behavior of programs* and the computational semantics is primary; contrasted with the
axiomatic/formal presentation.

**Formal (axiomatic) type theory** — The presentation of type theory as a formal system
admitting many interpretations, whose role is pragmatic: writing programs and building
proof checkers.

## Tait's method and logical relations

**Logical relations (Tait's method)** — The central proof method of the course:
interpreting each type as a predicate (or relation) on terms, developed by W. W. Tait
(the "computability method") and extended by Girard; used both semantically to express
typing constructs and formally to prove language properties.

**Strong normalization** — The property that there are no infinite β-reduction sequences
from a well-typed term; better stated as the validity of *transfinite induction on
reduction*, from which further properties follow.

**Transfinite induction on reduction** — The principle that to prove a property P of every
well-typed term it suffices to show P(M) whenever every immediate β-reduct of M satisfies
P; the practically useful form of strong normalization.

**Confluence / weak confluence** — Weak confluence (every one-step split can be
reconciled) implies confluence (transitivity of "has a common reduct"); the implication
holds for well-typed terms precisely because of strong normalization.

**Head reduction / weak head reduction** — A deterministic evaluation strategy for closed
terms (at most one reduction applies to a term), corresponding to lazy execution of
closed functional programs; head reduction descends through projection and the function
position of application so head expansion holds.

**Observable / answer type** — A two-element type `2` of observables (`yes`/`no`,
accept/reject) giving a directly observable outcome of a computation; a complete program
is a closed term of answer type.

**Preservation** — If `M : A` and `M ↦ M'`, then `M' : A`; typing is stable under
transition.

**Termination** — Every complete program (closed term of answer type) evaluates to `yes`
or `no`; more generally every closed well-typed term reaches a final state.

**Hereditary termination (computability predicate)** — A type-indexed family of predicates
`HT_A(M)` strengthening mere termination: e.g. a hereditarily terminating function yields
a hereditarily terminating result on hereditarily terminating arguments; defined by
induction on the structure of the type.

**Head expansion** — Closure of a predicate under "reverse execution": if `HT_A(M)` and
`M' ↦ M`, then `HT_A(M')`; holds because hereditary termination speaks only of a term's
evaluation behavior.

**Fundamental theorem (of logical relations)** — That every well-typed term (under any
hereditarily terminating substitution for its free variables) satisfies the predicate
assigned to its type; the theorem whose proof "writes itself" once the actions on
candidates are defined.

## Fixed points, inductive and coinductive types

**Tarski's fixed point theorem** — A monotone function on a complete lattice (e.g. a
powerset ordered by inclusion) has a complete lattice of fixed points, in particular a
least and a greatest.

**Monotone operator / pre-fixed and post-fixed point** — For monotone `F`, a pre-fixed
point satisfies `F(A) ⊆ A` (also called *F-closed*) and a post-fixed point satisfies
`A ⊆ F(A)` (*F-consistent*).

**Least (μ) and greatest (ν) fixed point** — `μ(F)` is the intersection of all pre-fixed
points (the strongest property closed under `F`); `ν(F)` is the union of all post-fixed
points (the weakest property consistent with `F`).

**F-algebra / F-coalgebra (Lambek's Lemma)** — Viewing the lattice as a category, a
pre-fixed point is an `F`-algebra and a post-fixed point an `F`-coalgebra; `μ(F)` is the
initial algebra and `ν(F)` the final coalgebra, and both are fixed points (Lambek's
Lemma).

**Induction and coinduction principles** — The least fixed point yields rule
induction (to show `μ(F) ⊆ A`, show `A` is `F`-closed); the greatest yields
coinduction (to show `A ⊆ ν(F)`, show `A` is `F`-consistent).

**Rules as inductive definitions** — A set of inference rules defines assertions (formal
judgments over abstract binding trees) as the least fixed point `μ(F_R)` of the monotone
operator that closes a set under the rules; a non-monotone "rule" (e.g. with a negative
premise) defines nothing.

**Bekić's Lemma** — The reduction of a simultaneous least fixed point of interdependent
monotone operators to an iterated sequence of least fixed points, via a diagonalization
lemma.

**Natural numbers type (N)** — The inductive type generated by `zero` and `succ` with a
recursor `rec`; hereditary termination at `N` is the *strongest* property closed under
zero and successor, giving mathematical induction.

**Co-natural numbers** — The coinductive dual (generator `gen`, observation `pred`),
illustrating the extension of Tait's method to coinductive types via greatest fixed
points; admits an infinite `ω = succ(ω)`.

## Normalization and Kripke logical relations

**Normalization** — Every well-typed term can be brought to fully *simplified* form
(β-normal form), including reduction under binders and of open terms; contrasted with
termination (fully *evaluated* form of closed terms).

**β-reduction / normal form / normalizable** — The reduction relation on open terms; a
term is in normal form if β-irreducible, and `norm_β(M)` holds if some normal form is
reachable.

**Kripke logical relations** — A generalization of Tait's method to open terms in which
computability predicates are indexed by a *possible world* (a variable context)
determining the free variables, and must be *monotone* with respect to world extension.

**Possible world / future world / monotonicity** — Contexts are pre-ordered by extension;
an extending context is a *future world*, and a term computable in a world stays
computable in all future worlds (anti-monotonicity of the indexed predicate).

**Neutral term / normalizable neutral** — A term whose head is a variable
(`U ::= x | U·1 | U·2 | ap(U,M)`); normalizable-neutrality `NN_A(U)` is proved together
with hereditary normalization.

**Pas-de-deux** — Tait's paired simultaneous induction relating normalizable neutral terms
to hereditarily normalizing terms (`NN_A(U) ⇒ HN_A(U)` and `HN_A(M) ⇒ norm_β(M)`), from
which normalization of open terms follows.

## Consolidating logical relations: candidates

**Candidate for computability** — A predicate on closed terms of a type that is closed
under head expansion; the general notion abstracting the hereditary-termination and
hereditary-normalization predicates.

**Relational action of type constructors** — Each type constructor has a defined action on
candidates (e.g. `C1 → C2 = { M | if M1 ∈ C1 then ap(M,M1) ∈ C2 }`); defining these
actions makes the fundamental theorem automatic for each introduction and elimination
rule.

**Candidate family** — For open terms, a family assigning to each context an open candidate
that shrinks as the context grows (`∆' ≤ ∆ ⇒ F(∆) ⊆ F(∆')`), the Kripke-indexed form of a
candidate.

## Girard's method and parametricity

**System F / polymorphism** — Second-order (type) quantification, `∀X.A`, with type
abstraction `ΛX.M` and type application `Ap(M,A)`; types are never evaluated during
execution.

**Impredicativity** — The circularity inherent in type quantification: a substitution
instance `[A/X]B` can be structurally larger than `∀X.B`, so hereditary termination cannot
be defined by induction on type structure in the naive way.

**Predicativity / type stratification / monster-barring** — Restricting type variables to
range only over quantifier-free "simple" types (stratifying into polytypes) so instances
shrink; salvages Tait's method at the cost of expressiveness, and is the basis of
dependent type theory's independent definition of type constructors.

**Girard's method** — Overcoming impredicativity by letting a type variable range not over
type expressions but over *all* type candidates (a postulated set of "type candidates"),
enlarging the range of significance to behavioral specifications.

**Behavioral specification** — Any property of terms closed under head expansion, i.e.
determined by how a program behaves rather than what it is; types induce such
specifications but there are (uncountably) more specifications than types.

**Type candidate / candidate assignment** — A closed set of terms closed under head
expansion (Girard) or a binary relation with the required closure (Reynolds); a candidate
assignment `η` maps each free type variable to a candidate, "cutting the knot" of
impredicativity.

**Compositionality** — The lemma that the meaning of a substituted type `[A/X]B` under `η`
equals the meaning of `B` under `η` extended with the candidate for `A`; the key step in
the polymorphism proofs.

**Consistency of second-order arithmetic / Gödel's theorem** — Termination of System F
implies the consistency of second-order arithmetic, so by Gödel's theorem the proof must
use methods (the postulated candidates) going beyond mere behavioral specifications.

**Parametricity (Reynolds)** — The account of the "uniform" behavior of polymorphic
functions using *binary* logical relations (rather than Girard's unary predicates);
the type discipline determines abstraction/representation-independence properties enjoyed
by programs, known only from their types.

**Logical similarity** — Reynolds's relation `M ∼ M' ∈ A [η]` defined by induction on the
type, with type variables interpreted by relation candidates; from it exact equality and
semantic membership are defined.

**Zig-zag completeness (ZZC)** — The closure condition `R ∘ Rᵒᵖ ∘ R ⊆ R` required of
candidates, ensuring the induced equality is transitive (and, with symmetry, an
equivalence).

**Exact (computational) equality** — Equality of two terms in a type defined via
parametricity/logical similarity (reflexivity is the parametricity theorem itself);
`Γ ≫ M ∈ A` (semantic membership) is `M` exactly equal to itself.

**Erasure** — Understanding the dynamics via tacit removal of type information (type
labels off λ-abstractions, `ΛX.M` and `Ap(M,A)` replaced by trivial forms), so no type
substitution is needed at run time.

## Formal (definitional) equality and its decision procedure

**Definitional equivalence (formal equality)** — The inductively defined judgment
`Γ ⊢ M ≡ M' : A` for well-typed terms, postulating β rules (computation) and η rules
(unicity) for product and function types.

**β and η rules; unicity; universal property** — β rules express computation (cancellation
of elimination against introduction); η rules express the *unicity* conditions that fully
determine a negative type's elements (every `Σ` element is a pair, every `Π` element a
λ-abstraction), i.e. its universal property.

**Negative vs positive polarity** — Negative types (`Π`, `Σ`, `1`) are characterized by
their elimination forms with βη laws; positive types (sums, `N`) are characterized by
their introduction forms, with η/unicity laws that are problematic and do not scale to the
infinitary case.

**Algorithmic equality / equivalence checking** — A syntax-directed algorithm
(`M ⇔ M' ↓ A` with auxiliary `U ↔ U' ↑ A`) that decides definitional equivalence,
terminating by induction on the type (main judgment) and on neutral terms (auxiliary).

**Soundness and completeness (of equivalence checking)** — Soundness: the algorithm's
judgment implies definitional equivalence (by closure under well-typed head expansion);
completeness: definitional equivalence implies algorithmic equivalence (by a Tait-method
logical-equivalence argument).

**Logical equivalence** — The type-indexed relation `M = M' ∈ A [∆]` mediating the
completeness proof, defined so that its fundamental lemma yields the algorithm's
completeness.

**Decidability of type checking via equivalence** — In dependent type systems decidability
of type checking reduces to decidability of equivalence, motivating the decision procedure
for βη-equivalence.

## The LF logical framework

**Logical framework (LF)** — A dependently typed λ-calculus for defining logical systems
and type theories as *signatures*; here notated after AUTOMATH (square brackets for
λ-abstraction, curly braces for Π-types, juxtaposition for application).

**Higher-order abstract syntax** — Representing the binding and scope of object-language
variables using the framework's own function space, so the framework's substitution
implements object-language substitution.

**Basic, hypothetical, and general judgments** — The forms of judgment (and evidence for
them) expressed in LF; the *hypothetico-general* judgment form (dependent function
classes) is central to defining many logical systems.

**Kinds, families, objects (classes, sorts, objects)** — LF's three levels: kinds classify
type families, families (types) classify objects; in the equational reformulation these
are *classes*, the universe *Sort*, and *objects*.

**Signature** — A context declaring the generators (constants) that populate the sorts,
together with the equations governing them; defining a logical system is giving a
signature, whose *adequacy* is the intended correspondence with the represented system.

**Adequacy** — The property that the canonical forms of designated LF types are in
bijection with the syntactic objects of the represented formalism.

**Canonical and neutral forms** — LF in canonical form defines syntax-directed judgments
for canonical (long βη-normal) and neutral (elimination-headed) kinds, families, and
objects, eliminating the need for a separate equivalence checker.

**Hereditary (canonizing) substitution** — A type-directed substitution that re-canonizes
on the fly (returning the canonization of `[M/x]N`, not `(λx.N)M`), indexed by the *spine*
(dependency erasure) of the substituting term's type; well-defined by a lexicographic
induction.

**Syntactic vs semantic logical framework** — A syntactic LF presents a system using only
generators, so its equational theory is the framework's native (decidable) congruence; a
semantic LF also admits defining equations, whose enriched equality may be undecidable.

**Equality reflection** — The rule (in the equational/semantic LF) internalizing an
equality *type/class* into a judgmental equality; it supports induction on derivations but
requires explicit equality rules.

**Extensional equality class** — An equality class governing objects of a sort with a
*unicity* rule ("at most true": any two witnesses are equal) whose elimination derives the
corresponding equality judgment; makes equality at function type extensional.

## Formal dependent type theory (via LF signatures)

**Gödel's System T / dependent T** — Presented as LF signatures (`tp : Sort`,
`el : tp → Sort`, `nat`, `zero`, `succ`, `rec`, …); "dependent T" generalizes from types
to `A`-indexed families of types and generalizes the recursor to eliminate into a family.

**Dependent function type (Π)** — `pi A1 A2` with `lam`/`app` and βη equations; the
codomain type `A2 x` may depend on the argument `x : A1`.

**Dependent sum type (Σ)** — The dependent product/pair type, in a *negative* variant
(projections `fst`/`snd` with βη) and a *positive* variant (elimination by `split`);
"aka product, alas."

**Equality type vs identity type** — The extensional *equality* type (with equality
reflection and UIP, validating function extensionality) versus the intensional *identity
(identification)* type, which shares formation/introduction (`refl`) but has a different
elimination and does not validate function extensionality.

**J (identity elimination) / least reflexive relation** — The eliminator `j` for the
identity type, whose computation rule `id-β` fires on `refl`; the identity type `Id_A` is
"the least reflexive relation" on a type — a formulation the lecture flags as
"begging the question" because it is defined uniformly, independently of `A`.

**Uniqueness of identity proofs (UIP)** — The principle `id-uip` that any two elements of
an identity type are (judgmentally) equal; holds for the extensional equality type,
contrasted (cf. the HoTT book) with the possibility of higher identifications
`Id_{Id_A}(p1,p2)`.

**Tarskian / Russellian universes** — A universe as a class of *type codes* with an
`ext`/extension map (Tarskian, `u i` with `ext i a`) versus universes whose codes are
literally types (Russellian, `Sort`); a *cumulative hierarchy* of levels `Lvl` with lift
`↑` and cumulativity equations.

## Semantic (computational) dependent type theory: the meaning explanations

**Meaning explanation (computational/Brouwerian)** — The semantic account of dependent type
theory (after Martin-Löf's *Constructive Mathematics and Computer Programming*, 1976/82) in
which the meaning of each judgment is explained directly in terms of the computational
behavior of programs — "everything is computational."

**Construction** — The primitive notion the semantics starts from: an algorithm/program,
taken as a basic human faculty; expressions `E` (abstract binding trees, including *types*)
are constructions, with a deterministic evaluation relation `E ⇓ E₀` to a value/canonical
form.

**Canonical form / value** — The terminal result of evaluation (`E ⇓ E₀`); types are
explained in terms of their canonical members, and evaluation is deterministic.

**Canonical-forms method** — Defining `A type`, `M ∈ A`, and the equality judgments by:
`A type` means `A` evaluates to a canonical type; `M ∈ A` means `M` evaluates to a
canonical member; extended pointwise to type and element equality.

**The four judgments** — `A type` (A is a type), `A ≐ A'` (type equality), `M ∈ A`
(membership), and `M ≐ M' ∈ A` (element equality in a type) — the basic judgment forms of
computational type theory, each explained via canonical forms.

**Presupposition** — `A type` is defined as `A ≐ A type`, and `M ∈ A` as `M ≐ M ∈ A`;
membership presupposes typehood, so equality is the primitive and the one-place judgments
are its reflexive instances.

**Predicativity / level structure (staging)** — The requirement that all the type
definitions be predicative, exhibiting an apparent level structure or staging so that no
type is defined by quantification over a collection including itself.

**Open-endedness** — The principle that "nothing depends on the non-existence of
programs": the semantics is stable under adding new programs/constructions, so definitions
must not rely on there being no program of some behavior.

**Family of types (functionality)** — A type `B_x` depending on `x : A` is an
`A`-indexed *family of types*: if `M ∈ A` then `[M/x]B type`, and equal arguments yield
equal types (*functionality*); the semantic basis of `Π` and `Σ`.

**Types as specifications / behavioral / extensional** — Types are inherently *behavioral*
specifications of a program's extensional "I/O behavior"; membership and equality are
defined by observing evaluation, not by the syntactic form of terms.

**Propositions-as-types / proofs-as-programs** — The viewpoint that specifications, types,
and propositions coincide (all describing program behavior), so a proof of a proposition
is a program inhabiting the corresponding type.

**Hypothetical / general judgment (Γ ≫ J)** — The extension of the categorical judgments to
open terms under a context `Γ` (empty or `Γ, x : A`); a hypothetical judgment asserts a
judgment holds functionally in its assumptions.

**Exact equality (semantic)** — The course's culminating notion of program equality in a
type, defined semantically (by computational behavior), toward which the informal
semantics of "basic" dependent type theory builds.
