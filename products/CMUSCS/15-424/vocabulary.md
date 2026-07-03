# 15-424 — Logical Foundations of Cyber-Physical Systems · Vocabulary

Source: CMU 15-424/15-624/15-824 *Logical Foundations of Cyber-Physical Systems*, Fall 2022, taught by Stefan Mitsch (course and textbook by André Platzer). https://www.cs.cmu.edu/~smitsch/courses/lfcps22/index.html — vocabulary extracted from the published lecture slides (https://lfcps.org/lfcps/lfcps-slides.zip, decks 01–21).

## Cyber-physical systems and hybrid systems

**Cyber-physical system (CPS)** — A system that combines cyber (computational, discrete control) capabilities with physical (continuous dynamics) capabilities to solve problems neither part could solve alone; e.g. cars, aircraft, trains, robots operating near humans. Formally, (distributed networks of) computerized control for a physical system.

**Hybrid system** — A mathematical model of a system with interacting discrete and continuous dynamics (discrete control decisions plus differential equations). Hybrid systems = discrete + ODE.

**Multi-dynamical system** — Platzer's characterization of CPS as combining multiple facets of dynamical behavior: continuous, discrete, nondeterministic, stochastic, and adversarial; CPS are analyzed by composing simple dynamical effects (compositionality tames complexity).

**Discrete dynamics** — The control-decision part of a CPS: instantaneous, jump-like state changes (assignments, tests) made by the controller.

**Continuous dynamics** — The physical part of a CPS: state that evolves continuously over time according to differential equations (the plant).

**Hybrid game** — A hybrid system extended with an adversary: HG = HS + adversary, giving two players (Angel and Demon) competing control over the dynamics.

**Stochastic hybrid system (SHS)** — A hybrid system extended with stochastic dynamics: SHS = HS + stochastics.

**Distributed hybrid system (DHS)** — A hybrid system extended with distributed/dimension-changing dynamics: DHS = HS + distributed.

## Differential equations and continuous dynamics

**Ordinary differential equation (ODE)** — An equation `x' = f(x)` relating the time-derivative of the state variables to a function of the state, describing continuous evolution of the physical system.

**Continuous program / differential equation system** — The hybrid-program construct `x' = f(x) & Q` denoting continuous evolution following the ODE `x' = f(x)` for any duration, restricted to the region where `Q` holds.

**Evolution domain constraint** — The formula `Q` in `x' = f(x) & Q` that the state must satisfy throughout the continuous evolution; the ODE may only evolve as long as `Q` remains true.

**Solution of an ODE** — A function of time satisfying the differential equation from a given initial state; the semantics of a continuous program is defined via such solutions.

## Hybrid programs

**Hybrid program** — The programming language of differential dynamic logic for describing hybrid systems, with grammar `α, β ::= x := e | ?Q | x' = f(x) & Q | α ∪ β | α; β | α*`. Everything is nondeterministic, analogous to regular expressions.

**Discrete assignment** — `x := e` instantaneously sets variable `x` to the value of term `e`.

**Nondeterministic assignment** — `x := *` assigns `x` an arbitrary real value; used for ghosts and abstraction. Not a primitive of the core HP syntax but definable/derived.

**Test / challenge (`?Q`)** — Checks whether formula `Q` holds in the current state; if `Q` is true the run continues unchanged, otherwise the run fails and is discarded (no state).

**Discarding failed runs** — System runs whose tests fail are aborted and not considered further (backtracking); tests thereby constrain which runs are possible.

**Sequential composition (`α; β`)** — Runs `α`, then runs `β` from each resulting state; semantics is relational composition `[[α;β]] = [[α]] ∘ [[β]]`.

**Nondeterministic choice (`α ∪ β`)** — Runs either `α` or `β`, chosen nondeterministically; semantics is union `[[α∪β]] = [[α]] ∪ [[β]]`.

**Nondeterministic repetition (`α*`)** — Repeats `α` any arbitrary (finite) number of times, chosen nondeterministically; semantics is the reflexive-transitive closure `[[α*]] = [[α]]*`.

**Nondeterminism as abstraction** — A modeling tool to focus on critical aspects and describe an imperfectly known environment, rather than committing to one concrete behavior.

## Terms, first-order logic, and dL

**Term** — An arithmetic expression built from variables, rational constants, and `+, −, ·, /`; terms denote real values under a state.

**State** — An assignment `ω` of real values to variables; the term semantics `ω[[e]]` gives the value of term `e` in state `ω`.

**First-order logic of real arithmetic (FOLR)** — The base logic of formulas over real-arithmetic comparisons (`e ≥ ẽ`, etc.) with `¬, ∧, ∨, →, ∀x, ∃x`; decidable by quantifier elimination.

**Differential dynamic logic (dL)** — The logic for specifying and proving properties of hybrid programs, extending first-order real arithmetic with modalities `[α]P` and `⟨α⟩P` for hybrid programs `α`. Grammar: `P,Q ::= e ≥ ẽ | ¬P | P∧Q | P∨Q | P→Q | ∀x P | ∃x P | [α]P | ⟨α⟩P`.

**Box modality (`[α]P`)** — "After all runs of `α`, `P` holds": true in state `ω` iff `P` holds in every state reachable by `α`; used to state safety. Semantics `[[[α]P]] = {ω : ν ∈ [[P]] for all ν with (ω,ν) ∈ [[α]]}`.

**Diamond modality (`⟨α⟩P`)** — "There is a run of `α` after which `P` holds": true iff some state reachable by `α` satisfies `P`; used to state liveness/reachability. `[[⟨α⟩P]] = {ω : ν ∈ [[P]] for some ν with (ω,ν) ∈ [[α]]}`.

**Modality duality** — Box and diamond are dual: `[α]P ≡ ¬⟨α⟩¬P`.

**Validity** — A dL formula is valid iff it is true in every state (under every interpretation); the goal of a proof is to establish validity.

**dL semantics** — The compositional definition assigning each hybrid program a reachability relation `[[α]] ⊆ States × States` and each formula a set of states in which it is true.

## Contracts and safety

**CPS contract** — A specification pairing a precondition (assumption) with a postcondition (guarantee) for a CPS program, expressed as `A → [α]P` and refined onto program parts.

**Precondition** — The assumption `A` that holds initially, forming the antecedent of a contract `A → [α]P`.

**Postcondition** — The property `P` that must hold after every run of the program, forming the safety guarantee in `[α]P`.

**Safety property** — A property asserting that nothing bad ever happens on any run, expressed with the box modality `[α]P` (e.g. the ball never rises above its initial height).

**Liveness property** — A property asserting that something good is eventually achievable, expressed with the diamond modality `⟨α⟩P` (some run reaches the goal).

**Reachability** — Whether a state satisfying `P` can be reached by running `α`; captured by `⟨α⟩P` and dually constrained by `[α]P`.

**Operator precedence** — Unary operators (`*, ¬, ∀x, ∃x, [α], ⟨α⟩`) bind more strongly than binary operators, disambiguating dL formulas.

## Proof calculus: sequents and dynamic axioms

**Sequent** — A judgment `Γ ⊢ Δ` where the antecedent `Γ` and succedent `Δ` are finite sets of dL formulas, meaning the conjunction of `Γ` implies the disjunction of `Δ`.

**Sequent calculus** — The proof system for dL that manipulates sequents with left/right rules for each connective, modality, and quantifier; a formula with a proof is valid.

**Soundness (of a proof rule)** — A rule is sound iff validity of all its premises implies validity of its conclusion; every rule adopted must be sound so that provability entails validity.

**Soundness (of the calculus)** — Every dL formula (or sequent) that has a proof is valid; the central correctness guarantee of the proof system.

**Completeness** — Whether every valid formula is provable; dL is complete relative to the theory of ODEs / FOLR (and dGL is a sound and complete axiomatization of hybrid games relative to its base logic).

**Axiom vs. axiom schema** — An axiom is a single concrete valid formula; an axiom schema is an infinite family of instances. dL is presented as concrete axioms instantiated by uniform substitution rather than as schemata.

**Axiomatics** — The method of internalizing semantic relations into universal, syntactic, reusable axioms so that reasoning about programs becomes syntactic manipulation.

**Assignment axiom `[:=]`** — `[x := e]P(x) ↔ P(e)`: proving a property after an assignment reduces to substituting the assigned term into the postcondition.

**Test axiom `[?]`** — `[?Q]P ↔ (Q → P)`: after a test `?Q`, `P` holds iff `Q` implies `P`.

**Choice axiom `[∪]`** — `[α ∪ β]P ↔ ([α]P ∧ [β]P)`: a property holds after a nondeterministic choice iff it holds after each branch.

**Composition axiom `[;]`** — `[α; β]P ↔ [α][β]P`: a property after a sequential composition reduces to nested modalities.

**Iteration axiom `[*]`** — `[α*]P ↔ (P ∧ [α][α*]P)`: unrolls a loop once, expressing that a loop is its own fixpoint.

**Solution axiom (`['] / DS`)** — Replaces a differential-equation modality by a quantifier over the ODE's solution time, reducing continuous dynamics to real arithmetic when a solution is available.

**K axiom (modal modus ponens)** — `[α](P → Q) → ([α]P → [α]Q)`: distributes the box modality over implication.

**V vacuous axiom** — `P → [α]P` when `P` does not depend on any variable `α` changes; a fact with no free bound variables of `α` survives running `α`.

**Gödel generalization rule (G)** — From a valid `P` infer `[α]P`: if `P` holds always, it holds after every run of `α`.

**Monotonicity rule (M / MR)** — If `P` entails `Q`, then `[α]P` entails `[α]Q` (and dually for diamond); lets one strengthen or weaken postconditions under a modality.

**Derived rule** — A rule that is not primitive but can itself be proved from the core axioms and rules (e.g. the loop-invariant rule), added for convenience.

**id / closing rule** — A proof branch closes (marked `*`) when a succedent formula also appears in the antecedent.

## Loops and induction

**Loop invariant** — A formula `J` that holds initially, is preserved by one iteration of the loop body, and implies the postcondition; the key to proving `[α*]P`.

**Loop-invariant rule (`loop`)** — The derived proof rule that establishes `[α*]P` from three premises: `A → J` (invariant initially holds), `J → [α]J` (inductive/preserved), and `J → P` (invariant implies safety).

**Induction rule for loops (`ind`)** — The rule `J ⊢ [α]J` (invariant is inductive) underlying loop reasoning; the induction step generalizes `[α*](P → [α]P)` via Gödel generalization.

**Induction axiom (I)** — The axiom expressing loop induction: if a property is inductive across `α`, it holds throughout `α*`.

**Generalization / strengthening** — Replacing the postcondition by a stronger loop invariant `J`; a correct invariant is usually stronger than the property one ultimately wants to prove.

**Design-by-invariant** — Designing the controller and its invariant together so the loop invariant is provable by construction, rather than reverse-engineering an invariant afterward.

**Convergence rule** — The diamond counterpart to induction, proving repetitive diamonds `⟨α*⟩P` by a variant/measure that strictly decreases toward the goal.

## Differential invariants, cuts, ghosts

**Differential invariant (DI)** — A formula `F` that is preserved along all solutions of `x' = f(x) & Q` because its differential (Lie derivative) has the right sign; proves properties of ODEs without solving them. `F` is a differential invariant iff `Q ⊢ (F)'` under the ODE.

**Differential of a term / formula** — The syntactic derivative `(e)'` (respectively `(F)'`) obtained by the differential operator, which under an ODE `x' = f(x)` gives the time-derivative by substituting `f(x)` for `x'`.

**Differential effect axiom (DE)** — Reduces reasoning after an ODE by turning `x'` into `f(x)` (the differential-assignment lemma), exposing the derivative of the state for invariant reasoning.

**Differential invariant axiom (DI)** — The axiom `[x'=f(x)]F ↔ F ← [x'=f(x)](F)'`: `F` stays true along the ODE if its differential is (weakly) of the correct sign throughout the evolution domain.

**Differential weakening (DW)** — A proof rule that concludes `[x'=f(x) & Q]P` directly when the evolution domain constraint `Q` already implies `P`; the ODE cannot leave `Q`.

**Differential cut (DC)** — A proof rule that soundly adds an already-proved invariant `C` to the evolution domain constraint (`x'=f(x) & Q` becomes `x'=f(x) & (Q∧C)`), strengthening the domain to enable further invariant proofs.

**No differential cut elimination** — The theorem that, unlike Gentzen's cut in ordinary sequent calculus, differential cuts cannot in general be eliminated; some ODE properties are provable only via a differential cut.

**Differential ghost (DG)** — A proof rule that soundly introduces an auxiliary differential variable `y` with its own ODE `y' = g` into the system, adding a dimension whose evolution makes an otherwise-unprovable invariant provable.

**Auxiliary / ghost variable** — An extra variable added to a model or proof purely to enable reasoning (arithmetic ghosts, ghosts of time, ghosts of division), which does not affect the original system's behavior.

**Differential-algebraic ghost** — A ghost introduced together with an algebraic relation constraining it, used to reason about quantities like reciprocals within an ODE proof.

**Differential invariance chart** — The systematic classification (Theorem) of which formula shapes (equalities, open/closed inequalities, conjunctions, disjunctions) are differential invariants and how to prove each; includes open/closed set sanity checks.

**Strict barrier certificate** — An invariant argument for strict inequalities `e > 0` (an open set); strict-barrier incompleteness shows such arguments do not cover all cases, motivating differential cuts/ghosts.

**Sophus Lie / Lie derivative** — The classical connection between an invariant's total derivative along the vector field and its preservation; differential invariants are a logical formulation of Lie's characterization.

## Reactions, delays, and control models

**Event-triggered control** — A control design where the controller reacts precisely when a physical event (a condition on the continuous state) occurs; modeled by evolution-domain constraints that stop the ODE at the event boundary.

**Time-triggered control** — A control design where the controller runs on a fixed sampling period: the plant evolves for at most the reaction time between control cycles, which is implementable and more robust than an idealized event trigger.

**Reaction delay / reaction time** — The maximum time a controller may take to respond; a safe time-triggered controller must account for how far the physical system can move within its own reaction delay.

**Sampling** — The periodic observation of continuous state by a digital controller; the gap between the event-triggered ideal and real sampled control drives time-triggered design.

**Controllability constraint** — A condition ensuring the controller still has a safe action available given the worst-case state it may sample; needed to bridge event- and time-triggered models.

## Uniform substitution

**Uniform substitution (US)** — The mechanism that instantiates the concrete dL axioms by uniformly replacing predicate/function symbols `p(θ)` by formulas/terms, yielding "syntactic uniform substitution = semantic replacement"; makes soundness a check on a literal formula rather than on a schema.

**Uniform substitution rule (US / USR)** — The single proof rule that soundly applies a uniform substitution to a proved formula (or whole proof), replacing schema-instantiation with an explicit, checkable proof step.

**Admissibility (U-admissible)** — The side condition that a substitution `σ` does not introduce a free variable into a context where it would be bound (no clash), required for the substitution to be sound.

**Clash** — A failed substitution attempt where admissibility is violated (a substituted variable would be captured by a binder or modality); the substitution is rejected rather than applied unsoundly.

**Bound variable / bound-effect lemma** — Identifies the variables an HP may change (BV); together with the coincidence lemma it underlies admissibility and the soundness of uniform substitution.

**Coincidence lemma** — The result that a formula's or program's meaning depends only on its free variables, so states agreeing on those variables agree on the value; foundational for substitution soundness.

**Uniform substitution lemma** — The soundness lemma stating that applying an admissible uniform substitution syntactically matches performing the corresponding semantic replacement.

## Hybrid games and differential game logic

**Differential game logic (dGL)** — The logic for hybrid games, `dGL = GL + HG = dL + d`, extending dL with a duality operator; strictly more expressive than dL for hybrid systems.

**Differential hybrid game** — A hybrid game whose continuous dynamics is a differential game, where the players also compete over the evolution of an ODE.

**Angel** — The existential/verifying player in a hybrid game who resolves the `⟨α⟩` (angelic) choices and tries to reach the goal; "Angel has wings" corresponds to the diamond modality.

**Demon** — The universal/adversarial player who resolves the `[α]` (demonic) choices and tries to prevent the goal; corresponds to the box modality.

**Duality operator (`ᵈ`)** — The game operator that swaps the roles of Angel and Demon, letting one player's choices be expressed via the other's; the single addition that turns hybrid programs into hybrid games.

**Winning strategy** — A policy for a player that guarantees reaching (Angel) or avoiding (Demon) the goal regardless of the opponent's choices.

**Winning region** — The set of states from which a given player has a winning strategy; dGL formulas denote winning regions.

**Denotational (semantics) of games** — Defines each hybrid game's meaning as the set of states (winning region) from which Angel can achieve a given goal, computed as a fixpoint of monotone set operators.

**Operational semantics of games** — Defines game meaning by the step-by-step interactive play of Angel and Demon through the game's structure.

**Determinacy / consistency** — The theorem that hybrid games are determined and the semantics consistent: from each state exactly one player has a winning strategy for a goal and its negation cannot both hold.

**Pre-fixpoint / least fixpoint** — The lattice-theoretic notions used to define repetition in games: the winning region of a game loop is the least fixpoint of a monotone operator over the complete lattice of state sets.

**Differential game invariant** — The game analogue of a differential invariant, proving properties of differential games against an adversarial continuous player.

**Differential game refinement** — A relation/technique for proving one differential game is safely refined by another, transferring winning strategies.

**Axiomatic separation (hybrid systems vs. games)** — The result that the game axioms (K, I, C, B, V, G) behave differently for dGL, making dGL sub-regular/sub-Barcan; distinguishes game reasoning from system reasoning.

## Real arithmetic decision procedures

**Quantifier elimination (QE)** — The procedure that transforms a first-order real-arithmetic formula `P` into an equivalent quantifier-free formula `QE(P)` with `P ↔ QE(P)` valid; the reason FOLR is decidable.

**Decidability of real arithmetic (Tarski)** — Tarski's theorem that the first-order theory of real-closed fields is decidable because it admits quantifier elimination.

**Cylindrical algebraic decomposition (CAD)** — Collins's algorithm implementing quantifier elimination for arbitrary polynomial degree by decomposing space into sign-invariant cells; the practical (doubly-exponential) QE method.

**Virtual substitution** — An efficient quantifier-elimination technique for low-degree (linear, quadratic) polynomials that substitutes symbolic solution "test terms" — including infinitesimals and infinities — for quantified variables instead of computing explicit roots.

**Test terms / infinitesimals and infinities** — The symbolic values (roots, root ± ε, ±∞) substituted during virtual substitution; strict inequalities are handled because infinitesimals and infinities never satisfy equalities.

**Universal closure** — Prefixing a formula's free variables with universal quantifiers before running quantifier elimination, so that proving validity reduces to deciding a closed formula.

**Real-arithmetic proof rule (R)** — The sequent-calculus rule that discharges a first-order real-arithmetic subgoal by an external decision procedure (QE), closing arithmetic branches of a dL proof.

## Tools and runtime validation

**KeYmaera X** — The hybrid-systems theorem prover implementing the dL/dGL uniform-substitution calculus, in which the labs' CPS models are designed, modeled, and proved.

**ModelPlex** — The KeYmaera X technique that transforms an offline dL safety proof of a model into provably correct runtime monitors, so verification results transfer to the real (sampled) CPS.

**Runtime monitor** — An executable condition, synthesized from the proof, checked online at runtime; if it always passes, the real system stays within the verified model's guarantees.

**Controller monitor** — A ModelPlex monitor that checks whether a proposed control decision complies with the verified controller model before it is applied.

**Model monitor** — A ModelPlex monitor that checks whether the observed transition between consecutive samples is consistent with the verified model (detecting model violations at runtime).

**Plant monitor** — A ModelPlex monitor that checks the observed continuous evolution stays within the modeled plant behavior/bounds.

**Offline + online proof** — ModelPlex's split: a heavy correctness proof done once offline plus a cheap monitor check performed online, together reducing CPS safety to a runtime check backed by proof.

**Correct-by-construction runtime validation** — The guarantee that the synthesized monitors are themselves verified, so passing them provably implies the safety established for the model.
