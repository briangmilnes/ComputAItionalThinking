# CSE 333 — Systems Programming · Vocabulary

Source: University of Washington CSE 333 (Systems Programming). Primary offering: **Autumn 2025 (25au)**, the full 29-lecture slide set, https://courses.cs.washington.edu/courses/cse333/25au/schedule.html — used because the target term, Summer 2026 (26su), had only lectures 01–05 posted at fetch time (https://courses.cs.washington.edu/courses/cse333/26su/schedule.html). The 26su intro/pointers/structs/compilation decks were also downloaded and cover the same early C material. Every term below is grounded in the actual slide text.

## C: the language and systems model

**systems programming** — The programming skills, engineering discipline, and knowledge needed to build a system, centered on a deeper understanding of the "layer below" (OS, hardware) using C and C++.
**C** — A small, procedural, "low-level" language created by Dennis Ritchie in 1972 for writing system software; typed but unsafe and portable across machine architectures.
**procedural language** — A language organized around functions rather than objects; C has no objects, methods, or classes.
**typed but unsafe** — C associates types with data but permits casts and other operations that bypass type checking, so type safety is not enforced.
**main / argc / argv** — The program entry point; `argc` is the count of command-line strings and `argv` is an array of pointers to those argument strings.
**exit code (EXIT_SUCCESS / EXIT_FAILURE)** — The integer status a process returns on termination (0/1 conventionally), readable by the parent; C reports errors via integer codes rather than exceptions.
**segmentation fault** — A crash raised when a program accesses memory it may not (e.g. dereferencing NULL); the "good" failure because it stops corruption early.
**primitive types** — C's built-in scalar types (char, int, float, double) plus size/sign modifiers (short, long, signed, unsigned); sizes can vary by platform.
**fixed-width integer types** — C99 `stdint.h` types like `int32_t`/`uint8_t` that guarantee an exact bit width, resolving the ambiguity of how big an `int` or `long` is.

## The C workflow: declarations, functions, parameters

**edit–compile–link–load–execute workflow** — The C build pipeline: edit source (.c/.h), compile+assemble into object files (.o), link with libraries into an executable, load, then execute/debug.
**compiler / assembler** — The compiler translates C source into assembly; the assembler translates assembly into machine code, producing an object file.
**object file (.o)** — A compiled but not-yet-linked machine-code file, one per translation unit.
**declaration vs definition** — A declaration describes a thing defined elsewhere (e.g. a function prototype); a definition is the thing itself (allocates storage / provides the code). Exactly one definition may exist; declarations may appear wherever the thing is used.
**function prototype** — A declaration of a function's name, parameter types, and return type, letting the compiler check calls before the definition appears.
**call-by-value** — C's default: a parameter is a local copy of the argument, so changing the parameter does not affect the caller's variable.
**call-by-reference** — A scheme where the parameter aliases the caller's argument so changes propagate back; C simulates it by passing pointers.
**output parameter** — A pointer parameter through which a function stores results the caller can read (e.g. a "returned" array, or `strtol`'s `endptr`).

## C memory model

**process / address space** — Each running program is a process the OS gives the illusion of its own private virtual memory (address space), up to 2^64 bytes on a 64-bit machine.
**virtual memory** — Per-process memory visible only to that process, mapped to physical memory via page-table translation.
**segments** — The regions of a process's address space: read-only text/rodata (instructions, literals), read/write data (.data/.bss for globals/statics), heap, shared libraries, and stack.
**the stack** — The region holding per-function-call data (stack frames), automatically allocated/freed as functions are entered and returned.
**stack frame** — The block a call pushes on the stack, containing its return address, saved registers, local variables, and spilled arguments.
**the heap** — A large pool of memory for dynamically-allocated data, managed explicitly with malloc/free.
**static/global vs automatic allocation** — Globals and statics live in the data segment (allocated at process start, freed at exit); locals are automatic, allocated on stack entry and freed on return.
**Address Space Layout Randomization (ASLR)** — A Linux security feature that randomizes the base of the stack and shared-library locations to make buffer-overflow attacks harder.
**pointer** — A variable that stores a memory address (a location in the process's virtual address space); modifying the pointer does not modify what it points to.
**address-of (&) and dereference (*)** — `&foo` yields the virtual address of `foo`; the unary `*` accesses the memory a pointer refers to.
**NULL** — A pointer value guaranteed invalid (0x0 on Linux); dereferencing it causes a segfault, making it a safe sentinel for uninitialized or failed pointers.
**array** — A contiguous, fixed-size chunk of `size*sizeof(type)` bytes; arrays have no methods, no bounds checking, and do not know their own length.
**array-to-pointer decay** — An array argument is "promoted" to a pointer to its first element and passed by value, so callees can modify array contents but not the caller's pointer.
**row-major order** — C lays out multi-dimensional arrays as a single contiguous block, row by row.
**string** — In C, a null-terminated (`\0`) array of `char`; strings have no methods, but `string.h` provides utilities (strlen, strcpy, strcmp, ...).

## Dynamic memory management

**dynamic allocation** — Explicitly requesting a memory block at runtime whose size need not be known at compile time and which persists until explicitly freed.
**manual memory management** — The programmer's responsibility in C to explicitly deallocate every dynamically-allocated block; there is no garbage collector.
**malloc()** — Allocates a block of the requested bytes on the heap and returns a pointer to it (NULL on failure); the memory initially contains garbage.
**calloc()** — Like malloc but zero-initializes the block; slightly slower.
**free()** — Deallocates a heap block previously returned by malloc/calloc, making it eligible for reuse; the pointer's bits are unchanged.
**sizeof** — A compile-time operator giving the size in bytes of a type or object, used to compute allocation sizes.
**memory leak** — Failing to free dynamically-allocated memory no longer in use, causing a program's memory footprint to grow and possibly exhaust memory.
**dangling pointer** — A pointer that still refers to memory that has been freed; using it is undefined behavior.
**double free** — Calling free twice on the same block, a form of memory corruption.
**buffer overflow / memory smash** — Writing past the end of an array (e.g. `primes[100]` on a 6-element array), corrupting adjacent memory; a common security bug.
**Valgrind** — A tool used to detect memory errors and leaks (`valgrind --leak-check=full`).
**assert** — A macro that aborts the program if its condition is false; can be disabled by defining `NDEBUG`.

## Structs and modules

**struct** — A C datatype grouping named fields (like a Java class but with no methods or constructors); can be assigned and passed by value, copying all fields.
**field access (. and ->)** — `.` accesses a field of a struct value; `->` accesses a field through a struct pointer (`p->x` is `(*p).x`).
**typedef** — Defines a synonym for an existing type, commonly used to name struct types and to abbreviate long or pointer types.
**void* (generic pointer)** — A raw address pointer with no element type, used with casts to build generic data structures (e.g. a linked list of `void*` payloads).
**linked list** — A structure of nodes each holding a payload and a pointer to the next node, with NULL marking the end.
**module** — A self-contained piece of a program with an externally visible interface (functions, typedefs, globals) and hidden internal details, developable and reusable independently.
**interface** — A module's set of public functions, typedefs, and globals, specified in its header file.
**header file (.h)** — A file whose only purpose is to be `#include`d; it holds the declarations that form a module's interface, never definitions.

## The preprocessor, linking, and the build

**C preprocessor (cpp)** — A stateful text search-and-replace stage that transforms source before compilation, processing `#`-directives; input and output are both C text.
**#include** — A directive replaced by the full post-processed contents of the named header (`<system>` or "programmer-defined").
**#define / macro** — Defines a symbol the preprocessor substitutes textually; function-like macros take arguments (guard with parentheses to avoid precedence bugs).
**conditional compilation** — `#ifdef`/`#ifndef`/`#else`/`#endif` directives that include or exclude code based on defined symbols (e.g. a `TRACE` build).
**header guard** — The `#ifndef NAME_H_ / #define NAME_H_ / #endif` idiom that prevents a header from being included more than once in a translation unit.
**translation unit** — A single .c source file plus everything it `#include`s, compiled together into one object file.
**linker (ld)** — The tool that combines object files and libraries into an executable, resolving symbol references across them.
**symbol resolution / linkage** — The linker matching each use of a global name to its single definition; names have external linkage (shared) or internal linkage (file-local).
**external linkage / extern** — The default for globals and functions, making a name visible to other translation units; `extern` declares a variable defined in another file.
**internal linkage / static** — The `static` specifier at global scope restricts a definition's visibility to its own file, used to "defend" private globals and functions from name collisions.
**library / archive (.a)** — A pre-assembled collection of object files; a static-library archive depends on its `.o` files and is linked with `-L<path> -l<name>`.
**static vs shared libraries** — Static libraries (`.a`, e.g. libZ.a) are linked into the executable at build time; shared libraries (`.so`, e.g. libc.so) are loaded and linked at load/run time.
**loading** — The OS step that creates a process's address space, copies the executable's segments into place, and does final linking/relocation before execution.
**make** — A classic build tool that controls what gets (re)compiled via command scripts plus dependency tracking to avoid unnecessary work.
**Makefile rule (target : sources; command)** — The make input; each rule names a target, its source dependencies, and a TAB-indented command to (re)build the target.
**dependency DAG** — The directed acyclic graph of targets and sources make uses; a target is rebuilt only if it is older than, or missing relative to, some source.
**phony target** — A make target (e.g. `clean`, `all`) whose command produces no file of that name, so it always runs.
**make variables / automatic variables** — Reusable string variables (CC, CFLAGS) and built-ins like `$@` (target), `$^` (all sources), `$<` (first source).

## C standard-library file I/O and buffering

**C standard library (glibc)** — The standard C library on Linux; part are ordinary functions and part wrap POSIX/OS system calls.
**stream** — stdio's abstraction of a sequence of characters flowing to/from a device, buffered by default and manipulated through a `FILE*`.
**stdin / stdout / stderr** — The three default streams every program is given: standard input, output, and error.
**fopen / fclose / fread / fwrite / fprintf / fscanf** — The C stdio functions to open, close, read, write, and format streams.
**buffering** — stdio copies data into an in-process buffer drained on flush, buffer-full, newline (line-buffered console), fclose, or normal exit; batches small I/O for speed but risks data loss on crash.
**fflush / setbuf** — `fflush` forces a stream's buffer out; `setbuf(stream, NULL)` turns buffering off.
**errno / perror** — `errno` is the global variable set to an error code when a call fails; `perror` prints a message plus the human-readable error for `errno`.

## Operating system and POSIX system calls

**operating system** — Trusted software that interacts directly with hardware, manages and protects hardware resources, and abstracts messy devices behind convenient portable abstractions.
**system call** — The mechanism by which a user-level program requests a service from the OS, crossing from unprivileged into privileged mode.
**privileged vs unprivileged mode** — The CPU runs user processes unprivileged and the OS privileged; only privileged code may touch hardware directly, enforcing isolation.
**trap into the kernel** — The hardware transition (via a fast-syscall instruction like SYSENTER) that raises privilege and jumps to a kernel entry point on a system call.
**system-call dispatch table / handler** — The kernel table mapping each system-call number to its handler routine (e.g. #5 → `sys_open`).
**POSIX** — The Portable Operating System Interface: a standardized C-level API of lower-level, unbuffered OS calls common across UNIX systems.
**open / read / write / close / lseek** — The POSIX I/O system calls, lower-level and unbuffered counterparts to the C stdio `f*` functions.
**file descriptor** — A small integer returned by `open` identifying an open file (like a `FILE*` but just an int); 0/1/2 are stdin/stdout/stderr.
**short read / partial read** — `read` may return fewer bytes than requested (0 at EOF, -1 on error), so robust code loops until all bytes are read.
**EINTR** — An error code meaning a system call was interrupted by a signal and should be retried.
**strace** — A Linux utility that prints the sequence of system calls a process makes.

## C++: language, streams, references, const

**C++ as a superset of C** — C is roughly a subset of C++, so C code still compiles, but mixing C and C++ idioms is bad style in ordinary C++ code.
**encapsulation and abstraction** — Hiding implementation details and associating behaviors (methods) with data; supported directly in C++ through classes and objects.
**iostream** — The C++ standard-library header declaring the stream objects; C++ standard headers are included without a `.h` suffix.
**std::cout / std::cin / std::cerr** — Stream object instances in namespace `std`: `cout` (an `ostream`) writes formatted output, `cin` (an `istream`) reads via `>>`, `cerr` is error output.
**<< and >> (insertion/extraction operators)** — Operators overloaded by ostream/istream to write and read formatted data; each returns a reference to the stream, enabling chaining (`cout << a << b`).
**std::endl** — A manipulator that writes a newline to the stream and flushes its buffer.
**std::string** — A standard-library string class (header `<string>`) that hides string implementation and overloads operators such as `+` (concatenation) and `=`.
**namespace** — An explicit named scope for avoiding symbol collisions (e.g. `LL::Iterator` vs `HT::Iterator`); all of the standard library is in namespace `std`.
**std:: / fully qualified name / using** — Namespace members are accessed as `nsp::member` (e.g. `std::cout`); a `using` directive/declaration brings names into scope.
**reference** — An alias (another name) bound to an existing variable at initialization; mutating the reference mutates the aliased variable. Introduced by C++.
**pass-by-reference** — Passing a reference parameter that aliases the caller's argument (`void Swap(int& x, int& y)`), giving true call-by-reference.
**const** — A qualifier meaning a value cannot be mutated; a compile-time signal of intent that produces errors on attempted mutation, used far more in C++ than in C.
**const reference** — A reference parameter marked `const` (e.g. `const int&`), recommended for passing complex objects as read-only input parameters without copying.

## C++: classes, constructors, the heap, operators

**class / object** — A `class` is a user-defined type with member functions and data (definition in a `.h`); an object is an instance of a class.
**member function / method** — A function that is a member of a class, defined inside the class or elsewhere as `retType Class::Method(...)`.
**data member** — A variable belonging to a class (conventionally named with a trailing underscore, e.g. `x_`), typically kept private.
**access modifiers (public / private / protected)** — `public` members are accessible everywhere, `private` only to the class's own members, `protected` to the class and its derived classes.
**const member function** — A member marked `const` after its parameter list, declaring it does not modify the object; only const member functions may be called on a const object.
**this pointer** — A pointer to the object a member function was called on; `return *this;` returns the object itself.
**accessor (getter) / mutator (setter)** — Public member functions that read or modify an object's private data, often defined inline in the header.
**constructor (ctor)** — A member function that initializes a newly-created object; named for the class, with no return type; a class may have several differing by parameters.
**default constructor** — A constructor taking no arguments; needed e.g. to create arrays of objects.
**synthesized special members** — Constructor, copy constructor, and assignment operator the compiler generates only when you declare none; the synthesized copy/assign do a shallow, member-by-member copy.
**member initialization list** — A constructor clause (`Point(...) : x_(x), y_(y) {}`) that initializes fields directly, in declaration order, avoiding a redundant default-construct-then-assign.
**destructor (dtor)** — A member (`~Point()`) invoked automatically when an object is deleted, goes out of scope, or is unwound by an exception; the place to release owned resources.
**new / delete** — C++ heap operators replacing malloc/free; `new` calls the constructor and returns a typed pointer, `delete` calls the destructor. Never mix new/delete with malloc/free.
**new[] / delete[]** — `new type[size]` allocates an array and `delete[]` deallocates it; using plain `delete` on an array is undefined behavior.
**shallow copy** — A member-by-member copy; when a member is a pointer to heap data it copies only the pointer, the bug that motivates user-defined copy/assignment.
**copy constructor (cctor)** — `Point(const Point& other)` that builds a new object as a copy; invoked on initialization from another object, or passing/returning a non-reference object by value.
**assignment operator (operator=)** — The `=` that assigns into an already-constructed object; should guard against self-assignment (`if (this != &rhs)`) and return `*this` for chaining.
**Rule of Three** — If you define any one of the destructor, copy constructor, or assignment operator, you normally should define all three.
**= default / = delete** — C++11 syntax to request the compiler-synthesized special member (`= default`) or to disable one, e.g. deleting the copy constructor to make a type non-copyable.
**operator overloading** — Defining how operators (`+`, `<<`, `=`, `->`, ...) behave for user-defined types, as member or nonmember functions.
**friend function** — A nonmember function/class granted access to a class's non-public members by a `friend` declaration inside the class.
**explicit** — A keyword on a one-argument constructor that disables its use as an implicit conversion path.
**nullptr** — A C++11 typed null-pointer literal (`T*`), preferred over `NULL` because it is not an integer.

## C++ templates, the STL

**template** — A function or class parameterized by a type (or constant value), defined once type-agnostically; C++'s form of parametric polymorphism (generic programming).
**function template / class template** — A template applied to a function (`template <typename T> ...`) or a class (`template <typename T> class Pair`); the compiler infers or is given the type argument.
**template instantiation** — The compiler generates code from a template only where it is used, producing a specialized version per type/value argument (and only for methods actually called).
**STL (Standard Template Library)** — The part of the C++ standard library providing containers, iterators, and algorithms, all built from class templates.
**container** — An object storing a collection of elements; sequence containers (vector, list, deque) and associative containers (map, set, and their multi/unordered variants).
**store by value** — STL containers store copies: inserting copies the object and rearranging (sorting, rehashing) makes more copies.
**vector** — A dynamically resizable, contiguous array: O(1) random access and amortized-constant append, but linear-time insertion/deletion in the middle; grows by reallocating and copying.
**list** — A doubly-linked list: no random access, but constant-time insertion/deletion anywhere, with a member `sort` that relinks rather than copies.
**map / pair** — An associative sorted key/value container (a search tree) with unique keys and O(log n) lookup; its elements are `pair<key,value>` with fields `first` and `second`.
**iterator** — A per-container object used to step through elements over the half-open range `[begin, end)`, where `end` is one past the last element.
**auto / range-based for** — C++11 `auto` infers a variable's type from its initializer; `for (auto& x : container)` iterates a sequence, binding `x` as a reference to each element.
**algorithm** — A function operating on an iterator range (`algorithm(begin, end, ...)`), e.g. sort, find, count, transform; works through element copy/compare operations.

## C++ inheritance and polymorphism

**inheritance** — A parent–child "is-a" relationship where a derived class extends a base class, giving code reuse, polymorphism, and extensibility.
**base class / derived class** — C++ terms for the parent and child in inheritance (Java's superclass and subclass).
**public inheritance** — The usual form (like Java `extends`): non-private base members keep their access in the derived class, but constructors, destructor, copy ctor, and operator= are never inherited.
**overriding** — A derived class redefining an inherited member function while preserving its interface.
**polymorphism** — Providing one interface to entities of different types; a base pointer/reference can refer to a derived object and invoke the right behavior.
**virtual function** — A member function marked `virtual` to request dynamic dispatch; unlike Java (all virtual by default), C++ lets you choose.
**dynamic dispatch** — A run-time decision to invoke the most-derived override for an object's actual type; without `virtual`, the compiler binds the call statically at compile time.
**vtable (virtual function table)** — A per-class table (emitted when a class has any virtual method) of function pointers, one per virtual method, each pointing to the most-derived implementation.
**vptr (virtual table pointer)** — A hidden per-object member pointing to its class's vtable, set by the constructor so a call becomes `p->vtable[i](p, ...)`.
**virtual destructor** — A destructor declared `virtual`; needed because static dispatch of destructors through a base pointer is almost always a bug, so declaring them virtual is a good habit.
**pure virtual function** — A virtual function with no implementation (`virtual ... = 0;`), to be implemented by derived classes (C++'s abstract method).
**abstract class** — A class containing any pure virtual method; it cannot be instantiated and must be extended and overridden to be used.
**object slicing** — Assigning a derived value to a base instance (`b = d`) drops the derived class's extra fields, since the base has no room for them; a hazard when storing objects (not pointers) in STL containers.
**static_cast / dynamic_cast** — C++ casts: `static_cast` is compile-time-checked between related types; `dynamic_cast` also checks at run time and returns nullptr (or throws) on an invalid downcast.
**upcasting / downcasting** — Casting up a hierarchy (base pointer from a derived object) is safe; casting down (derived pointer from a base pointer) is dangerous and is where `dynamic_cast`'s run-time check matters.

## C++ resource management and smart pointers

**RAII (Resource Acquisition Is Initialization)** — The C++ idiom of acquiring a resource (memory, locks, transactions) in a constructor and releasing it in the destructor when the object goes away.
**smart pointer** — A class that behaves like a raw pointer (supports `*`, `->`, `[]`) but automatically manages heap memory, tying the pointed-to object's lifetime to the smart pointer; requires `#include <memory>`.
**std::unique_ptr** — A smart pointer that is the sole owner of a heap object; it is non-copyable (copy ctor and operator= are deleted) and calls `delete` on destruction.
**unique ownership** — The model where exactly one smart pointer owns a resource, enforced by disabling copying.
**move semantics / std::move** — Semantics that transfer a value from one object to another without copying; `std::move(a)` moves ownership out of a `unique_ptr`, leaving the source holding `nullptr`.
**get() / release() / reset()** — `get()` returns the managed raw pointer without giving up ownership; `release()` relinquishes ownership and returns the raw pointer; `reset()` deletes the current pointer and adopts a new one.
**std::shared_ptr** — A smart pointer using reference counting to allow multiple simultaneous owners; copying increments the count and destruction decrements it, deleting the object at zero.
**reference counting** — An ownership strategy tracking how many references share heap data, deallocating it only when the count reaches zero.
**reference cycle** — Two or more `shared_ptr`s that reference each other in a loop, so their counts never reach zero and the objects leak.
**std::weak_ptr** — A non-owning pointer-like object that references a shared object without changing its reference count, used to break reference cycles; `lock()` promotes it to a `shared_ptr` (null if the object is gone), and `expired()` reports whether the object was already deleted.

## Networking

**network programming** — Writing software that moves bytes between systems over a network by packaging data into packets and asking the OS to transport them; done here in C via the sockets API.
**protocol** — A standardized set of rules for the format, meaning, sequencing, and error handling of messages between systems; roughly the network equivalent of an API.
**layering / OSI model** — The software and hardware moving packets is organized into layers (physical, data-link, network, transport, application, ...), each doing part of the work at every hop.
**encapsulation** — Nesting one layer's packet as the payload of the layer below (HTTP inside TCP inside IP inside an Ethernet frame).
**IP (Internet Protocol)** — The network-layer protocol that routes packets across interconnected networks; every host has a unique IP address and routers forward packets hop by hop.
**IP address (IPv4 / IPv6)** — A host's numeric identifier: IPv4 is 32 bits in dotted-decimal (128.95.4.1) and is subject to exhaustion; IPv6 is 128 bits in colon-separated hextets.
**TCP** — Transmission Control Protocol: a transport protocol giving applications a reliable, ordered, congestion-controlled byte stream by sequencing, retransmitting, and reordering IP packets.
**UDP** — User Datagram Protocol: a thin transport layer over IP providing unreliable, unordered, connectionless datagram delivery.
**TCP vs UDP** — TCP is connection-oriented, reliable, and ordered (more cost); UDP is connectionless, unreliable, and thin — suited to streaming media and DNS.
**reliable byte stream** — The abstraction TCP presents: an ordered, gap-free flow of bytes between two endpoints.
**port number** — A 16-bit identifier (0–65535) distinguishing the multiple applications on one host, like an apartment number at a postal address.
**DNS (Domain Name System)** — A hierarchy of name servers and protocol that resolves a domain name (www.google.com) into one or more IP addresses.
**socket** — A file descriptor used for network communication; UNIX makes network I/O look like file I/O, so `read`/`write` on a socket send and receive bytes.
**sockets API (Berkeley/POSIX)** — The standard C network-programming API originating in 4.2BSD: `socket`, `connect`, `bind`, `listen`, `accept`, `read`/`write`, `close`.
**stream vs datagram socket** — A stream socket is connection-oriented, reliable, point-to-point (TCP); a datagram socket is connectionless, unreliable, one-to-many (UDP).
**client/server model** — A pattern where a server receives connections from clients that establish connections to it; stream sockets are typically used this way.
**network byte order (htons/ntohs, htonl/ntohl)** — The big-endian ordering in which addresses and ports travel on the network; helper functions convert integers between host and network byte order.
**struct sockaddr / sockaddr_in / sockaddr_in6 / sockaddr_storage** — Socket address structures: the protocol-independent `sockaddr` (parameter type for socket calls), the IPv4 `sockaddr_in`, the IPv6 `sockaddr_in6`, and `sockaddr_storage`, large enough to hold either.
**getaddrinfo()** — The POSIX call that resolves a hostname and service into a linked list of `addrinfo` results, guided by a hints structure; results are freed with `freeaddrinfo`.
**socket() / connect()** — `socket()` creates a socket and returns a descriptor; the client's `connect()` drives the TCP handshake to a remote address (blocking by default).
**bind() / listen() / accept()** — Server calls: `bind` associates a socket with a local port/address, `listen` marks it a listening socket with a connection backlog, and `accept` pulls a queued client connection and returns a new connected socket.
**listening vs connected socket** — A listening socket only waits for and accepts new connections; `accept` produces a separate connected socket bound to one client, used for the actual `read`/`write` exchange.
**backlog / connection queue** — The queue of pending client connections a listening socket holds; the OS refuses new connections once it is full until the server accepts some.
**blocking call** — A call that does not return until it can proceed (connect, read awaiting data, write on a full buffer, accept awaiting a connection); the default behavior.
**HTTP** — Hypertext Transfer Protocol: an application-layer request/response protocol over TCP in which a client requests a resource and the server returns its bytes or an error.
**HTTP request / method / GET** — A request is `METHOD request-uri HTTP/version` plus headers and an optional body; methods include GET (send me the named resource), POST, HEAD, and others.
**HTTP response / status code** — A response is `HTTP/version status reason` plus headers and an optional body; the 3-digit status code's first digit categorizes it (2xx success, 3xx redirect, 4xx client error, 5xx server error), e.g. 200 OK, 404 Not Found.
**statelessness** — HTTP's basic request/response model keeps no state across connections; modern usage layers sessions (e.g. cookies) on top.

## Concurrency, processes, and threads

**concurrency** — Working on multiple tasks with overlapping execution times so that while one waits on I/O another can run, improving CPU/network/disk utilization.
**parallelism** — Executing multiple instructions simultaneously (e.g. on multiple cores); distinct from concurrency, which only requires overlapping execution.
**sequential execution** — Processing one task fully before the next; simple but performs poorly because clients queue and the CPU idles while blocked on I/O.
**I/O latency / hiding latency** — The delay of I/O (especially disk); hiding it by doing other work while one task blocks is a main motivation for concurrency.
**context switch** — The OS switching execution between workers (threads or processes) so a blocked one yields the CPU; processes incur high switch cost, threads less.
**process** — An OS container holding a program's address space, open resources (file descriptors), and execution state (registers, stack), isolated from other processes.
**process isolation** — Separate address spaces, privilege levels, and fault containment that protect processes from each other and the kernel from user processes.
**fork()** — Creates a child process that is a near-exact clone of the parent with its own copy of the address space; both return from the call — the parent gets the child's pid, the child gets 0.
**exec** — A call a forked child uses to replace itself with a new program (a shell forks then execs the requested program).
**wait() / waitpid()** — Calls a parent uses to wait for and reap a terminated child and collect its exit status; the process analog of `pthread_join`.
**zombie process / reaping** — A terminated process whose resources linger until reaped; reaping is done by the parent's `wait`/`waitpid`, or by init if the parent has exited.
**thread** — An independent sequential execution stream within a process, with its own stack, stack pointer, program counter, and registers, but sharing the process's address space.
**shared address space** — Threads in a process see the same heap, globals, and code and communicate through shared memory (each still has its own stack).
**POSIX threads (pthreads)** — The POSIX threading API in `pthread.h` (not part of C/C++), requiring the `-pthread` flag; `pthread_create` starts a thread, `pthread_join` waits for and collects its result, `pthread_detach` lets it self-clean.
**thread vs process tradeoffs** — Processes are isolated and need no language support but are heavyweight; threads are far cheaper to create, share memory easily, and read sequentially, but require synchronization and share fate (one rogue thread can crash the process).
**data race** — Two accesses by different threads to the same location where at least one is a write, so the result varies with timing.
**race condition** — An outcome that depends on the timing/interleaving of concurrent threads, potentially reading stale or intermediate values or corrupting a data structure.
**synchronization** — Coordinating concurrent threads so they do not interfere when operating on shared data.
**critical section** — A region operating on shared data that only one thread may execute at a time, atomically and uninterruptibly.
**atomic** — Executed as an indivisible, uninterruptible unit; a lock makes its critical section run atomically.
**lock / mutex** — A synchronization primitive granting one thread at a time access to a critical section; pthreads provides `pthread_mutex_t` with `_lock`/`_unlock` for mutual exclusion.
**lock contention** — Overhead threads incur competing for the same lock; a reason locked code can be slower than sequential, since only one thread proceeds at a time.
**deadlock** — A situation where threads wait on one another such that none can proceed; a hazard of blocking calls and lock ordering.
**thread pool** — A fixed set of worker threads created at startup that pull tasks from a shared, lock-guarded queue, avoiding per-request thread/process creation cost.
**concurrent server architectures** — Designs for serving many clients at once: process-per-client (fork per connection), thread-per-client (pthread_create per connection), and event-driven (a single event loop).
**non-blocking / asynchronous I/O** — I/O modes where `read`/`write` return immediately rather than blocking; the program asks the OS which descriptors are ready, or registers interest and is notified by an event.
**event-driven programming** — Structuring a program as an event loop (get next event → dispatch to a handler); avoids locks and races but splits sequential logic into many small handlers that must carry task state.
**inter-process communication (IPC)** — Mechanisms by which isolated processes communicate despite sharing no memory: pipes, sockets, shared memory, lockfiles, and RPC.
**kernel** — Code with complete control over hardware and software, responsible for device drivers, process scheduling, memory management, and shared-resource management.
