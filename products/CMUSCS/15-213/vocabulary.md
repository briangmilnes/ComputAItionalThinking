# 15-213 — Introduction to Computer Systems (CSAPP) · Vocabulary

Source: CMU 15-213/15-503 *Introduction to Computer Systems*, Spring 2025 (s25) offering (most recent offering with a complete, downloadable set of lecture-slide PDFs; the Summer 2025 term on the live course homepage is still in progress and its later lectures were not yet posted). Slides at http://www.cs.cmu.edu/afs/cs/academic/class/15213-s25/www/schedule.html . Grounded in Bryant & O'Hallaron, *Computer Systems: A Programmer's Perspective*.

Note: this offering folds no separate floating-point / IEEE-754 lecture into the schedule; the bits-bytes-integers lecture stops at integer arithmetic and byte ordering, so IEEE-754 terms are not listed here (they are not taught in these slides).

## Data representation

**bit** — The fundamental unit of information representing one of two states (0 or 1), arising because hardware only distinguishes a signal high enough to be "On" from one low enough to be "Off."
**byte** — An 8-bit unit of memory addressing; multi-byte objects (a C `short` is 2 bytes, an `int` 4) are built from consecutive bytes.
**word** — A multi-byte data unit; byte ordering concerns how the bytes within a word are arranged, and shifts by an amount ≥ the word size are undefined.
**binary (base 2)** — A base-2 numbering system in which each place represents a power of two, mirroring how each base-10 place represents a power of ten.
**hexadecimal (base 16)** — A base-16 representation using digits 0–9 and A–F, preferred as a dense human-readable form for bit patterns; C writes hex literals with a `0x` prefix.
**Boolean algebra** — Boole's algebraic encoding of logic with True = 1 and False = 0, the basis for bit-level operations.
**bit vector** — A width-w sequence of bits operated on bitwise; a bit vector can represent a subset of {0,…,w−1}, with bit j set iff j is in the set.
**bitwise AND / OR / NOT / XOR (`& | ~ ^`)** — Operators applied bit-by-bit to integral operands viewed as bit vectors, corresponding to set intersection, union, complement, and symmetric difference.
**logical operators (`&& || !`)** — Operators that treat 0 as False and any nonzero value as True, always return 0 or 1, and short-circuit; distinct from the bit-level operators.
**left shift (`x << y`)** — Shifts x left y positions, discarding high bits and filling zeros on the right.
**logical right shift** — A right shift that fills zeros on the left; used for unsigned values.
**arithmetic right shift** — A right shift that replicates the sign (most-significant) bit on the left, preserving sign for signed values.
**unsigned encoding (B2U)** — Representation of non-negative integers as plain binary, B2U(x) = Σ xᵢ·2ⁱ, giving range 0 … 2ʷ−1.
**two's complement (B2T)** — Signed encoding in which the most-significant bit carries weight −2^(w−1); the negative of x is obtained by flipping all bits and adding one (−x = ~x + 1).
**sign bit** — The most-significant bit of a two's-complement number: 0 for non-negative, 1 for negative.
**ones' complement** — A value with all bits flipped; a number plus its ones' complement has all bits set.
**UMax** — The largest unsigned value, 2ʷ−1 (all ones).
**TMin** — The most negative two's-complement value, −2^(w−1) (bit pattern 100…0); it is its own negation, a common source of bugs.
**TMax** — The largest two's-complement value, 2^(w−1)−1 (bit pattern 011…1).
**signed/unsigned conversion (T2U / U2T)** — Casting between signed and unsigned keeps the bit pattern but reinterprets it, effectively adding or subtracting 2ʷ; casts happen explicitly and implicitly (assignments, calls, mixed-type comparisons).
**implicit conversion to unsigned** — In an expression (including comparisons) mixing signed and unsigned operands, the signed operand is converted to unsigned, producing surprising results.
**sign extension** — Widening a signed value to more bits by copying the sign bit into the new high positions, preserving its value.
**zero extension** — Widening an unsigned value by filling zeros in the new high positions.
**truncation** — Narrowing an integer by dropping high bits; equivalent to a modulo operation, correct only for small-magnitude values.
**overflow / modular arithmetic** — When a result needs more bits than the width allows, high bits are lost and arithmetic "wraps around"; unsigned addition computes (u+v) mod 2ʷ.
**two's-complement addition (TAdd)** — Signed addition whose bit-level behavior is identical to unsigned addition (the carry-out is discarded).
**multiply/divide by shifting** — `u << k` computes u·2ᵏ and `x >> k` computes ⌊x/2ᵏ⌋; compilers emit shift/add sequences because shifting is faster than multiply/divide, adding a bias for negative division to round toward zero.
**byte ordering (endianness)** — The convention for ordering the bytes of a multi-byte word in memory, significant when data crosses machines via network or files.
**big-endian** — Byte order with the most-significant byte at the lowest address (SPARC, PowerPC, network byte order).
**little-endian** — Byte order with the least-significant byte at the lowest address (x86-64, ARM on Android/iOS/Linux).

## Machine-level programming (x86-64)

**instruction set architecture (ISA)** — The processor-design contract a programmer must understand — instruction set and registers; the ISA taught here is x86-64.
**microarchitecture** — The implementation of an ISA (cache sizes, clock frequency, pipeline), distinct from the ISA itself.
**machine code / assembly code** — The byte-level program the processor executes, and its human-readable textual form.
**CISC vs RISC** — x86 is a Complex Instruction Set Computer (many instructions, many formats); ARM/RISC-V are Reduced Instruction Set Computers (few instructions, few modes).
**program counter (%rip)** — The register holding the address of the next instruction to execute.
**register file** — The set of programmer-visible CPU registers, separate from memory and cache; x86-64 has 16 general-purpose 64-bit integer registers (%rax, %rbx, …, %r15).
**register sub-parts** — Lower portions of a register addressed as byte (%al), 2-byte (%ax), 4-byte (%eax), or 8-byte (%rax); any 32-bit write zeros the upper 32 bits.
**%rsp** — The stack pointer register, pointing to the current top of the runtime stack.
**operand types** — Instruction operands are immediate (a `$`-prefixed constant), register, or memory (bytes at a computed address).
**addressing mode `D(Rb,Ri,S)`** — The general memory-operand form computing Mem[Reg[Rb] + S·Reg[Ri] + D] from displacement D, base register, scaled index register, and scale S ∈ {1,2,4,8}.
**mov (movb/movw/movl/movq)** — The data-transfer instruction, in byte/word/double-word/quad-word sizes; it cannot move memory-to-memory in one instruction.
**leaq** — Load-effective-address: sets the destination to the address computed by an addressing-mode expression without touching memory or condition codes; used for pointers and for `x + k·y` arithmetic.
**arithmetic/logical instructions** — Two-operand `addq`/`subq`/`imulq`/`andq`/`orq`/`xorq` and shifts `salq`/`sarq`/`shrq`, plus one-operand `incq`/`decq`/`negq`/`notq`.
**condition codes (CF, ZF, SF, OF)** — Single-bit flags set as a side effect of arithmetic recording carry-out (unsigned overflow), zero result, negative result, and signed overflow.
**cmp / test** — `cmp` computes Dest−Src and `test` computes Dest&Src, setting condition codes without storing a result, to drive branches.
**set instructions** — `sete`, `setl`, `setg`, `seta`, etc., which write a single byte based on the condition codes.
**jmp and conditional jumps** — Unconditional `jmp` and condition-code-driven `je`/`jne`/`jl`/`jg`/`jb`/`ja`… that implement control flow as goto-style branches.
**conditional move (cmov)** — Instruction implementing `if (test) dest = src` without branching; used only when both branches are side-effect-free because it evaluates both.
**loop translation** — Compilers render `do-while`, `while` (jump-to-middle or guarded-do), and `for` loops as tests plus backward jumps.
**switch / jump table** — A multi-way branch implemented by an indirect jump `jmp *JTab(,idx,8)` through an array of code addresses (`.quad` entries in `.rodata`), used when the index is in range.
**runtime stack** — The region of memory holding procedures' local variables, saved registers, and arguments; it grows toward lower addresses and follows last-in-first-out call/return discipline.
**push / pop** — `pushq` decrements %rsp by 8 and stores; `popq` loads and increments %rsp by 8.
**call / ret** — `call` pushes the return address and jumps to the callee; `ret` pops the return address and jumps back.
**return address** — The address of the instruction after a `call`, saved on the stack so control can resume after the callee returns.
**stack frame** — The per-procedure block of stack memory holding its saved registers, locals, and outgoing arguments; the executing procedure's frame is on top.
**caller / callee** — In a call, the calling procedure is the caller and the called procedure is the callee.
**calling conventions** — The agreed rules for transferring control and passing arguments/return values and preserving registers across calls.
**argument-passing registers** — The first six integer/pointer arguments go in %rdi, %rsi, %rdx, %rcx, %r8, %r9; further arguments are passed on the stack.
**return value (%rax)** — Integer/pointer results are returned in %rax.
**caller-saved registers** — Registers (%rax, the argument registers, %r10/%r11) a callee may freely overwrite, so the caller must save them across a call if still needed.
**callee-saved registers** — Registers (%rbx, %rbp, %r12–%r15) a callee must preserve, saving and restoring them before returning.
**recursion / reentrancy** — Stack frames give each procedure instantiation its own storage, so recursion and mutual recursion work naturally under the standard calling conventions.
**array allocation and access** — `T A[N]` reserves N·sizeof(T) contiguous bytes; element `A[i]` lives at address A + i·sizeof(T), computed with scaled-index addressing.
**pointer arithmetic** — Adding an integer i to a pointer advances the address by i·sizeof(element).
**multidimensional / nested array** — `T A[R][C]` is a contiguous R·C·sizeof(T) block in row-major order; `A[i][j]` is at A + (i·C + j)·sizeof(T).
**multi-level array** — An array of pointers to separately allocated rows, requiring two memory reads to access an element.
**structure (struct)** — A block holding fields in declaration order at compile-time-fixed offsets; assembly sees only the offsets.
**alignment** — Placing data at an address that is a multiple of its size; a struct's alignment is the largest field alignment, and both its start and size must be multiples of it.
**padding** — Gaps the compiler inserts between fields (internal) or after the last field (external) to satisfy alignment; ordering large fields first reduces it.
**union** — A block sized to its largest member in which only one member is valid at a time; used to reinterpret a value's bit pattern or as a sum type.
**XMM registers / SSE / AVX** — Floating-point values live in XMM registers operated on by SSE/AVX scalar (`addss`/`addsd`) and SIMD instructions; FP arguments pass in %xmm0…, results return in %xmm0, and all XMM registers are caller-saved.
**memory layout (x86-64 Linux)** — The virtual address space divided into Stack (high addresses, ~8 MB), shared libraries, Heap (malloc), Data (globals/strings), and read-only Text (code).
**buffer overflow** — Writing past the bounds of a fixed-size (often stack) buffer, e.g. via `gets`/`strcpy`/`scanf %s`, the leading technical cause of security vulnerabilities.
**stack smashing** — A stack-based buffer overflow that corrupts adjacent stack state such as the saved return address.
**code injection attack** — Placing executable bytes in an input buffer and overwriting the return address to point at them so `ret` runs the injected code.
**ASLR (address space layout randomization)** — A defense that randomizes stack (and other) addresses each run so an attacker cannot predict buffer or code locations.
**non-executable stack (NX)** — Marking regions such as the stack non-executable so jumping into injected data crashes immediately.
**stack canary (stack protector)** — A guard value placed beyond a buffer and checked before return (GCC `-fstack-protector`, using `%fs:0x28`), aborting via `__stack_chk_fail` if overwritten.
**return-oriented programming (ROP)** — An attack that defeats NX and ASLR by chaining existing code fragments (gadgets) via addresses placed on the stack.
**gadget** — A short existing instruction sequence ending in `ret`; ROP places gadget addresses on the stack so each `ret` chains to the next.

## Memory hierarchy and caches

**SRAM vs DRAM** — Static RAM stores each bit in ~6 transistors, needs no refresh, and is fast/costly (used for caches); Dynamic RAM stores each bit in one transistor + capacitor, must be refreshed, and is slow/cheap (used for main memory).
**nonvolatile memory / flash** — Memory (ROM, EEPROM, flash) that retains data without power; flash stores charge in stacked cells, erases in blocks, wears out after ~100,000 erasures, and underlies SSDs.
**magnetic disk** — Electromechanical storage of bits on spinning platters organized into tracks and sectors; access time ≈ seek time + rotational latency + transfer time.
**solid-state disk (SSD)** — Flash-based block storage with no moving parts (faster, lower-power, more rugged than disk) using a flash translation layer and wear leveling to spread writes.
**DMA (direct memory access)** — A transfer in which the disk controller moves a sector directly into main memory and interrupts the CPU on completion.
**memory hierarchy** — Storage organized in levels where each fast/small/costly level near the CPU caches data for the slower/larger/cheaper level below it, bridging the widening CPU–memory gap.
**principle of locality** — Programs tend to reference data and instructions with addresses near or equal to ones referenced recently.
**temporal locality** — A recently referenced item is likely to be referenced again soon.
**spatial locality** — Items with nearby addresses tend to be referenced close together in time.
**working set** — The data and instructions a program actively uses; caching is effective when the working set fits in the cache.
**cache** — A smaller, faster device that stages a subset of the data in a larger, slower device.
**cache block / line** — The fixed-size unit (B = 2ᵇ bytes) transferred between memory levels.
**cache hit / miss** — A hit finds the requested block in the cache; a miss must fetch it from the next level, incurring the miss penalty.
**cold / capacity / conflict miss** — Compulsory misses on first reference to a block; capacity misses when the working set exceeds the cache; conflict misses when too many active blocks map to the same set.
**cache organization (S, E, B)** — A cache of S = 2ˢ sets, E lines per set, and B = 2ᵇ bytes per block; total data size = S·E·B.
**set / set index** — Lines are grouped into sets; the middle address bits (set index) select the set, which favors spatial locality.
**associativity** — The number E of lines per set, determining how many places a block may occupy within its set.
**direct-mapped cache** — E = 1: each block maps to exactly one line, so a tag mismatch evicts and replaces it.
**set-associative cache** — E > 1: a block may occupy any of several lines in its set, and on a miss one line is chosen for eviction.
**fully associative** — Any block may be placed in any line; used for the DRAM cache because of its huge miss penalty.
**tag / valid bit** — The high-order tag bits stored with each line are compared to the address's tag, and the per-line valid bit indicates whether the line holds real data; a match requires both.
**block offset** — The low-order address bits locating the requested bytes within a cache block.
**LRU (least recently used)** — A replacement policy that evicts the least recently used line in a set (the victim).
**write-through vs write-back** — On a write hit, write-through immediately propagates to the next level, while write-back defers until the line is evicted, tracked by a dirty bit.
**write-allocate vs no-write-allocate** — On a write miss, write-allocate loads the block into the cache first, while no-write-allocate writes straight to memory.
**miss rate / hit rate / miss penalty / hit time** — Fraction of references that miss vs hit, the extra time a miss costs (~50–200 cycles for DRAM), and the time to serve a hit (~4 cycles for L1).
**cache-friendly code** — Code that minimizes inner-loop misses by reusing data (temporal) and using stride-1 access (spatial).
**stride / row-major order** — The address step between successive accesses; C stores arrays in row-major order, so traversing a row is stride-1 (good) but traversing a column is not.
**blocking (cache blocking)** — Restructuring a computation into sub-blocks that fit in cache (e.g., B×B matrix-multiply tiles) to exploit temporal locality and cut misses.

## Code optimization

**code optimization** — Improving performance by reducing instructions, memory stalls, and branches without changing program behavior.
**constant folding / strength reduction** — Evaluating constant expressions at compile time and replacing costly operations (multiply/divide) with cheaper equivalents (shifts/adds).
**dead-code elimination** — Omitting code that never executes or whose result is overwritten.
**common subexpression elimination (CSE)** — Computing a repeated expression once and reusing it.
**code motion** — Hoisting a loop-invariant computation out of the loop.
**inlining** — Substituting a function's body into its callers, enabling further optimizations at the cost of code size.
**memory aliasing** — The possibility that two pointers reference overlapping memory, which forces conservative reloads/stores; avoided with a local accumulator or `restrict`.
**optimization blocker** — A program feature (procedure call, potential aliasing) that prevents the compiler from optimizing, e.g. a `strlen` in a loop condition making the loop quadratic.
**instruction-level parallelism (ILP)** — Executing several instructions per cycle across a CPU's multiple functional units, exploited by unrolling and scheduling.
**pipelining / branch prediction** — The CPU fetches and executes ahead, guessing branch outcomes; a misprediction discards speculative work and reloads the pipeline at a multi-cycle cost.
**loop unrolling** — Duplicating the loop body to process several elements per iteration, amortizing loop overhead and exposing parallelism.
**CPE (cycles per element)** — A performance measure where Cycles = CPE·n + overhead, with CPE the slope of the cycles-vs-elements line.
**critical path** — The dependency chain that limits performance; a design goal is to move slow operations off it.

## Linking

**linker** — The program (`ld`) that combines relocatable object files into an executable by symbol resolution and relocation.
**static vs dynamic linking** — Static linking copies needed library code into the executable at link time; dynamic linking leaves it out and links a shared copy at load or run time.
**relocatable / executable / shared object file** — A `.o` combinable into an executable; an `a.out` copyable into memory and run; a `.so` (Windows DLL) linkable dynamically at load or run time — all in ELF format.
**ELF (Executable and Linkable Format)** — The unified binary format for relocatable, executable, and shared object files.
**symbol** — A named global variable or function a module defines or references, which the linker binds to a definition.
**symbol table (.symtab)** — The assembler-built array of entries recording each symbol's name, size, and location.
**symbol resolution** — The linker step associating each symbol reference with exactly one definition.
**relocation** — The linker step merging sections, assigning final run-time addresses to symbols, and patching all references, guided by relocation entries.
**strong vs weak symbols** — Strong symbols (functions, initialized globals) may not be multiply defined; among a strong and weak (uninitialized/`extern`) symbol the strong one wins, and among multiple weak symbols one is chosen arbitrarily.
**global / external / local symbols** — Global symbols are defined by a module and visible to others; external symbols are referenced but defined elsewhere; local (`static`) symbols are confined to their module.
**object-file sections** — `.text` (code), `.rodata` (read-only data such as jump tables and strings), `.data` (initialized globals), and `.bss` (uninitialized globals, occupying no file space).
**static library / archive (.a)** — A collection of relocatable object files from which the linker copies only the members that resolve references.
**shared library (.so)** — A dynamically linked library sharable by many processes at run time as a single in-memory copy.
**loading** — Copying an executable's code and data into memory (read-only code segment, read/write data segment) so it can run.

## Exceptional control flow, processes, and signals

**exceptional control flow (ECF)** — Mechanisms that change control flow in response to system-state changes, present at every level from hardware exceptions to signals and nonlocal jumps.
**exception** — A hardware/software transfer of control to the kernel in response to an event (divide-by-zero, page fault, I/O completion, ctrl-C), dispatched via the exception table.
**exception table** — A table indexed by a per-event exception number whose entries point to the corresponding handlers.
**asynchronous exception (interrupt)** — An exception caused by an event external to the processor (timer, I/O, network packet); the handler returns to the next instruction.
**synchronous exception (trap / fault / abort)** — An exception caused by executing an instruction: an intentional trap (system call, breakpoint) returns to the next instruction, a recoverable fault (page fault) may re-execute the instruction, and an unrecoverable abort terminates the program.
**system call** — A request to the kernel for an effect outside the process (I/O, time, memory, process creation), each with a unique ID invoked by the `syscall` instruction.
**errno** — The global variable a failing system-level function sets to indicate the cause of the error, decoded to a message by `strerror`.
**process** — An instance of a running program, giving its program two abstractions: a private address space and a logical control flow.
**private address space** — The illusion that a program has exclusive use of memory, provided by the virtual-memory mechanism.
**logical control flow** — The illusion that a program has exclusive use of the CPU, provided by context switching.
**kernel** — The shared, memory-resident OS code that manages processes, running in the context of an existing process rather than as a separate one.
**context switch** — The kernel mechanism that passes control between processes by saving one process's registers and restoring another's registers and address space.
**concurrent processes / multitasking** — Processes whose executions overlap in time; a single core interleaves them, and they can still interfere with one another.
**user mode vs kernel mode** — A processor mode bit restricting which instructions and memory a process may access; system calls and exceptions transition to kernel mode.
**process states** — Running, Blocked/Sleeping (awaiting an event), Stopped (suspended by a signal), or Terminated/Zombie.
**fork** — The system call that creates a child process with a separate copy of the parent's address space and open descriptors; it returns 0 to the child and the child's PID to the parent, i.e. it "returns twice."
**execve** — The system call that replaces the current process's code, data, and stack with a new program, keeping the PID and open files, and never returns on success.
**wait / waitpid** — Calls by which a parent suspends until a child terminates and reaps it, retrieving the exit status; waitpid can target a specific child and poll without blocking.
**reaping / zombie / orphan** — Reaping is a parent collecting a terminated child's status; an unreaped terminated child is a zombie ("defunct"), and a child whose parent exits first is an orphan adopted and reaped by the init process (PID 1).
**exit status** — The integer a process returns via `exit` (0 = normal), decoded from `wait` with macros like WIFEXITED/WEXITSTATUS/WIFSIGNALED.
**shell** — A program that runs programs for the user in a read/evaluate loop, handling built-ins directly and fork/exec-ing others, as foreground or background (`&`) jobs.
**signal** — A small integer-ID message notifying a process that an event occurred (e.g., SIGINT from ctrl-C, SIGKILL, SIGSEGV, SIGCHLD on child termination, SIGTSTP from ctrl-Z, SIGCONT to resume); it carries only its ID.
**sending / receiving a signal** — The kernel sends a signal by updating the target's context (on a detected event or a `kill` call); the process receives it by ignoring, terminating, or catching it.
**pending / blocked signals** — A pending signal has been sent but not received (only one per type, since signals are not queued); a blocked signal (the signal mask) can be sent but is not received until unblocked, and SIGKILL/SIGSTOP cannot be blocked.
**signal handler** — A user-level function installed with `signal()` that catches a signal, running as a separate logical flow concurrent with the main program.
**async-signal-safe function** — A function safe to call in a handler because it is reentrant or non-interruptible (e.g., `write`, `_exit`, `waitpid`); `printf`, `malloc`, and `exit` are not safe, so the course uses the reentrant SIO library.
**sigprocmask / sigsuspend** — Functions to explicitly block/unblock signals and to atomically unblock-and-wait for one, avoiding races and busy-waiting.
**nonlocal jumps (setjmp / longjmp)** — A C-runtime mechanism transferring control to an arbitrary earlier point, breaking call/return discipline; `setjmp` saves the register/stack/PC context in a `jmp_buf` (returning 0 initially), and `longjmp` restores it (returning a nonzero value), with `sigsetjmp`/`siglongjmp` variants for handlers.

## Virtual memory

**virtual memory (VM)** — An abstraction giving each process a large private address space stored on disk and cached in DRAM, which uses memory efficiently, simplifies management, and isolates/protects processes.
**virtual vs physical address** — The CPU issues virtual addresses (VA) that the MMU translates to physical addresses (PA) naming actual DRAM locations.
**address space** — An ordered set of nonnegative addresses; the virtual space has N = 2ⁿ addresses and the physical space M = 2ᵐ.
**page** — A fixed-size (typically 4 KB) block of the virtual address space, the unit of transfer between DRAM and disk.
**virtual / physical page (page frame)** — A virtual page (VP) may be unallocated, cached in a physical page (PP), or uncached on disk; a physical page/frame is a page-sized DRAM slot.
**DRAM cache** — The use of physical DRAM as a fully associative, write-back cache for virtual pages on disk, organized around the enormous (>1 ms) disk miss penalty.
**page table** — A per-process kernel array of page-table entries mapping virtual pages to physical pages, based at the physical address in the PTBR (CR3).
**page-table entry (PTE)** — An entry holding a valid bit plus either a physical page number (if cached) or a disk address (if not), optionally with permission bits.
**address translation** — The MMU mapping from a virtual address to a physical address (or to ∅ if not resident), splitting the VA into a page number and page offset.
**MMU (memory management unit)** — On-chip hardware that translates virtual to physical addresses by fetching PTEs, checks permission bits, and raises page-fault exceptions.
**page hit vs page fault** — A page hit references a VP already in DRAM; a page fault references one not in DRAM, triggering the page-fault handler.
**page-fault handler** — Kernel code that selects and evicts a victim page (writing it back if dirty), pages in the needed page, updates the PTE, and restarts the faulting instruction.
**demand paging** — Copying a page from disk into DRAM only on a fault, rather than preloading it.
**swapping (paging) / thrashing** — Copying pages in and out between DRAM and disk (swap space); thrashing is continuous swapping when the working set exceeds physical memory.
**memory protection** — Per-PTE permission bits (read/write/exec/supervisor) the MMU checks on every access, providing an interposition point for access control.
**TLB (translation lookaside buffer)** — A small set-associative cache of PTEs in the MMU consulted first on each access; a TLB hit avoids fetching the PTE from the page table.
**multi-level page table** — A tree of page tables that allocates only the parts needed for addresses in use, shrinking the table's size at the cost of k memory loads per translation.
**VPN / VPO / PPN / PPO** — The virtual page number and offset and the physical page number and offset; the offsets are identical because translation replaces only the page number.
**memory mapping (mmap)** — Associating a region of virtual memory with a backing source such as a disk file, so its contents are paged in on demand; the user-level `mmap` maps a file's bytes into the address space.
**copy-on-write (COW)** — Sharing pages read-only (e.g., across `fork`) and deferring the actual copy until a write fault occurs.
**vm_area_struct** — The Linux structure describing one contiguous "area" of a process's virtual memory (start, end, permissions, flags), consulted by the fault handler to distinguish normal faults, segmentation faults, and protection errors.

## Dynamic memory allocation

**dynamic memory allocator** — A component managing the heap as a collection of variable-sized allocated and free blocks; explicit allocators (C `malloc`/`free`) require the application to free, while implicit allocators (Java, garbage collection) free automatically.
**heap** — A region of process virtual memory managed by the allocator at run time, grown and shrunk by adjusting the break with `sbrk`.
**malloc / free / calloc / realloc** — Allocate an aligned block of at least a given size; return a block to the pool; allocate and zero a block; and resize an existing block.
**allocated vs free block** — A block currently in use by the application (carrying a payload) vs one available for allocation, distinguished by an allocated bit.
**block header / footer (boundary tag)** — A one-word header storing a block's size and allocated bit (using low-order bits freed by alignment); a replicated footer (boundary tag) enables constant-time backward coalescing.
**payload** — The application-data region of an allocated block; the aggregate payload is the sum over all allocated blocks.
**implicit free list** — Tracking all blocks (allocated and free) via each block's size field, so allocation is linear in the total number of blocks.
**explicit free list** — A doubly linked list of only the free blocks (pointers stored in free payloads), making allocation linear in the number of free blocks.
**segregated free list (size class)** — Several free lists partitioned by block size class, searched by class to approximate best-fit with higher throughput.
**placement policy (first / next / best fit)** — Choosing which free block to use: the first that fits, the first that fits starting where the last search ended, or the one leaving the fewest bytes over.
**splitting** — Dividing a chosen free block when the request is smaller than it, leaving the remainder free.
**coalescing** — Merging a freed block with adjacent free blocks to avoid false external fragmentation, done in constant time with boundary tags, either immediately or deferred.
**internal vs external fragmentation** — Internal fragmentation is payload smaller than block size (header/alignment/policy overhead); external fragmentation is enough total free memory but no single free block large enough.
**throughput vs utilization** — The number of requests served per unit time versus how efficiently the heap holds program data — competing allocator goals.
**insertion policy (LIFO / FIFO / address-ordered)** — Where a newly freed block goes in an explicit list: at the front, at the back, or in address order (which studies show fragments less).
**garbage collection** — Automatic reclamation of unreachable heap blocks; mark-and-sweep marks blocks reachable from roots and sweeps the unmarked ones.
**memory-related bugs** — Dereferencing bad pointers, reading uninitialized memory, overwriting past a block (buffer overflow), dangling pointers to freed blocks, double frees, and memory leaks — many detectable with valgrind.

## System-level I/O and file systems

**Unix I/O** — The kernel's general, async-signal-safe operations on all files (open/close, read/write, stat, lseek), on which higher-level I/O is built.
**file (Unix model)** — A sequence of bytes; even I/O devices and kernel structures (e.g., `/proc`) are represented as files.
**file descriptor** — A small nonnegative integer returned by `open` that a process uses to refer to an open file.
**open / close** — Calls that prepare a file for access (returning a descriptor with an access mode and flags) and release it.
**read / write** — Calls that copy bytes between memory and the current file position, returning a count that may be a short count (fewer bytes than requested, not an error).
**current file position / lseek** — The per-open offset where the next read/write occurs, changed by `lseek`.
**standard descriptors** — Every process starts with descriptor 0 (stdin), 1 (stdout), and 2 (stderr) open.
**standard I/O / stream / buffered I/O** — The C library's buffered `FILE *` streams (fopen, fread, fprintf, …) that amortize kernel calls by reading/writing blocks; convenient but not async-signal-safe and unsuitable for sockets.
**file types** — Regular files (arbitrary bytes), directories (name-to-file maps), and sockets, plus pipes, symbolic links, and device files.
**directory / pathname** — A directory is a file of entries (links) mapping names to files, always containing `.` and `..`; an absolute pathname starts at root `/`, a relative one at the current working directory.
**file metadata (stat)** — Per-file data (type, permissions in st_mode, hard-link count st_nlink, owner, size, timestamps) read via `stat`/`fstat`.
**descriptor table / open file table / v-node table** — The per-process descriptor table points into the shared open file table (each entry holding a file position and reference count), which points into the shared v-node table (holding stat info).
**file sharing** — Two descriptors referencing the same file via distinct open-file-table entries, each with its own position; `fork` instead makes child and parent share entries and bumps their reference counts.
**I/O redirection / dup2** — Making a descriptor refer to a different open file; `dup2(oldfd, newfd)` copies oldfd's entry into newfd, as the shell does for `>` redirection.
**RIO (robust I/O)** — The course package of I/O wrappers robust to short counts: unbuffered `rio_readn`/`rio_writen` for sockets and buffered `rio_readlineb`/`rio_readnb` for text lines and binary data.
**file system** — Software managing fixed-size disk blocks to provide the file abstraction; formatting designates a superblock (holding type, size, root directory, free list) and records remaining blocks as free.

## Network programming

**client-server model** — The model underlying network applications: a server process manages a resource and services requests from one or more client processes.
**computer network (LAN / WAN / internet)** — A hierarchy of hosts and links; LANs span a building (Ethernet), WANs span the world, and an internet joins networks via routers, with the Global IP Internet built on TCP/IP.
**protocol / packet / packet switching** — Rules governing cooperating hosts and routers; data is broken into packets (header + payload) that can be resent, reordered, and adaptively routed.
**IP / UDP / TCP** — IP provides unreliable host-to-host packet delivery and the naming scheme; UDP adds unreliable process-to-process datagrams; TCP adds reliable process-to-process byte streams over connections.
**IP address / dotted-decimal / network byte order** — A 32-bit (IPv4) host identifier stored big-endian (network byte order) and written as four dot-separated decimal bytes; IPv6 uses 128-bit addresses.
**DNS / domain name** — The Domain Name System is a worldwide distributed database mapping human-friendly domain names to IP addresses (with `localhost` mapping to the loopback 127.0.0.1).
**connection / socket** — A connection is a point-to-point, full-duplex, reliable byte stream between two processes; a socket is a connection endpoint, seen by the application as a file descriptor.
**socket address / port** — An IP-address:port pair naming one endpoint; a port is a 16-bit process identifier, either an ephemeral port assigned by the client kernel or a well-known port for a service (e.g., 80 for HTTP).
**sockets interface** — The system-level functions (`socket`, `bind`, `listen`, `accept`, `connect`) combined with Unix I/O to build network applications.
**getaddrinfo** — The modern, reentrant, protocol-independent function converting host/service strings into a list of socket address structures, replacing gethostbyname.
**listening vs connected descriptor** — A server's long-lived listening descriptor accepts connection requests; each `accept` returns a fresh connected descriptor for communicating with one client.
**HTTP** — The request/response protocol over a TCP connection in which a client sends a request line (method, URI, version) plus headers and the server returns a status line, headers, and content.
**static vs dynamic content** — Content served from files versus content produced on the fly by a program the server runs (via CGI, passing arguments through the QUERY_STRING environment variable).
**proxy** — An intermediary that acts as a server to the client and a client to the origin server, enabling caching, logging, anonymization, and filtering.

## Concurrent programming

**concurrent programming** — Writing programs whose logical flows overlap in time; hard because reasoning about all possible event orderings is error-prone.
**concurrent vs parallel** — Two flows are concurrent if they overlap in time; a single core simulates parallelism by time-slicing, while multiple cores give true parallelism.
**iterative vs concurrent server** — An iterative server handles one request at a time; a concurrent server uses multiple flows to serve several clients at once.
**approaches to concurrency** — Process-based (kernel-interleaved flows with private address spaces), event-based (one address space, flows manually interleaved with I/O multiplexing / `select`), and thread-based (kernel-interleaved flows sharing one address space).
**thread** — A logical control flow within a process that shares the process's code, data, and kernel context but has its own stack, registers, and thread ID (TID); threads form a pool of peers rather than a tree.
**Pthreads (POSIX threads)** — The standard C interface for creating, joining, and synchronizing threads (`pthread_create`, `pthread_join`, `pthread_mutex_lock`, …).
**shared variable** — A variable is shared iff multiple threads reference some instance of it; globals have one instance, local automatics one per thread stack, and local statics one instance overall.
**threads memory model** — Each thread has a private context (TID, stack, registers) but all share code, data, heap, and library segments; stacks are not protected, so a thread can read/write another's stack.
**race condition** — A situation where correctness depends on the relative timing of threads reaching certain points, so the outcome depends on arbitrary scheduling (a data race is a race on a shared variable; TOCTOU is a check-then-use race).
**synchronization** — Coordinating threads so they never take an unsafe trajectory, guaranteeing mutually exclusive access to critical sections.
**critical section** — A set of instructions accessing a shared variable that must not be interleaved with another thread's critical section for the same variable.
**progress graph / trajectory / unsafe region** — A graph whose axes are each thread's instruction order and whose points are execution states; a trajectory is a legal path, and it is safe (correct) iff it avoids the unsafe region where critical sections interleave.
**mutex (mutual exclusion)** — A lock that is either locked or unlocked, with `lock` (waits if held) and `unlock` operations, guaranteeing exclusive access to a critical section.
**semaphore (P and V)** — A non-negative integer with atomic P (wait: block until >0, then decrement) and V (post: increment and wake a waiter) operations; a binary semaphore acts as a mutex and a counting semaphore tracks available resources.
**producer-consumer problem** — A synchronization pattern where producers add items to a shared bounded queue and consumers remove them, coordinated by a mutex plus `slots` and `items` counting semaphores.
**readers-writers problem** — A pattern where any number of readers may access a shared object simultaneously but writers need exclusive access, solved with a reader/writer lock (`pthread_rwlock_t`).
**atomic memory operations** — Hardware read-modify-write instructions (test-and-set, compare-and-swap, exchange-and-add) that prevent data races and are used to build mutexes and semaphores.
**deadlock** — A state in which threads wait for an event that can never happen, typically a cycle of wait-for dependencies from inconsistent lock ordering; fixed by consistent lock ordering.
**livelock / starvation / fairness** — Livelock is progress without advancement; starvation is a thread making no progress for a long time; a fair algorithm guarantees no starvation (e.g., FCFS R/W locks, at the risk of the lock-convoy slowdown).
**thread safety / reentrant function** — A function is thread-safe if it always produces correct results under concurrent calls; the four thread-unsafe classes are fixed by locking or by reentrancy (accessing no shared state, e.g., `rand_r`).
