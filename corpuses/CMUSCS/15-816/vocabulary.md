# 15-816 — Substructural Logics · Vocabulary

Source: CMU 15-816 *Substructural Logics*, Fall 2016, Frank Pfenning. Lecture notes at https://www.cs.cmu.edu/~fp/courses/15816-f16/ (schedule: https://www.cs.cmu.edu/~fp/courses/15816-f16/schedule.html). Terms are grounded in the per-lecture notes and ordered by course progression.

## Foundations: deductive and linear inference (Lectures 1–2)

**substructural logic** — A logic that restricts or omits one or more of the structural rules (exchange, weakening, contraction), so that hypotheses become ordered and/or consumable resources; the family includes linear, ordered, affine, strict, relevance, bunched, and separation logics, all generalizing "ordinary" (structural) logic.

**linear logic** — Girard's (1987) logic of state and resources in which each hypothesis must be used exactly once; the course reconstructs it systematically from deductive inference rather than from Girard's original semantic considerations.

**rule of inference (premises, conclusions)** — A schema with propositions above a horizontal line (premises) justifying a proposition below it (conclusion); the basic unit of deductive systems, with schematic (italic) variables instantiated by constants.

**constructive content of a proof** — Information a proof carries beyond mere validity; e.g. a proof that there is a path from `c` to `d` also records the actual edges traversed, so a path can be read off the proof.

**proof term / proof object** — An explicit name for a proof (e.g. `p · e : path(x,z)`), making proofs first-class objects; equations on proof terms (like `(e⁻¹)⁻¹ = e`) can force uniqueness of proofs.

**logic vs. type theory** — In logic, proofs are separate from propositions; in type theory, propositions may refer to proofs (e.g. a predicate `notin(e,p)` mentioning a proof `p`), giving added expressive power.

**linear inference** — Inference that *consumes* the propositions used as premises and *produces* those in the conclusion, effecting a change of state; "linear inference can change the world," in contrast to ordinary inference, which only accumulates knowledge.

**state / resource interpretation** — Reading a multiset (or sequence) of propositions as the current state, where inference models actions that consume and produce resources; illustrated by coin exchange, blocks world, and planning as proof search.

**ephemeral vs. persistent propositions** — An intrinsic attribute of a proposition: ephemeral (linear) propositions are consumed by inference; persistent (unrestricted) ones, written underlined, may be used arbitrarily often and never consumed. Slogan: "Truth is ephemeral; validity is forever."

**judgment vs. proposition** — Following Martin-Löf, the objects of inference are judgments *about* propositions (e.g. `A eph`, `A pers`, `A true`, `A valid`) rather than propositions themselves; distinguishing judgment from proposition is a cornerstone of the judgmental method.

**Lambek calculus** — Lambek's (1958) ordered logic for describing the syntax of natural language, in which hypotheses are kept in order; the course's first substructural system and the setting for the initial sequent calculus.

**syntactic types (over `/`, under `\`)** — Lambek's grammatical connectives: `x / y` ("x over y") is a phrase that yields an `x` given a `y` to its right, and `y \ x` ("y under x") yields an `x` given a `y` to its left; parsing becomes proof construction and proofs are parse trees.

## The sequent calculus and harmony (Lectures 2–3)

**hypothetical judgment / sequent** — A judgment `Ω ⊢ z` asserting the succedent `z` under the antecedents `Ω`, separated by the turnstile `⊢`; the left side is the context/hypotheses, the right side the conclusion.

**ordered context (Ω)** — A sequence of antecedents in which order matters (Ω suggests "Order"); linear logic later relaxes this to a multiset, and structural logic further to a set.

**left rules and right rules** — Each connective is defined by a right rule (how to *prove* it, decomposing a succedent) and one or more left rules (how to *use* it, decomposing an antecedent); reading bottom-up, each rule removes one connective.

**identity rule** — The judgmental rule `x ⊢ x` expressing that an antecedent `x` (and nothing else) suffices to prove the succedent `x`; the embodiment of "if we may use x, we may prove x."

**cut rule** — The judgmental rule letting a proved proposition be used as an antecedent (`Ω' ⊢ x` and `Ω_L x Ω_R ⊢ z` give `Ω_L Ω' Ω_R ⊢ z`); the embodiment of "if we may prove x, we may use x," and the inverse of identity.

**proof-theoretic semantics** — The view (Gentzen, Dummett, Martin-Löf) that the left and right rules of a connective *are* its meaning, an internal alternative to Tarskian model-theoretic semantics.

**harmony** — The requirement that a connective's left and right rules be in balance — neither too strong nor too weak — so the rules may be read as a definition; tested locally by identity expansion and cut reduction.

**identity expansion** — The local check that identity at a compound `x ∗ y` can be rewritten using only identities at `x` and `y`; verifies the left rules are strong enough to reprove the connective (they are not too weak).

**cut reduction** — The local check that a cut on `x ∗ y` whose premises end in the matching right and left rules can be reduced to cuts on `x` and `y`; verifies the left rules are not too strong, and later becomes the engine of computation.

**concatenation / fuse (`•`) and twist (`◦`)** — Ordered multiplicative conjunctions: `x • y` ("fuse") asserts `x` immediately followed by `y`; `x ◦ y` ("twist") is its order-reversed variant. Their right rules split the context into two adjacent segments.

**alternative conjunction / with (`x N y`)** — The connective offering a *choice*: to prove `x N y` one must prove both `x` and `y` (single context), but a user may extract either; realized later as external choice.

**unit `1`** — The unit of concatenation, corresponding to the empty context; its right rule has no antecedents and its left rule simply deletes a `1` from the context.

**judgmental vs. propositional rules (structural rules)** — Identity and cut are *judgmental* (or *structural*) rules, concerned only with the nature of the hypothetical judgment; the right/left rules are *propositional*, defining individual connectives.

## Cut elimination and metatheory (Lecture 4)

**cut elimination (Gentzen's Hauptsatz)** — The metatheorem that any proof using cut can be transformed into a cut-free proof; together with identity elimination it gives a global form of harmony and justifies reading the rules as meaning-giving.

**admissibility of cut** — The key lemma that whenever `Ω ⊢ x` and `Ω_L x Ω_R ⊢ z` are cut-free provable, so is `Ω_L Ω Ω_R ⊢ z`; proved by nested induction, first on the cut formula, then on the two premise derivations.

**principal / commutative / identity cases** — The three shapes in the cut-admissibility proof: the *identity* case discharges a cut against identity; the *principal* case (cut formula introduced last on both sides) reduces to cuts on subformulas; the *commutative* case pushes the cut past a rule acting on a side formula.

**admissibility vs. derivability** — A rule is *derivable* if it has a fixed hypothetical proof; *admissible* if provability of its premises always yields provability of its conclusion. Admissibility is weaker and can be lost when the logic is extended.

**identity elimination** — The theorem that identity restricted to atomic propositions suffices: `x ⊢ x` is cut-free provable for any `x` by iterated identity expansion.

**subformula property** — A consequence of cut elimination: every proposition in a cut-free proof is a subformula of the endsequent, which yields decidability of the Lambek calculus and refutations (consistency) of unprovable conjectures.

**computation as ordered inference** — Encoding machines as ordered inference so each step is one inference: subsequential finite-state transducers (one rule per transition, with an endmarker `$`) and Turing machines (an ordered tape with move-left/move-right rules).

## Proofs as concurrent processes (Lectures 5–8)

**Curry–Howard correspondence (propositions as types)** — The general bijection between proofs and programs; here instantiated as propositions = session types, ordered proofs = concurrent programs, cut reduction = communication (DeYoung–Pfenning).

**subsingleton logic** — The fragment of ordered logic where every sequent has at most one antecedent (`ω ⊢ A`); its surviving connectives are `⊕`, `N`, and `1`, and its proofs correspond to finite-state transducers.

**cut reduction as computation** — The operational shift in which *cut reduction* drives computation (proof construction no longer does): a proof of `A` from `ω` is read as a process providing `A` while using `ω`.

**session type** — A proposition typing the communication interface (channel) between two composed processes, dictating the protocol of messages exchanged (Caires–Pfenning).

**process configuration** — A chain `proc(P₁) … proc(Pₙ)` of running processes, well-typed when each adjacent pair shares an interface type (what one provides is what the next uses).

**cut as parallel composition (spawn)** — Operationally, cut spawns two processes running side by side sharing a fresh private channel; the only construct that creates new processes.

**identity as forwarding** — Operationally, the identity `y ⊢ (x ← y) :: x` is a forwarder that identifies (globally unifies) its two channels and then disappears.

**internal choice (`⊕`)** — The n-ary labeled sum `⊕{lᵢ : Aᵢ}` whose *provider* chooses and sends a label; the client receives and branches with `case`. "Internal" because the provider decides.

**external choice (`N`)** — The n-ary labeled product `N{lᵢ : Aᵢ}` whose *client* chooses and sends a label; the provider offers all branches with `case`. "External" because the client decides; gives an object/module-signature style interface.

**termination (`1`, close/wait)** — The unit `1` types the end of a session: the provider executes `close` and disappears, and the paired client `wait`s for the close before proceeding.

**message passing (send/receive)** — Synchronous communication in which each label send/receive or channel send/receive corresponds exactly to one principal cut reduction.

**recursive / equirecursive session types** — Types defined in terms of themselves (e.g. `listA = ⊕{cons : A ⊗ listA, nil : 1}`); when every definition is *contractive* (begins with a connective), a type name may be silently replaced by its unfolding.

**type preservation and progress** — The two safety theorems: preservation, that stepping a well-typed configuration keeps it well-typed (cut reduction preserves the endsequent); progress, that a well-typed configuration can step or is waiting to communicate externally.

**subtyping of session types (`≤`)** — A decidable relation letting a process of one type be used where a supertype is expected, permitting a relaxed identity `id≤`.

**channel names** — Generalizing beyond subsingleton logic, each antecedent and the succedent carry a unique channel name (`Ω ⊢ P :: (y:B)`), resolving which of several providers a process addresses; cut then shares a fresh private channel between spawned provider and continuation.

**multiplicative connectives (send/receive a channel)** — Over `/`, under `\`, fuse `•`, twist `◦`, and unit `1`; operationally all just send or receive a channel (channel/ownership transfer) with no new process constructs. One-premise variants (`/L*`, `•R*`) keep cut the sole spawner.

**asynchronous communication** — A model where a send succeeds immediately and is buffered while a receive blocks; obtained from the synchronous calculus by rewriting a send as a spawn (cut) plus a forward (identity), so no expressiveness is added.

## Ordered logic programming (Lectures 9–10)

**ordered logic programming** — Programming with ordered session types, using stores, stacks, and queues implemented as chains of one-element processes.

**stack vs. queue interfaces** — A store interface `N{ins : A \ storeA, del : …}` that inserts at the left forces last-in-first-out (stack) behavior; changing insertion to `queueA / A` (insert at the right) yields first-in-first-out (queue) behavior — the discipline is forced by the interface type.

**list segment (`segA = listA / listA`)** — A list missing its tail, i.e. a list-to-list function realized as a process; supports prepend/postpend/concatenate, behaving like a deque whose elements cannot be removed.

**tail-call optimization** — Compressing a recursive process call immediately followed by a forwarding identity into a single in-place continuation, avoiding a spawn-and-forward; the process analogue of functional tail calls.

**work, span, latency, throughput** — Parallel-complexity measures: total *work* ignoring parallelism, *span* (longest dependency path / reaction time under maximal parallelism), *latency* (steps to the first output), and *throughput* (steps to the whole output for a delay-free client).

## Linear logic proper (Lectures 11–13)

**exchange** — The structural rule permitting antecedents to be reordered; adding exchange to ordered logic yields linear logic, formalized either by an explicit rule or by treating the context as a multiset `∆`.

**MALL (multiplicative–additive linear logic)** — The fragment of intuitionistic linear logic with `⊗, ⊸, &, ⊕, 1, ⊤, 0` but without the exponential `!`; its sequent calculus is developed in Lecture 11.

**linear implication (`A ⊸ B`)** — The single implication obtained when exchange collapses the two ordered implications `A \ B = B / A`; its rules split the multiset context freely (2ⁿ ways for n antecedents).

**multiplicative conjunction / tensor (`A ⊗ B`)** — The "simultaneous" conjunction obtained when exchange collapses fuse and twist (`A • B = A ◦ B`); joining two proofs over disjoint resources.

**additive vs. multiplicative connectives** — Additive connectives (`&`, `⊕`, and units `⊤`, `0`) share the context between premises and encode choice; multiplicative connectives (`⊗`, `⊸`, and unit `1`) split the context and encode simultaneous combination. Exchange leaves the additives unchanged while collapsing the multiplicatives.

**collapsing of connectives** — The general phenomenon that identifying antecedents up to exchange makes previously distinct ordered connectives indistinguishable (the two implications, the two products) while additives are unaffected.

**exponential / of course (`!A`)** — Girard's modality ("bang A") allowing an antecedent `A` to be used arbitrarily often; it is precisely what separates MALL from full intuitionistic linear logic, and factors the ordinary function space as `A → B = (!A) ⊸ B`.

**adjoint logic / modes** — A framework (after Benton's LNL) combining several substructural layers as *modes* — ordered `O`, linear `L`, unrestricted/structural `U` — ordered by how many structural rules each admits, connected by shift modalities.

**shift modalities (`↑`, `↓`)** — Unary modal operators moving propositions between modes (`↑` up to a stronger mode, `↓` down to a weaker one); operationally they signal a channel's change of status/direction, one shift receiving and the other sending.

**independence principle** — The invariant that a stronger-mode (e.g. linear or structural) succedent may not depend on weaker-mode (e.g. ordered) antecedents; it fixes the shift rules and forces three cut rules (`cutOO`, `cutLO`, `cutLL`) instead of four.

**positive vs. negative connectives (polarity)** — Positive connectives (`⊗, ⊕, 1, ↓`) have non-invertible right rules and *send* from the provider's view; negative connectives (`&, ⊸, ↑`, and `\`,`/`,`N`) have invertible right rules and *receive*. Polarity shifts `↑OO`, `↓OO` change only polarity within a mode.

**message buffer / bounded synchrony** — A chain of `msg` records forms a per-channel queue buffering asynchronous messages; inserting a double-shift `↑↓` forces an acknowledgment that drains the buffer, and a double-shift everywhere recovers fully synchronous communication. Required buffer size is the longest same-polarity path in the type graph.

## Structural logic and the exponential (Lectures 14–16)

**structural logic** — The logic admitting all three structural rules (exchange, weakening, contraction) — i.e. ordinary intuitionistic logic — presented here as a sequent calculus and one endpoint of the substructural spectrum.

**weakening** — The structural rule adding an unused antecedent (`Γ ⊢ C` gives `Γ, A ⊢ C`); it permits an assumption to go unused. Admissible by adjoining an extra unused antecedent throughout a proof.

**contraction** — The structural rule merging two copies of an antecedent into one (`Γ, A, A ⊢ C` gives `Γ, A ⊢ C`); it permits an assumption to be reused, and is the rule that complicates cut admissibility (requiring a cross-cut against persistent copies).

**typed quantifiers (`∃x:τ.A`, `∀x:τ.A`)** — First-order quantifiers over a data type `τ`, added via a typing judgment `Σ ⊢ t : τ`; operationally `∃R`/`∀L` send a witness term and `∃L`/`∀R` receive a fresh parameter, enabling computation over integers, strings, etc.

**substitution property / fresh parameter** — The admissible operations replacing a parameter `a` by a term `t` throughout terms and proofs; freshness of the parameter introduced by `∃L`/`∀R` is what makes the cut reduction on a quantifier valid.

**exponential rules: promotion, dereliction, weakening, contraction** — The four rules governing `!A`: *promotion* (`!R`, provable only when all antecedents are banged), *dereliction* (`!L`, dropping the bang to use `A`), and *weakening* and *contraction* on `!A`. In adjoint form `!A ≃ ↓UL ↑UL AL`.

**cut reduction as communication (vs. substitution)** — The slogan that, under the sequent-calculus interpretation, computation is a sequence of small local cut reductions (message exchanges), in contrast to natural deduction, where the engine is global substitution.

**natural deduction (introduction/elimination)** — Gentzen's alternative formalization by introduction rules (how to prove, ≈ right rules) and elimination rules (how to use, ≈ left rules), with a hypothesis rule and admissible substitution but no cut; the basis of call-by-push-value.

**persistent message / immutable structure** — Because a structural channel may have many clients, its messages are made *persistent*; a completed positive process leaves a chain of persistent messages acting as an immutable linked structure (channels as pointers, receiving as reading).

## Chaining, focusing, and polarity (Lectures 17–18)

**invertible rule / inversion** — A rule whose premises are provable iff its conclusion is, so it can always be applied safely bottom-up; the basis of focusing's first phase.

**asynchronous (negative) vs. synchronous (positive) connectives** — Andreoli's classification: a connective is *negative*/asynchronous if its right rule can always be applied independently of the rest of the sequent (`&, ↑`), and *positive*/synchronous otherwise (`⊗, ⊕, 1, ↓`).

**chaining** — The proof-search strategy of, once a proposition is put in focus, continuing to decompose it and its subformulas as long as they keep the focused polarity, without pausing to consider other propositions.

**polarization** — Committing to a polarized form of the logic in which every proposition and atom is assigned a polarity (with minimal shifts inserted); any polarization of `A` is provable iff `A` is.

**polarized atoms (`p⁺`, `p⁻`)** — Atoms carry a chosen polarity: a positive atom may be focused on the right, a negative atom on the left; the choice drastically restricts the search space (e.g. in Lambek parsing).

**stable sequent** — A sequent with only negative antecedents and positive succedents, on which no inversion rule applies, so a focus must be chosen; the point where focusing decisions are made.

**focus judgment** — An added judgment form `[A]` for a proposition in focus, under the presupposition (unicity) that at most one proposition is in focus; entered by `focus⁺` (a positive succedent) or `focus⁻` (a negative antecedent), and lost at a shift.

**inversion phase and focusing phase** — A focusing proof alternates two phases: an *inversion* phase decomposing all invertible connectives down to a stable sequent (a don't-care, confluent choice), then a *focusing/chaining* phase decomposing one chosen proposition until focus is lost.

**synthetic inference rule** — A macro-rule compiling an entire focusing phase (chaining + inversion on one focused proposition) into a single big-step rule, collapsing small-step nondeterminism (e.g. the `tv`/`adv`/`s` rules in the parsing example).

**forward vs. backward chaining** — Two proof-search directions connected to atom polarization: purely positive atoms give bottom-up, Datalog-style forward chaining; purely negative atoms give top-down, Prolog-style backward chaining.

**soundness and completeness of focusing** — Erasing focus brackets from a focused proof yields an ordinary polarized proof (soundness); conversely every provable sequent has a focused proof (completeness), the latter closed via admissibility of cut and identity in the focused calculus.

## Substructural operational semantics and CBPV (Lectures 19–22)

**substructural operational semantics (SSOS)** — Specifying a language's operational semantics by substructural (ordered or linear) inference rules, so computation is proof reduction; synthetic rules obtained by focusing on a persistent specification give exactly the intended stepping rules.

**destinations / destination-passing style** — Encoding an ordered context linearly by tagging each proposition with left/right *destination* parameters `Aᵢ(dᵢ₋₁, dᵢ)`; lets a linear framework represent ordered SSOS, with fresh spawn channels supplied by existential quantification.

**positive equality (`=`)** — A linear proposition for channel identity used only by forwarding; its right rule is reflexivity and its invertible left rule performs substitution (parameters are not nominal names — no disequality).

**call-by-push-value (CBPV)** — Levy's system obtained by polarizing natural deduction, in which positive propositions are *value types* and negative propositions are *computation types*; it compositionally embeds both call-by-value and call-by-name and lets one choose eager vs. lazy per connective.

**value types vs. computation types** — `A⁺` (products, sums, `1`, `↓A⁻`) type values, and hypotheses always range over values; `A⁻` (functions, records `&`, `↑A⁺`) type computations.

**down-shift `↓` (thunk/force)** — `↓A⁻` is the value type of a suspended computation (a *thunk*): `thunk M` introduces it and `force V` runs it.

**up-shift `↑` (return / let val)** — `↑A⁺` is the computation type embedding a value: `return V` introduces it and `let val x = M in N` binds the returned value.

**local reduction** — The natural-deduction analogue of cut reduction: an introduction immediately followed by its elimination reduces (e.g. `force(thunk M) → M`, `(λx.M)V → [V/x]M`), driven by value substitution.

**CBPV stack machine (eval/retn/cont)** — An ordered SSOS with predicates `eval(M)`, `retn(T)` (terminal computation reached), and `cont(K)` (a continuation frame); continuation frames (`_ V`, `_.k`, `let val x = _ in N`) form a stack — application *pushes a value*, whence the name.

**positive polarization = call-by-value** — The compositional translation `(·)⁺` of intuitionistic source terms into CBPV (e.g. `(A⊃B)⁺ = ↓((A)⁺ → ↑(B)⁺)`), whose computational reading is call-by-value.

**negative polarization = call-by-name** — The compositional translation `(·)⁻` (e.g. `(A⊃B)⁻ = ↓(A)⁻ → (B)⁻`, `(x)⁻ = force x`), whose reading is call-by-name: pass a thunked computation and force it at each use.

**call-by-need / memoization** — The refinement of call-by-name (e.g. Haskell) in which a forced thunk's value is memoized so repeated `force` does not re-evaluate.

**administrative redex** — A spurious introduction/elimination pair (e.g. `let val x' = return x in M`) produced by the naive CBV/CBN translations, which refined translations avoid.

## The Concurrent Logical Framework and cost (Lectures 23–24)

**logical framework (LF, Twelf)** — A metalanguage for representing deductive systems directly, handling bound variables, capture-avoiding substitution, and hypothetical/generic judgments (LF is based on λΠ, implemented in Twelf); it cannot directly represent substructural systems, motivating CLF.

**Concurrent Logical Framework (CLF)** — A metalanguage from the polarized adjoint formulation of intuitionistic linear logic with dependent types, supporting linear/ordered hypothetical judgments and a forward-chaining (concurrent) operational reading; implemented in Celf.

**monad / lax modality (`{A}` = `↑A⁺`)** — CLF realizes the up-shift as a monadic/lax construct `{A}` (introduced by `{E}`, eliminated by `let {p} = R in E`) that encapsulates the concurrent forward-chaining computation and marks the boundary between the pure and concurrent layers.

**Celf / forward-chaining to quiescence** — CLF's implementation, whose execution applies rules forward until no rule applies (quiescence); illustrated by coin exchange, which fails to terminate without a step bound.

**SILL** — The core session-typed concurrent language whose operational semantics is encoded in CLF; the encoding is shown isomorphic to the CLF specification of the linear-logic sequent calculus, with intrinsic (session-type-indexed) typing so ill-typed processes are rejected.

**true concurrency** — The property that independent steps with no data dependency may occur in either order and yield indistinguishable computations; visible where reordering two independent `let`s in an asynchronous proof term changes nothing.

**cost semantics: work** — Instrumenting `proc(c, w, P)` so each process accumulates *work* as its number of communication steps; spawn starts a child at work 0 and forwarding folds the forwarder's work into the notified process.

**cost semantics: span** — Instrumenting `proc(c, t, P)` with the earliest time `t` a process can reach a stage; synchronization costs `max(t,t')+1`. Span is the longest path in the dependency graph, and work vs. span together measure parallel complexity.

## Resource semantics and classical linear logic (Lectures 25, 27)

**resource semantics** — A Kripke-style semantics for substructural logic in which each antecedent carries a unique resource label `A[α]` and the succedent `C[p]` records, via a resource combinator, exactly which resources may be used.

**resource algebra (`·`, `ε`)** — The equational structure on resources: `·` is associative with unit `ε`; the equations are applied silently and hide an isomorphism between resource proofs and ordinary sequent proofs.

**resource characterization of the logics** — Ordered resource semantics becomes *linear* by adding commutativity `p·q = q·p`, *structural* by identifying every `p = ε`, and *affine* by adding a resource inequality `p ≤ q` (with subsumption at identity) that permits discarding.

**affine logic** — The substructural logic admitting weakening (resources may be discarded) but not contraction; obtained in the resource semantics via the subsumption inequality, and sitting between linear and structural logic.

**classical linear logic (CLL)** — Girard's original one-sided-sequent formulation `⊢ A₁,…,Aₙ` where the comma is a par disjunction; reasoning resembles deriving a contradiction, in contrast to the two-sided intuitionistic linear logic used throughout the course.

**linear negation (`A⊥`)** — An involutive negation (`(A⊥)⊥ = A`) under which connectives are defined by right rules plus negation; identity becomes `⊢ A, A⊥` and cut cuts `A` against `A⊥`.

**par (`⅋`), multiplicative disjunction** — The De Morgan dual of tensor (`(A⊗B)⊥ = A⊥ ⅋ B⊥`), absent from intuitionistic linear logic; it validates a linear excluded middle `A ⅋ A⊥`.

**De Morgan dualities** — The classical dual pairs under linear negation: `⊗/⅋`, `1/⊥`, `⊕/&`, `0/⊤`, and `!/?`; each connective is defined via its dual.

**exponentials `!` / `?`** — The dual persistence modalities: `!A` (requires an all-`?` context) and its dual `?A` (carrying weakening and contraction on `?`-formulas), presented dyadically (Andreoli's two-judgment truth/possibility form) to permit structural cut elimination.

**double-negation translation (CLL into ILL)** — Interpreting a classical sequent intuitionistically as deriving a contradiction, parametric in an atom `p` (`∼ₚA = A ⊸ p`), so `⊢ Σ` iff the translated context proves `p`; connectives without an intuitionistic counterpart (like `⅋`) are handled by negate–dualize–negate. Related to CPS conversion.

**mix rules (`mix0`, `mix2`)** — Girard's variant admitting the empty sequent and the union of two sequents, characterized by `⊥ ≡ 1`; obtained in the translation by choosing `p = 1`, reading a proof as *consuming all resources* rather than deriving a contradiction — natural for the concurrent/process interpretation where mix is parallel composition.
