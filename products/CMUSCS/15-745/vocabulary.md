# 15-745 — Optimizing Compilers · Vocabulary

Source: CMU 15-745 *Optimizing Compilers for Modern Architectures* (graduate). Homepage offering: Fall 2025, Todd C. Mowry — https://www.cs.cmu.edu/~15745/www/ . Vocabulary extracted from the publicly readable Mowry lecture slide decks (the Fall 2025 `public/lectures/` PDFs are behind CMU Shibboleth login; the same course's fully public Spring 2019 slide set, same instructor and syllabus, was used — https://www.cs.cmu.edu/afs/cs/academic/class/15745-s19/www/lectures/ ). Ordered by course progression: IR and dataflow foundations → SSA → scalar and loop optimizations → dependence → register allocation and scheduling → memory hierarchy, parallelization, and dynamic optimization.

## I. Compiler structure and intermediate representation

**Optimizing compiler** — A compiler stage that improves code (faster, more energy-efficient, more robust) rather than merely translating it; execution time is modeled as operation count times machine cycles per operation, and optimizations attack both factors.

**Intermediate form / intermediate representation (IR)** — A target- and source-independent representation (similar to a generic RISC instruction set) on which optimizations are performed, enabling one optimizer to serve many front ends and back ends.

**Three-address code** — An instruction format `A := B op C` (LHS is a variable name, RHS a value) with a small set of instruction shapes (binary op, unary op, copy, goto, conditional branch, call, return); the standard scalar IR of the course.

**Basic block** — A maximal sequence of three-address statements entered only at the first statement and exited only at the last (no branches into the middle, no branches/halts except at the end).

**Leader** — The first instruction of a basic block: the first instruction of the program, any target of a jump, or any instruction immediately following a jump; blocks are formed by starting at each leader.

**Flow graph / control-flow graph (CFG)** — A directed graph whose nodes are basic blocks and whose edge Bi→Bj means Bj can immediately follow Bi in some execution (jump target or fall-through); the block led by the program's first statement is the entry node.

**Local optimization** — Analysis and transformation performed within a single basic block, using no control-flow information (e.g., local common subexpression elimination, local constant folding).

**Global (intraprocedural) optimization** — Optimization across basic blocks within one flow graph (e.g., global CSE, global constant propagation, loop optimizations).

**Interprocedural analysis** — Analysis across procedures (flow graphs) within a whole program.

**Algebraic simplification** — Replacing an operation by a cheaper equivalent using algebraic identities (e.g., `A := B+0` ⇒ `A := B`, or a multiply by a constant by a shift).

**Expression DAG** — A directed acyclic graph abstraction of a basic block's expressions that shares identical subexpressions; adequate for pure expressions but awkward across assignments because a variable's value depends on time.

**Value numbering** — A local technique (Cocke & Schwartz) that gives each computed value a number and maps variables to current values via `var2value`; two expressions with the same value number are common subexpressions and can be reused, and it extends to constant folding.

**LLVM IR** — LLVM's language- and target-independent virtual instruction set: RISC-like three-address code with an infinite virtual-register set in SSA form, typed load/store with typed pointers, an explicit CFG, and both a text and a bitcode (`.bc`) serialization.

**Pass** — A unit of the LLVM optimizer run in sequence; analysis passes compute information without changing code, transformation (optimization) passes rewrite it.

**getelementptr** — LLVM's typed pointer-arithmetic instruction that computes an address into an aggregate while preserving array-subscript and structure-index information for later analysis.

**Definition-use (DU) and use-definition (UD) chains** — For a definition of a variable, the set of all its uses (DU); for a use, the set of all reaching definitions (UD); they let analyses traverse directly between related defs and uses but can cost O(N·M) space for N defs and M uses.

## II. Data-flow analysis

**Data-flow analysis** — A flow-sensitive, intraprocedural analysis that computes the effect of each basic block and composes those effects at block boundaries to derive facts (e.g., which definition defines a value) at every program point.

**Static vs. dynamic execution** — Statically a program is finite, but dynamically it may have infinitely many paths; data-flow analysis abstracts a program point by combining information over all dynamic instances of that point.

**Reaching definitions** — A forward analysis determining, at each point, which definitions reach it: definition d reaches p if some path from just after d to p does not redefine (kill) d's variable; represented by a bit vector with one bit per definition.

**GEN / KILL** — The two components of a transfer function: GEN[b] is the set of facts a block creates (e.g., definitions reaching its end), KILL[b] the set it destroys (e.g., other definitions of a redefined variable); `out[b] = Gen[b] ∪ (in[b] − Kill[b])`.

**Transfer function** — A function f: V→V summarizing a statement's or block's effect on the data-flow value; a block's function is the composition of its statements' functions, and transfer functions are closed under composition and have an identity.

**Forward vs. backward analysis** — Forward analyses propagate `out[b] = f(in[b])` with `in[b]` meeting predecessors' outputs; backward analyses propagate `in[b] = f(out[b])` with `out[b]` meeting successors' inputs.

**Meet operator (∧)** — The operator that combines incoming values at a confluence (join) node; it must be commutative, idempotent, and associative, and is typically set union (for "may" problems) or intersection (for "must" problems).

**Join node** — A node with multiple predecessors (forward) or successors (backward), where the meet operator combines the several incoming data-flow values.

**Iterative algorithm** — The standard solver: initialize `out[]` (to Top for interior nodes), then repeatedly recompute `in[]` via meet and `out[]` via transfer functions until no value changes (a fixed point).

**Worklist algorithm** — A refinement of the iterative algorithm that maintains a set of nodes whose inputs changed and reprocesses only their successors, avoiding full sweeps.

**Fixed-point solution (FP)** — Any assignment of in/out values that satisfies all the data-flow equations; another iteration would not change it. Not every fixed point is the desired one.

**Live variable analysis** — A backward analysis: variable v is live at p if its value is used along some path starting at p (otherwise dead); the transfer function is `in[b] = Use[b] ∪ (out[b] − Def[b])`. Motivates register allocation.

**USE / DEF** — For liveness, Use[b] is the set of locally exposed uses in a block (used before any local definition) and Def[b] the set of variables the block defines.

**Available expressions** — A forward "must" analysis: expression E is available at p if along every path to p it is evaluated and no operand is redefined afterward; the meet is intersection and interior nodes initialize to Top (all expressions) to stay precise.

**Data-flow framework** — The tuple (F, V, ∧) of a value domain V, a family of transfer functions F, and a meet operator; unifying problems this way lets one reason about correctness, precision, and convergence once for a whole family (and reuse code).

**Semi-lattice** — The value structure of a framework: a set of values with a meet operator and a Top element (a Bottom need not exist); the meet induces a partial order `x ≤ y ⟺ x ∧ y = x`.

**Partial order / Top / Bottom** — The ordering the meet defines (reflexive, antisymmetric, transitive), with Top T satisfying `x ∧ T = x` and Bottom ⊥ satisfying `x ∧ ⊥ = ⊥`; `x < y` means x is more conservative (less precise) than y.

**Descending chain / lattice height** — A sequence `x0 > x1 > x2 > …`; the height is the length of the longest such chain, and a *finite* descending chain guarantees a monotone analysis terminates (an infinite lattice such as constant propagation can still have finite height).

**Monotonicity** — A framework is monotone if `x ≤ y ⟹ f(x) ≤ f(y)` (equivalently `f(x ∧ y) ≤ f(x) ∧ f(y)`); monotone + finite-descending-chain guarantees the iterative algorithm converges, and on convergence `IN[b] ≤ MOP[b]`, so the result is safe.

**Distributivity** — A framework is distributive if `f(x ∧ y) = f(x) ∧ f(y)`; distributive frameworks compute exactly the meet-over-paths solution (`IN[b] = MOP[b]`), while merely-monotone ones (e.g., constant propagation) may be less precise but still conservative.

**Meet-over-all-paths (MOP)** — The meet of `f_p(T)` over all paths p reaching a node; it considers more paths than are actually executable (the "Perfect" solution), so it errs conservatively — `MOP ≤ Perfect` — because enumerating executable paths is undecidable.

**Maximum fixed point (MFP)** — The solution the iterative algorithm computes for a monotone framework — the largest of all fixed points; the ordering is `FP ≤ MFP ≤ MOP ≤ Perfect`, and MFP is safe.

**Reverse postorder (rPostOrder)** — A node visit order (numbering = NumNodes − depth-first postorder) that speeds convergence of forward analyses; the number of passes needed is the number of back edges on any acyclic path + 2, roughly the graph's nesting depth (about 2.75 on average in real programs).

## III. Global scalar optimizations

**Global common subexpression elimination (GCSE)** — Using available-expressions across blocks: if a recomputed expression is available, redirect the redundant use to the earlier result (often by copying each reaching evaluation to a fresh temporary). Handles commutativity by sorting operands and multi-operand cases with repeated passes.

**Copy propagation** — Replacing a use of a copy's target with its source (rewriting `t = z + y` to `t = x + y` after `z = x`), often combined with GCSE to expose further redundancies.

**Constant propagation / folding** — Determining at each block boundary whether a variable holds a compile-time constant and, if so, folding expressions over it; illustrates abstract execution, an infinite semi-lattice, a non-distributive problem, and a case where cycles add information.

**Constant-propagation lattice (UNDEF / constant / NAC)** — A per-variable lattice with Top = UNDEF (unseen), a middle row of every integer constant, and Bottom = NAC (Not A Constant); meet gives `UNDEF ∧ c = c`, `c1 ∧ c2 = c1` if equal else NAC, and `NAC ∧ anything = NAC`.

**Dead code elimination** — Removing computations whose results are never used; used throughout (e.g., to clean up after strength reduction and to remove copies together with copy propagation).

## IV. Loops

**Natural loop** — A single-entry loop identified from the CFG: its entry, the header, dominates every node in the loop, and it is the smallest node set containing a back edge's tail and head with no predecessors outside the set except the header's.

**Header** — The single entry node of a natural loop, which dominates all nodes in the loop.

**Back edge** — An edge t→h whose head h dominates its tail t; every back edge lies in at least one loop, and back edges drive both loop detection and iterative-analysis convergence.

**Dominance** — Node x dominates w (x dom w) if every path from entry to w passes through x; x strictly dominates w (sdom) if x dom w and x ≠ w. Computed by a distributive forward analysis with meet = intersection.

**Dominator tree** — The tree in which x is a proper ancestor of w exactly when x strictly dominates w; SSA renaming and code-motion legality tests walk this tree.

**Reducible flow graph** — A flow graph in which every retreating edge of a depth-first spanning tree is a back edge (head dominates tail); all structured code and most goto programs are reducible, and non-reducible graphs may need node splitting.

**Preheader** — A block inserted immediately before a loop header to hold code that must execute exactly once before the loop (the destination for hoisted loop-invariant code).

**Induction variable** — A variable that is either basic — its only in-loop definitions are `X = X ± c` for a constant or loop-invariant c — or derived: assigned once as a linear function `A = c1·B + c2` of a basic induction variable B.

**Family of an induction variable** — The set of induction variables whose value is, at each assignment, a linear function of a given basic induction variable B; the unit strength reduction operates over.

**Strength reduction** — Replacing an induction variable's expensive computation (a multiply) by cheaper incremental additions: for `A = c1·B + c2`, keep a new variable A′ = c1·B + c2 (initialized in the preheader) updated by `A′ += x·c1` after each `B += x`, and set `A = A′`.

**Induction-variable elimination / loop-test replacement** — Removing a basic induction variable used only to compute other induction variables and the loop test by rewriting the test on a derived variable (`if B > X` becomes `if A′ > c1·X + c2`) and cleaning up with copy propagation and dead-code elimination.

**Loop-invariant computation** — A computation whose value does not change while control stays in the loop; detected via reaching definitions (all reaching definitions of every operand lie outside the loop, iterated to catch invariants defined once inside).

**Loop-invariant code motion (LICM)** — Moving a loop-invariant statement to the preheader; legal only if it does not change semantics or slow any path — the statement must dominate all loop exits and all in-loop uses of its target and be the sole in-loop definition of its target (constraints relaxable by "gambling" that the loop runs, using a landing pad).

**Landing pad** — Transforming `while p do body` into `if p { preheader; repeat body until ¬p }` so a preheader executes only when the loop is actually entered, making speculative hoisting safe.

## V. Partial redundancy elimination (lazy code motion)

**Partial redundancy elimination (PRE)** — An optimization that inserts and moves computations so no path re-executes the same expression; it subsumes both GCSE (full redundancy) and loop-invariant code motion (partial redundancy in loops).

**Partial redundancy / partial availability** — An occurrence of E is partially redundant if E is computed on some but not all paths reaching it (operands unmodified since); inserting computations to complete a cut set converts it to full redundancy.

**Cut set** — A set of nodes separating the entry from a point p; for full redundancy every cut-set node computes the expression with operands not redefined, and PRE completes a cut set to remove redundancy.

**Anticipated (very busy) expressions** — Backward pass: E is anticipated at a point if its value will be used along every subsequent path; insertion is safe only where E is anticipated (so no new computation is added on any path), which does most of PRE's work.

**Will-be-available expressions** — Forward pass assuming E is computed wherever anticipated, giving where E will already be available; `earliest(b) = anticipated.in[b] − available.in[b]` marks the earliest safe placement.

**Postponable expressions** — Forward pass that delays creating redundancy to reduce register pressure; combined with anticipated/available it yields the *latest* placement — as late as possible without losing any redundancy elimination.

**Used expressions** — Backward pass (liveness for expressions) that removes temporary assignments whose result is not used later; the final transformation inserts a fresh temporary at each `latest ∩ used` block and replaces the original occurrences.

**Critical edge** — An edge from a block with multiple successors to a block with multiple predecessors; PRE preprocesses the CFG by splitting such edges (adding synthetic blocks) so insertions have a safe home.

## VI. Static single assignment (SSA)

**Static single assignment (SSA)** — An IR in which every variable is assigned at most once in the program text; built by giving each definition a fresh version and each use the most recent version, making data flow explicit and enabling sparse analyses.

**φ-function** — A notational function placed at a join to merge the differing versions arriving on each of a block's p predecessors, `x_new = φ(x1,…,xp)`; a φ counts as a definition and is never actually executed as written.

**Minimal SSA** — SSA that inserts a φ at a join only for variables that are live there and have multiple outstanding definitions, avoiding the excess φ's of trivial SSA.

**Dominance frontier** — DF(x) is the set of nodes w such that x dominates a predecessor of w but does not strictly dominate w — exactly the join points where a definition at x forces a φ.

**Iterated dominance frontier** — The fixed point of taking dominance frontiers (because each inserted φ is itself a definition); it gives the minimal set of φ placements and is computed on the fly by the defsites worklist algorithm.

**SSA renaming** — Walking the dominator tree, replacing each definition with a fresh version pushed on a per-variable stack and each use with the stack top, and filling in each successor φ's argument for the current predecessor edge.

**Conditional constant propagation** — An SSA-based analysis that assumes blocks are unexecuted and variables constant until proven otherwise, letting it prune unreachable blocks that ordinary constant propagation cannot; uses the ⊤ / constant / ⊥ lattice.

## VII. Region-based analysis

**Region-based analysis** — An alternative to iterative data flow that computes a transfer function `F_{R,B}` summarizing the effect from the start of a region R to the end of block B, built by recursively combining smaller regions; well-suited to reducible graphs, loop-nesting, and interprocedural analysis.

**Region** — A set of nodes with a header that dominates them all (and almost all edges among them); regions nest recursively until the whole program is one region.

**T1–T2 transformations** — Hecht–Ullman flow-graph reduction rules: T1 removes a self-loop n→n; T2 lets a node absorb a successor that has it as sole predecessor. Exhaustively applying them yields the limit flow graph; a graph is reducible iff this collapses to a single node.

**Closure (F\*)** — A transfer-function operation absent from iterative analysis, `F* = ⋀_{n≥0} F^n`, that summarizes 0,1,2,… trips around a loop's back edge in one step; combined with composition and meet of transfer functions it builds region summaries.

**Node splitting** — Duplicating a node (one copy per predecessor) when neither T1 nor T2 applies, needed for irreducible graphs; worst-case exponential, though most real graphs are reducible.

**Intervals / graph depth** — The nesting depth of a reducible graph equals the depth of its intervals; iterative analysis needs about depth + 2 passes (average depth ≈ 2.75, independent of program length).

## VIII. Pointer and alias analysis

**Pointer / alias analysis** — Analyses that determine where pointers point (or, more usefully, prove that two pointers point to different locations); the general problem is undecidable, and a scalable, accurate solution remains open.

**May-alias vs. must-alias** — For a pointer pair, whether they *may* reference the same location, *must*, or definitely do not; the ambiguous "maybe" cases are what block optimization.

**Points-to set / points-to graph** — A representation recording the locations each pointer may point to (edges of a graph); less precise but more efficient than tracking full alias pairs.

**Flow / context / field / path sensitivity** — Axes of precision: flow-sensitive analysis respects statement order (per-point results), context-sensitive distinguishes calling contexts, field-sensitive treats each aggregate field separately, path-sensitive treats branches as mutually exclusive paths.

**Heap modeling** — How heap storage is abstracted: heap-merged (all heap is one location), allocation-site (one abstract location per allocation call site), or shape analysis (recognizing lists, trees, DAGs).

**Address-taken analysis** — A fast, ultra-conservative, flow- and context-insensitive method that assumes any pointer can point to any variable whose address is ever taken; O(n) but very imprecise.

**Andersen's (subset/inclusion) analysis** — A flow- and context-insensitive analysis with one points-to graph node per location that applies inclusion constraints per statement and iterates to a fixed point; worst-case O(n³).

**Steensgaard's (unification) analysis** — A flow- and context-insensitive analysis in which each node may represent several locations but points to only one other node (fan-out ≤ 1), implemented with union-find in near-linear time but less precise than Andersen's.

**Probabilistic pointer analysis** — An analysis attaching a probability (0–1) to each points-to relation instead of yes/no/maybe, using matrix-based transfer functions and edge profiles; need not be safe, and enables speculative optimizations by quantifying "maybe."

## IX. Register allocation

**Register allocation** — Mapping program variables (pseudo-registers) to a finite set of hardware registers within a procedure, converting memory accesses to register accesses; register *assignment* is the further choice of which specific register each gets.

**Live range** — A definition together with all points where it is live; overlapping live ranges of the same variable are merged into equivalence classes called **webs** (effectively converting out of SSA).

**Interference** — Two pseudo-registers interfere when they cannot share a register because their live ranges overlap at some point.

**Interference graph** — An undirected graph with a node per live range (web) and an edge between every interfering pair; register allocation with k registers reduces to k-coloring this graph.

**Graph coloring** — Assigning one of k colors (registers) to each node so no adjacent nodes share a color; k-colorability is NP-complete for k > 2, so a simplify/select heuristic is used — repeatedly remove degree-<k nodes onto a stack, then pop and color.

**Spilling / spill cost** — Keeping a variable in memory when registers run short, reloading before each use and storing after each definition; the node chosen to spill minimizes a cost-to-benefit ratio (dynamic use count weighted by loop-nest depth, divided by interference degree), as in Chaitin's algorithm and its optimistic-coloring refinement.

**Live-range splitting** — Breaking a pseudo-register into smaller live ranges (paying small load/store and copy costs at region boundaries) to make the interference graph easier to color; true spilling is unavoidable only where the number of simultaneously-live ranges exceeds k.

**Register coalescing** — Merging the source and target of a copy `Y = X` into one interference-graph node so they get the same register and the copy is deleted; legal when their live ranges do not overlap, but it adds coloring constraints and can worsen colorability.

**Conservative coalescing (Briggs / George)** — Coalescing only when it cannot make a colorable graph uncolorable: Briggs merges X and Y if the merged node has fewer than k neighbors of degree ≥ k; George merges if every neighbor of Y has degree < k or already interferes with X.

## X. Instruction scheduling

**Instruction scheduling** — A machine-dependent optimization that reorders a fixed set of instructions to exploit hardware parallelism (pipelining, superscalar issue) while respecting resource, data-, and control-dependence constraints; the core scheduling problem is NP-hard.

**Pipelining / pipeline stages** — Overlapping instruction execution by splitting each instruction into stages (IF, RF, EX, ME, WB) so different in-flight instructions occupy different stages each cycle.

**Superscalar / issue width / functional units** — Superscalar hardware issues several independent instructions per cycle (up to the issue width) across a finite set of functional units of each type, some of which cannot accept a new operation every cycle.

**Data dependence** — A constraint that a value must be produced before it is consumed; classified as flow/true (read-after-write, RAW), anti (write-after-read, WAR), and output (write-after-write, WAW). RAW is fundamental; WAR and WAW can be removed by register renaming.

**Ambiguous dependence** — A dependence through pointers or memory (`*p`, `*q`) that cannot be resolved statically even with pointer analysis, forcing the scheduler to be conservative or to reorder speculatively.

**Execution latency / critical path** — The number of cycles before an instruction's result is available to others; the critical path is the longest latency-weighted dependence chain and lower-bounds the schedule length.

**List scheduling** — The standard basic-block scheduler: cycle by cycle, pick from a **ready list** (instructions whose operands are available and resources free) using a **priority function** (e.g., latency-weighted depth in the data-precedence graph), with a tie-breaking rule.

**Data-precedence graph (DPG)** — The dependence graph the scheduler consumes, with true edges (RAW) and separate anti-edges (WAR); its roots seed the ready list and an in-flight list tracks started-but-unfinished operations.

**Global scheduling** — Scheduling that moves instructions across basic-block boundaries; it uses control equivalence, dominance, and code motion (upward, possibly speculative, or downward) guided by estimated path frequencies.

**Control equivalence** — Two operations are control-equivalent if one executes iff the other does (their blocks execute together); it delimits where an instruction can be moved non-speculatively.

**Speculation** — Executing an operation before the branch it control-depends on resolves; legal only if it is side-effect-free, raises no exception, and violates no data dependence, and is used to move work onto likely paths.

**Loop unrolling** — Replicating a loop body u times (with a remainder loop) so operations from several iterations can be scheduled together; a prepass that exposes cross-iteration parallelism global scheduling otherwise cannot reach.

## XI. Software pipelining

**Software pipelining** — Scheduling that overlaps operations from successive loop iterations under one reused per-iteration schedule, achieving near-optimal throughput with small code growth (unlike unrolling).

**Initiation interval (II)** — The constant number of cycles between the starts of successive iterations of a software-pipelined loop; minimizing it (NP-complete in general) lower-bounds per-iteration time.

**Resource bound / recurrence bound** — Two lower bounds on the initiation interval: the resource bound `max_i ⌈n_i / R_i⌉` over resource types, and the recurrence bound `max_c CycleLength(c)/IterationDifference(c)` over dependence cycles.

**Modulo scheduling** — Scheduling against a modulo (steady-state) resource reservation table — the per-iteration table folded modulo the initiation interval — so overlapping iterations, checked at time mod II, never contend for a resource.

**Prologue / steady state / epilogue** — The code that fills the software pipeline before the repeating kernel (prologue), the overlapped kernel itself (steady state), and the drain code that finishes the last iterations (epilogue).

**Modulo variable expansion** — Unrolling the steady state by `max_r ⌈lifetime_r / II⌉` so overlapping iterations use distinct registers, removing the artificial anti-dependences that arise when every iteration reuses the same registers.

**DOALL vs. DOACROSS loop** — A DOALL loop has fully independent iterations (no cross-iteration dependence) and pipelines to the resource bound; a DOACROSS loop has recurrences (cross-iteration dependences) that limit achievable parallelism.

## XII. Memory hierarchy and locality

**Memory hierarchy** — The fast cache levels between processor and memory; the compiler enhances reuse and reduces conflict misses so accesses hit rather than miss.

**Temporal vs. spatial locality** — Temporal locality reuses the same location while it is still cached (when an object is accessed); spatial locality accesses nearby locations that share a cache line (where an object lives).

**Cache line** — The unit of transfer between memory and cache (several consecutive array elements); spatial locality arises because one miss brings in a whole line.

**Iteration space** — The set of a loop nest's iterations, each a point in an index-vector space (distinct from the array/data space); the visitation order over it governs cache behavior.

**Reuse vs. locality** — Reuse is accessing a location touched before; locality is finding it still in cache. Locality requires reuse, but reuse does not guarantee locality — only reuse within the localized iteration space (the footprint that fits in cache) yields it.

**Loop transformations** — Legality-checked rewrites of a loop nest that change visitation order to improve locality: **loop interchange** (swap loops so the inner one strides contiguously), **cache blocking/tiling** (iterate over cache-sized sub-blocks, cutting misses to about N³/(L·C)), **loop skewing**, and **loop reversal**.

**Locality analysis** — Analysis that predicts cache misses in three steps: find data reuse, compute the localized iteration space, then intersect the two; reuse is classified as self vs. group and temporal vs. spatial.

**Affine array index** — An array subscript of the form `c0 + c1·x1 + … + cn·xn` over loop variables and symbolic constants; the tractable class over which reuse and dependence analysis operate, using the access matrix H.

**Reuse vector** — A direction in iteration space along which the same data is reused, found from the nullspace of the access matrix H (temporal) or of H with its last row zeroed (spatial); the locality vector space is the intersection of the reuse and localized spaces.

**Data prefetching** — Compiler-inserted prefetch instructions that bring data into cache ahead of use to hide miss latency, driven by locality analysis (what to prefetch) plus scheduling (when).

**Prefetch predicate** — A predicate over the iteration space naming which iterations actually miss (every iteration; only the first, for temporal reuse; every L-th, for spatial reuse), so prefetches issue only there; loops are split/peeled/unrolled rather than guarded by run-time tests.

**Pointer-chasing / greedy, history-pointer, data-linearization prefetching** — Techniques for prefetching linked structures whose next address is known only after loading the current node: greedy prefetching fetches all neighbors, history-pointer prefetching adds pointers d steps ahead from a prior traversal, and data-linearization prefetching lays nodes out contiguously so future addresses are computed directly.

## XIII. Data dependence and parallelization

**Loop data dependence** — A reordering constraint between two statement instances, edges of a dependence graph; classified as flow/true (δt, RAW), anti (δa, WAR), output (δo, WAW), and input (δi, RAW—read-after-read, usually parallelizable).

**Loop-carried vs. loop-independent dependence** — A loop-independent dependence connects instances in the same iteration (distance 0, direction "="); a loop-carried dependence connects different iterations and is carried by the outermost loop whose removal eliminates it.

**Distance and direction vectors** — The distance vector `j − k` gives how many iterations separate a dependence's source and sink; the direction vector is its sign per loop level ("=", "<", or ">").

**Dependence testing** — Deciding whether two affine array references in a depth-d nest access the same element for some legal iteration vectors — an integer-linear-programming / NP-complete problem; a test must be conservative (assume dependence when unsure).

**GCD test / Lamport's test** — The GCD test reports a possible dependence for `Σ aᵢxᵢ = c` only if gcd(a₁,…,aₙ) divides c (ignoring loop bounds); Lamport's test handles a single index with equal coefficients, giving distance `(c1−c2)/b` when it is an integer within bounds. Stronger tests include Banerjee's inequalities and the Omega test.

**Privatization** — Giving each iteration its own copy of a scalar written-then-read each iteration (or a reduction variable) so it no longer forms a cross-iteration dependence.

**Loop parallelization** — A loop's iterations may run in parallel (fork/join) iff no dependence is carried by that loop; the outermost loop with a non-"=" direction carries the dependence.

**Vectorization / SIMD** — Executing a parallelizable inner loop as single-instruction-multiple-data operations while an outer loop runs sequentially (inner-loop parallelism).

**Lexicographically positive dependence** — A dependence whose direction vector is positive in its first non-"=" component; loop interchange is legal only if all dependences remain lexicographically positive after the swap.

## XIV. Dynamic and profile-guided optimization

**Profile-guided optimization** — Using runtime information (control-flow frequencies, data dependences, typical values) — collected by instrumentation or sampling — to guide optimizations such as speculative scheduling and code specialization.

**Dynamic (JIT) compilation** — An interpreter/compiler hybrid that translates to binary at runtime, supporting cross-module optimization and specialization from runtime information without a separate profiling pass; a JIT keeps an interpreter loop, a code cache, profile data, an optimizer, and a cache manager.

**Code cache / hot vs. cold code** — A software cache of dynamically compiled chunks (methods or basic blocks); frequently executed "hot" code justifies aggressive optimization (multi-stage recompilation at execution-count thresholds), while "cold" code is left interpreted or evicted, guided by the 80/20 principle and a cost model `ΔT = Tcompile − executions·Timprovement`.

**Partial method compilation** — Compiling only a method's non-rare blocks and leaving rare blocks to the interpreter; edges into rare blocks redirect to the interpreter, with live-variable analysis recording a transfer map at each such point.

**Deoptimization** — Transferring control from compiled code back to the interpreter when a rare block is reached, reconstructing interpreter state from a small deopt map; execution does not return to the compiled version.

**Partial dead code elimination** — Sinking a computation that is live only on a rare path into that rare block, saving the work on the common path (possibly at the cost of an optimization made without knowing the branch was rare).

**Escape analysis / scalar replacement** — Escape analysis finds objects that do not escape a method or thread, enabling stack allocation, replacement of their fields by local scalars (scalar replacement), and removal of synchronization; partial escape analysis applies these on the common path and reconstructs heap objects and locks if a rare branch is taken.
