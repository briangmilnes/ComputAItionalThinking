# 17-654 — Analysis of Software Artifacts · Vocabulary

Source: CMU 17-654/17-754 "Analysis of Software Artifacts," Spring 2008, taught by Jonathan Aldrich (with William L. Scherlis). Archived public lecture slides: https://www.cs.cmu.edu/~aldrich/courses/654-sp08/

Terms are grounded in the slide text and grouped by course progression: foundations of quality and analysis; testing; inspection; program semantics and verification; static/dataflow analysis; interprocedural and protocol analysis; and analysis across the lifecycle (security, performance, concurrency, design).

## Foundations: Quality, Defects, and Analysis

**Software analysis** — The systematic examination of a software artifact to determine its properties. It is systematic (comprehensive), applies to an artifact (code, execution trace, test case, design or requirements document), and evaluates properties (functional correctness, or quality attributes such as evolvability, security, reliability, performance).

**Verification** — Determining whether the system meets its specification: "did we build the system right?" Verification targets flaws in design or code. The course focuses mostly on verification.

**Validation** — Determining whether the system meets the needs of its users: "did we build the right system?" Validation targets flaws in the specification, e.g. incorrect requirements capture.

**Fault** — A static flaw in software code (type 2) or a flaw in an attached physical component (type 1). A software fault is syntactically local or structurally pervasive and causes an error only when triggered by use; a "bug" is a fault.

**Error** — An incorrect state at execution time caused by a fault (e.g. a buffer overflow, corrupted data, or deadlock condition arising during a run).

**Failure** — The effect of an error on system capability, e.g. a program crash, an attacker gaining control, unresponsiveness, or incorrect output.

**Hazard** — The product of failure probability and severity; equivalent to risk exposure. Severity is the cost of a failure to stakeholders.

**Robustness / fault tolerance** — How the system behaves in the presence of errors in itself or its environment; diminishing the likelihood or severity of failure in response to a fault (via type systems, runtime checks, rebooting components, self-healing data structures, data validation).

**Quality attributes** — Non-functional properties such as evolvability, security, reliability, performance, usability, and safety; contrasted with functional (code-correctness) properties. Many cannot be measured externally or are nondeterministic, so they resist ordinary testing.

**Quality goal** — A measurable target defining acceptable quality, e.g. defects/KLOC, response time, mean time to failure, freedom from buffer overflow, or number of concurrent users; generally domain-dependent.

**Dynamic analysis** — Tools that extract data from actual test runs (e.g. finding memory errors, gathering performance data or invariants). Information is precise but does not cover all possible executions.

**Static analysis** — Tool-supported direct evaluation of formal software artifacts without running them; finds mechanical errors (null references, unexpected exceptions, memory misuse) and can yield partial positive assurance.

**Formal verification** — A formal proof that a program meets its specification; often tool-supported, typically expensive, and usually focused on functional attributes.

**Modeling** — Building and analyzing formal models of a system (often tool-supported, e.g. Alloy, model checking) to find design flaws or predict system properties before code exists.

**Root cause analysis** — Understanding why a defect was introduced and why it was not caught earlier (the process failure, not just the incorrect code), then adjusting the engineering process (education, review checklists, new static analyses) to prevent recurrence.

**Defect prevention** — Building quality in through requirements, design, architecture, process, and coding practices, rather than testing quality in after the fact ("quality cannot be tested in").

**False positive** — A reported warning that is not a real defect (the error condition cannot occur, or is one nobody cares about). A tuning burden for analysis tools.

**False negative** — A real error the tool fails to warn about: the program can reach an error condition for a covered attribute on some input, yet no warning is issued.

**Discrete mathematics of software** — Software is built from discrete math, so conventional continuous-engineering quality strategies (divide-and-conquer, overengineering, statistical quality) fail: small bugs mushroom (a "butterfly effect"), redundant copies fail simultaneously, and modularity is defeated.

## Testing

**Testing** — Direct execution of code on test data in a controlled environment. Its goals are to reveal failures, assess quality, clarify the specification, learn about the program, and verify contracts; it cannot demonstrate correctness because complete testing is impossible.

**Unit testing** — White-box tests written by developers, concurrently with implementation, to verify small units (individual methods and classes) against their contract.

**Integration testing** — Testing several modules together to find interaction defects; done incrementally to avoid risky "big bang" integration.

**System testing** — End-to-end testing of the whole system (with or without hardware), higher-level than unit or integration testing.

**Regression testing** — Tests re-run every time the system changes, to catch new bugs introduced by code changes and ensure fixed bugs stay fixed.

**Black-box (functional) testing** — Testing through the public API without visibility into internal code; better suited to functional attributes; assessed via domain coverage.

**White-box (structural / glass-box) testing** — Testing with visibility into internal code elements; enables direct testing of internals and code-coverage analysis; better for non-functional attributes.

**Test coverage** — The portion of a program (or its input domain) exercised by a test suite. Good coverage is not a guarantee of adequacy; poor coverage tells you the suite is inadequate.

**Statement coverage** — The portion of program statements (CFG nodes) touched by test cases; test-suite size is linear in code size, but dead code and error handlers are hard to reach.

**Branch coverage** — The portion of condition branches (or relational expressions and values) covered by test cases. Multicondition coverage additionally covers all boolean combinations.

**Path coverage** — The portion of all possible execution paths covered by tests; gives better coverage of logical flows but suffers combinatorial explosion (n if-tests yield up to 2^n paths), and not all paths are feasible.

**Loop testing** — Choosing representative and edge iteration counts for loops: zero, one, two iterations, and for a bound n, the n-1, n, and n+1 cases; nested loops handled inside-out.

**Equivalence class (partition) testing** — Partitioning the input domain by an equivalence relation so that all inputs in a class are expected to fail or succeed the same way, then testing one representative per class.

**Boundary-value analysis** — Selecting extreme or unique cases at or around boundaries with respect to preconditions or program decision points (zero-length inputs, very long inputs, null references), which tend to reveal off-by-one and boundary errors.

**Robustness testing** — Deliberately supplying erroneous inputs and boundary cases (bad API use, corrupted files, buffer-overflow inputs) to assess how the system handles misuse and failure to meet preconditions.

**Combination testing** — Testing combinations of boundary values, since some errors surface only when two or more variables are simultaneously at boundaries; usually one invalid input at a time.

**Protocol testing** — Testing representative or randomly generated sequences of operations on objects (e.g. Create, AddEntry, Lookup, Delete on a dictionary), covering conceptual states and object protocols.

**Mutation testing** — Perturbing the code slightly (e.g. changing `<` to `>`, `0` to `1`) to seed defects, then measuring how many seeded mutants the test suite detects; the fraction of mutants not found approximates the fraction of real errors not found.

**Capture/recapture** — Estimating the number of undetected defects from the overlap between defects found by different inspectors, via Lincoln-Petersen analysis (N = n1·n2/m); most applicable to inspection.

**Test adequacy** — Whether a test suite is good enough. Coverage criteria are useful for finding where testing is missing but are not sufficient adequacy criteria; better guides cover important functional cases, borderline specification cases, and invalid inputs.

**Scaffolding** — Test support code (stubs and drivers) that simulates external client or service code so a unit can be tested in isolation, catching bugs early and localizing errors.

**Stub / driver** — A stub is a minimal substitute for underlying service code (a mock object); a driver is client-side code that exercises the unit under test with individual calls and call sequences.

**Test harness** — A tool (e.g. JUnit) that manages and runs unit tests so they are automatic, repeatable, and independent, with immediate visual confirmation of success or failure.

**Test-driven development** — Writing tests before the code, writing code only when an automated test fails, and, on finding a bug, first writing a failing test and then fixing it.

**Value-driven testing** — Focusing on tests with the biggest benefit per unit cost, where value derives from quality improvement (does it find a severe, common, distinct, general bug?).

**QA plan** — A quality-assurance plan document stating which quality techniques are used and why, what will and will not be tested, goals and measurement targets, schedule and priorities (based on hazards/risks), roles, and completion criteria.

**IV&V** — Independent Verification and Validation, in which a separate test organization implements part of the test plan.

**Defect tracking** — Systematically recording issues (bugs, feature requests, queries) in a database, providing a basis for measurement (phase introduced/repaired, categorization, root cause), division of effort, and accountability.

## Inspection

**Software inspection (review)** — A meeting during which designs and code are reviewed by people other than the original developer, providing a fresh perspective, knowledge sharing, and early flaw detection that reduces rework and testing effort.

**Formal technical review** — A structured inspection with defined participation, advance preparation by participants, a moderator-led documented process, and a formal follow-up; finds more bugs but costs more than lighter reviews.

**Walkthrough** — An informal review with no advance preparation in which the author leads discussion and there is no formal follow-up; low cost and valuable for education.

**Inspection roles** — The moderator (organizes the review, keeps it on track, impartial), the recorder (captures the log of defects and issues), the reader (presents and interprets the material, and should differ from the author to reveal ambiguities), and the author.

**Inspection checklist** — A short (about seven items) list focusing reviewers on likely error sources, priority issues, and historical problems; started from a well-known source and refined by experience.

**Defects per hour** — A measure of inspection efficiency (defects found per hour of effort); inspection is empirically far more efficient at defect detection than testing in reported studies.

## Program Semantics and Verification

**Program semantics** — A formal description of what a program means, typically how it executes; provides a framework for precise definitions, proofs of correctness, and reasoning about analysis over a language core.

**Big-step (reduction) semantics** — Semantics that show the final result of a program: in environment E, expression a reduces to a value, or statement S executes to a new environment E′; the primary style used in the course.

**Small-step (reduction) semantics** — Semantics that show step-by-step execution: in environment E, expression e steps to e′ producing a new environment E′.

**Denotational semantics** — Semantics giving the meaning of program P as a mathematical object O.

**WHILE language** — A simple procedural language with assignment, sequencing, conditionals, and while loops, used as a sandbox for illustrating semantics and analyses.

**Inference rule / derivation** — Rules with premises above a line and a conclusion below ("if premises, then conclusion"); a tree of such rules forms a derivation, whose top rules are premise-free axioms.

**Environment** — A map from variables to values (E : Var → Value) representing program state, updated by statement execution.

**Predicate** — A boolean function over program state (an expression returning a boolean), possibly using mathematical notation, e.g. `x = 3`, `∀i∈1..n · a[i] > a[i-1]`.

**Precondition** — A predicate describing the condition a function relies on for correct operation; what the function expects of its callers.

**Postcondition** — A predicate describing the condition a function establishes after correctly running; what the function promises to its callers.

**Design by contract** — Specifying a contract of pre- and post-conditions between a service client and its implementation, so the system works if both parties fulfill their obligations, and responsibility is assigned accordingly.

**Hoare triple** — The notation `{P} S {Q}`, meaning if execution starts in a state satisfying predicate P and runs statement S, then S terminates in a state satisfying Q.

**Hoare logic** — A formal, mechanical system of rules (assignment, sequence, conditional, loop) for reasoning about program correctness using pre- and postconditions; a foundation for static-analysis tools.

**Weakest precondition** — For statement S and postcondition Q, the most general precondition wp(S,Q) under which S establishes Q; `{P} S {Q}` holds iff `P ⇒ wp(S,Q)`. The assignment rule is `wp(x := E, P) = [E/x]P`.

**Strongest postcondition** — For precondition P, the most specific (most useful) postcondition that S establishes; Q is strongest if for every valid Q′, `Q ⇒ Q′`.

**Loop invariant** — A predicate Inv true on every loop iteration such that `P ⇒ Inv`, `{Inv ∧ B} S {Inv}`, and `(Inv ∧ ¬B) ⇒ Q`; the creative step in a loop proof, balancing generality against precision.

**Partial correctness** — The property that if a loop terminates the postcondition holds; it says nothing about the case where the program does not terminate.

**Total correctness** — Partial correctness plus a proof of termination.

**Variant function** — A function v giving an upper bound on the number of loop iterations remaining, such that `(Inv ∧ B) ⇒ v > 0` and v strictly decreases each iteration, used to prove termination.

**Data invariant** — A predicate true on every entry to and exit from an abstract-data-type's functions (e.g. "the array is sorted"); may be violated temporarily inside a function, and hides representation decisions from clients.

**Java Modeling Language (JML)** — A notation for writing pre-/post-conditions and invariants as annotations (`requires`, `ensures`, `loop_invariant`, `\result`, `\sum`, `\forall`) in Java source, used by ESC/Java.

**ESC/Java** — The Extended Static Checker for Java: a tool that checks JML Hoare-logic specifications and finds null dereferences and array errors; unlike a hand proof it is unsound (checks only one loop iteration, does not check `@modifies`), so it increases confidence rather than guaranteeing correctness.

## Static and Dataflow Analysis

**Abstract state space exploration** — The view of static analysis as systematically examining an abstraction of a program's state space (e.g. Metal's interrupt analysis abstracts all program state to "enabled" and "disabled"), exhaustively because the abstraction covers all program information.

**Mechanical error** — A defect resulting from inconsistently following simple, mechanical design rules (buffer overruns, null dereferences, resource leaks, API/framework-rule violations, encapsulation violations, race conditions); static analysis's sweet spot and hard to find by testing.

**Abstract syntax tree (AST)** — A tree representation of source code based on the language grammar, with one node type per production; produced by parsing.

**Control flow graph (CFG)** — A graph showing the order of statement execution and where data flows; it decomposes expressions into primitive operations (typically one node per useful AST node) and writes loops out as cycles.

**Call graph** — A graph of which methods call which; interprocedural analyses partition it at cut points to provide incremental, contingent assurance of a subgraph.

**Three-address code** — A representation in which each operation has at most three operands (inspired by assembly `add x,y,z`), with complex expressions broken into temporaries; the form on which flow functions operate.

**Bug pattern / AST walker** — A "semantic grep" analysis (commonly a Visitor) that walks the AST, checks the local neighborhood of nodes of a given type against a bug pattern, and warns on matches (as in FindBugs).

**Dataflow analysis** — An analysis that tracks the flow of abstracted values through a program's CFG, distinguishing order of operations, choosing an abstraction specific to the property of interest (is a variable null? a file open? a value possibly zero?).

**Lattice** — A tuple (L, ⊑, ⊔, ⊥, ⊤): a set of abstract elements with a partial order ⊑ ("at least as precise as"), a least-upper-bound (join) operation ⊔ to merge values, a bottom ⊥ (unanalyzed / least element), and a top ⊤ (least precise / greatest element).

**Join (least upper bound)** — The operation ⊔ that merges two abstract values at a control-flow merge point, yielding the least element that is an upper bound of both.

**Finite height** — The property that all paths from ⊥ to ⊤ in a lattice are finite; required (together with monotone flow functions) to guarantee analysis termination.

**Abstraction function** — A function α mapping each concrete program state to a lattice element (e.g. `αZI(0) = Z`, `αZI(n) = NZ`), lifted from values to tuples; relates concrete execution to analysis results.

**Flow (transfer) function** — A function mapping the dataflow information before a CFG node to the information after it; the abstract analogue of statement semantics, defined case-by-case on the statement form.

**Worklist algorithm** — The iterative fixed-point algorithm that repeatedly pops a node, joins its predecessors' results, applies the flow function, and re-queues successors when the result changes; runs in roughly O(h·e·o) and terminates at a fixed point.

**Zero analysis** — An example dataflow analysis tracking whether each variable is zero (Z), non-zero (NZ), or maybe-zero (MZ = ⊤), used to flag possible division-by-zero and null-pointer errors.

**Constant propagation** — A dataflow analysis determining which variables hold a constant value, using a lattice of integers with ⊥ and ⊤; useful for optimization and error checking, with zero analysis as a special case.

**Reaching definitions** — A "may" dataflow analysis over a set (powerset) lattice determining, for each use of a variable, which prior assignments (definitions) could be the most recent; follows a kill/gen pattern.

**Live variables** — A backward dataflow analysis determining which variables may be used again before being redefined at a given program point; enables dead-code elimination.

**Kill/gen** — The pattern in set-lattice flow functions of removing (killing) definitions/variables invalidated by a statement and adding (generating) the new ones.

**Fixed point** — The state in which repeated application of the analysis's flow functions no longer changes any result; where the analysis terminates and its results become a sound abstraction of execution.

**Monotone flow function** — A flow function ƒ such that `σ ⊑ σ′ ⇒ ƒ(σ) ⊑ ƒ(σ′)`; monotonicity plus finite lattice height guarantees the analysis terminates.

**Soundness (conservative / safe approximation)** — The property that analysis results over-approximate all possible runtime states: for every execution point with memory η and analysis result σ, `α(η) ⊑ σ` ("truth ⊑ analysis"); a sound analysis finds all defects of a class.

**Local soundness** — The per-statement correctness condition: if the flow function maps sound input σi to output σo, then for every concrete step from ηi to ηo with `α(ηi) ⊑ σi`, we have `α(ηo) ⊑ σo`. Global soundness follows from local soundness by induction over execution traces.

**Execution trace** — The (finite or infinite) sequence of ⟨program point, memory⟩ pairs a program passes through on a given input; the formal ground truth against which soundness is defined.

**Flow sensitivity** — Propagating different (more precise) dataflow information along the true and false branches of a test (e.g. after `x == 0`, x is Z on the true branch, NZ on the false), recovering precision lost at merges.

## Interprocedural and Protocol Analysis

**Interprocedural analysis** — Any analysis where the results for a caller depend on the results for a callee (or vice versa); needed because most real errors span multiple functions.

**Default assumptions** — The simplest interprocedural strategy: assume fixed starting values for parameters and results (e.g. ⊤ for all), then verify calls and returns respect them; simple and efficient but imprecise (many false positives).

**Assume-and-check annotations** — Programmer-written annotations giving the dataflow value expected for each parameter and result; the callee is checked against them and each call site is verified to obey them—more precise than assumptions, more efficient than whole-program analysis.

**Interprocedural CFG** — A single control-flow graph that "inlines" all method calls so callees are treated as part of the current method; more precise than assumptions but does not scale (one huge CFG for the whole program).

**Context-sensitive summary** — A map from input dataflow information to output dataflow information capturing a function's effect, applied when the function is called; gives different results for different call contexts, avoiding the imprecision of a single interprocedural CFG.

**Abstract summary** — A summary that symbolically represents a function's effect on an abstract input (e.g. `x:α → result:α`), rather than enumerating each concrete input case; the state of the art, used by PREfix.

**Symbolic execution** — Exploring a subset of program paths by executing them with symbolic (rather than concrete) values, recording the facts true along each path; covers more functionality than most testing but may miss errors (as in PREfix).

**Path sensitivity** — Analyzing each feasible program path separately so that errors on infeasible (never-taken) paths are not reported; increases precision at the cost of an exponential (or, with loops, infinite) number of paths, which PREfix bounds with a fixed path/iteration cutoff.

**Guard / constraint / fact (PREfix model)** — Along a symbolically executed path, the guard is what must hold for the path to be taken, constraints are the preconditions for successful execution, and facts are what is known to be true (e.g. about the return value); together they form a function summary.

**PREfix** — Microsoft's path-sensitive, interprocedural symbolic-execution tool for C/C++ that finds invalid pointers, storage-allocation errors, uninitialized memory, and resource misuse without user annotations; it deliberately chooses unsoundness (exploring only some paths) to avoid false positives.

**PREfast** — A lightweight Microsoft static-analysis tool that finds bugs within a single procedure and checks Standard Annotation Language annotations for consistency with code (invoked via `/analyze`).

**Standard Annotation Language (SAL)** — A lightweight language of buffer/pointer contract annotations (`_in`, `_out`, `_inout`, `_ecount`, `_bcount`, `_opt`, `__checkReturn`, `Tainted`) expressing pre-/post-conditions on memory usage, checked by PREfast; simpler than ESC/Java or Spec# contracts.

**Protocol** — A restriction on the temporal ordering of events—which methods may be called when (e.g. a stream may be read only until it is closed)—that clients must follow to avoid runtime errors; often modeled as a state machine.

**Typestate / protocol state machine** — Modeling an object's protocol as a state machine whose transitions correspond to method calls and whose state changes correspond to field changes, annotating classes/methods with states (`@States`, `@InState`, `@ChangesState`).

**Aliasing** — The existence of multiple names (variables, fields) for the same object, which can invalidate an analysis's reasoning about an object's state; handled by tracking local aliases as disjoint sets, capabilities for field-stored objects, and fractional permissions for shared heap objects.

## Analysis Across the Lifecycle

**STRIDE** — Microsoft's threat model classifying threats as Spoofing identity, Tampering with data, Repudiation, Information disclosure, Denial of service, and Elevation of privilege; used to enumerate threats during security design.

**Threat modeling** — Security design by brainstorming known threats, ranking them by decreasing risk (Risk = Impact × Probability), choosing how to respond, and selecting techniques and technologies to mitigate them.

**Security properties** — The core protection concerns: confidentiality (against revealing secrets), integrity (against tampering), non-repudiation (against denying performed actions), and availability/denial-of-service resistance, plus authentication and authorization.

**Buffer overflow** — Writing past the end of a fixed-size buffer (e.g. from `gets`/`strcpy`) so that it overwrites the return address on the stack, letting an attacker redirect execution to malicious code; a robustness/security failure.

**Least privilege** — The principle that an application should always execute with the minimum privileges possible, so a single bug does less damage.

**Defense in depth** — The principle of not relying on any single defense: assume every other protection has failed and this component is the last standing, reducing single-point-of-failure risk.

**Security through obscurity (anti-pattern)** — Depending on secrecy of design or code for security; the course's principle is never to rely on it—assume the attacker knows everything, including the source and infrastructure.

**Fault injection** — A security-testing technique that perturbs the data entering an interface (wrong type, zero length, NULL, out-of-sync, high volume) so that code handling it behaves insecurely, then seeks an exploit for the exposed fault.

**Asymptotic performance analysis** — Comparing algorithm performance by abstracting away low-level details and studying how execution time T(N) grows as input size N grows large.

**Big-O notation** — `T(N) = O(f(N))` means there exist constants c and n0 such that for all N ≥ n0, `T(N) ≤ c·f(N)`; only the dominant term matters, and exponentials dominate polynomials, which dominate logarithms, which dominate constants.

**Amdahl's law** — The maximum overall speedup from optimizing a fraction P of a program by factor S is `1 / ((1-P) + P/S)`; formalizes why optimizing a small part yields limited overall gain.

**Pareto (80/20) principle** — About 20% of the program takes 80% of the time, so there is no point optimizing until you know which 20% is the bottleneck; a restatement of Amdahl's law.

**Profiler** — A dynamic-analysis tool that measures how much time is spent in each function (by sampling the stack or by instrumenting entry/exit) and how much memory each data structure uses, to identify hot spots for optimization.

**Race condition** — Two threads access the same variable, at least one access is a write, and no explicit mechanism prevents the accesses from being simultaneous (Savage et al./Eraser definition); a non-local, non-deterministic error that manifests only for certain thread interleavings.

**Deadlock** — A set of threads forming a cycle in which each thread waits to acquire a lock held by the next; avoided by acquiring locks in a fixed order, detecting cycles, or forcing a thread to release.

**Lock-based concurrency** — Associating a lock with each shared variable, acquiring it before all accesses, grouping updates that maintain an invariant, and holding locks until the update is complete; fine-grained locks allow more concurrency, coarse-grained locks have lower overhead.

**Thread locality** — Keeping data accessible to a single thread (local variables, GUI event-thread confinement, read-only sharing, or ownership transfer) so that no synchronization is needed to avoid races.

**Transactional memory** — Grouping updates into a transaction whose effects a runtime system makes atomic (tracking reads/writes, committing if no interference, aborting otherwise); avoids deadlock and allows more concurrency at the cost of overhead.

**Design intent / annotations for concurrency** — Programmer intent about which lock protects which state and object ownership, made explicit through tool annotations (e.g. Fluid's `@lock ... is this protects`, `@requiresLock`, `@aggregate ... into Instance`, `@singleThreaded`, `@borrowed`) to enable modular, incremental assurance.

**Noun extraction** — An object-oriented design technique of identifying candidate classes from the nouns in a short problem description (tangible entities become classes; abstract nouns become classes or attributes), adding boundary, control, and data-structure classes.

**CRC cards** — Class-Responsibility-Collaboration cards recording each class's name, responsibilities, and the other classes it collaborates with; used to spread out functionality, enhance cohesion, and reduce coupling, and validated by abstractly executing use cases.

**Design pattern** — A named, reusable solution to a recurring design problem, described by its Name, Problem (when applicable), Solution (design elements and relationships), and Consequences (tradeoffs); provides a shared design vocabulary (e.g. Strategy, Observer, Decorator, Factory, Singleton, Composite, State, Model-View-Controller).

**Analysis maturity model** — A five-level scale for an organization's adoption of static analysis: (1) typed languages and ad-hoc tool use, (2) off-the-shelf tools in the process, (3) tools integrated into build/check-in quality gates, (4) analyses customized for the company domain, and (5) continual optimization of the analysis infrastructure.
