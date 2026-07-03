# 15-812 — Programming Language Semantics · Vocabulary

Source: CMU 15-812 *Programming Language Semantics*, Spring 2018, André Platzer — https://symbolaris.com/course/pls18.html (schedule: https://symbolaris.com/course/pls18-schedule.html). Terms below are grounded in the openly-readable lecture-note PDFs in `materials/`. This offering teaches semantics primarily through **dynamic logic** and its metatheory (rather than the classic IMP/domain-theory route), extending at the end to **game logic / hybrid games**. Two schedule notes — the "Overview" (`15812-1`) and "Semantics of Program Contexts / Full Abstraction" (`15812-3`) — are access-walled (HTTP 401) and one note (`15812-28-relativity`, relative completeness) is a scan with no extractable text; concepts unique to those (e.g. contextual equivalence, full abstraction) are therefore not listed, to avoid fabrication.

## Program contracts and the language

**program contract** — a specification of a program by a `@requires` precondition and an `@ensures` postcondition (as in Principles of Imperative Computation), stating what must hold before and after execution.
**precondition / postcondition** — the assumed initial-state formula and the guaranteed final-state formula of a contract; the postcondition's truth may differ between initial and final states.
**logical variable** — an auxiliary variable (e.g. `a`, `b`) used only to relate initial and final values in a contract, not modified by the program, as needed to specify in-place swapping.
**first-order logic of real/integer arithmetic** — propositional logic extended with interpreted terms (`+`, `·`, `=`, `≥`), function/predicate symbols, and quantifiers `∀x`, `∃x`, used to state contracts precisely; unlike programs it is a *static* logic whose formulas are simply true or false in a state.
**(nondeterministic) while program** — the imperative language of the course: `x := θ`, test `?Q`, sequential `α; β`, conditional `if(Q) α else β`, `while(Q) α`, nondeterministic choice `α ∪ β`, and nondeterministic repetition `α*`.
**term** — arithmetic expression built from variables, number literals, function symbols, `+` and `·`.

## Dynamic logic

**dynamic logic (DL)** — a modal logic whose modalities talk about program behavior; formulas combine first-order logic with `[α]φ` and `⟨α⟩φ`, making the meaning of a program contract mathematically precise.
**box modality `[α]φ`** — the formula true in a state iff `φ` holds in *all* states reachable by running `α` (used to express `@ensures` postconditions).
**diamond modality `⟨α⟩φ`** — the formula true in a state iff *some* run of `α` reaches a final state satisfying `φ`; dual to the box via `[α]φ ≡ ¬⟨α⟩¬φ`.
**state** — a mapping from variables to reals (`ℝ`); `S` denotes the set of states, and `νₓʳ` the state agreeing with `ν` except that `x` takes value `r`.
**interpretation `I`** — the fixed assignment of meanings to function and predicate symbols; `I ⊨ φ` means `φ` is valid in `I`.
**valuation / semantics of terms `Iν⟦θ⟧`** — the real value of term `θ` in state `ν`, defined inductively over the term structure.
**transition (reachability) semantics `I⟦α⟧ ⊆ S × S`** — the meaning of a program as a binary relation on states; deterministic programs relate each initial state to at most one final state, nondeterministic ones possibly many.
**relational composition `∘`** — the semantics of `α; β` as `I⟦α⟧ ∘ I⟦β⟧`, the sequential chaining of the two reachability relations.
**reflexive transitive closure** — the semantics of `α*` as `⋃ₙ I⟦αⁿ⟧`, i.e. `α` run any finite number `n` of times.
**validity `⊨ φ`** — a DL formula that is true in all states of all interpretations (`I⟦φ⟧ = S` for every `I`); the target property that proofs establish.

## Axiomatic / compositional reasoning about programs

**axiomatic (compositional) reasoning** — the method of giving one reasoning principle (axiom) per program operator that reduces a property of a compound program to a logical combination of properties of its subprograms.
**equivalence axiom** — an axiom stated as a biimplication (`↔`) that rewrites a formula about a program into a structurally simpler one (structurally simpler even when textually longer).
**assignment axiom `[:=]`** — `[x := e]p(x) ↔ p(e)`: `p` holds after assigning `e` to `x` iff `p` holds of the new value `e` (with capture-avoiding substitution).
**test axiom `[?]`** — `[?Q]P ↔ (Q → P)`: since a failed test has no run, the postcondition need only hold when the test passes.
**conditional axiom `R1`/`[if]`** — `[if(Q) α else β]P ↔ (Q → [α]P) ∧ (¬Q → [β]P)`: an if-statement's property splits into guarded properties of its branches.
**sequential composition axiom `[;]`** — `[α; β]P ↔ [α][β]P`: `P` after `α; β` iff `[β]P` holds after `α`.
**unwind / unfold axioms** — `[while(Q) α]P ↔ [if(Q){α; while(Q) α}]P` and its expansion, which unroll a loop one iteration; sufficient only for loops with a fixed finite bound.
**sequent calculus** — the proof format used, deriving a conclusion at the bottom from premises above via proof rules (e.g. `∧R`, `→R`), marking arithmetic steps `ℝ`.
**derived axiom / derived rule** — an axiom or rule proved from previously-sound axioms and rules in the sequent calculus, hence itself sound without a fresh semantic argument.
**soundness (of an axiom/rule)** — the property that all its instances are valid, so it only ever proves valid formulas; established either from the semantics or by derivation.
**iteration axiom `[*]`** — `[α*]P ↔ P ∧ [α][α*]P`, unwinding a nondeterministic repetition; still refers to the same loop property on the right.
**induction axiom `I`** — `[α*]P ↔ P ∧ [α*](P → [α]P)`: the sound induction principle for loops, in contrast to the *unsound* naive `[α*]P ↔ P ∧ (P → [α]P)` that motivated careful semantics.
**Gödel generalization rule `G`** — from a proof of `P` conclude `[α]P`; a valid postcondition holds after any program run, but the rule discards the context `Γ, Δ`.
**basic loop induction rule `ind0`** — proves `[α*]P` from `P` initially and `P → [α]P` (that `P` is inductive), derived from `I` and `G`.
**loop invariant** — a freely chosen formula `J` that holds initially, is preserved by the loop body, and implies the postcondition; retains information the `G` rule would otherwise lose.
**loop rule `loop` / `while`** — the invariant proof rule `Γ ⊢ J`, `J ⊢ [α]J`, `J ⊢ P` ⇒ `Γ ⊢ [α*]P` (and its guarded `while(Q) α` form with `J, Q ⊢ [α]J`, `J, ¬Q ⊢ P`).
**monotonicity rule `M[·]` / `M⟨·⟩`** — from `P ⊢ Q` conclude `[α]P ⊢ [α]Q` (resp. for `⟨α⟩`): a stronger postcondition can be weakened under a modality.
**loop invariant search** — the practical phenomenon that a candidate invariant may imply the postcondition yet not be inductive, or be inductive yet too weak, requiring iterative strengthening (e.g. `s = x·x` → `s = i·i` → `i ≤ x ∧ s = i·i`).

## Total correctness and termination

**partial correctness** — the meaning of `[α]P`: *if* `α` terminates then `P` holds in the final state; says nothing about termination.
**total correctness** — the meaning of `⟨α⟩P`: `α` terminates *and* `P` holds; the stronger notion, implying partial correctness for deterministic programs (`⟨α⟩P → [α]P`).
**diverging program** — a program that does not terminate.
**diamond axioms `⟨:=⟩, ⟨?⟩, ⟨if⟩, ⟨;⟩, ⟨unwind⟩`** — the diamond-modality counterparts of the box axioms; note `⟨?Q⟩P ↔ Q ∧ P` (conjunction, not implication).
**convergence axiom `C`** — the sound loop-progress principle for integer arithmetic: if a nonnegative measure `p(n)` can always be decreased by one round, the loop reaches `p(0)`.
**loop convergence rule `con`** — the termination proof rule derived from `C`, using a well-founded decreasing counter `n` to prove `⟨α*⟩P`.
**loop variant** — a term/quantity whose value strictly decreases along loop iterations while staying nonnegative, witnessing termination (as opposed to an invariant, which does not change).
**variant rule `var`** — the total-correctness rule for `while` loops using an invariant `J` plus a variant term `p` that decreases and stays `≥ 0`.
**Kripke's modal modus ponens `K` / `K⟨·⟩`** — `[α](P → Q) → ([α]P → [α]Q)` and its diamond form; the modal distribution axiom.
**invariant-to-variant conversion `inv2var` / `inv∧var`** — derived axioms letting a separately-proved invariant be reused inside a diamond (termination) proof, e.g. `[α]P ∧ ⟨α⟩Q → ⟨α⟩(P ∧ Q)`.

## Arrays, functions, and updates

**arrays as functions** — modeling an array `a` as a function `ℤ → ℤ`, so a program state maps variables to `ℤ ∪ (ℤ → ℤ)`.
**function patching / updating `fₓᵇ`** — the function equal to `f` everywhere except mapping `x` to `b`; used to give semantics to an array store `a(e) := ẽ`, read right-to-left.
**aliasing** — the problem that syntactically distinct index terms may denote the same location, so naive textual substitution is unsound for array updates.
**read-over-write axioms `row1`, `row2`** — `aₑẽ(e) = ẽ` (read the just-written index) and `e ≠ ẽ → aₑe′(ẽ) = a(ẽ)` (read an unchanged index), the axioms for reasoning about updated arrays.
**array-update assignment axiom `[:=₍₎]`** — `[a(e) := ẽ]p(a) ↔ p(aₑẽ)`: replace free occurrences of the array `a` by its patched version, sidestepping aliasing via case splits on index equality.

## Static semantics

**static semantics** — aspects of a program/formula's behavior readable directly from syntax without running it, chiefly the free and bound occurrences of variables (compiler definitions/uses).
**free variables `FV`** — variables that may potentially be *read* by a term, formula, or program; a sound syntactic over-approximation of actual reads.
**bound (may-bound) variables `BV`** — variables that may be *written* on some execution path (bound by `∀x`, `∃x`, assignments, or modalities).
**must-bound variables `MBV`** — variables written on *all* execution paths (`MBV(α) ⊆ BV(α)`); used to make `FV` of sequential/modal constructs more precise.
**Rice's theorem (as a limit)** — the impossibility result cited to explain why any static analysis of variable reads/writes must over-approximate (e.g. calling `x` free even under an unsatisfiable test).
**bound (effect) lemma** — if `(ω, ν) ∈ I⟦α⟧` then `ω = ν` off `BV(α)`: a program changes only its bound variables.
**coincidence lemma** — the values/runs of a term, formula, or program depend only on its free variables: states agreeing on `FV` give the same term value, same formula truth, and matching runs (agreeing on `FV ∪ MBV`).
**structural induction** — the proof technique used throughout (induction on the syntactic complexity of terms, formulas, and programs, with `α*` ordered above all lower-repetition programs).

## Uniform substitution

**uniform substitution `σ`** — a mechanism that replaces function, predicate, and program symbols by (uniformly the same) terms/formulas/programs throughout a formula, turning a single concrete valid formula into a schema of instances.
**US rule** — the proof rule `φ ⊢ σ(φ)`: any uniform-substitution instance of a valid formula is valid; the only rule needing an algorithmic implementation.
**literal vs. contextual reading** — two readings of `[:=]`: `p(x)`/`p(θ)` as a genuine predicate `p` applied to `x`/`θ` (literal), versus a formula context `p(·)` with a hole (contextual); the literal reading plus uniform substitution avoids formalizing contexts.
**admissible uniform substitution** — a substitution `σ` that is `U`-admissible for an expression iff the variables it introduces free (`FV(σ)`) are disjoint from the bound variables `U` at each operator; prevents variable capture.
**capture / capture-avoiding substitution** — the requirement that a substitution not place a term under a quantifier or modality binding one of the term's free variables (resolved by bound-variable renaming).
**substitution adjoint `σ*ω I`** — the modified interpretation capturing, in semantics, the syntactic effect of `σ` (each substituted symbol reinterpreted per `σ`).
**uniform substitution lemma** — `ω ∈ I⟦σ(φ)⟧ iff ω ∈ σ*ω I⟦φ⟧` (and the term/program analogues): applying `σ` syntactically equals evaluating in the adjoint interpretation; the crux of US soundness.
**admissible adjoints corollary** — under `U`-admissibility, the adjoint interpretation is insensitive to state changes off `U`, letting the substitution lemma push through binders.
**local soundness** — an inference whose conclusion is valid in every interpretation validating all its premises; all locally sound rules are sound, and their `σ`-instances stay locally sound (`FV(σ) = ∅`).
**axioms as concrete data** — the consequence that, with US, all other axioms and axiomatic rules (e.g. `G`) become finitely many concrete DL formulas/pairs rather than infinite schemata.

## Metatheory: soundness, completeness, and expressiveness

**axiomatic semantics** — the viewpoint that the meaning of an operator is given by its proof rules and axioms; justified when the calculus agrees with the denotational semantics (soundness + completeness).
**soundness (of a calculus)** — `⊢ ⊆ ⊨`: every provable formula is valid; a minimal requirement for a logic.
**completeness** — `⊨ ⊆ ⊢`: every valid formula is provable; together with soundness gives `⊢ = ⊨` (provability and validity coincide).
**soundness & completeness of first-order logic** — Gödel's theorem that FOL's calculus is both sound and complete (`⊢ = ⊨`, also relative to assumptions `Γ`).
**entailment / consequence `Γ ⊨ φ`** — `φ` true in all models of `Γ`; equals provability from `Γ` in FOL.
**compactness** — `Γ ⊨ A` iff some finite `E ⊆ Γ` has `E ⊨ A`; provability can use only finitely many assumptions.
**finiteness property** — `Γ` has a model iff every finite subset does; equivalent to compactness.
**propositional dynamic logic (PDL)** — the variable-free fragment of DL (predicate symbols of arity 0, uninterpreted atomic programs); decidable but of limited expressive power.
**incompleteness of first-order DL** — the theorem that (first-order) dynamic logic has *no* effective sound and complete calculus, shown via failure of compactness in DL (Rice's theorem, the Entscheidungsproblem and halting problem as background).
**infinitary / relative / arithmetical completeness** — the positive counterparts that do hold for DL: sound-and-complete *infinitary* axiomatizations exist, and *relative* / *arithmetical* completeness results (completeness modulo an oracle for arithmetic) have been proved.
**computation-sequence semantics `CS(α)`** — the semantics assigning to each program the set of finite `;`-sequences of atomic assignments/tests it could run; its transitions match the transition semantics (sequence lemma, witnesses).
**first-order rendition `(⟨σ⟩G)♭`** — the effective translation of a diamond over a single computation sequence into an equivalent first-order formula.
**completeness of termination (uninterpreted case)** — the theorem that for termination assertions `F → ⟨α⟩G` with first-order `F, G` and uninterpreted symbols, `⊨` and `⊢` coincide, proved by structural induction using computation sequences, the first-order rendition, and compactness.

## Games and interactive computation

**interactive vs. sequential computation** — the shift from programs where one player resolves all choices to games where some choices help and others hinder (adversarial or multi-agent settings; best/worst/mixed-case complexity).
**Angel and Demon** — the two players: Angel resolves choices to make `⟨α⟩φ` true, Demon is her opponent; `⟨α⟩φ`/`[α]φ` assert the existence of an Angel/Demon *winning strategy*.
**game logic (GL) / differential game logic (dGL)** — the logic extending dynamic logic to hybrid games, adding the duality operator; `⟨α⟩φ`, `[α]φ` refer to winning strategies rather than reachability.
**hybrid game** — a game whose form (rules, choices, dynamics) is described in program notation; the course studies mainly the fully discrete special case (continuous evolution `x′ = θ & H` appears in the CPS-derived notes).
**game form vs. winning condition** — the game `α` defines only the rules/choices; the surrounding modal formula's postcondition `φ` defines when (and for which player) the game is won.
**test game / challenge `?Q`** — an atomic game where Angel loses immediately if `Q` fails; passing is necessary but not sufficient to win. Its dual `(?Q)ᵈ` makes Demon lose if `Q` fails.
**dual operator `ᵈ`** — the single operator added to programs to make games: `αᵈ` swaps all of Angel's and Demon's choices (like turning the chessboard 180°).
**Demon's controls `∩`, `×`** — demonic choice `α ∩ β ≡ (αᵈ ∪ βᵈ)ᵈ` and demonic repetition `α× ≡ ((αᵈ)*)ᵈ`, definable from Angel's operators via duality.
**winning strategy / winning region** — a strategy guaranteeing a player reaches the winning states whatever the opponent does; the *winning region* `ςα(X)` (Angel) / `δα(X)` (Demon) is the set of states from which such a strategy exists.
**denotational game semantics** — the meaning of a game as the winning-region functions `ςα(·)`, `δα(·)` on sets of winning states, defined by simultaneous induction with GL-formula semantics; compositional, like the DL semantics.
**memoryless strategies** — the fact that, since winning-region existence is context-independent, strategies can be taken to depend only on current state, remaining game, and goal (a Zermelo-type result).
**monotonicity (of winning regions)** — `X ⊆ Y ⇒ ςα(X) ⊆ ςα(Y)` (and for `δ`): larger winning-state sets give larger winning regions, since `X` occurs under an even number of negations.
**filibuster game** — the example `⟨(x := 0 ∩ x := 1)*⟩ x = 0` that appears non-determined; resolved by requiring Angel to *stop* repeating, so games have well-defined winners.
**advance-notice semantics** — a rejected repetition semantics `ςα*(X) = ⋃ₙ ςαⁿ(X)` requiring Angel to announce the iteration count `n` up front, which reveals too much and misses valid strategies.
**ω-strategic semantics** — another rejected semantics iterating the winning-region operator only `ω` times; can be arbitrarily far below the true winning region (misses strategies needing `> ω` iterations).
**iterated winning region `ςακ(X)`** — the transfinite iteration `ςα⁰(X) = X`, `ςακ⁺¹(X) = X ∪ ςα(ςακ(X))`, unions at limit ordinals; the explicit "inflationary" construction of repetition's semantics.
**ordinals (limit/successor), `ω`, `ω+1`** — the transfinite indices needed for the iteration; `ω` is the first infinite ordinal, `ω+1` its successor, and some games need iteration past `ω` (up to large ordinals) to reach the winning region.
**inflationary semantics** — defining `ςα*(X)` as the union of iterated winning regions over *all* ordinals, until the construction stabilizes.
**pre-fixpoint** — a set `Z` with `X ∪ ςα(Z) ⊆ Z`; every candidate winning region of `α*` must be a pre-fixpoint.
**least-fixpoint characterization of repetition** — `ςα*(X) = ⋂{Z : X ∪ ςα(Z) ⊆ Z}`, the *smallest* pre-fixpoint (a fixpoint of `Z = X ∪ ςα(Z)`); ensures Angel wins only by well-founded repetition. Demon's `δα*(X)` is dually the *greatest* fixpoint (a union).
**Knaster–Tarski fixpoint theorem** — the fixpoint theorem noted as an alternative justification for the iterated winning-region construction (which would require going transfinitely beyond `ω`).
**intersection closure** — the lemma that the intersection of two pre-fixpoint solutions is again a solution, yielding the least one.
**consistency & determinacy** — the theorem `⊨ ¬⟨α⟩¬φ ↔ [α]φ`: hybrid games are determined (from each state exactly one player has a winning strategy) and the logic is consistent.
**logical trinity** — the course's organizing principle that a logic needs three aligned legs — a concise *syntax*, an unambiguous *semantics*, and actionable *axiomatics* (proof calculus) — to serve as a specification-and-verification language; soundness is what links semantics and axiomatics into agreement.
**miracle of soundness** — the observation that proving the finitely many axioms and rules sound makes *every* (infinitely many) derivable proof sound, because a proof just composes sound steps; soundness is the "condition sine qua non" without which proving a formula would not entail its validity.
**dGL axiomatization (Hilbert calculus)** — the sound proof calculus for differential game logic: axioms `[·], ⟨:=⟩, ⟨?⟩, ⟨∪⟩, ⟨;⟩, ⟨*⟩, ⟨ᵈ⟩` plus rules monotonicity `M`, fixpoint `FP`, and induction `ind`.
**monotonicity rule `M`, fixpoint rule `FP`, induction rule `ind`** — the game proof rules; `FP` (`φ ∨ ⟨α⟩ψ → ψ ⊢ ⟨α*⟩φ → ψ`) and `ind` (`φ → [α]φ ⊢ φ → [α*]φ`) are inter-derivable, capturing least/greatest-fixpoint reasoning about repetition.
**separating axioms** — axioms sound for hybrid *systems* (single-player) but *not* for hybrid *games*, used to pinpoint the fundamental difference adversarial choice introduces.
