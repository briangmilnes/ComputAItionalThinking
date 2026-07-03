# CSE 401 — Introduction to Compiler Construction · Vocabulary

Source: University of Washington CSE 401/501M, "Introduction to Compiler Construction," Spring 2026 (Gilbert Bernstein). Public lecture slide decks A–S. <https://courses.cs.washington.edu/courses/cse401/26sp/calendar/lecturelist.html>

Ordered by course progression: compiler structure → front end (lexing, parsing, ASTs, checking) → middle (IRs, code shape) → back end (optimization, dataflow, SSA, instruction selection/scheduling, register allocation).

## Compiler Architecture

**compiler** — A program that translates code from one representation into an equivalent program in a different representation (e.g., source strings to binary machine code).

**compiler pass** — One of the smaller sub-compilers a full compiler is decomposed into; each pass transforms one representation into another.

**intermediate representation (IR)** — The data structure produced between passes; a compiler defines many different IRs, each discarding or introducing structure for a particular purpose.

**front end** — The part of the compiler that ingests programs and decides whether they are legal/safe (scanning, parsing, checking).

**back end** — The part of the compiler that optimizes programs, manages resources, and generates target code.

**lowering** — Transforming a higher-level IR into a lower-level one that is closer to the target machine (e.g., AST to linear IR to assembly).

## Formal Languages & Automata

**alphabet (Σ)** — A finite set of symbols/characters from which strings are built.

**string** — A finite, possibly empty sequence of symbols drawn from an alphabet.

**language** — A set of strings, possibly empty or infinite; an infinite language can be specified finitely.

**automaton** — A recognizer: a machine that accepts an input string if it belongs to the language and rejects it otherwise.

**grammar** — A generator: a system for producing exactly the strings of a language and no others.

**Chomsky hierarchy** — The nested classification of languages: regular ⊂ context-free ⊂ context-sensitive ⊂ recursively-enumerable, each tied to a class of grammar and machine.

**regular language** — A language specifiable by a regular expression / regular grammar and recognizable by a finite automaton; the level used for scanners.

**context-free language** — A language specifiable by a context-free grammar and recognizable by a pushdown automaton; the level used for parsers.

## Lexical Analysis

**scanner (lexer)** — The front-end phase that translates the input character stream into a sequence of tokens and reports lexical errors, skipping whitespace and comments.

**token** — An atomic unit of scanner output (a.k.a. word or lexeme), such as IF, LPAREN, or ID(x); tokens may carry associated data like a variable name or integer value.

**lexeme** — The actual character string in the source that a token matches.

**lexical class** — The category a token belongs to (operator, keyword, identifier, integer constant, etc.); each keyword and operator is its own distinct class.

**regular expression** — A pattern over an alphabet built from primitives (character, ε, ∅) and operators concatenation, alternation (|), and Kleene star (*); specifies the lexical structure of tokens.

**Kleene closure (star)** — The regular-expression operator α* meaning zero or more concatenated occurrences of α.

**finite state automaton (FSA)** — A machine of finitely many states with a start state, final (accepting) states, and labeled transitions, used to recognize regular languages.

**DFA (deterministic finite automaton)** — An FSA with at most one transition per state and input symbol and no ε-edges; runs without backtracking, so it is preferred for speed.

**NFA (nondeterministic finite automaton)** — An FSA that may have multiple transitions on the same input and ε-edges; accepts if some sequence of choices reaches a final state.

**ε-transition** — An edge that can be taken without consuming an input character, allowed only in NFAs.

**subset construction** — The fixed-point algorithm converting an NFA to a DFA, where each DFA state corresponds to a set of NFA states reachable on the same input.

**principle of longest match** — The scanning rule that at each point the scanner takes the longest string that forms a valid token (so `!=` is one token, not two).

**scanner generator** — A tool (Lex, Flex, JFlex; the course uses jflex) that builds a scanner automatically from a set of regular expressions.

## Grammars & Derivations

**context-free grammar (CFG)** — A grammar of nonterminals N, terminals Σ, productions P, and a start symbol S; specifies program syntax with enough power for nesting and recursion.

**production** — A grammar rule α ::= β where a nonterminal α may be replaced by the sequence β of terminals and nonterminals.

**nonterminal** — A grammar variable (e.g., `expr`, `statement`) that can be expanded via productions.

**terminal** — A concrete token that appears in programs (e.g., `if`, `+`, `=`); the leaves of a parse tree.

**BNF (Backus–Naur Form)** — The notation, first used for ALGOL 60, for writing grammar productions; also widely used to specify abstract syntax ("abstract grammars").

**derivation** — A sequence of production-expansion steps from the start symbol to a string of terminals.

**leftmost / rightmost derivation** — A derivation that always expands the leftmost (respectively rightmost) nonterminal; top-down parsing produces the former, bottom-up parsing produces the latter in reverse.

**parse tree (concrete syntax tree)** — The full tree recording every derivation step of a string, including all syntactic detail.

**parsing** — The inverse of derivation: recovering the syntactic structure (parse tree) of a token sequence, deciding whether w ∈ L(G).

**ambiguous grammar** — A grammar in which some sentence has more than one leftmost (equivalently, rightmost) derivation; ambiguity is a property of grammars, not languages.

**precedence and associativity** — Grammar conventions, traditionally encoded with one nonterminal per precedence level and left/right recursion, that force a unique interpretation of operator expressions.

**reduced grammar** — A grammar in which every production is used in some derivation (no useless productions).

## Bottom-Up (LR) Parsing

**bottom-up parsing** — Parsing that builds the tree from the leaves up, matching right-hand sides of productions while scanning left-to-right; reconstructs a rightmost derivation in reverse.

**LR(k) parsing** — Left-to-right scan, Rightmost derivation, k tokens of lookahead; the most powerful practical bottom-up scheme, and almost all real languages have an LR(1) grammar.

**shift** — The parser action of pushing the next input token onto the stack and advancing the scanner.

**reduce** — The parser action of replacing the right-hand side β on top of the stack with the left-hand-side nonterminal A, using production A ::= β.

**handle** — The location and production at which a reduction should occur, i.e., the substring αβ to reduce in a rightmost derivation step.

**viable prefix** — A prefix of a right-sentential form that does not extend past the rightmost handle; exactly the possible contents of the LR stack, and the set of them is a regular language.

**LR item** — A production with a dot marking a position in its right-hand side (e.g., `A ::= X . Y`), tracking how far a rule has been matched.

**closure** — The operation that, given a set of items, adds all items `[B ::= . γ]` for nonterminals B appearing just after a dot, computed to a fixed point.

**goto** — The operation that advances the dot past a grammar symbol X in every item of a state and takes the closure, producing the next LR state.

**LR(0) automaton** — The DFA over item-sets, built by closure and goto, that recognizes viable prefixes and drives shift/reduce decisions.

**action table / goto table** — The two parts of an LR parse table: the action table (indexed by state and terminal) gives shift/reduce/accept/error, and the goto table (state × nonterminal) gives the state to enter after a reduction.

**shift-reduce conflict** — A parser state where the automaton could either shift or reduce on the same input, indicating the grammar is not LR for that construction.

**reduce-reduce conflict** — A parser state where two different reductions both apply, another form of parsing conflict.

**SLR (Simple LR)** — An LR variant that reduces via `[A ::= β .]` only when the next token is in FOLLOW(A), filtering out some invalid reductions.

**FIRST / FOLLOW / NULLABLE** — The three fixed-point analyses over a grammar: FIRST(A) is the terminals that can begin a string derived from A, FOLLOW(A) the terminals that can immediately follow A, and NULLABLE(A) whether A can derive ε.

**LALR(1)** — An LR(1) variant that merges LR(1) states differing only in lookahead, giving far smaller tables; used by YACC, Bison, and CUP (the course's parser generator).

## Top-Down (LL) Parsing

**top-down parsing** — Parsing that starts from the start symbol at the root and repeatedly expands nonterminals to match the input, producing a leftmost derivation.

**LL(k) parsing** — Left-to-right scan, Leftmost derivation, k tokens of lookahead; less powerful than LR but simpler to hand-code.

**predictive parser** — An LL parser that chooses the correct production using only the next input symbol(s), without backtracking.

**LL(1) property** — The condition, for each nonterminal's alternative productions, that their FIRST sets are disjoint (and, if nullable, disjoint from FOLLOW), enabling one-symbol-lookahead prediction.

**recursive descent parser** — A hand-written top-down parser with one procedure per nonterminal, each responsible for matching its nonterminal against the input; the earliest parser type still in wide use.

**left recursion** — A grammar rule of the form `A ::= A α` that causes infinite recursion in a recursive-descent parser and must be rewritten (e.g., to right recursion plus a tail nonterminal).

**left factoring** — Rewriting productions that share a common prefix into a separate nonterminal so the parser can defer the choice until after the shared prefix.

**PEG / parser combinators** — Parsing Expression Grammars and parser-combinator libraries: formalisms that express only unambiguous grammars, a different style of parser generator.

## Abstract Syntax Trees & Passes

**abstract syntax tree (AST)** — The primary front-end IR: a tree capturing grammatical structure while discarding syntactic markers (delimiters, precedence scaffolding) not needed downstream.

**abstract grammar** — A BNF-style specification of an AST's node types, used to describe the IR's data structures rather than concrete syntax.

**semantic action** — Code attached to a production that runs during parsing (e.g., in CUP) to build the AST node for that rule via structural recursion on the parse tree.

**structural recursion** — A traversal that recurses on the sub-structures of a tree, the dominant code pattern for AST passes.

**decorating (annotating) the AST** — Adding derived information such as types to AST nodes, via extra fields, a parallel IR, or a side map from nodes to data.

**visitor pattern** — A design that groups a pass's code in one class and uses double dispatch (`node.accept(visitor)` then `visitor.visit(node)`) to select behavior by both node type and pass.

**double dispatch** — Selecting a method based on the runtime types of two objects (the AST node and the pass), which the visitor pattern simulates in single-dispatch OO languages.

**expression problem** — The tension (formulated by Wadler) between grouping code by data type versus by operation; compilers usually favor grouping by pass, since operations change more often than node types.

## Semantic Analysis

**checking (semantic analysis)** — The pass(es) that filter out grammatically valid but illegal programs and annotate the AST with types and symbol information.

**static vs. dynamic error** — A static error is caught by the compiler without running the program (type errors, undefined variables); a dynamic error occurs at runtime for particular inputs (e.g., null-pointer exception).

**symbol table** — A map from identifiers to information (types, memory layout, links to code); supports lookup, insertion, and redirection to wider scopes.

**scope** — A region of the program with its own symbol table; nested scopes are searched from innermost outward when resolving a name.

**namespace** — A separate identifier space for names used in distinct grammatical contexts (e.g., method names vs. variable names), each with its own symbol table.

**name resolution** — Determining, for each use of an identifier, which declaration it refers to.

**type** — A classification of data giving meaning to bits and enabling error detection, overloading, and optimization; base/primitive types vs. constructed/compound types.

**type checking** — Verifying that operations are applied to operands of compatible types and computing the resulting types.

**type equivalence** — When two types are considered the same: nominal equivalence (same declared name, e.g., classes) vs. structural equivalence (same constructor and component types).

**subtyping** — A relation where a value of type A can be used wherever a B is expected (Liskov Substitution Principle), e.g., a subclass for its superclass.

**type cast vs. coercion** — A cast is an explicitly written type conversion; a coercion is one the compiler inserts implicitly; the type checker discards coercions by making the conversions explicit in the IR.

**static vs. dynamic type** — The static (compile-time) type is what the checker reasons about; the dynamic (runtime) type is the actual class of the object; checking reasons about static types.

**hash-consing (memoization)** — Storing already-constructed types in a table and reusing them so each structural type has a unique representation, making equality an O(1) pointer comparison.

## Intermediate Representations

**three-address code (3AC/TAC)** — A linear IR whose instructions have the form `x ← y op z`, one operator and up to three names, assuming an unbounded set of temporary registers.

**stack machine code** — A linear IR that operates on an implicit operand stack (push/add/store), eliminating names for intermediates; used by JVM, CIL, p-code, PostScript, and (secretly) the MiniJava code generator.

**level of abstraction** — How close an IR sits to the source (high-level) versus the machine (low-level); mid-level IRs balance the two for target-independent optimization.

**basic block** — A maximal straight-line (branch-free) sequence of instructions that control flow can only enter at the top and leave at the bottom.

**leader** — The first instruction of a basic block: the first instruction overall, any branch target, or any instruction immediately after a branch.

**control flow graph (CFG)** — A (possibly cyclic) graph whose nodes are basic blocks and whose edges are possible transfers of control; every execution is a path through it.

**dependency graph** — A derivative IR showing which instructions depend on which, used to decide legal reorderings (scheduling).

**dataflow graph** — A graph representing how data flows between computations; derivative in traditional compilers but definitive in ML systems like PyTorch/TensorFlow.

**definitive vs. derivative IR** — A definitive IR defines the program being compiled; a derivative IR is built from it for a specific analysis and discarded when the definitive form changes.

## x86-64 & Code Shape

**instruction set architecture (ISA)** — The machine's programming interface: its model of memory/data and the operations available, presented as binary or assembly.

**x86-64** — The 64-bit target architecture: 16 general registers, 64-bit addresses, SSE registers, register-based calling conventions; the course generates AT&T/GNU-syntax assembly.

**register** — A small fast processor storage location (e.g., %rax); x86-64 has 16 general 64-bit registers plus the hidden instruction pointer %rip.

**stack pointer / base (frame) pointer** — %rsp points to the top of the runtime stack; %rbp points to a fixed offset in the current stack frame, relative to which locals are addressed.

**stack frame** — The region pushed on the stack for an active method call, holding the return address, saved base pointer, locals, temporaries, and outgoing arguments.

**addressing mode** — The way an instruction computes an operand's memory address, e.g., `d(reg1,reg2,s)` = reg1 + s·reg2 + d, mainly used for array subscripting.

**condition codes** — Processor status bits set by arithmetic and by cmp/test instructions, read by conditional jumps.

**application binary interface (ABI)** — The standard (System V/AMD64 for Linux and macOS) governing how binary code interoperates: calling convention, register roles, and stack discipline.

**calling convention** — The ABI rules by which caller and callee orchestrate a call: which registers hold the first arguments, where the result goes (%rax), and which registers are callee-saved.

**prologue / epilogue** — The instruction sequences at a function's entry (set up the frame) and exit (tear down the frame and return).

**code shape** — The systematic way a compiler lowers each source construct (expressions, statements, control flow, arrays) into target code, maintaining chosen invariants (e.g., "expression result in %rax," "locals on the stack").

**short-circuiting** — Evaluating `&&`/`||` such that the second operand is skipped when the result is already determined by the first, implemented with a conditional jump rather than a bitwise op.

**jump table** — A table of code addresses indexed by a value, used to compile a switch statement into an indirect jump instead of a chain of comparisons.

**object layout** — The in-memory arrangement of an object: a vtable pointer in the first word followed by storage for every field, including inherited ones.

**vtable (virtual method table)** — A per-class table of pointers to the class's method implementations; subclass tables keep inherited methods at the same offsets so dispatch is an O(1) indirect call.

**dynamic method dispatch** — Selecting the method to invoke from an object's vtable at runtime, based on the object's actual class.

**this pointer** — The implicit first argument (passed in %rdi in MiniJava) giving a method the address of the object it operates on.

**bootstrapping** — Starting the generated program by linking it with a small C driver that sets up the process and calls the compiled entry point, exposing I/O and allocation as runtime-library functions.

## Optimization

**optimization** — Transforming code to run faster or use less power/memory/space without changing observable behavior.

**scope of optimization** — The extent an optimization examines: peephole (a short instruction window), local (a basic block), intra-procedural (a whole function), or inter-procedural (the whole program).

**peephole optimization** — Replacing a short sequence of adjacent (often final) instructions with a faster equivalent sequence.

**constant folding** — Evaluating at compile time expressions whose operands are all constants.

**constant propagation** — Replacing a variable known to hold a constant with that constant at its use sites.

**copy propagation** — Replacing uses of a variable that was just copied from another (`x := y`) with the original variable.

**common subexpression elimination (CSE)** — Detecting a repeated computation whose operands are unchanged and reusing the earlier result instead of recomputing it.

**dead code elimination (DCE)** — Removing assignments whose results are never used (and have no side effects).

**strength reduction** — Replacing an expensive operation with a cheaper equivalent (e.g., multiply by a power of two with a shift).

**algebraic simplification** — Rewriting expressions using algebraic identities (`x+0 → x`, `x*1 → x`, etc.).

**loop-invariant code motion** — Moving a computation whose value does not change across loop iterations out of the loop.

**loop induction variable elimination** — Rewriting a loop counter used only for array indexing into direct pointer increments, reducing in-loop index arithmetic.

**loop unrolling** — Replicating a loop body to create larger basic blocks with more scheduling and overlap opportunities and fewer branch mispredictions.

**inlining** — Replacing a function call with a copy of the callee's body (renaming to respect scopes), the main way to expose inter-procedural optimizations.

**phase-ordering problem** — The difficulty that optimizations enable and interact with one another, so no single order of passes is best.

## Dataflow Analysis

**dataflow analysis** — A framework for discovering facts about all executions by pushing approximate facts around the CFG to a fixed point, establishing preconditions for optimizations.

**fixed-point (iterative) computation** — Repeatedly applying dataflow equations until the fact sets stop changing; termination follows from monotonicity and finiteness.

**GEN / KILL / IN / OUT** — The generic dataflow sets: facts generated (and not killed) in a block, facts killed in a block, and facts holding on entry and exit; related by `OUT = GEN ∪ (IN − KILL)`.

**forward vs. backward analysis** — Whether facts propagate from predecessors to successors (forward) or from successors to predecessors (backward).

**may vs. must analysis** — Whether a fact must hold on all paths (intersection at merges; safe to drop facts) or may hold on some path (union at merges; safe to add facts).

**available expressions** — A forward must-analysis computing the expressions already computed on every path to a point and not since killed; used to drive CSE.

**live variable analysis** — A backward may-analysis computing, at each point, the variables that may be used before redefinition; used for register allocation, DCE, and detecting uninitialized use.

**reaching definitions** — A forward may-analysis computing, for each point, the definition statements that can reach it without an intervening redefinition.

**very busy (anticipable) expressions** — A backward must-analysis of expressions evaluated on every path leaving a point, enabling code hoisting.

**dominance** — Block b dominates block d if every path from the CFG entry to d passes through b; b strictly dominates d if additionally b ≠ d.

**dominator tree** — The tree induced by the dominance relation (each block's parent is its immediate dominator), acting like a tree of nested scopes.

**dominance frontier** — For a block x, the set of blocks just past the region x dominates (x dominates a predecessor but does not strictly dominate the block itself); the criterion for φ-function placement.

## Static Single Assignment

**def-use chain** — An IR augmentation linking each definition to all its uses and each use back to its definition(s); a use may refer to multiple definitions when a name is reassigned.

**static single assignment (SSA)** — An IR in which each variable is assigned exactly once in the program text, giving immutable, math-like names that simplify analysis.

**φ-function (phi function)** — A pseudo-instruction at a control-flow merge, `x := φ(x1, x2, …)`, selecting the value from whichever predecessor block control arrived from; compile-time bookkeeping removed before code emission.

**minimal / pruned SSA** — Minimal SSA places a φ only where two definitions first meet (via the path-convergence / dominance-frontier criterion); pruned SSA additionally omits φ-functions for variables that are dead.

**out-of-SSA translation** — Removing φ-functions before final code by inserting copies `x := xn` at the ends of predecessor blocks, then relying on copy propagation and coalescing to clean up.

## Instruction Selection, Scheduling & Register Allocation

**instruction selection** — Mapping the machine-independent IR onto concrete target instructions, choosing which instructions best implement each group of IR operations; fast if greedy, NP-hard optimally.

**tree pattern matching (tiling)** — Covering the IR expression tree with patterns (tiles), each pattern pairing a target instruction with an IR-tree shape, so a valid tiling generates correct code.

**maximal munch** — A greedy top-down instruction-selection algorithm that matches the largest possible tile at each node (optimal when all instructions cost equally).

**dynamic-programming instruction selection** — A bottom-up selection that assigns each subtree the cheapest cost over all matching patterns, yielding an optimal tiling under a cost model.

**instruction scheduling** — Reordering instructions within a basic block to hide load/store and operation latencies, exploit parallel functional units, and keep the pipeline full, while respecting dependencies.

**data hazards (RAW / WAR / WAW)** — Ordering constraints between instructions sharing a memory resource: read-after-write, write-after-read, and write-after-write; they must be preserved when reordering.

**list scheduling** — A greedy algorithm that repeatedly picks the best ready instruction (e.g., by critical-path latency) from those whose predecessors are scheduled, simulating the processor's functional units.

**critical path** — The longest latency-weighted path to the exit in the dependency DAG, used to prioritize instructions during list scheduling.

**topological ordering** — An enumeration of a DAG in which every edge's tail precedes its head; any such ordering of the dependency DAG is a legal schedule.

**register allocation** — Mapping the unbounded virtual registers of the IR down to the machine's K physical registers.

**allocation vs. assignment** — Allocation decides which values reside in registers; assignment decides which physical register holds each value.

**spilling** — Moving a value out of a register to memory (with inserted loads/stores) when more than K values are simultaneously live; dirty, clean, and rematerializable values have different spill costs.

**Belady / "Best" algorithm** — The locally optimal eviction rule of spilling the value whose next use is farthest in the future; realizable only statically since it needs to see the future.

**interference graph** — An undirected graph with a node per variable/live-range and an edge whenever two variables are simultaneously live (interfere), so they cannot share a register.

**graph coloring** — Assigning each interference-graph node a color (register) so adjacent nodes differ; equivalent to register allocation and NP-complete in general.

**simplify-and-color heuristic** — The Chaitin/Briggs method that repeatedly removes low-degree nodes onto a stack, then colors them back in reverse, spilling when no low-degree node remains.

**coalescing** — Merging the live ranges of two variables connected by a copy that do not otherwise interfere, eliminating the copy instruction and reducing the number of ranges.

**pre-coloring** — Fixing certain interference-graph nodes to specific registers in advance to honor dedicated registers such as argument and return registers mandated by the calling convention.

**branch prediction** — The processor's guessing of branch outcomes to keep deep pipelines busy; matters for exposing large instruction windows but not much for static within-block scheduling.

**out-of-order execution / register renaming** — Processor techniques that dynamically reschedule instructions and remap architectural registers to more physical ones, redoing much of the back end's work at runtime.
