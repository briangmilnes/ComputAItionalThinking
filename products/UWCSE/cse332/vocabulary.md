# CSE 332 — Data Structures and Parallelism · Vocabulary

Source: UW CSE 332 "Data Structures and Parallelism." Offering used: **Autumn 2024 (24au)**, the most recent complete slide set (28 lectures) — the Summer 2026 (26su) calendar had only lectures 1, 2, 3, and 5 posted at fetch time, and their content matches the 24au slides. Calendar: https://courses.cs.washington.edu/courses/cse332/26su/calendar.html · Homepage: https://courses.cs.washington.edu/courses/cse332/26su/ · 24au slides: https://courses.cs.washington.edu/courses/cse332/24au/schedule.html

## Foundations: ADTs, Stacks, Queues

**Abstract Data Type (ADT)** — A mathematical description of a "thing" together with the set of operations defined on it, independent of any implementation.
**Algorithm** — A high-level, language-independent description of a step-by-step process for solving a problem.
**Data structure** — An organization of data plus the family of algorithms that implement an ADT over it.
**Implementation** — The data organization and algorithms written out in an actual programming language.
**Queue ADT** — A First-In-First-Out (FIFO) collection with operations enqueue (add an item), dequeue (remove the oldest item), and isEmpty.
**Stack ADT** — A Last-In-First-Out (LIFO) collection with operations push (add an item), pop (remove and return the most recently pushed item), peek (return it without removing), and isEmpty.
**Linked list** — A representation of a queue/list as a chain of nodes, each referencing the next, with front/back references to the oldest and newest items.
**Circular array** — An array-backed queue where indices wrap modulo the array length (back = (back+1) % length), reusing freed front slots; resizes when full.

## Algorithm Analysis

**Resource analysis** — Measuring an algorithm (not an implementation) by a function mapping input size to a count of resources used (operations, comparisons, bytes), so algorithms can be compared and predicted before coding.
**Primitive operation** — A basic counted step (+, −, comparison, array index, .length) whose occurrences are summed as an expression in the input size n.
**Worst-case complexity** — The maximum number of steps the algorithm takes over all inputs of size n (the "most challenging" input).
**Best-case complexity** — The minimum number of steps the algorithm takes over all inputs of size n (the "easiest" input).
**Average/expected complexity** — The average number of steps over random inputs of size n (context-dependent).
**Amortized complexity** — The maximum total number of steps over M consecutive most-challenging inputs, divided by M — spreading occasional expensive operations across many cheap ones (e.g. ArrayList add with doubling resize is amortized O(1)).
**Big-O — O(g(n))** — The set of functions asymptotically ≤ g(n): f ∈ O(g) iff ∃c>0, n₀>0 such that ∀n≥n₀, f(n) ≤ c·g(n); an asymptotic upper bound.
**Big-Omega — Ω(g(n))** — The set of functions asymptotically ≥ g(n): f ∈ Ω(g) iff ∃c>0, n₀>0 such that ∀n≥n₀, f(n) ≥ c·g(n); an asymptotic lower bound.
**Big-Theta — Θ(g(n))** — A tight bound, Ω(g) ∩ O(g): f is within a constant factor of g both above and below for large n.
**Asymptotic complexity categories** — The standard growth classes: O(1) constant, O(log n) logarithmic, O(n) linear, O(n log n) log-linear, O(n²) quadratic, O(n³) cubic, O(nᵏ) polynomial, O(kⁿ) exponential.
**Binary search** — Search of a sorted list that repeatedly examines the middle element and discards the half that cannot contain the key, halving the interval each step for Θ(log n) time.
**Recurrence relation** — An equation defining an algorithm's running time in terms of the time on smaller inputs plus non-recursive work, e.g. T(n) = a·T(n/b) + f(n) with a base case such as T(1) = 1.
**Divide and conquer** — Recursion of the form T(n) = a·T(n/b) + f(n): split the input into a subproblems each of size n/b, solve recursively, and combine.
**Chip and conquer** — Recursion of the form T(n) = T(n−c) + f(n): each call shrinks the input by a constant amount.
**Tree method** — Solving a recurrence by drawing the recursion as a tree, computing the work done per level, and summing the work across all levels.
**Finite geometric series** — The closed form for Σ aⁱ (i=0..L) = (aᴸ⁺¹−1)/(a−1), used to sum the per-level work the tree method produces.

## Priority Queues and Heaps

**Priority Queue ADT** — A collection giving quick access to and removal of the top-priority item, with insert(item, priority), deleteMin/extract (remove and return the smallest-priority item), and isEmpty; smaller priority value usually means more important.
**Complete tree** — A binary tree in which every level is full except possibly the bottom, which is filled left-to-right; guarantees height Θ(log n).
**Binary heap** — A priority queue kept in a complete binary tree that maintains the heap property, giving Θ(log n) worst-case insert and deleteMin.
**Heap property** — The ordering invariant: in a min heap every node's priority ≤ its children's (min at the root); in a max heap every node's priority ≥ its children's (max at the root).
**Percolate up** — Restoring the heap property after insert by repeatedly swapping a node with its parent until it is correctly ordered; Θ(log n).
**Percolate down** — Restoring the heap property after deleteMin by repeatedly swapping a node with its smaller (min heap) child until correctly ordered; Θ(log n).
**Array representation of a heap** — Storing a complete tree in an array using 1-based indexing so node i has parent i/2, left child 2i, right child 2i+1 — no explicit node links needed.
**decreaseKey / increaseKey** — Lowering (or raising) the priority of an item at a known index, then percolating up or down to restore the heap property.
**buildHeap (Floyd's method)** — Turning an arbitrary array into a valid heap by calling percolateDown on each node from the last internal node up to the root, in Θ(n) total (not Θ(n log n)).

## Dictionaries and Balanced Search Trees

**Dictionary (Map) ADT** — A collection of key/value pairs with comparable, non-repeatable keys, supporting insert(key, value) (overwriting an existing key), find(key), and delete(key).
**Binary Search Tree (BST)** — A binary tree obeying the order property: every key in a node's left subtree is smaller and every key in its right subtree is larger than the node's key.
**BST order property** — The invariant that all left-subtree keys are smaller and all right-subtree keys are larger than a node, letting find/insert descend by comparison.
**BST delete (three cases)** — Removing a node that has 0 children (remove it), 1 child (splice the child in), or 2 children (replace it with the max of its left subtree or the min of its right subtree).
**Tree traversal** — Systematically visiting every node: pre-order (Root, Left, Right), in-order (Left, Root, Right — yields sorted order in a BST), and post-order (Left, Right, Root).
**AVL tree** — A BST that keeps every node's left and right subtree heights differing by at most one, guaranteeing Θ(log n) height and thus Θ(log n) find/insert/delete.
**Balance condition** — The AVL invariant (|height(left) − height(right)| ≤ 1 at every node); each node stores its height to detect violations.
**Rotation** — A local restructuring (left or right) that rebalances an AVL subtree after an insert/delete while preserving the BST order property.
**AVL rebalance cases (LL, RR, LR, RL)** — The four imbalance patterns: LL/RR are fixed by a single rotation, LR/RL by a double rotation (rotate the child, then the unbalanced node).
**Red-black tree** — A BST variant with more relaxed shape rules than AVL: it can be somewhat taller but moves nodes less often; used by Java's TreeMap.
**Trie** — A tree-based dictionary keyed on sequences (e.g. strings) that merges shared prefixes to save space; used for text/web search and genomes.

## Hashing

**Hash table** — A dictionary using a fixed-size array plus a hash function to map keys to indices, giving average-case Θ(1) insert/find/delete (worst case Θ(n)).
**Hash function** — A function h(k) mapping a key to an integer (reduced mod table length to an index); should be fast, scatter keys uniformly, use the whole table, and use only fields also used by .equals.
**Collision** — When two distinct keys hash to the same table index.
**Separate chaining** — Collision resolution that stores a secondary structure (e.g. a linked list) at each index and searches within it.
**Load factor (λ)** — The average items per bucket, λ = n / table-length; drives expected chain lengths and probe counts.
**Open addressing** — Collision resolution that places a colliding item elsewhere in the table itself via a probe sequence.
**Linear probing** — Open addressing that tries i+1, i+2, i+3, … (mod length) until an open cell is found; simple but prone to clustering.
**Primary clustering** — The self-reinforcing feedback in linear probing where contiguous occupied blocks grow (each collision extends a block, and larger blocks cause more collisions) as λ approaches 1.
**Quadratic probing** — Open addressing that tries i+1², i+2², i+3², … (mod length); with a prime size and λ < ½ it finds a slot within length/2 probes, avoiding primary clustering.
**Double hashing** — Open addressing using a second hash function g, probing i, i+g(k), i+2g(k), … (mod length).
**Tombstone deletion** — Marking a removed open-addressing slot with a sentinel that does not stop a find's probe chain but can be overwritten by a later insert.
**Rehashing** — When λ grows too large, allocating a larger (still prime) array and re-inserting all items under the hash function so they land at new indices.

## Sorting

**Sorting problem** — Given an array and a comparison function, produce a permutation of the array such that i ≤ j implies A[i] ≤ A[j].
**Comparison function** — A function that, for two items x and y, reports x < y, x = y, or x > y; the only information a comparison sort may use.
**Selection sort** — Repeatedly find the next-smallest element and swap it into place, growing a sorted prefix; Θ(n²) best and worst case; in place.
**Insertion sort** — Maintain a sorted prefix and insert each next element leftward into position; Θ(n²) worst, Θ(n) best; in place, stable, adaptive, and online.
**Heap sort** — Build a max heap, then repeatedly deleteMax and place each removed maximum at the shrinking end of the array; Θ(n log n).
**In-place sort** — A sort that uses only Θ(1) extra space by swapping within the given array (selection, insertion, in-place heap sort).
**Stable sort** — A sort that preserves the original relative order of equal ("tied") elements; merge sort is stable.
**Adaptive / online** — Adaptive: faster (toward linear) as the input is closer to sorted; online: can start before the whole input is available; insertion sort is both.
**Merge sort** — Divide-and-conquer sort: split into two halves, sort each recursively, and merge the sorted halves; T(n)=2T(n/2)+n = Θ(n log n); stable but not in place.
**Merge** — The combine step of merge sort that walks two sorted sublists with front pointers, repeatedly emitting the smaller front element into the output.
**Quicksort** — Divide-and-conquer sort that picks a pivot, partitions elements around it, and recursively sorts each side (no combine step); Θ(n log n) average, Θ(n²) worst, typically fast in practice.
**Pivot** — The element quicksort partitions around; an even split (ideally the median) gives the best behavior.
**Partition** — Quicksort's O(n) rearrangement putting all elements less than the pivot on its left and all greater on its right.
**Median-of-three** — Practical pivot choice: take the median of three sampled values to avoid quicksort's worst case cheaply.
**Comparison-sort lower bound Ω(n log n)** — No comparison-based sort can beat Θ(n log n) in the worst case, proved via the decision-tree height and log(n!) = Θ(n log n).
**Decision tree** — A tree modeling a comparison sort where each internal node is a comparison and each of the n! leaves is a possible permutation; its height is the worst-case comparison count.
**Bucket / counting sort** — For integers in a known range 0..k−1, index each value into one of k buckets and read the buckets out in order; Θ(n + k); stable, not in place, not adaptive.
**Radix sort** — Non-comparison sort that bucket-sorts by one digit at a time from least to most significant digit (radix b); Θ(digits · (n + b)).

## Graphs

**Graph** — A structure G = (V, E) of vertices/nodes V connected by edges E, which may be directed or undirected, weighted or unweighted.
**Directed vs. undirected graph** — In a directed graph edges have a direction from one vertex to another; in an undirected graph an edge connects a pair symmetrically.
**Weighted graph** — A graph in which each edge e carries a numeric weight w(e).
**Degree / indegree / outdegree** — The number of edges touching a vertex; for directed graphs, the counts of incoming and outgoing edges respectively.
**Simple graph** — A graph with no self-edges (an edge from a vertex to itself) and no duplicate edges between the same pair.
**Path / simple path / cycle** — A path is a sequence of vertices with each consecutive pair an edge; a simple path repeats no vertex; a cycle is a path that returns to its start.
**Connected graph** — A graph in which there is a path between every pair of vertices (weakly connected if this holds only when directed-edge directions are ignored).
**Dense vs. sparse graph** — Dense: |E| ∈ Θ(|V|²) (near the maximum edge count); sparse: |E| ∈ Θ(|V|).
**Directed acyclic graph (DAG)** — A directed graph with no cycles; the required input for a topological sort and the structure used to depict dependencies.
**Adjacency list** — A representation storing, per vertex, a list of its neighbors; Θ(|V|+|E|) space, with edge operations linear in a vertex's degree.
**Adjacency matrix** — An |V|×|V| matrix whose (v,w) entry records whether (or with what weight) edge (v,w) exists; Θ(|V|²) space, O(1) edge lookup, Θ(|V|) to list a vertex's neighbors.
**Breadth-first search (BFS)** — A traversal that visits vertices in increasing distance (layers) from a start vertex using a queue; Θ(|V|+|E|); finds unweighted shortest-path distances.
**Depth-first search (DFS)** — A traversal that fully explores one neighbor's subtree before the next, using a stack or recursion; Θ(|V|+|E|); its back edges reveal cycles.
**Edge classification (tree/back/forward/cross)** — DFS labels each edge as a tree edge (to an unvisited node), back edge (to an ancestor — indicates a cycle), forward edge (to a finished descendant), or cross edge (to a node finished before this one started).
**Topological sort** — An ordering of a DAG's vertices such that every edge (u,v) has u before v; computed by listing vertices in reverse DFS-finish order.
**Single-source shortest path** — Given a start vertex s, find for every vertex v the least-weight path from s to v, denoted δ(s,v).
**Dijkstra's algorithm** — Single-source shortest-path algorithm for non-negative edge weights: repeatedly extract from a priority queue the nearest not-yet-finalized vertex, mark it done, and relax (decreaseKey) its neighbors; Θ(|E| log |V|).
**Relaxation / decreaseKey** — Lowering a vertex's recorded best distance (and its priority-queue key) when a shorter path to it is discovered.
**Negative-weight edge** — An edge with negative weight, which breaks Dijkstra's correctness because a later path through an unfinalized vertex could beat an already-finalized distance.

## Spanning Trees and Disjoint Sets

**Spanning tree** — A tree that connects (spans) all of a graph's vertices using exactly |V|−1 acyclic edges.
**Minimum spanning tree (MST)** — A spanning tree of minimum total edge weight, minimizing Σ w(e) over the tree's edges.
**Cut** — A partition of the vertices into two sets S and V−S; an edge "crosses" the cut if its endpoints lie on opposite sides.
**Cut theorem** — If edge set A is part of some MST and (S, V−S) is a cut that A does not cross, then adding the least-weight edge crossing that cut keeps A part of an MST — the correctness basis for both MST algorithms.
**Prim's algorithm** — Grows an MST from a start vertex, repeatedly adding the minimum-weight edge from the tree to a vertex outside it; O(|E| log |V|) with a heap.
**Kruskal's algorithm** — Builds an MST by repeatedly adding the globally lowest-weight edge that does not create a cycle; O(|E| log |V|).
**Disjoint-set (union-find)** — The data structure Kruskal's uses to track connected components and test in near-constant time whether adding an edge would form a cycle (i.e. whether two vertices are already in the same set).

## Parallelism

**Parallelism vs. concurrency** — Parallelism uses many threads at once to finish one task sooner; concurrency is the correct management of shared resources among possibly-simultaneous tasks.
**Thread** — An independent line of execution with its own program counter, call stack, and local variables, but sharing a common heap of objects and static fields.
**fork / join** — Fork schedules a subtask to run in parallel; join blocks until that subtask finishes and (in ForkJoin) returns its computed result, preventing a race on unfinished results.
**Sequential cutoff** — A problem-size threshold below which a divide-and-conquer parallel algorithm switches to sequential work, since splitting tiny inputs costs more than it saves.
**ForkJoin framework** — A standard library implementing divide-and-conquer parallelism (RecursiveTask returns a value, RecursiveAction does side effects; a ForkJoinPool runs top-level tasks via invoke) so raw threads need not be managed.
**Map** — Applying an operation to each element of an array independently to produce a new same-size array (embarrassingly parallel).
**Reduction (reduce/fold)** — Combining all elements of an array into a single result using an associative operator, so subresults can be merged in any grouping in parallel.
**Associativity** — The operator property (x+y)+z = x+(y+z) that a reduction requires so partial results computed by different threads can be combined.
**Pack (filter)** — Producing a new array of only the elements for which a Boolean test is true; parallelized via a map of flags, a prefix sum to compute output positions, then a placing map.
**Prefix sum (scan)** — Computing an output array whose index i holds the sum of all input values up to i; done in parallel by a two-pass tree algorithm (build partial sums up, then push leftSums down).
**Work — T₁(n)** — The total running time on a single processor (all forks done sequentially); the cumulative work all processors must perform.
**Span — T∞(n)** — The running time on infinitely many processors: the longest chain of dependent steps, also called the critical path length or computation depth.
**Work law / span law** — P·T_P ≥ T₁ (P processors do at most P things at once, so parallel time can't beat total work over P) and T_P ≥ T∞ (finitely many processors can't beat infinitely many).
**Speedup** — T₁ / T_P, how much faster P processors run than one; perfect linear speedup is T_P = T₁/P.
**Parallelism (max speedup)** — T₁ / T∞, the greatest possible speedup; beyond it, added processors do not help, and its value is set by the span.
**Amdahl's Law** — With sequential fraction S, speedup is 1 / (S + (1−S)/P), so overall parallelism is bounded by 1/S — the non-parallelizable part becomes the bottleneck.

## Concurrency

**Synchronization** — Blocking other threads from a shared resource while one thread reads or modifies it, then freeing it, so shared state stays correct.
**Interleaving** — The unpredictable order in which two threads' operations execute; time slicing can interrupt a thread between or even within lines, outside the programmer's control.
**Race condition** — A defect where the result depends on thread scheduling/interleaving; a correct program must produce the right answer regardless of scheduling.
**Data race** — Two threads writing the same variable in parallel, or one reading while another writes it.
**Bad interleaving** — A race condition (other than a data race) that exposes a "bad" intermediate state — e.g. one thread using a stale index while another resizes a structure.
**Critical section** — A region of code that must run under mutual exclusion so only one thread executes it at a time.
**Mutual exclusion** — The guarantee that while one thread uses a resource, all others must wait.
**Lock (mutex)** — A mutual-exclusion ADT with acquire (atomically take the lock or block until free) and release (free it); used to bracket critical sections.
**Re-entrant (recursive) lock** — A lock that records its holding thread and a count, letting that thread re-acquire without blocking (incrementing the count) and freeing only when the count returns to 0; Java's ReentrantLock and synchronized blocks work this way.
**Atomicity** — The property of an operation appearing to happen as one indivisible step, never exposing an intermediate state; ADT operations are usually made atomic.
**Consistent locking** — Always holding the same designated lock whenever reading or writing a given location; one lock may guard several fields, and the mapping must be documented and followed.
**Lock granularity** — The trade-off between coarse-grained locking (one lock guarding much, simpler but less parallel) and fine-grained locking (many small locks, more parallel but harder to get right).
**Deadlock** — A cycle of blocked threads, each waiting on a resource held by the next, so none can ever proceed.
**Thread-safe** — A property of data structures (e.g. Java's ConcurrentHashMap) built to be used correctly from multiple threads without external synchronization.

## Computational Complexity: P vs NP

**Tractable vs. intractable** — Tractable problems are feasibly solvable in the real world (often polynomial time); intractable ones are not.
**Complexity class** — A set of problems whose most efficient algorithm shares a bound on running time (or memory).
**Polynomial time** — Running time O(nᵖ) for some constant p; the standard bar for an efficient algorithm.
**Exponential time** — Running time O(2^(nᵖ)); the regime of brute-force approaches such as listing all permutations.
**Class P** — "Polynomial": problems solvable by an algorithm running in O(nᵖ) time; considered the tractable problems.
**Class EXP** — "Exponential": problems solvable in O(2^(nᵖ)) time; P ⊂ EXP, and EXP−P problems are intractable.
**Verifier** — An algorithm that checks whether a candidate solution is correct; a problem can be easy to verify even when it is hard to solve.
**Class NP** — "Nondeterministic Polynomial": problems whose candidate solutions can be verified in polynomial time (equivalently, guessed and checked in polynomial time); P ⊆ NP ⊆ EXP.
**Reduction** — Solving problem A by transforming its input into an instance of problem B, running B's algorithm, and translating the answer back — showing how the two problems' difficulty relates.
**NP-Hard** — A problem to which every NP problem reduces in polynomial time; solving any NP-Hard problem in polynomial time would solve all of NP.
**NP-Complete** — A problem that is both in NP and NP-Hard (NP ∩ NP-Hard); either all are in P or none are, so P = NP iff any one NP-Complete problem is in P.
**P vs NP** — The open question of whether P = NP — equivalently whether any NP-Complete problem lies in P — carrying a $1M prize.
**SAT (satisfiability)** — Deciding whether a Boolean formula in conjunctive normal form (an AND of OR-clauses) has a true/false assignment making it true; k-SAT restricts each clause to k variables and 2-SAT is polynomial-time solvable.
**One-way function** — A function computable in polynomial time whose inverse requires exponential time; its inverse is in NP because a candidate can be checked by applying the function forward. The basis of public-key cryptography.
**Impagliazzo's Five Worlds** — Five hypothetical worlds (Algorithmica, Heuristica, Pessiland, Minicrypt, Cryptomania) describing what computation and cryptography look like depending on how P vs NP and the existence of one-way / public-key functions resolve.
