# 15-411 — Compiler Design · Vocabulary

Source: CMU 15-411/15-611 Compiler Design, Fall 2020 (Seth Copen Goldstein; lecture notes by Frank Pfenning, Rob Simmons, Jan Hoffmann). Public per-lecture notes: https://www.cs.cmu.edu/afs/cs/academic/class/15411-f20/www/schedule.html

The course builds a full optimizing compiler for C0 (a C-like language, with sublanguages L1–L4) targeting x86-64. Terms below follow the course progression: front end → IR → dataflow analysis → SSA → register allocation → optimization → back end → runtime/memory.

## Front End: Lexical Analysis and Parsing

**compiler** — A program that translates a source program into an executable target program; unlike an interpreter, it does not run the program but produces target code that is later executed. It must recognize legal and illegal programs, generate correct code, and agree with the OS and linker on object-code format.

**compiler phases (passes)** — The successive stages a compiler runs: lexing, parsing, elaboration, static-semantic checking, IR generation, optimization, instruction selection, register allocation, and code emission. The course structures the compiler as a pipeline of such passes.

**lexical analysis (lexing / tokenizing)** — The first pass, which scans the raw character stream and groups it into tokens (identifiers, keywords, literals, operators), discarding whitespace and comments.

**regular expression** — The formalism used to specify the token classes recognized by the lexer; each token category is described by a regular expression driving a finite automaton.

**context-free grammar** — A set of production rules over terminals and nonterminals used to specify the syntax of the language; the parser recognizes exactly the strings this grammar generates.

**terminal / nonterminal** — A terminal is a token symbol appearing literally in the input; a nonterminal is a grammar variable that expands, via productions, into sequences of terminals and nonterminals.

**parse tree (concrete syntax tree)** — The tree produced by parsing that records how the input was derived from the grammar, including every grammar symbol and production applied.

**ambiguous grammar** — A grammar under which some string has more than one parse tree; ambiguity (e.g. in expression or dangling-else syntax) must be resolved, often via precedence and associativity rules.

**operator precedence and associativity** — Rules that disambiguate expression grammars by fixing the order and grouping of operators, so that e.g. `a + b * c` parses with multiplication binding tighter than addition.

**leftmost derivation** — A derivation that always expands the leftmost nonterminal first; top-down parsers construct leftmost derivations.

**top-down parsing (recursive descent, LL(1))** — Parsing that builds the parse tree from the start symbol down, predicting productions from lookahead; recursive descent is the hand-written form, and LL(1) uses one token of lookahead. Requires elimination of left recursion.

**left recursion** — A grammar rule of the form `A → A α`, which causes non-termination in top-down parsers and must be rewritten before recursive-descent/LL parsing.

**bottom-up parsing (shift-reduce, LR)** — Parsing that builds the parse tree from the leaves up, shifting tokens onto a stack and reducing by grammar rules; LR(1), SLR, and LALR are increasingly practical table-driven variants covered in the course.

**handle** — In shift-reduce parsing, the substring on the stack that matches the right-hand side of a production and is the correct next reduction; recognizing handles is the core problem of bottom-up parsing.

**shift / reduce actions and conflicts** — A shift pushes the next input token; a reduce replaces a handle by its nonterminal. A shift-reduce or reduce-reduce conflict is a state where the parser table cannot decide uniquely, indicating grammar ambiguity for that parser class.

**LALR parsing** — Look-Ahead LR: a space-efficient LR variant (merging LR(1) states with identical cores) that is the basis of common parser generators.

## Semantic Analysis and IR Generation

**elaboration** — The pass that translates the parse tree into a simpler, higher-level abstract syntax (AST), resolving conveniences of concrete syntax (e.g. `x += e` into `x = x + e`, `e->f` into `(*e).f`) and optionally renaming variables to remove shadowing.

**abstract syntax tree (abstract syntax)** — The high-level tree form the compiler checks and compiles, containing only the semantically relevant structure of the program after elaboration.

**static semantics** — The compile-time correctness conditions a program must satisfy independent of execution: proper initialization, proper returns, and well-typedness. Checked over the AST.

**initialization checking** — The static-semantic property that every variable is defined before it is used; specified as a may-property (a variable "may be used") built on definition (`def`) and use predicates so that any possible use of an undefined variable is rejected.

**proper returns** — The static requirement that every control-flow path from a function's entry to its exit passes through an explicit `return` statement when the function must return a value; a must-property.

**may-property vs. must-property** — A may-property holds if some execution could exhibit it (e.g. a variable *may* be used); a must-property holds only if every completing execution guarantees it (e.g. a variable *must* be defined). Static analyses are conservative approximations of these.

**type checking** — Verifying that the program is well-typed under the typing judgment `Γ ⊢ e : τ`, where the context (type environment) Γ assigns types to variables; ill-typed programs are rejected.

**typing context (Γ, type environment)** — The finite map from variables to their types used while type checking; extended as declarations are entered (`Γ, x:τ`) and consulted to type variable occurrences.

**type synthesis vs. type checking (mode)** — Synthesis computes a type from an expression given Γ (used when the type is unknown, e.g. `e1 == e2`); checking compares an expression against a known expected type (e.g. a statement against the function's return type). Choosing the mode is guided by mode checking.

**type subsumption** — A silent coercion rule allowing a value of one type to be used at another; used here for the indefinite pointer type `any*` of `null`, which may be treated as `τ*` for any `τ`.

**intermediate representation (IR)** — A machine-independent internal program form sitting between the AST and target assembly, over which analyses and optimizations run. The course uses IR trees and then abstract assembly.

**three-address code** — An IR in which each instruction has at most one operator and up to three operands (typically `t ← s1 ⊕ s2`), making all intermediate results explicit in temporaries; the basis of abstract assembly.

**abstract assembly** — A three-address, temp-based instruction form with an unbounded supply of temporaries and simple operations (moves, binops, loads/stores, jumps), used as the IR for analysis, optimization, and instruction selection before real registers are assigned.

**temporary (temp)** — A virtual register in abstract assembly holding an intermediate value; the compiler assumes an unlimited number of temps and later maps them to machine registers or stack slots.

**basic block** — A maximal straight-line sequence of instructions with a single entry (at the top) and single exit (at the bottom), containing no internal jumps or jump targets; the unit of local analysis and CFG nodes.

**control-flow graph (CFG)** — A directed graph whose nodes are basic blocks and whose edges represent possible transfers of control; the structure over which dataflow analyses and dominance are computed.

**successor / predecessor** — The CFG neighbors of a node: successors are blocks control may flow to, predecessors are blocks control may come from; dataflow equations propagate information along these edges.

## Dynamic Semantics

**dynamic semantics (operational semantics)** — A precise specification of how programs execute, given here in the small-step operational (abstract-machine) style over the elaborated AST, defining the intended runtime behavior the compiler must preserve.

**abstract machine (small-step semantics)** — An operational model that steps machine states one transition at a time (`ST → ST'`) until a final state; used to formalize C0 execution close to a real machine.

**continuation** — A representation of "what remains to be done" in evaluation, written as a stack of frames with a hole `_` into which a computed value is plugged; encodes evaluation order (e.g. left-to-right, short-circuiting `&&`).

**environment (η)** — The finite map from local variables to their current values in the abstract machine state; variables are read by lookup and updated by assignment.

**call stack and stack frame** — The stack S of saved caller states; each stack frame ⟨η, K⟩ saves the caller's environment and continuation so control and locals can be restored when a callee returns.

**heap (mutable store)** — The map H from addresses to stored values modeling dynamically allocated memory; extended when the language gains pointers, arrays, and structs.

**stuck state / undefined behavior** — A non-final machine state with no applicable transition; the central safety guarantee is that any program passing the static semantics never gets stuck (no undefined behavior).

**runtime exceptions (arith, mem, abort)** — Final error states of execution: `arith` for arithmetic faults such as division by zero (SIGFPE), `mem` for null/out-of-bounds memory access (modeled as SIGUSR2), and `abort` from a failed `assert`.

## Dataflow Analysis

**dataflow analysis** — A family of static analyses that compute, at each program point, facts about all possible executions by iteratively solving equations over the CFG until a fixed point is reached.

**liveness analysis** — A backward dataflow analysis computing which variables are live (their current value may be used later) at each program point; live-in/live-out sets drive dead-code elimination and register allocation.

**live-in / live-out** — The sets of variables live on entry to and exit from an instruction or block; related by the standard equations using an instruction's use and def sets.

**def / use (gen / kill)** — The variables an instruction defines (writes) and uses (reads); dataflow transfer functions are phrased as generating and killing facts based on def/use.

**reaching definitions** — A forward dataflow analysis determining, at each point, which definitions of a variable may reach it without being overwritten; underpins constant propagation and copy propagation.

**available expressions** — A forward dataflow analysis finding expressions already computed and not since invalidated on all paths to a point; enables common-subexpression elimination.

**neededness** — A refinement of liveness marking variables whose values are actually needed to affect the program's observable result, used for a more aggressive dead-code elimination.

**worklist / iterate to fixed point** — The algorithmic strategy for solving dataflow equations: repeatedly recompute node facts (often using a worklist of changed nodes) until no set changes, yielding the fixed-point solution.

**dataflow lattice** — The partially ordered set of dataflow facts with a meet (join) operation; analyses combine information at CFG merge points using the lattice, and correctness/termination rest on its structure.

**monotone transfer function** — A dataflow transfer function that preserves the lattice order; monotonicity together with a lattice of finite height (the ascending/descending chain condition) guarantees the iterative solver terminates.

**meet-over-all-paths (MOP) vs. fixed-point solution** — MOP is the ideal combination of facts over every path to a point; the iterative fixed-point (Kildall) solution equals MOP for distributive frameworks and safely approximates it otherwise.

## Static Single Assignment (SSA)

**static single assignment (SSA) form** — An IR in which every variable is assigned exactly once, so each use refers to one unambiguous definition; greatly simplifies optimizations like constant and copy propagation.

**φ-function (phi-function)** — A pseudo-instruction placed at a CFG join that selects, per incoming edge, which of several definitions of a variable reaches that point (`a0 ← Φ(a1,…,an)`); it makes multiple reaching definitions explicit in SSA.

**dominance / dominator** — Node d dominates node n if every path from entry to n passes through d; dominance determines where definitions are guaranteed to be in scope and where φ-functions are needed.

**dominator tree** — The tree in which each node's parent is its immediate dominator; used to organize SSA renaming and to answer dominance queries efficiently.

**dominance frontier** — For a node n, the set of nodes where n's dominance "just stops" (n dominates a predecessor but not the node itself); φ-functions for a variable are placed exactly at the dominance frontiers of its definitions.

**minimal SSA** — SSA with φ-functions placed only at iterated dominance frontiers of definitions, avoiding unnecessary φs while still merging every needed definition.

**pruned SSA** — SSA that additionally omits φ-functions for variables that are dead at the join (not live-in), producing fewer φs than minimal SSA by using liveness information.

**SSA renaming** — The pass that gives each definition a fresh version name and rewrites each use to the version reaching it (walking the dominator tree), completing SSA construction.

**SSA deconstruction (out-of-SSA)** — Translating SSA back to executable code by replacing φ-functions with ordinary copy (move) instructions on the appropriate predecessor edges.

**critical edge** — A CFG edge from a block with multiple successors to a block with multiple predecessors; such edges must be split (a block inserted) so that φ-resolving copies can be placed correctly when leaving SSA.

**parallel copy (lost-copy / swap problem)** — The φ-functions at a join denote simultaneous copies; naively sequentializing them can clobber values (the lost-copy and swap problems), so SSA deconstruction must schedule the parallel copy correctly, sometimes via a temporary.

## Register Allocation

**register allocation** — The pass that maps the unbounded temps of abstract assembly onto the finite set of machine registers, spilling excess temps to the stack; formulated here as graph coloring on the interference graph.

**interference graph** — The undirected graph whose nodes are temps and whose edges connect temps that are simultaneously live (interfere) and thus cannot share a register; built from liveness information.

**live range** — The set of program points over which a temp is live; two temps interfere exactly when their live ranges overlap at a definition point.

**graph coloring** — Assigning registers (colors) to interference-graph nodes so no two adjacent nodes share a color, using at most K colors for K registers; a proper K-coloring is a valid register assignment.

**chordal graph** — A graph in which every cycle of length ≥4 has a chord; interference graphs of SSA-form programs are chordal, and chordal graphs can be optimally colored in polynomial time (Pereira–Palsberg approach).

**simplicial vertex / perfect elimination ordering** — A vertex whose neighbors form a clique is simplicial; a perfect elimination ordering removes simplicial vertices one at a time and exists exactly for chordal graphs, guaranteeing greedy coloring is optimal.

**maximum cardinality search (MCS)** — The linear-time ordering algorithm that repeatedly picks the vertex with the most already-chosen neighbors; on a chordal graph it produces a (reverse) perfect elimination ordering for greedy coloring.

**greedy coloring** — Coloring nodes in the elimination order, each with the lowest color not used by its already-colored neighbors; optimal on chordal graphs and the course's core allocation step.

**spilling** — When more colors are needed than available registers, storing some temps in memory (stack) instead of registers; heuristics such as spilling the least-used or the highest-numbered color decide which, weighted by loop-nesting depth.

**precoloring** — Fixing certain temps to specific registers before coloring (e.g. because a calling convention or instruction mandates a particular register such as the divide's dividend/quotient registers); the allocator must respect these fixed colors.

**register coalescing** — Eliminating a register-to-register move `t ← s` by merging the two non-interfering temps into one (greedy coalescing after coloring), removing the move at the cost of a denser interference graph.

**splitting live ranges** — The complementary optimization to coalescing: inserting a move `t' ← t` to break one long live range into two shorter ones, making the interference graph sparser so a heavily-used temp can avoid being spilled.

## Instruction Selection

**instruction selection** — Translating IR trees / abstract assembly into concrete target (x86-64) instructions, choosing machine instructions that implement each IR operation, typically via tree pattern matching.

**tree tiling** — Covering the IR expression tree with a set of tiles, each tile being a pattern that corresponds to one (or a few) machine instructions; a full cover yields the emitted instruction sequence.

**maximal munch** — The greedy tiling strategy that, at each node, matches the largest available tile (the biggest pattern) and recurses on the remaining subtrees; simple and produces good, though not provably optimal, code.

## Calling Conventions and Code Generation

**calling convention (ABI)** — The agreed protocol for function calls on x86-64: how arguments are passed (in designated registers then the stack), where the return value goes, register save responsibilities, and stack alignment; the compiler must match it to interoperate with C.

**caller-save vs. callee-save registers** — Caller-save registers may be clobbered by a callee, so the caller must save any live values around a call; callee-save registers must be preserved by the callee, so it saves and restores them if it uses them.

**argument / return registers** — The registers designated by the ABI to pass the first several arguments and to return the result; excess arguments are passed on the stack.

**stack frame (activation record)** — The per-call region of the stack holding saved registers, spilled temps, and outgoing arguments; addressed via the stack pointer and, optionally, a frame pointer.

**prologue / epilogue** — The code at a function's entry (prologue: set up the frame, save callee-save registers) and exit (epilogue: restore registers and the stack, return); they bracket the function body.

**red zone** — The fixed-size area just below the stack pointer that a leaf function may use without adjusting the stack pointer, per the x86-64 ABI.

**data sizes and alignment** — Each type has a byte size (int 4, bool 4, pointer/array 8, struct computed) and alignment requirement; code must pick size-correct instructions (`movl` vs `movq`, `cmpl` vs `cmpq`) and lay out data with padding to meet alignment.

**zero/sign extension and truncation** — Explicit width-changing operations required when moving between 32- and 64-bit values; the notes recommend forbidding implicit `d64 ← s32` moves and using `zeroextend`/`signextend` so transformations like copy propagation stay sound. On x86-64, writing a 32-bit register zero-extends into the full 64-bit register.

## Optimizations

**constant folding** — Evaluating constant expressions at compile time (e.g. replacing `4 + 5` with `9`) so the computation is not done at runtime.

**constant propagation** — Replacing a variable's use by a constant when the reaching definition is known to be that constant; trivially sound in SSA form because each temp has one definition.

**copy propagation** — Replacing uses of a temp defined by a copy `t ← s` with `s`, removing the intermediate copy where sizes and definitions permit.

**common-subexpression elimination (CSE)** — Detecting an expression computed at least twice on a path with unchanged operands and reusing the first result instead of recomputing; relies on available-expressions analysis, often after canonicalizing expressions.

**dead-code elimination** — Removing instructions whose results are never used (dead), as determined by liveness/neededness analysis; also removes unreachable code.

**partial redundancy elimination (PRE)** — A generalization of CSE and loop-invariant code motion that removes computations redundant on *some* (not necessarily all) paths, by inserting compensating computations on the other paths so the expression becomes fully redundant; driven by anticipated (very-busy) and available expression analyses.

**anticipated (very-busy) expression** — An expression that will definitely be evaluated on every path forward from a point before its operands change; anticipability (a backward analysis) tells PRE where a computation can be safely hoisted.

**loop-invariant code motion** — Hoisting a computation whose operands do not change across loop iterations out of the loop to a preheader, so it runs once instead of every iteration.

**induction variable** — A variable that changes by a fixed amount each loop iteration (e.g. a loop counter or an address derived from it); recognizing induction variables enables strength reduction and other loop optimizations.

**strength reduction** — Replacing an expensive operation with a cheaper equivalent, classically turning a multiplication in a loop (an induction-variable computation) into repeated addition.

**peephole optimization** — Local rewriting of short instruction sequences matching known patterns (e.g. redundant moves, `x*1`, jump-to-next) into cheaper equivalents, applied over a small sliding window.

**inlining** — Replacing a function call with a copy of the callee's body, eliminating call overhead and exposing further optimizations across the former call boundary.

**tail call** — A call in tail position whose result is directly returned; it can reuse the current stack frame (tail-call optimization) rather than growing the stack, making some recursions iterative.

**feedback-directed (profile-guided) optimization** — Optimizing using runtime profile data to guide decisions such as inlining and block layout (guest lecture on OCaml); optimizes for the observed common case.

## Memory Hierarchy and Scheduling

**instruction scheduling** — Reordering independent instructions to keep the processor pipeline busy and hide operation latencies, subject to preserving data dependences.

**data dependence** — An ordering constraint between two instructions (e.g. one reads a value the other writes) that scheduling must respect; the dependence graph bounds legal reorderings.

**latency and pipeline hazards** — Latency is the delay before an instruction's result is available; a hazard is a pipeline stall that arises when a dependent instruction issues too soon. Scheduling reorders code to avoid hazards.

**list scheduling** — The standard heuristic that schedules ready instructions (those whose dependences are satisfied) one cycle at a time using a priority order, to minimize stalls.

**software pipelining** — Overlapping instructions from consecutive loop iterations into a single steady-state schedule so multiple iterations are in flight at once, increasing instruction-level parallelism.

**memory hierarchy / cache** — The layered storage (registers, caches, main memory) in which each level is faster and smaller; because memory access is far costlier than register or arithmetic operations, optimizing cache behavior is essential to fast code.

**temporal vs. spatial locality** — Temporal locality is reusing the same datum soon; spatial locality is accessing nearby data soon. Optimizations restructure code to improve both so accesses hit in cache.

**cache blocking (tiling) and loop interchange** — Loop transformations that improve locality: blocking (tiling) processes data in cache-sized tiles so it is reused before eviction, and loop interchange reorders nested loops to make the inner loop stride through memory contiguously (Lam's data-locality algorithm).

## Language Features and Runtime

**mutable store** — The extension giving the language a heap so data structures can be allocated and mutated at runtime; introduces pointers, arrays, and structs and the analyses they require.

**pointer** — A value that is a heap address of type `τ*`, dereferenced with `*e` to read the stored value and used as an assignment destination to write it; `alloc(τ)` allocates a cell and `null` (address 0) is the distinguished null pointer whose dereference raises a memory exception.

**l-value (destination)** — The left-hand side of an assignment (`d ::= x | *d | d[e] | d.f`) that denotes a location to write, as opposed to an ordinary expression that denotes a value; distinguishing l-values from r-values drives how addresses versus values are computed.

**array** — A heap-allocated aggregate of same-typed elements, allocated by `alloc_array(τ, e)` and accessed by `e1[e2]`; there is no null array. The element type's size drives address arithmetic `a + i·|τ|`.

**array bounds checking** — The runtime checks that an index i satisfies `0 ≤ i < length` (and the base is non-null) before access, raising a memory exception otherwise; the array length is stored alongside the data (e.g. at offset −8) and checks can be disabled in unsafe mode.

**struct** — A heap-allocated aggregate of possibly different-typed fields, accessed by `e.f` (and `e->f ≡ (*e).f`); structs are large types that cannot live in registers and are laid out with per-field alignment padding.

**small vs. large type** — Small types (int, bool, pointer, array) fit in a register and may be held in variables and passed/returned; large types (struct) exceed register size and must be kept on the heap and manipulated by address.

**field offset and struct layout** — Each field's byte offset within a struct, computed by laying fields out left-to-right with alignment padding; `offset(s, f)` is used to compute `&(e.f) = a + offset(s,f)` during field access.

**address-of (&)** — An internal operation (in the semantics) taking the address of a large-type expression without dereferencing it, used to unify field access, pointer dereference, and array indexing when computing the location of a struct-typed subexpression.

**function pointer** — A value denoting a function's address, allowing indirect calls; supported as a language feature so functions can be passed and stored like data.

**alias analysis** — Determining whether two pointers may refer to the same memory (may-alias); essential because memory optimizations (CSE, constant propagation on loads) are only sound between accesses that provably do not alias.

**may-alias relation** — The conservative predicate `may-alias(a, b)` that holds when addresses a and b might be equal; if two pointers are *not* may-aliased, a write to one cannot affect a load from the other, enabling the optimization.

**type-based alias analysis (alias class)** — Inferring non-aliasing from types and offsets: each address gets an alias class `class(a, τ, offset)`, and two addresses may alias only if they share type and offset; sound for type-safe languages like C0 and Java. Offsets are combined in a lattice (with ⊤ and ⊥) via a forward dataflow analysis.

**allocation-based alias analysis** — Inferring non-aliasing from allocation sites: pointers produced by different `alloc`/`alloc_array` calls cannot alias; an interprocedural analysis since allocation may occur in another function.

**redundant load elimination (memory CSE)** — Replacing a load `t ← M[a]` by a previously loaded value when alias analysis and an availability (`avail`/`unavail`) analysis prove the memory at a has not changed since the earlier load; the earlier load must dominate the later one in SSA form.

**garbage collection / memory management** — The runtime's management of heap memory; the semantics abstracts memory failure (out-of-memory, stack overflow) as an unmodeled runtime event, and a garbage collector may reclaim memory unreachable from the stack roots.
