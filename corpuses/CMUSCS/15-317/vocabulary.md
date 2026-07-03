# 15-317 — Constructive Logic · Vocabulary

Source: CMU 15-317 Constructive Logic, Spring 2023, Frank Pfenning. Per-lecture note PDFs. <http://www.cs.cmu.edu/~fp/courses/15317-s23/schedule.html>

Terms are ordered by course progression (Lecture 1 through Lecture 25).

## Foundations: constructive vs. classical logic (Lecture 1)

**logic** — The study of the principles of valid inference and demonstration; in this course, studied for its applications to the specification and verification of computer hardware and software.

**Russell's paradox** — The paradox that the set R = {x | x ∉ x} satisfies R ∈ R ↔ R ∉ R; a motivating foundational crisis whose type-theoretic resolution (ramified/simple type theory) foreshadows the propositions-as-types view.

**intuitionism** — Brouwer's view that mathematics is the carrying out of mental constructions, so a proposition is asserted only when we possess a construction (proof) for it, rather than by appeal to an absolute external truth.

**intuitionistic meaning of the connectives (BHK explanation)** — The informal definition of truth in which a proof of A ∧ B is a proof of A together with a proof of B; of A ∨ B, a proof of one disjunct; of A ⊃ B, a construction transforming a proof of A into a proof of B; of ∃x.A, a witness d with a proof of [d/x]A; of ∀x.A, a construction mapping each d to a proof of [d/x]A.

**law of the excluded middle** — The classical principle A ∨ ¬A, rejected in general by intuitionists because we may know neither a proof of A nor a refutation of A (e.g. Goldbach's conjecture).

**classical logic** — A logic that accepts the law of excluded middle and the Boolean view that every proposition is either true or false.

**constructive logic** — A logic whose proofs describe effective (mechanically executable) constructions, i.e. algorithms; the emphasis is on effectiveness, illustrated by contrast with the non-constructive Banach–Tarski paradox and the axiom of choice.

**proofs as programs / extracting a program** — The idea that an intuitionistic proof corresponds to a function; e.g. a proof of ∀x. even(x) ∨ odd(x) by induction extracts a recursive ML function, with the induction hypothesis becoming a recursive call.

**primitive recursion** — The schema f(0) = c, f(x′+1) = g(x′, f(x′)); the general form of the function extracted from a proof by mathematical induction, where every recursive call is on the predecessor.

**double-negation / hiding computational content** — Because a proof of ¬A (= A ⊃ ⊥) has no computational content, replacing A by ¬¬A "hides" the witness; classically A and ¬¬A are equivalent, but intuitionistically ¬¬A does not imply A.

**law of excluded middle vs. proof by contradiction** — The distinction between proving A by assuming ¬A and deriving a contradiction (indirect proof, rejected intuitionistically) and proving ¬A by assuming A and deriving a contradiction (accepted); classically indistinguishable, intuitionistically very different.

## Natural deduction (Lectures 2–3)

**judgment** — An object of knowledge, something we may know; a judgment is evident if we in fact know it. The central judgment of logic is "A is true" (A true), presupposing A is a proposition.

**proposition** — A statement whose meaning is given by what counts as a verification of it (Martin-Löf); kept strictly separate from the notion of judgment.

**inference rule** — A schema J₁ … Jₙ / J with premises J₁…Jₙ and conclusion J; A, B, C range over propositions and J over judgments.

**introduction rule** — A rule that specifies how to conclude (introduce) a connective, thereby defining its meaning; e.g. ∧I concludes A ∧ B true from A true and B true.

**elimination rule** — A rule specifying how to use a connective's truth; derived from the introduction rules, e.g. ∧E₁, ∧E₂ extract the conjuncts.

**natural deduction** — The system of judgments, propositions, and introduction/elimination rules for intuitionistic logic, first proposed by Gentzen (1935) and studied by Prawitz (1965), designed to model mathematical reasoning directly.

**hypothetical judgment** — A judgment J₁,…,Jₙ ⊢ J established by a hypothetical deduction of the succedent J from the undischarged antecedents (hypotheses) J₁,…,Jₙ.

**substitution principle** — The defining property of hypothetical judgments: a proof of A true may be substituted ([D/u]E) for every use of a hypothesis A true labeled u.

**discharge / scope of a hypothesis (label u)** — Implication introduction introduces hypothesis A true under a fresh label u available only above the ⊃Iᵘ inference; the hypothesis is discharged there, and violating the scope makes the system inconsistent.

**conjunction (∧)** — Characterized by one introduction rule with two premises and two elimination rules (∧E₁, ∧E₂).

**truth (⊤)** — The nullary conjunction: one introduction rule with no premises and no elimination rule.

**implication (⊃)** — A ⊃ B true if B true under the hypothesis A true (⊃Iᵘ); eliminated by modus ponens ⊃E from A ⊃ B and A.

**disjunction (∨)** — Two introduction rules (∨I₁, ∨I₂); its elimination ∨Eᵘ,ʷ proves C from A ∨ B by case analysis, using hypothesis A in one branch and B in the other.

**falsehood (⊥, absurdity)** — The nullary disjunction: no introduction rule, and an elimination ⊥E concluding any C from ⊥ (ex falso quodlibet).

**negation (¬A)** — Defined by notational definition as A ⊃ ⊥; ¬A is true precisely when assuming A leads to a contradiction.

**inconsistent system** — A deduction system in which every arbitrary proposition A can be derived true; such a system is useless for proof, and natural deduction becomes inconsistent if scope restrictions are violated.

**notational definition** — Defining a connective as an abbreviation for a proposition already understood (e.g. A ↔ B ≜ (A ⊃ B) ∧ (B ⊃ A), ¬A ≜ A ⊃ ⊥); such derived rules have different status from meaning-giving introduction/elimination rules.

**schematic variable** — A metavariable (A, B, …) in a rule or proof for which arbitrary propositions may be substituted, still yielding a correct proof.

**harmony** — The balance in which the elimination rules of a connective are neither too strong nor too weak relative to its introduction rules; established by local soundness and local completeness.

**local soundness** — The property that elimination rules are not too strong: any elimination applied to the result of an introduction can be reduced to a more direct proof, witnessed by a local reduction (⇒R).

**local completeness** — The property that elimination rules are not too weak: any proof can be expanded so its results, recombined by introduction, reprove the original proposition, witnessed by a local expansion (⇒E).

**local reduction** — The rewriting of an introduction immediately followed by an elimination into a direct proof; the witness of local soundness and, computationally, a step of reduction.

**local expansion** — The rewriting of an arbitrary proof of a connective into one that eliminates and then re-introduces it; the witness of local completeness.

**proof reduction as computation** — The principle that reducing the "detour" of an introduction followed by an elimination corresponds to a step of computation in a programming language.

## Curry–Howard: proofs as programs (Lecture 4)

**Curry–Howard isomorphism (proofs as programs, propositions as types)** — The correspondence in which propositions are types, proofs are programs (proof terms), introduction rules are value constructors, elimination rules are destructors, and proof reduction is computation (Howard 1969; extended by Martin-Löf into intuitionistic type theory).

**proof term (M : A)** — A syntactic term M that both represents a proof of A true and is read as a program of type A; the inference rules of natural deduction are annotated with proof terms.

**synthetic vs. analytic judgment** — A true is synthetic (it needs external evidence, a natural deduction), whereas M : A is analytic (it contains its own evidence and can be effectively checked).

**product type (A × B)** — The type corresponding to conjunction; constructor is the pair ⟨M, N⟩, destructors are the projections fst and snd.

**unit type (1)** — The type corresponding to ⊤, with single value ⟨⟩ and no destructor.

**function type (A → B)** — The type corresponding to implication; constructor is λ-abstraction λu.M, destructor is application M N.

**λ-abstraction / application** — The proof-term constructs for implication: λu.M forms a function of parameter u (⊃I), and M N applies function M to argument N (⊃E).

**sum type (A + B)** — The disjoint-union type corresponding to disjunction; constructors are the injections inl and inr, destructor is the case construct.

**empty/void type (0)** — The type corresponding to ⊥, with no constructor; its destructor abort M turns a term of type ⊥ into a term of any type, but never actually computes.

**β-reduction (term reduction M ⇒R M′)** — Reduction that fires when a destructor meets a constructor: (λx.M) N ⇒R [N/x]M, fst⟨M,N⟩ ⇒R M, case(inl M, u.N, w.P) ⇒R [M/u]N, etc.

**substitution [N/x]M** — Capture-avoiding replacement of x by N in M; the mechanism by which function application computes, requiring renaming of bound variables to avoid capture.

**redex** — The subterm being reduced in a computation step (a destructor applied to a constructor).

**progress / preservation** — The two theorems relating typing and reduction: progress ("well-typed programs cannot go wrong" — a well-typed term is a value or reduces) and preservation/subject reduction (if M : A and M ⇒R M′ then M′ : A).

**most general type** — For a well-typed term there is a most general type, corresponding to the most general proposition proved by a proof term; other typings arise by instantiating schematic variables.

## Verifications, proof search, sequent calculus (Lectures 5–9)

**verificationist point of view** — The position that the meaning of a connective is fixed by its introduction rules, from which the soundness and completeness of the elimination rules is derived and checked.

**verification (A↑)** — A proof whose evidence has a special normal form, proceeding by introduction rules and analyzing only the constituents (subformulas) of A; the meaning of a proposition is given by its verifications.

**use (A↓)** — The judgment "A may be used," holding when A is a hypothesis or obtained from a hypothesis by elimination rules; uses are built top-down by elimination rules.

**intercalation** — The proof-search reading of verifications: one works "toward the middle," applying introduction rules from below and elimination rules from above.

**bidirectional typechecking** — The programming-language reading of verifications, splitting typing into checking (M ⇐ A, both term and type given) and synthesis (M ⇒ A, type inferred from M); verifications, intercalations, and bidirectional typings coincide.

**global soundness / global completeness** — The whole-proposition counterparts of local soundness/completeness: using a verification of A to derive C↑ gains no information over deriving C↑ directly (soundness), and any use A↓ can be turned into a verification A↑ (completeness).

**normal deduction** — A deduction containing no local-reduction redex (no introduction immediately eliminated); every verification is normal.

**subformula property** — The property that a normal proof/verification contains only subformulas of the proposition proved; it fails for non-normal proofs that detour through non-subformulas.

**normalization** — The process transforming an arbitrary proof of A true into a verification A↑, establishing that every true proposition has a normal proof; also the coincidence of natural deduction, sequent calculus, and verifications on provability.

**theorem proving / proof checking / type inference** — Three decision problems on M : A: theorem proving (given A, find some M), proof checking (given M and A, decide M : A), and type inference (given M, find some A).

**higher-order abstract syntax** — Representing a binder's scope by an actual metalanguage function (term → term), so bound variables are metalanguage variables and hypotheses are supplied by application.

**sequent calculus** — Gentzen's (1935) formal system for proof search, presenting verifications with both left and right rules applied bottom-up; Kleene's cut-free G3 formulation is used here.

**sequent (Γ ⟹ C)** — A judgment with antecedents Γ (assumptions available for use, corresponding to A↓) and a succedent C (the proposition to be verified, corresponding to C↑).

**antecedent / succedent** — The left side (an assumption A available for use) and the right side (the proposition C to be verified) of a sequent.

**right rules / left rules** — Sequent rules obtained from the introduction rules (right, e.g. ∧R, ⊃R, ∨R) and from flipping the elimination rules upside down (left, e.g. ∧L, ⊃L, ∨L).

**principal formula** — The formula introduced or decomposed by the last rule of a sequent inference.

**initial sequent / identity rule (id)** — The rule Γ, P ⟹ P concluding a succedent from a matching antecedent, restricted to atomic P; it links the left and right judgments.

**persistence of antecedents** — The property that once an assumption is added it remains available throughout the derivation above, since every rule copies its antecedents to all premises.

**consistency** — The theorem that ⟹ ⊥ is not derivable: no left, right, or identity rule applies to it.

**disjunction property** — The theorem that if ⟹ A ∨ B then ⟹ A or ⟹ B, provable because with no antecedents only a right disjunction rule can conclude A ∨ B.

**identity theorem (identity expansion)** — The theorem that Γ, A ⟹ A is derivable for every proposition A (not just atomic), by induction on A; the global form of local completeness of the elimination rules.

**weakening** — The admissible structural rule: if Γ ⟹ C then Γ, A ⟹ C; an unused antecedent may be added.

**contraction** — The admissible structural rule: if Γ, A, A ⟹ C then Γ, A ⟹ C; one copy of an antecedent suffices.

**derivable vs. admissible rule** — A derivable rule has a fixed closed-form derivation and stays valid under any extension ("once valid, always valid"); an admissible rule holds for every instance but not by one uniform derivation and must be re-proved when the language grows.

**cut (admissibility of cut)** — The rule: if Γ ⟹ A and Γ, A ⟹ C then Γ ⟹ C; proved admissible by nested induction on the cut formula and the two derivations. It expresses that the left rules are not too strong.

**cut formula / side formula** — The cut formula A is the proposition cut; the principal cases of the cut proof mirror the local-soundness reductions of natural deduction, and side-formula cases permute the cut.

**cut-free sequent calculus** — The calculus without the cut rule (identity restricted to atoms), in which every rule has the subformula property — essential for systematic proof search.

**cut elimination theorem** — For any derivation using cut there is a cut-free derivation of the same sequent (Gentzen's Hauptsatz), proved via admissibility of cut.

**classical sequent calculus (multiple conclusions)** — Gentzen's encoding of classical logic obtained by allowing multiple, persistent succedents (Γ ⟹ Δ), read as "the conjunction of Γ entails the disjunction of Δ"; suffices to derive excluded middle and double-negation elimination.

## Programming with proofs; data, induction, continuations (Lectures 10–12)

**congruence rules** — Rules permitting a reduction to fire inside a subterm (e.g. from M ⇒ M′ conclude fst M ⇒ fst M′), needed to reduce a redex buried inside a larger term.

**multistep reduction (⇒*)** — The reflexive–transitive closure of single-step reduction.

**value judgment / evaluation** — The judgment "M value" marking a computation result; because results are values, functional computation is called evaluation, and λx.M is a value (no reduction under λ).

**type preservation / progress / determinism** — For the term calculus: preservation (reduction preserves type), progress (a well-typed term is a value or reduces), and small-step determinism (the next step is unique).

**negative vs. positive connectives** — A polarity distinction with computational consequences: lazy A ∧ B (projections) is negative, eager A ⊗ B (case) is positive, and A ⊃ B is negative — lazy/eager behavior follows from polarity.

**natural numbers as a type (nat)** — The inductive type n ::= 0 | s n, given by introduction rules for 0 : nat and s M : nat.

**rule induction (induction over derivations)** — The core metatheoretic technique of inducting over the structure of a derivation to prove metatheorems.

**inversion** — Given a judgment known to be derivable, enumerating exactly the rules that could have concluded it; zero possible rules yields a contradiction, one yields a subderivation.

**Heyting arithmetic** — Intuitionistic arithmetic over the natural numbers (the constructive counterpart of Peano arithmetic), here extending natural deduction rather than being axiomatic.

**induction rule (natE)** — The elimination rule for nat: to prove C(n), prove the base case C(0) and the step C(s x) under the parametric hypothesis C(x); this rule is exactly proof by induction.

**parametric judgment** — A hypothetical judgment carrying a fresh parameter (e.g. x : nat), used to state the induction rule without explicit universal quantification.

**decidability of equality** — The theorem ∀n,k. n = k ∨ ¬(n = k), proved by nested induction; a decision procedure for equality is extracted from disjointness and coverage of the eq/neq judgments.

**primitive recursion (recursor R)** — The computational reading of natE: R(n, M₀, x.r.Mₛ) with base M₀ and step Mₛ (x for the predecessor, r for the recursive result), computing R(s n′, …) ⇒ [R(n′,…)/r][n′/x]Mₛ; proofs by induction correspond exactly to functions by primitive recursion.

**evaluation context (C[ ])** — A term with a single hole; congruence is refactored into a judgment "C evctx" plus one rule M ⇒R M′ ⟹ C[M] → C[M′] (Wright–Felleisen).

**proof by contradiction (PbC) / Gentzen's CC** — Classical proof rules: PbC assumes ¬A, derives ⊥, concludes A; CC (a ⊥-free variant) assumes ¬A, derives A, concludes A; the two are inter-derivable and CC has a computational reading as call/cc.

**continuation type (¬A)** — A connective with no introduction rule whose values are runtime-captured evaluation contexts (holes of type A).

**call/cc and throw** — The proof terms for classical reasoning: callcc(k.M) captures the current evaluation context and binds it to k : ¬A; throw M N abandons the current context and resumes a captured one, its result type arbitrary.

**continuations as (lexically scoped, first-class) control** — callcc/throw let a computation escape its local context (like an exception) but are lexically scoped and first-class; callcc is a control effect ("the goto of functional languages"), impure, and inconsistent with dependent type theory.

## Predicate calculus and quantifiers (Lecture 13)

**predicate calculus** — The extension of propositional logic with predicates and quantification ∀x.A(x), ∃x.A(x), leaving the domain of quantification unspecified.

**universal quantifier (∀I / ∀E)** — ∀x.A(x); introduced by proving A(a) for a new parameter a (subject to the eigenvariable condition), eliminated by instantiating A(t) for any element t.

**existential quantifier (∃I / ∃E)** — ∃x.A(x); introduced by giving a witness t with A(t), eliminated (like ∨E) by assuming A(a) for a fresh parameter a and proving a conclusion C that must not mention a.

**element judgment (a elem)** — The judgment that a is an element of the (unspecified) domain of quantification, whose derivations must be well-formed for A(t) to be a well-formed proposition.

**eigenvariable / parameter condition** — The freshness side condition requiring the parameter introduced by ∀I (and ∃E) to be genuinely new and not to escape its scope; violating it is unsound.

**substitution principle for parameters** — The local-reduction mechanism substituting [t/a] throughout a parametric derivation (capture-avoiding, and into the judgments themselves), distinct from hypothesis substitution.

**proof terms for quantifiers** — A ∀-proof is a function (λx.M : ∀x.A(x), applied M t : A(t)); an ∃-proof is a pair ⟨t, M⟩ of witness and proof, eliminated by split(M, x.u.N) rather than by projection.

## Proof search, decision procedures, focusing (Lectures 14–17)

**decision procedure for intuitionistic propositional logic** — The problem of deciding, for each A, whether ⟹ A; naive induction fails because premises can be larger than conclusions, motivating restricted calculi and loop-checking.

**loop-checking** — A search technique that fails/backtracks whenever a proof goal (sequent) recurs; turns an otherwise non-terminating search into a decision procedure, and a fully-explored loop yields a refutation of provability.

**well-founded / multiset ordering** — Orderings supporting terminating search: a well-founded measure has no infinite strictly-decreasing chain; the multiset ordering (Dershowitz–Manna) replaces an element by finitely many strictly smaller ones and is well-founded if the base order is.

**restricted (contraction-free) sequent calculus (Γ → A)** — Dyckhoff's calculus that consumes principal formulas eagerly so every premise is smaller than its conclusion, guaranteeing termination; it has no contraction and refined left-implication rules (⊃⊃L, ∧⊃L, ∨⊃L, etc.) that retire the non-terminating ⊃L rule.

**invertible rule** — A rule whose premises hold iff its conclusion does, so it can be applied in bottom-up search without backtracking; e.g. ∧, ⊃, ⊤ are right-invertible and ∧, ∨, ⊤, ⊥ are left-invertible.

**ordered antecedents (Ω) / structural rule** — Replacing the unordered context by an ordered list Ω forces a left rule to act only on the first element (removing the choice of which antecedent to decompose); a structural rule shuffles a non-invertible proposition from Ω into the unordered Γ.

**inversion staging (right-inversion / left-inversion / choice)** — Three mutually dependent sequent forms that stage search as: decompose right-invertibles, then left-invertibles, then reach a choice sequent, and repeat.

**choice sequent** — The sequent reached once all invertible rules are exhausted, where a genuine nondeterministic choice (∨R, ⊃L, id) must be made.

**certification / proof certificate** — Designing a prover to emit an independently checkable certificate (here a natural-deduction proof term) so that trust rests on a small checker, not the complex prover (LCF/ML tradition of a trustworthy core).

**proof-term annotated sequents** — Instrumenting each sequent rule with proof terms (⟨M,N⟩ for ∧R, fst/snd for ∧L, λx.N for ⊃R, M N for ⊃L, inl/inr for ∨R, case for ∨L, abort for ⊥L) so a derivation computes a checkable term validated by a bidirectional checker.

**focusing** — A proof-search refinement chaining a maximal sequence of non-invertible choices on one formula into a single focused phase, collapsing redundant search.

**right focus / left focus** — The focused sequents Γ → [C] and Γ, [A] → C, in which focus is inherited by all subformulas of the focused proposition until an invertible connective forces focus to be lost.

**polarity (positive vs. negative connectives)** — The classification of connectives by focusing behavior: positive (∨, ⊥, ⊗, and optionally ∧) make progress under right focus; negative (⊃, &, and optionally ∧) under left focus; each atom is assigned a consistent polarity (P⁺ / P⁻).

**backward vs. forward chaining (via polarity)** — Making all atoms negative yields goal-directed backward chaining (goal to subgoals); making all atoms positive yields forward chaining (deriving new facts from premises until the goal appears).

## Logic programming (Lectures 18–22)

**logic programming language** — A language in which computation is the construction of a derivation under a fixed search strategy; broadly backward-chaining (Prolog) or forward-chaining (Datalog).

**Horn clauses** — The restricted fragment for logic programs: clauses D ::= ∀x.D | G ⊃ P | P and goals G ::= P | G₁ ∧ G₂ | ∃x.G; backward chaining over Horn clauses corresponds exactly to focusing with negative atoms.

**goal-directed proof construction / clauses as rules** — Backward-chaining execution: a query (goal) is matched, in clause order, against clause conclusions, generating subgoals from the premises.

**backtracking / subgoal ordering / clause ordering** — On subgoal failure, search returns to the most recent choice point to try another clause; subgoals are attempted left-to-right and clauses in presentation order, and these orderings critically affect termination and the set of solutions found.

**answer substitution** — The binding of the query's free variables reported on success, with query variables read existentially, in lieu of the full derivation.

**metacircular interpreter / rules as propositions (reification)** — A backward-chaining engine written in Prolog itself, requiring inference rules to be reified as data (a premise-free rule becomes a universally quantified atom; a one-premise rule becomes ∀…(G ⊃ P)); it inherits subgoal/clause order from the metalanguage.

**type inference as a logic program** — Because typing rules are syntax-directed, rewriting them as a Prolog program makes unification perform Hindley–Milner-style inference on the remaining type equations.

**goal stack (Ω) / success continuation** — An ordered list of the subgoals still to be solved after the current one, letting the ∧R rule be rewritten with a single premise; it makes subgoal ordering explicit and plays the role of a success continuation.

**logic variable** — A free variable X introduced when instantiating a universal quantifier, whose value is determined by solving accumulated constraints rather than by guessing a term.

**substitution (θ)** — A finite map from logic variables to terms, threaded through computation as an input/output substitution [θ]s.

**unification** — Finding a substitution θ making two terms equal (s ≐ t / θ, with [θ]s = [θ]t); the lecture presents essentially Robinson's algorithm.

**most general unifier (mgu)** — A unifier of which every other unifier is an instance; the unification algorithm, when it succeeds, always yields one.

**occurs check** — The side condition X ∉ t required before binding X to a term containing X; omitting it (as standard Prolog does for efficiency, unless unify_with_occurs_check is used) is unsound, e.g. X ≐ s(X).

**forward chaining / saturation** — The bottom-up interpretation deriving new facts from premises (all atoms positive, the basis of Datalog); it runs until saturation, the state in which no rule produces a new fact, after which the database is merely queried, and terminates because the set of derivable facts is finite.

**the inverse method** — Maslov's general theorem-proving method by forward inference and saturation over cut-free sequent calculi; unlike resolution it is not specialized to classical logic.

**signed (left/right) subformulas** — The refinement that each subformula occurrence is destined for only the left or only the right of a sequent (implication flips its first argument's side), narrowing the applicable rules; combined with the subformula property this makes the propositional search space finite.

**forward sequent calculus (Γ → A)** — A calculus writing Γ → A for "Γ was actually used to derive A"; sound (Γ → A implies Γ ⟹ A) and complete in the generalized form Γ ⟹ A implies Γ′ → A for some Γ′ ⊆ Γ.

**subsumption** — Discarding a weaker (subsumed) derived sequent when a stronger one (fewer antecedents, larger succedent set) is present, since any inference using the weaker can use the stronger.

## Linear logic and message passing (Lectures 24–25)

**linear logic** — Girard's resource-aware "logic of state," here an intuitionistic sequent calculus, giving a direct logical account of state change by adding linear assumptions to ordinary ones.

**linear hypothesis / resource** — An assumption "A res" that must be used exactly once (unlike ordinary assumptions), behaving as a consumable resource that expresses ephemeral truth about the current state.

**unrestricted assumptions (Γ) / intuitionistic linear logic** — The ordinary non-linear assumptions (left of the semicolon in Γ ; Δ ⊢ C), usable arbitrarily often; the single-conclusion (intuitionistic) form of linear logic is used here to combine with functional programming.

**simultaneous conjunction / tensor (A ⊗ B)** — Multiplicative conjunction, true when the resources are subdivided into Δ₁ for A and Δ₂ for B; its left rule unbundles A and B into separately available resources.

**alternative conjunction / with (A & B)** — Additive conjunction (external choice), true when A and B are each achievable from the same current resources, forcing a choice on use.

**multiplicative truth (1) / additive truth (⊤)** — The units: 1 is the unit of ⊗, provable only with no resources; ⊤ is the nullary additive conjunction whose proof consumes all current resources.

**linear implication / lollipop (A ⊸ B)** — True if B is achievable given the additional resource A; as a resource it transitions a state with A into a state with B, consuming an A to produce a B.

**disjunction (A ⊕ B) / falsehood (0)** — Additive disjunction (internal choice), true if either A or B is achievable, the provider deciding which; 0 is the unprovable nullary disjunction, and 0L (an impossible state) lets any goal succeed.

**cut / identity expansion (linear)** — In the linear sequent calculus, cut admissibility is checked by principal cases (cut on A reduces to cuts on subformulas) plus commuting cases; identity expansion reduces id at a compound proposition to identities at its subformulas.

**validity / of-course (!A, "bang")** — Girard's device for reusable resources: if A is provable with no resources it may be used arbitrarily often; internalized as !A with an "A valid" antecedent (a renewable resource) and its own cut form.

**proofs as processes** — The computational reading in which a linear-logic derivation is a concurrent process; antecedents and succedent are communication channels, the process being a client of the left channels and the provider of the right one (Caires–Pfenning).

**cut as parallel composition / spawn** — Cut, taken as first-class rather than merely admissible, corresponds to spawning two processes connected by a fresh private channel; cut-reduction steps are read as message exchange along that channel.

**external / internal choice (& / ⊕ as processes)** — With & the client drives the choice (send fst/snd, the provider offers recv … fst ⇒ P₁ | snd ⇒ P₂); with ⊕ the roles are reversed (the provider sends the label), the two having identical computation rules.

**forwarding (fwd c a)** — The proof term for the general identity rule, splicing two channels together by forwarding every communication on a to c and vice versa.

**synchronous message passing / multiset rewriting** — The concurrency model in which sender and recipient step together as one transition, given a dynamics by multiset rewriting over a configuration of "proc P" objects; making communication asynchronous requires the linear semi-axiomatic sequent calculus (SAX).

**session types** — Interface types describing a channel's protocol, arising from linear-logic propositions as session types (e.g. a queue's enqueue/dequeue protocol); recursive process types are interpreted coinductively (departing from strict Curry–Howard) and are implemented in the Rast language.
