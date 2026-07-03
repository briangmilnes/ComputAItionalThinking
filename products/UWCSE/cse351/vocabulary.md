# CSE 351 — The Hardware/Software Interface · Vocabulary

Source: University of Washington CSE 351, "The Hardware/Software Interface" (CSAPP-based), Autumn 2025 offering. Lecture slides: https://courses.cs.washington.edu/courses/cse351/25au/schedule.html

Terms are ordered by course progression: data representation → C → x86-64 assembly → procedures/linking → caches → memory allocation → processes → virtual memory → runtime.

## Data representation

**binary (base 2)** — The base-2 number system computers use, with only the symbols 0 and 1; the decimal value of digit d in position i of base b is d × b^i.

**bit** — A binary digit (0 or 1), the smallest unit of data.

**byte** — A group of 8 bits; the fundamental addressable unit of memory, equal to 2 hexadecimal digits.

**hexadecimal (base 16)** — A base-16 notation (symbols 0–9, A–F, prefix 0x) where each hex digit maps to exactly 4 bits; more human-readable than binary.

**numerical encoding** — Assigning a unique numeral to each element of a countable set so it can be stored in binary; with x digits in base b you can represent b^x things.

**word / word size** — The fixed length used for addresses on a machine; by convention address size equals word size. x86-64 uses 64-bit (8-byte) words.

**address** — The unique index of a byte in memory; memory is conceptually one large byte-addressed array numbered from 0.

**address space** — The domain of all possible addresses; on a 64-bit machine the potential space is 2^64 bytes (actual physical space is 48 bits).

**most/least significant bit (MSB/LSB)** — The highest-order bit (leftmost, largest weight) and lowest-order bit (rightmost, weight 1) of a fixed-length binary value.

**endianness** — The convention for ordering the bytes of a multi-byte value in memory. Big-endian puts the least significant byte at the highest address; little-endian (used by x86-64) puts it at the lowest address.

**fixed-length representation** — Because storage is finite, data is stored and manipulated in fixed-size chunks (e.g., 1, 4, 8 bytes) with leading zeros filled in.

**alignment** — A datum is aligned when its address is a multiple of its size; often required or preferred by the hardware and compiler.

**ASCII** — American Standard Code for Information Interchange, a 1-byte-per-character encoding of English text, digits, and symbols.

**Unicode** — A standard using 1–4 bytes per character to encode a large range of languages and emoji via code points (e.g., U+1F32E).

**bitwise operators** — Boolean operations (AND &, OR |, XOR ^, NOT ~) applied to bit vectors of matching length, one bit position at a time.

**logical operators** — &&, ||, ! that treat any nonzero value as True and 0 as False and always evaluate to 0 or 1.

**short-circuit evaluation** — Early termination: if a logical operator's result is determined by its first operand, the second operand is never evaluated (e.g., `p && *p` guards a dereference).

**bitmask** — A specially chosen bit vector combined with data via &, |, or ^ to set, clear, keep, or flip selected bits.

**unsigned integer** — An encoding of only non-negative values using standard base-2 weights; range 0 to 2^w − 1.

**signed integer** — An encoding of both negative and non-negative values; two's complement range is −2^(w−1) to 2^(w−1) − 1.

**sign and magnitude** — A signed scheme using the MSB as a sign bit and the rest as magnitude; not used for integers in practice because it has two zeros and awkward arithmetic.

**two's complement** — The signed integer encoding used by all modern hardware, where the MSB carries weight −2^(w−1); negation is bitwise complement plus one (~x + 1 == −x).

**arithmetic (integer) overflow** — When a calculation produces a result that cannot be represented in the fixed-width encoding; C and Java silently ignore it, leaving a bad value.

**UMin/UMax/TMin/TMax** — The extreme representable values: minimum/maximum unsigned and minimum/maximum two's-complement signed integers for a given bit width.

**shift operations** — Moving a bit vector left (`x<<n`, fill 0s, ×2^n) or right (`x>>n`, ÷2^n); a logical right shift fills with 0s (unsigned), an arithmetic right shift replicates the sign bit (signed).

**type casting** — Converting data between types; implicit casts are inserted by the compiler and explicit casts are written `(type)expr`. C casts can change bit width, interpretation, or representation.

**truncation** — Dropping the upper bytes when casting a longer type to a shorter one.

**zero extension** — Widening a value by adding leading zeros (used for unsigned).

**sign extension** — Widening a value by replicating the old sign bit (MSB) into the new high bits (used for signed) to preserve value.

**floating point** — A representation of real numbers using base-2 scientific notation, trading exact representation for a wide range.

**scientific / normalized notation** — Writing a number as numeral × base^power with exactly one nonzero digit left of the (binary) point.

**IEEE 754** — The 1985 standard specifying floating-point representation and operation results so numerically sensitive programs are portable; supported by all major CPUs.

**sign / exponent / mantissa fields** — The three bit fields of an IEEE float: value = (−1)^S × 1.M × 2^(E−bias), where S is the sign, M the mantissa/fraction, and E the biased exponent.

**biased notation (bias)** — The exponent E is stored as an unsigned value offset by a bias of 2^(w−1)−1 (127 for single precision), so Exp = E − bias.

**implicit leading 1** — The normalized mantissa's leading 1 before the binary point is not stored, giving one extra bit of precision.

**denormalized numbers** — Special case E = 0, M ≠ 0 that represents values near zero, closing the gap between 0 and the smallest normalized number.

**infinity / NaN** — Special encodings (E all ones): ±infinity for overflow and Not-a-Number for undefined results such as 0/0.

**rounding** — Approximating a real value to the nearest representable float; floating-point arithmetic is not associative because of rounding.

**precision vs. accuracy** — Precision is the count of bits used to represent a value; accuracy is how close the represented value is to the true value.

## C and data structures

**pointer** — A data object whose value is a memory address; its size equals the word size, and its type determines the size of the thing pointed at.

**address-of operator (&)** — The unary `&` that yields the address of a variable (e.g., `int* p = &q;`).

**dereference operator (*)** — The unary `*` that accesses the value stored at a pointer's address.

**NULL** — A constant pointer to "nothing"; dereferencing NULL causes a runtime error (segfault).

**pointer arithmetic** — Arithmetic on address-valued expressions where the operator's effect is scaled by the size of the target type (e.g., `p+1` on an `int*` advances 4 bytes).

**array** — A block of adjacent memory locations storing the same type; declared `int a[6];`, indexed `a[i]` which is equivalent to `*(a+i)`.

**bounds checking (absence of)** — C does not check that an array index is in range, so `a[6]` or `a[-1]` silently read/write neighboring memory.

**C string** — A null-terminated array of one-byte ASCII characters (`char*`); the last character is followed by the null character `'\0'` (0x00).

**string literal** — A double-quoted constant (e.g., `"hi"`) automatically stored as a char array with space for `'\0'`; cannot be modified in place.

**struct** — A structured group of variables (fields), possibly nested, laid out contiguously; fields are accessed with `.` on an instance or `->` through a pointer.

**struct alignment / padding** — Rules that keep each field aligned to its size and make the total size a multiple of the largest field's alignment, inserting padding bytes as needed; reordering fields can shrink a struct.

**typedef** — A C mechanism to give a type (e.g., a struct) an alias name.

## x86-64 assembly

**Instruction Set Architecture (ISA)** — The contract between hardware and software: the visible system state (program counter, registers, memory) plus the instruction set and each instruction's effect.

**microarchitecture** — The specific hardware implementation of an ISA (distinct from the architecture itself).

**CISC / RISC** — Complex Instruction Set Computing adds many specialized instructions (x86-64); Reduced Instruction Set Computing keeps a small regular set (ARM, RISC-V).

**register** — A named storage location inside the CPU holding about a word of data, accessible far faster than memory; x86-64 has 16 general-purpose integer registers.

**program counter (%rip)** — The register holding the address of the next instruction to execute.

**condition codes** — Status flags (CF carry, ZF zero, SF sign, OF overflow) set as a side effect of arithmetic/logical operations and used for conditional branching.

**operand types** — Immediate (`$`, a constant), Register (`%`, a register's value), and Memory (`()`, an address that is usually dereferenced).

**size suffix** — A letter on an instruction naming the operand width: b (1 byte), w (2 bytes), l (4 bytes), q (8 bytes).

**AT&T vs. Intel syntax** — Two assembly notations; AT&T (used in 351) puts the destination operand last, Intel puts it first.

**mov (data movement)** — The instruction that copies data between registers and memory (`mov src, dst`).

**memory addressing mode** — The general memory operand `D(Rb,Ri,S)` computing address Reg[Rb] + Reg[Ri]×S + D from a displacement, base register, index register, and scale (1/2/4/8).

**leaq (load effective address)** — An instruction that computes `D(Rb,Ri,S)` and stores the resulting address (or arithmetic result) in a register without accessing memory.

**movz / movs** — Move instructions that copy a smaller source into a larger register with zero extension (movz) or sign extension (movs).

**cmp / test** — Instructions that set condition codes without storing a result: `cmp` computes a subtraction, `test` computes a bitwise AND.

**set / conditional jump instructions** — Instructions (je, jne, jg, jl, ja, jb, sete, etc.) that branch or set a byte based on the condition codes after a cmp/test.

**unconditional vs. conditional jump** — `jmp` always transfers control; conditional branches (jCC) transfer control only when a condition holds.

**jump table / indirect jump** — A table of code addresses indexed by a value, used with an indirect jump (`jmp *table(,%rdi,8)`) to implement a switch statement efficiently.

**loop implementation** — while, for, and do-while loops implemented in assembly using conditional and unconditional jumps around a loop body.

**goto** — A C statement that transfers control directly to a label, mirroring the assembly-level jump.

## Procedures, the stack, and linking

**the stack** — A last-in-first-out region of memory used for procedure call data; it grows downward toward lower addresses.

**stack pointer (%rsp)** — The register that holds the address of the top (lowest used address) of the stack.

**push / pop** — Instructions that store a value onto the stack (decrement %rsp, write) or remove one (read, increment %rsp).

**call / ret** — `call` pushes the return address and jumps to a procedure; `ret` pops the return address into %rip to resume the caller.

**return address** — The address of the instruction just after a `call`, pushed on the stack so the callee knows where to return.

**stack frame** — The per-invocation region of the stack holding a procedure's local variables, saved registers, and context; each frame is organized identically.

**calling convention (ABI)** — The agreed rules for passing control and data between caller and callee: arguments in registers (%rdi, %rsi, …), return value in %rax, and register-saving responsibilities.

**caller-saved / callee-saved registers** — Registers the caller must save before a call if it needs them afterward (caller-saved), versus registers the callee must preserve across the call (callee-saved).

**recursion** — A procedure that calls itself; each call gets its own stack frame, enabling multiple simultaneous instantiations.

**stack overflow** — Exhausting the stack region (e.g., via unbounded recursion) so it grows past its limit.

**compiler** — The tool that translates high-level source code into assembly, performing optimizations and generating instructions.

**assembler** — The tool (`as`, `gcc -c`) that translates assembly into machine-code object files.

**machine code / object code** — The binary instruction encoding the CPU executes; produced from assembly.

**disassembler** — A tool (`objdump -d`) that reads object or machine code and reconstructs the assembly instructions.

**linker** — The tool (`ld`, `gcc`) that combines several object files into a single executable, resolving references (linking).

**object file** — A file containing an object-file header, machine code, a symbol table, and a relocation table for one compilation unit.

**symbol table** — A list of a file's labels and data that can be referenced by other files.

**relocation table** — A list of code locations whose final addresses must be fixed up by the linker once the executable layout is known.

**executable** — The final linked binary program that can be loaded and run.

**multidimensional array (row-major)** — An array of arrays stored as one contiguous block in row-major order; element [r][c] is at offset r×(C×sizeof(T)) + c×sizeof(T).

**array of pointers** — An alternative layout where each element points to a separately allocated array (contrast with a contiguous array of arrays).

## Buffer overflow and memory layout

**buffer** — An array used to temporarily store data, often user input.

**buffer overflow** — Writing past the end of an array/buffer, overwriting adjacent memory; a classic source of bugs and security vulnerabilities.

**stack smashing / code injection** — An exploit that overflows a stack buffer to overwrite the return address, redirecting execution into attacker-supplied machine code placed in the buffer.

**stack canary** — A special guard value placed between a buffer and the return address; the code checks it is intact before returning to detect overflow (used by the stack protector).

**ASLR / randomized stack offsets** — Address Space Layout Randomization: randomizing stack (and other segment) addresses so exploit code's location is hard to predict.

**non-executable memory (W^X)** — Marking the stack, static data, and heap segments non-executable so injected data cannot be run as code.

**memory layout / segments** — The regions of a process's memory: program text/.text (read-only instructions), literals, static data/.data (globals), the heap (grows up), and the stack (grows down).

**segmentation fault (SIGSEGV)** — The fault/signal raised when a program accesses memory it is not allowed to (e.g., dereferencing an invalid address).

## Memory hierarchy and caches

**memory hierarchy** — The layered organization of storage (registers → L1/L2/L3 cache → main memory → disk) trading speed for capacity, each level caching the one below.

**SRAM / DRAM / disk** — Static RAM (fast, used for cache), dynamic RAM (main memory, must be refreshed), and disk (large, slow, non-volatile).

**locality** — The tendency of programs to reuse data and instructions near recent accesses: temporal locality (reusing the same item soon) and spatial locality (using nearby addresses).

**cache** — A small fast memory holding recently or frequently used blocks so future accesses are faster.

**cache hit / miss** — A hit is when requested data is already in the cache; a miss requires fetching the block from a lower level.

**cache block / line** — The fixed-size unit of transfer between cache and memory; an entire block is brought in on a miss.

**average memory access time (AMAT)** — AMAT = Hit time + Miss rate × Miss penalty, the expected time to access memory accounting for hits and misses.

**cache parameters** — Block size (K), cache size (C), associativity (E, blocks per set), and number of sets (S) that define the cache geometry.

**tag / index / offset** — The three fields an address is split into for cache lookup: index selects the set, tag identifies the block, offset selects the byte within the block.

**valid bit** — A per-line bit indicating whether the cached block holds meaningful data.

**direct-mapped cache** — A cache where each block maps to exactly one set (associativity E = 1) via (block number) mod (number of sets).

**set-associative / fully-associative cache** — A cache with E > 1 blocks per set (set-associative), or a single set holding all blocks (fully-associative, S = 1).

**replacement policy (LRU)** — The rule for choosing which block to evict when a set is full; caches typically approximate Least Recently Used.

**types of misses** — Compulsory (cold) misses on first access to a block, conflict misses when blocks contend for the same set, and capacity misses when the working set exceeds the cache size.

**write policies** — Write-through updates memory on every write; write-back defers writes and uses a dirty bit to mark modified blocks that must be written on eviction.

**cache blocking / cache-friendly code** — Reordering memory accesses (e.g., blocked matrix multiply) to reuse cache blocks while resident, maximizing locality.

## Dynamic memory allocation

**dynamic memory allocation** — Requesting memory at run time when its size or lifetime is not known in advance.

**heap** — The region of memory managed by the allocator for dynamic requests; the allocator can grow it with `sbrk`.

**malloc / free / calloc / realloc** — C library calls to allocate a block, deallocate a block, allocate zeroed memory, and resize a previously allocated block.

**block / payload** — The allocator manages the heap as variable-sized blocks; the payload is the usable portion returned to the program.

**header / footer (boundary tags)** — Bookkeeping words storing a block's size and allocated bit; boundary tags (header + footer) let the allocator coalesce with neighbors in both directions.

**free list** — The data structure tracking free blocks: implicit (all blocks linked by size arithmetic), explicit (free blocks linked by pointers), or segregated (separate lists by size class).

**placement / allocation strategy** — How the allocator picks a free block: first fit (first that fits), next fit (resume searching from last position), or best fit (smallest adequate block).

**splitting** — Dividing a chosen free block, giving part to the request and returning the remainder to the free list.

**coalescing** — Merging an newly freed block with adjacent free blocks into one larger free block to combat fragmentation.

**internal fragmentation** — Wasted space inside an allocated block when the payload is smaller than the block (e.g., due to alignment or headers).

**external fragmentation** — Free memory scattered in holes between allocated blocks so no single hole is large enough for a request even though total free space suffices.

**garbage collection** — Automatic reclamation of heap storage that is no longer reachable, used by languages such as Java, OCaml, and Lisp.

**reachability / roots** — A heap block is reachable if it can be reached by following pointers from root nodes (registers, stack, globals); unreachable blocks are garbage.

**mark-and-sweep** — A garbage-collection algorithm that marks all reachable blocks from the roots, then sweeps the heap freeing every unmarked block.

**reference counting** — A garbage-collection approach that tracks how many references point to each object and frees it when the count reaches zero.

**memory leak** — Heap memory that is allocated but never freed and no longer needed, consuming resources.

**double free / dangling pointer** — Common bugs: freeing the same block twice, or accessing a block through a pointer after it has been freed.

## Processes and exceptional control flow

**process** — An instance of a running program that provides the illusion of its own logical control flow and private address space.

**concurrency** — Multiple processes whose executions (control flows) overlap in time, though physically disjoint on a single core.

**context switch** — The kernel mechanism that saves one process's state and restores another's, passing control flow between processes.

**exceptional control flow (ECF)** — The mechanism by which the system reacts to events by transferring control, the basis for context switching, system calls, and signals.

**exception** — A transfer of control to the OS kernel in response to an event, dispatched through an exception table (interrupt vector) indexed by an exception number.

**interrupt** — An asynchronous exception caused by an event external to the processor (e.g., I/O completion, Ctrl-C); the handler returns to the next instruction.

**trap** — A synchronous, intentional exception from executing an instruction (e.g., a system call or breakpoint); execution resumes after the trapping instruction.

**fault** — A synchronous, unintentional but possibly recoverable exception (e.g., a page fault or protection fault); the handler either re-executes the faulting instruction or aborts.

**abort** — An unintentional, unrecoverable exception that terminates the program.

**kernel** — The core of the operating system that handles exceptions, schedules processes, and manages resources.

**signal** — A standardized higher-level inter-process message that triggers specific handling in a process (e.g., SIGSEGV, SIGINT).

**fork** — The system call that creates a new child process as a copy of the parent, returning 0 to the child and the child's PID to the parent.

**exec** — The family of system calls (execv, execve, …) that replaces a process's program with a new one.

**process ID (PID)** — The unique identifier assigned to each process; a forked child receives a new PID.

**reaping / zombie / orphan** — A terminated (zombie) process still holds resources until its parent reaps it via wait/waitpid; an orphan whose parent died is reaped by the init/systemd process (PID 1).

## Virtual memory

**virtual memory** — An abstraction giving each process its own private virtual address space, decoupled from physical memory through address translation.

**virtual vs. physical address** — Programs use virtual addresses (VA); physical addresses (PA) name actual hardware memory locations and are invisible to programs.

**virtual address space** — The set of addresses a process can use; each process has its own, providing isolation and protection.

**address translation** — The process, performed by the memory management unit using page tables, of mapping a virtual address to a physical address.

**memory management unit (MMU)** — The hardware that translates virtual addresses to physical addresses on each memory access.

**page** — A fixed-size block (e.g., 4 KiB) that virtual and physical memory are divided into; the unit of mapping between them.

**page frame** — A page-sized slot of physical memory that holds a virtual page.

**page table / page table entry (PTE)** — The per-process table that maps virtual page numbers to physical frames; each PTE holds a physical page number plus management bits (valid, dirty, access rights).

**VPN / PPN / page offset** — A virtual address splits into a virtual page number (translated) and page offset (unchanged); a physical address is a physical page number plus the same offset.

**page hit / page fault** — A page hit is when the referenced page is in physical memory; a page fault is an exception raised when it is not, invoking the page-fault handler.

**page fault handler** — The OS routine that, on a fault, selects a victim page (writing it back if dirty), loads the required page from disk, updates the PTE, and restarts the faulting instruction.

**demand paging** — Bringing pages into physical memory only when they are actually referenced, treating physical memory as a cache of virtual memory.

**swap space** — Disk storage that backs virtual pages not currently resident in physical memory.

**working set** — The set of pages a process actively uses over a period of time; thrashing occurs if it exceeds physical memory.

**multi-level page table** — A hierarchical page table that saves space by not allocating tables for unused regions of the huge virtual address space.

**translation lookaside buffer (TLB)** — A small hardware cache of recent page-table entries; a TLB hit avoids the memory access needed to walk the page table, a TLB miss requires fetching the PTE.

**memory protection / isolation** — Using page-table permission bits and per-process address spaces to prevent processes from accessing each other's or the kernel's memory.

## Runtime systems

**Java Virtual Machine (JVM)** — A virtual machine (interpreter) that executes Java bytecode, adding a layer between source-like code and the hardware.

**bytecode** — The compiled virtual-machine instruction format that the JVM interprets, rather than native machine code.

**interpreter** — A program that executes source or intermediate code directly, generally slower than native execution but more portable.

**dynamic dispatch** — Selecting which method implementation to run at runtime based on an object's actual type, typically via a pointer in the object header to a method table.
