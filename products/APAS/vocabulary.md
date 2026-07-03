# APAS — Algorithms: Parallel and Sequential — Vocabulary
A glossary of 719 distinct terms, algorithm/problem/ADT specifications, and defined concepts drawn from *Algorithms: Parallel and Sequential* by Umut A. Acar and Guy E. Blelloch (CMU 15-210).

**2D Points** — points2D n = flatten(tabulate (λx. tabulate (λy.(x,y+1)) (n−1)) n), equivalently the multivariate comprehension ⟨(x,y) : 1 ≤ y < n, 0 ≤ x < n⟩ (which hides a flatten).
**abstract data type (ADT)** — an interface consisting of a collection of functions (and possibly values) on a given abstract type, specified without reference to its implementation.
**adjacency list representation** — the classic sequential graph representation obtained by using lists for the inner out-neighbor sequences of an adjacency-sequence graph; poorly suited to parallel algorithms since traversing a vertex's list takes span proportional to its degree.
**Adjacency Matrix** — for an enumerable dense graph G=(bool seq) seq with an n×n boolean matrix true at (i,j) iff (i,j)∈E: edge membership Θ(1), map over vertices/neighbors/degree Θ(n), map over edges Θ(n²), with Θ(1) spans except degree Θ(log n).
**Adjacency Sequence** — for G=(int seq) seq with an array-sequence model: map over vertices Θ(n), over edges Θ(n+m), over neighbors Θ(d_G(v)), degree Θ(1), edge membership Θ(d_G(u)), vertex/edge insert/delete Θ(n), spans Θ(1) except membership Θ(log d_G(u)).
**Adjacency Sequences for Enumerable Graphs** — for enumerable graphs with V={0,…,n−1}, a representation G = (int seq) seq where the outer sequence has length n and each inner sequence holds a vertex's out-neighbors, giving Θ(1) access to the ith vertex.
**Adjacency Table Representation** — a graph representation G = (V × (V set)) table mapping each vertex to the set of its out-neighbors, giving Θ(log n) edge operations and efficient local access to a vertex's out-neighbors.
**Adjacency Tables** — for G=(V×(V set)) table with tree-based sets/tables: map over vertices Θ(n), over edges Θ(m), over a vertex's neighbors Θ(log n + d_G(v)) work, degree/membership/insert/delete Θ(log n), all Θ(log n) span.
**aggregate operations** — bulk operations such as union, intersection, set-difference, filter, map, and reduce that act on whole collections and can be implemented in parallel.
**algorithm** — An implementation, written in some formal or semi-formal language, that solves an algorithms problem.
**algorithm analysis** — The mathematical analysis of algorithms to determine their consumption of resources such as work, energy, execution time, and memory.
**algorithm specification** — A description of what is expected of an algorithm (what it should do) without specifying how it is achieved.
**Algorithmic Problem** — A problem that requires designing an algorithm satisfying a given algorithm specification and cost specification (if any).
**algorithmic reduction** — a technique in which a problem A is solved by transforming an instance of A into one or more instances of another problem B, solving those, and combining their results to compute A's answer; efficient if the transformation costs are asymptotically the same as B.
**All-Pairs Shortest Paths** — given a weighted graph, find the shortest paths between all pairs of vertices.
**almost balanced** — A tree whose rank is logarithmic in its size, so all leaves lie within order log of the size.
**ancestor and descendant** — For a path from u to v in a rooted tree, u is an ancestor of v and v is a descendant of u.
**append** — append(a,b), written a ++ b, returns the sequence b appended after a, i.e. a ∪ {(i+|a|, x) : (i,x) ∈ b}.
**append (array implementation)** — implemented via flatten (append a b = flatten ⟨a,b⟩) or via tabulate over a select helper of length |a|+|b|.
**approximation algorithm** — An algorithm that produces a solution provably within a factor (e.g. 1+ε) of the optimal, used when exact solutions are intractable.
**Array Sequences (cost specification)** — array-based costs: length, nth, empty, singleton, isEmpty, isSingleton, subseq all Θ(1) work and span; append/flatten/update/inject/ninject linear work (append constant span, update/ninject constant span, inject O(lg degree) span); tabulate/map/filter work = Σ work of f (span = max span of f, filter +lg|a|); collect = sort cost; iterate/reduce/scan by trace.
**Arrays for Enumerable Sets (cost specification)** — for a universe {0,…,u−1}, representing a subset as a length-u Boolean array sequence, giving O(u) work for size, singleton, the bulk operations, insert, and delete, and O(1) span, with find in O(1) work.
**associative function** — a function f : α×α → α is associative if f(f(x,y),z) = f(x,f(y,z)) for all x, y, z ∈ α; this fixes the value of a reduction independent of grouping (but not of argument order).
**asymptotic analysis** — A technique for comparing algorithms by the growth rate of their cost functions as input sizes approach infinity, ignoring constant factors and lower-order terms.
**Asymptotic dominance** — f asymptotically dominates g if there exist constants c > 0 and n₀ > 0 such that g(n) ≤ c·f(n) for all n ≥ n₀ (equivalently lim_{n→∞} g(n)/f(n) ≤ c); f then grows at least as fast as g.
**atomic read-modify-write** — An instruction that atomically reads a memory location, computes a value from it, and writes it back, sufficient to implement complex concurrent operations on shared data.
**atomic read-modify-write operations** — Hardware operations that read and update a memory location as one indivisible step, used to make single-threaded sequences safe under parallelism.
**augmentation** — storing additional information in each BST node, such as subtree sizes or aggregate reduced values.
**augmenting a BST** — storing additional information in each node beyond children and key, such as subtree size or an aggregate (reduced) value of the subtree, updated whenever a node is created.
**avalanche effect** — the property (of SHA functions) that a small change to the input contents produces a large change in the hash code.
**average parallelism** — the ratio of work to span, P = W/S, indicating approximately how many processors can be used efficiently.
**AVL tree** — the earliest nearly balanced BST (1962), maintaining the invariant that the two children of each node differ in height by at most one.
**back edge** — a non-tree edge (u,v) where v is an ancestor of u in the DFS tree.
**Back Edges Imply Cycles** — a directed graph has a cycle if and only if a DFSAll on it has a back edge.
**balanced (recurrence)** — a recurrence that is neither root nor leaf dominated, so its total cost is bounded by the number of levels times the maximum per-level cost.
**beam search** — a form of priority-first search that selects the top k highest-priority frontier vertices on each round.
**Bellman Ford Algorithm** — computes shortest paths under possibly negative weights by relaxing all edges each round until distances converge, returning Some D on convergence or None (negative-weight cycle) after |V| iterations.
**Bellman-Ford's algorithm** — a parallel SSSP algorithm that handles arbitrary edge weights by iteratively computing k-hop shortest distances, detecting a negative-weight cycle if distances fail to converge within |V| iterations.
**benign effects** — internal mutable/impure operations used by a data structure's implementation that are not externally visible, letting the structure behave purely functionally while achieving better costs.
**Bernoulli random variable** — the indicator random variable that is 1 when a coin comes up heads (probability p) and 0 when tails (probability 1 − p).
**Bernoulli trials** — A sequence of independent coin tosses each succeeding (heads) with probability p.
**best-first search** — the artificial-intelligence name for priority-first search, where nodes represent states or candidate solutions ranked by an application-specific heuristic.
**bestAcross** — The helper in divide-and-conquer MCSS that finds the largest contiguous subsequence spanning the cut, equal to the best left suffix plus the best right prefix.
**Beta Reduction** — For an application whose left expression is a lambda abstraction, (λ x . e₁) e₂ → e₁[x/e₂], substituting e₂ for every free occurrence of x in e₁.
**BFS Tree Gives Shortest Paths** — the reversed path from any vertex v to the source s in a BFS graph-search tree is a shortest path from s to v in G.
**BFS Tree with Sequences** — a variant of BFS on enumerable graphs that returns the shortest-path tree as a sequence mapping each vertex to its parent (source points to itself, unvisited vertices are None), running in O(n + m) work and O(d lg n) span.
**big-O** — O(f) is the set of functions g such that f asymptotically dominates g; f is an upper bound for g.
**big-Omega** — Ω(f) is the set of functions g such that g asymptotically dominates f; f is a lower bound for g.
**big-Theta** — Θ(f) = O(f) ∩ Ω(f) is the set of functions g for which f is a tight bound.
**binary heap** — a heap kept as a complete binary tree satisfying the shape property and the heap property, representable in a sequence with left child 2i+1, right child 2i+2, parent ⌈i/2⌉−1, giving O(log n) insert and deleteMin.
**Binary Search Tree (BST)** — for a set S from a total order under <, a full binary tree with a one-to-one mapping from internal nodes to elements of S whose in-order traversal is sorted; equivalently every internal node (L,k,R) satisfies L < k < R.
**Binomial random variable** — the number of heads X in n Bernoulli trials with probability p, with PX(x) = C(n,x) pˣ (1−p)^{n−x}.
**birthday paradox** — the counting fact that only about √((π/2)·m) keys are needed before a collision is expected when hashing to a range of size m (23 people give a 50% chance of a shared birthday).
**block (part)** — each subgraph Hᵢ of a graph partition.
**blocking lock** — A synchronization mechanism (also called a mutex) that lets a thread block and wait until another thread exits the critical section, then proceed on a signal.
**Boruvka** — while edges remain: select the minimum-weight edge out of each vertex and contract each part they define, remove self-edges keeping the minimum-weight redundant edge, and add all selected edges to the MST.
**Boruvka's algorithm** — a parallel MST algorithm that repeatedly selects the minimum-weight (bridge) edge out of every vertex, inserts them all into the MST at once, and contracts the graph until a single vertex remains.
**Boruvka's based on Star Contraction** — an MST algorithm where vertexBridges maps each vertex to its minimum incident edge (resolving collisions in favor of the lighter edge) and bridgeStarPartition star-contracts along bridges, with edges typed (vertex × vertex × weight × label) so the MST is returned as a set of fixed edge labels.
**Bottom up MED** — a bottom-up MED implementation that pebbles the DAG diagonally, storing each vertex's result in a 2D array M indexed by (i,j) for constant-work random access, processing diagonals of growing then shrinking size.
**bottom-up approach** — a dynamic-programming implementation that starts at the leaves of the DAG and processes it in level order (e.g. all size-1 instances, then size-2), evaluating every instance.
**Bound on DFS calls** — for a graph with n vertices and m edges, DFSAll makes n+m calls to DFS, n calls to visit and finish each, and m calls to revisit.
**Breadth First Search** — a graph search that explores the graph outward in increasing order of distance from the source, so that for all distances i<j every vertex at distance i is visited before any vertex at distance j.
**breadth-first search (BFS)** — a graph search that visits vertices in order of their distance from the source, exploring the graph in distance-ordered rounds (frontiers), inherently parallel across each frontier.
**brick method** — a special case of the tree method for recurrences whose per-level costs grow or decay geometrically, classifying each recurrence as root dominated, leaf dominated, or balanced by comparing a node's cost to the summed cost of its children.
**brute force** — A technique that enumerates all candidate solutions to a problem and checks each for validity, returning a valid or best one.
**Brute Force Primality Test** — isPrime n filters the residues ⟨n mod i : 1 ≤ i ≤ ⌊√n⌋⟩ for zeros and tests that exactly one divisor exists; work O(√n) and span O(lg n) under array-sequence costs.
**Brute Force Solution to the Primes Problem** — primesBF n filters ⟨i : 1 < i < n⟩ keeping those i with isPrime(i); total work O(n^{3/2}) and span O(lg n).
**brute force technique** — enumerating all candidate (possible) solutions to a problem and checking each for validity, usually naturally parallel but usually not work efficient.
**brute-force** — An algorithm-design technique that tries all candidate solutions and picks the best; usually the simplest and least effective.
**BST ADT** — for a universe of totally ordered keys K, a type T representing a power set of keys with functions empty, singleton, size, find, delete, insert, union, intersection, difference, split, joinPair, joinM, filter, and reduce.
**BST cost specification** — a specification giving empty and singleton O(1) work/span; split, find, insert, delete, and join O(lg |t|); and union, intersection, difference O(m·lg(n/m)) work and O(lg n) span, where n = max and m = min of the tree sizes.
**BST property** — the condition that a BST's in-order traversal is sorted, i.e. for every internal node the left subtree's keys are less than the node's key and the right subtree's keys are greater.
**bulk updates** — the set functions intersection, difference, and union, which update a set with a large collection of elements at once and parallelize, versus the singular functions find, insert, and delete.
**Call-by-Need** — An evaluation order in which beta reduction of (λ x . e₁) e₂ is applied even when e₂ is not a value; if e₂ is copied into each x it is call-by-name, and if e₂ is shared it is call-by-need (lazy); inherently sequential.
**Call-by-Value** — An evaluation order in which beta reduction of (λ x . e₁) e₂ is applied only after e₂ is evaluated to a value; inherently parallel since subexpressions of an application can be reduced in parallel.
**candidate solutions** — the set of possible solutions enumerated by a brute-force algorithm and tested for validity.
**Cartesian Product** — CartesianProduct(a,b) = flatten(map (λx. map (λy.(x,y)) b) a), equivalently the comprehension ⟨(x,y) : x ∈ a, y ∈ b⟩.
**Cartesian Product (problem)** — given two sequences a and b, return the sequence of all pairs (x,y) with x from a and y from b, e.g. ⟨1,2⟩ × ⟨3,4,5⟩ = ⟨(1,3),(1,4),(1,5),(2,3),(2,4),(2,5)⟩.
**center** — the central vertex of a star graph, connected to all satellites.
**Chebyshev's Inequality** — for a random variable X with expectation µ and variance σ², P[|X − µ| ≥ γ] ≤ σ²/γ², equivalently P[|X − µ| ≥ kσ] ≤ 1/k².
**Chernoff bound** — a bound on the probability that a sum of independent indicator variables deviates from its mean, used to bound the number of hits (recursive calls).
**Chernoff Bound for Binomials** — for a Binomial random variable X with expectation µ and any δ > 0, P[X < (1−δ)µ] < (e^{−δ}/(1−δ)^{1−δ})^µ and P[X > (1+δ)µ] < (e^δ/(1+δ)^{1+δ})^µ, with simplified forms such as P[X < (1−δ)µ] < e^{−µδ²/2}.
**Chernoff bounds** — Exponential tail bounds on the sum of independent indicator random variables (e.g. a binomial), bounding P[X < (1−δ)μ] and P[X > (1+δ)μ].
**Christofides algorithm** — a 1976 metric-TSP approximation achieving a factor of 1.5 by adding to the MST a matching on its odd-degree vertices, finding an Euler tour of the combined graph, and shortcutting.
**Church-Turing hypothesis** — The hypothesis that anything that can be computed can be computed by the lambda calculus (equivalently the Turing machine); a model equivalent to them is Church-Turing complete.
**closed expression** — An expression with no free variables; a variable appearing unbound in an expression is free in it.
**collect** — collect cmp a, given a comparison function cmp defining a total order on keys and a sequence a of key-value pairs, groups all values sharing a key together (SQL's "Group by"), ordering keys and values by first appearance.
**collect (on tables)** — an operation taking a sequence of key-value pairs and producing a table mapping each key to the sequence of all values associated with it, gathering equal keys together, implementable via Table.union with Sequence.append over singletons.
**Collisions** — for distinct x, y ∈ U, if h(x) = h(y) then h(x) and h(y) (or the keys x and y) are said to collide.
**color abstraction** — Dijkstra's convention of marking each vertex white (unexplored), gray (in the frontier), or black (visited).
**combining function** — a function f : V×V→V passed to table intersection/union to merge the two values sharing a key into one.
**Compare and Swap** — An atomic read-modify-write instruction cas r (exp, tgt) that reads r's old value, writes tgt into r only if the old value equals exp, and returns the old value.
**Comparison Sort** — Given a sequence A of n elements from a totally ordered set with comparison operator <, return a sequence B containing the same elements such that B[i] ≤ B[j] for 0 ≤ i < j < n.
**Comparison Sort: Efficient & Parallel** — Assuming < does constant work, parallel comparison sorting of a length-n sequence costs O(n log n) work and O(log² n) span.
**Comparison Sort: Inefficient but Parallel** — Assuming < does constant work, parallel comparison sorting of a length-n sequence costs O(n²) work and O(log n) span.
**comparison-sorting problem** — given a sequence a of elements from a universe U with total ordering <, return the same elements in a sequence r in sorted order (r[i] ≤ r[i+1]).
**Comparisons and Priorities (lemma)** — for ranks i < j, keys tᵢ and tⱼ are compared by quicksort if and only if either has the highest priority among the keys with ranks i…j; hence E[Xᵢⱼ] = 2/(j−i+1).
**Comparisons-and-Priorities Lemma** — for i<j, keys t_i and t_j are compared iff p_i or p_j is the highest priority among keys with ranks i…j.
**complete graph** — A graph with an edge between every pair of vertices; such a graph always has a Hamiltonian cycle.
**Component Count** — a graph-contraction algorithm (countComponents) that repeatedly star-partitions and reroutes edges, returning the number of vertices remaining once no edges remain as the component count.
**Component DAG** — the DAG obtained by contracting each strongly connected component into a single vertex and eliminating duplicate edges between components.
**composite number** — a natural number that is not prime; any composite n has a divisor at most √n, so the sieve need only mark multiples of numbers up to √n.
**Concurrency** — An algorithmic problem is a concurrency problem if its specification involves multiple things happening at the same time; concurrency is a property of a problem.
**concurrent data structures** — Data structures and algorithms designed to reason about and operate correctly in the presence of race conditions.
**conditional expectation** — E[X | Y = y] = Σ_x x·PX|Y(x|y), the expected value of X for a given value y of Y.
**conditional probability** — for events A and B with P[B] > 0, P[A | B] = P[A ∩ B] / P[B], the probability of A occurring given that B occurs.
**conditional probability mass function** — for a random variable X and event A, PX|A(x) = P[{X = x} ∩ A] / P[A]; for two random variables, PX|Y(x|y) = P[X = x | Y = y], each itself a PMF.
**Connected Component** — A subgraph H of an undirected graph G that is a maximally connected subgraph of G (no more vertices/edges can be added without disconnecting it).
**constant-factor approximation algorithm** — An algorithm that solves an NP-hard problem to within a constant factor of the optimal answer.
**constant-work updates (ephemeral sequences)** — an ephemeral array-sequence implementation whose destructive primitives give update O(1) work and span, inject O(m) work and O(lg d) span, and ninject O(m) work and O(1) span.
**contiguous subsequence** — A subsequence a[i..j] consisting of consecutively positioned elements of the original sequence.
**contract** — The contraction phase that maps a problem instance to a single geometrically smaller instance of the same problem.
**contraction algorithm** — an algorithm with a base case and an inductive step of three phases — contract (map the instance to a single smaller instance of the same problem), recur on it, and expand the solution back to the original.
**contraction technique** — solving a problem instance by reducing it to an instance whose size is geometrically smaller in expectation.
**Contraction-Based Select** — a randomized order-statistics algorithm that picks a uniformly random pivot, splits the input into elements less than and greater than the pivot, and recurses into the side containing the kth element; it performs O(n) expected work and O(lg² n) span with high probability.
**Correctness of Bellman-Ford** — for a directed weighted graph and source s, BellmanFord returns δ_G(s,v) for all vertices reachable from s, or indicates a reachable negative-weight cycle; costs O(nm lg n) work with tables or O(nm) work with sequences, O(n lg n) span.
**Correctness of Dijkstra's Algorithm** — Dijkstra's algorithm returns d(v) = δ_G(s,v) for every v reachable from s.
**Cost for iterate** — W(iterate f x a) = O(1 + Σ_{f(y,z)∈T} W(f(y,z))) and S(iterate f x a) = O(1 + Σ_{f(y,z)∈T} S(f(y,z))), summing over the trace T of calls to f; iterate is fully sequential.
**Cost for scan** — assuming the combining f is O(1) work and span, W(scan f x a) = O(|a|) and S(scan f x a) = O(lg|a|), matching reduce despite computing all prefix results.
**cost model** — A model that specifies the cost of the operations available in a computational model, usually only up to the precision of asymptotic analysis.
**Cost of reduce** — W(reduce f x a) = O(1 + Σ_{f(y,z)∈T} W(f(y,z))) and S(reduce f x a) = O(lg|a| · max_{f(y,z)∈T} S(f(y,z))), where the lg|a| reflects the depth of the balanced recursion tree.
**Cost of Star Partition** — starPartition runs in O(n+m) work and O(lg n) span for a graph with n vertices and m edges under the array-based sequence cost specification.
**cost specification** — an abstraction that gives the asymptotic work and span of each function of an ADT as a function of size, capturing the cost of a class of implementations without naming a specific one.
**coupon-collector's problem** — the related fact that Θ(m log m) distinct keys are needed before, with high probability, every hash code in a range of size m is used.
**Critical Sections and Mutual Exclusion** — A critical section is a part of a concurrent program that cannot be executed by more than one thread at a time; it must be executed in mutual exclusion to avoid data races.
**cross edge** — a non-tree edge (u,v) where v is neither an ancestor nor a descendant of u in the DFS tree.
**currying** — Converting a function of a tuple of arguments into a function that takes one argument and returns a function taking the rest; named after Haskell Curry.
**cut edge** — an edge whose two endpoints lie in different blocks of a partition.
**cut edge (of a cut)** — an edge with one endpoint in U and the other in V\U; it crosses the cut.
**Cycle-Detection Problem** — the problem of determining whether there is a cycle in a graph.
**Cycles** — In a directed graph a cycle is a path that starts and ends at the same vertex; a simple cycle repeats no vertices except the shared start/end, and in an undirected graph must have length at least three.
**DAG Finish Order** — for DFSAll on a DAG, if vertex u is reachable from v then u finishes before v.
**data constructor** — A named tag used to build values of a data type (union of tagged variants); by convention capitalized.
**Data Race** — A situation where multiple threads access the same data and at least one writes to it, usually causing non-deterministic outcomes; a data race that does not harm correctness is called benign.
**data structure** — An implementation that solves a data-structures problem, viewable as a collection of algorithms operating on the same organization of data.
**Data-Structures Problem** — A problem that requires meeting an ADT specification by designing a data structure supporting the desired operations with the required efficiency.
**Dead entry** — a hash-table slot marked as deleted, kept so that a key whose probe sequence passed through it can still be found.
**decision problem** — a problem variant whose answer is a "Yes" or "No", e.g. checking whether a path shorter than a given budget exists.
**decreaseKey** — a priority-queue operation that decreases the value of a key.
**decreaseKey operation** — a priority-queue operation that lowers a key's priority instead of inserting duplicates, improving Dijkstra's total priority-queue work to O(m + n log n).
**Degree** — The degree d_G(v) of a vertex v is the size of its neighborhood |N_G(v)|; for directed graphs, in-degree and out-degree count in- and out-neighbors.
**degree (of an update sequence)** — the maximum number of updates in an inject/ninject update sequence that target any single position.
**Delete** — delete(T,k) splits T at k and rejoins the two parts with joinPair, dropping k.
**density of a graph** — the relationship between the number of vertices n and edges m; a graph is dense when m is not much smaller than n².
**dependency graph** — a directed graph whose vertices represent tasks and whose edges represent dependencies between them; must be acyclic and can be ordered by topological sort.
**depth (of a node)** — the length of the path from the root to that leaf or node, with the root at depth 0.
**depth and height** — The depth of a node is the path length from the root to it; its height is the longest path from it to any leaf, and the height of a tree is the height of its root.
**depth-first search (DFS)** — the graph search obtained by selecting the single most recently added frontier vertex on each round; it is sequential because it visits only one vertex at a time.
**determinacy race** — Another name for a data race, so called because it can lead to a non-deterministic outcome.
**DFS** — DFS runs in O((m+n) lg n) work and span with tree-based sets and adjacency tables, or O(m+n) work and span for enumerable graphs with adjacency sequences and ephemeral X (assuming visit, finish, revisit take constant work).
**DFS (Recursively)** — a recursive DFS in which, immediately after visiting a vertex v, the algorithm iterates over its out-neighbors so the next visited vertex is v's first unvisited out-neighbor; the frontier is represented implicitly in the recursion.
**DFS Numbers** — for a non-tree edge (u,v), the edge is a cross edge if T_V(u)>T_V(v) and T_F(u)>T_F(v), a forward edge if T_V(u)<T_V(v) and T_F(u)>T_F(v), and a back edge if T_V(u)>T_V(v) and T_F(u)<T_F(v).
**DFS with a Stack** — a DFS implementation that represents the frontier as a stack, popping the top vertex to visit it and pushing its unvisited out-neighbors in out-neighbor order.
**DFS with Array Sequences** — a DFS variant for enumerable graphs using adjacency sequences for the graph and ephemeral array sequences for the visited set, giving O(1) work per operation.
**Diameter** — The maximum shortest-path length over all pairs of vertices in a graph, max{δ_G(u, v) : u, v ∈ V}.
**dictionary** — a BST or table augmented so each key stores an associated value, representing a mapping from keys to values; also called a table or key-value store.
**dictionary (table, key-value store)** — a BST augmented so each key stores an associated value, representing a mapping from keys to values.
**Difference** — like union, splits T₂ at T₁'s root key, recursively takes the difference on both sides, and includes the root key only if it was not found in T₂.
**difference (on BSTs)** — an operation on BSTs T₁, T₂ returning a BST of the keys in T₁ that are not in T₂; can be viewed as a "parallel" delete.
**digest** — the hash code produced by a hash function, used e.g. to check the integrity of a data transmission.
**Dijkstra's algorithm** — a sequential SSSP+ algorithm using priority-first search that repeatedly visits the unvisited vertex of minimum tentative distance and finalizes its distance; requires non-negative edge weights.
**Dijkstra's Algorithm using Priority Queues** — an implementation maintaining priorities in a priority queue supporting deleteMin and insert, adding each visited vertex's neighbors with priority d+w and discarding already-visited vertices pulled from the queue; runs in O(m lg n) work (and span, since sequential).
**Dijkstra's Property** — for any partition of V into X and Y = V\X with s ∈ X, where p(v) = min_{x∈X}(δ_G(s,x)+w(x,v)), we have min_{y∈Y} p(y) = min_{y∈Y} δ_G(s,y).
**Directed acyclic graph (DAG)** — A directed graph with no cycles.
**Directed Cycle Detection** — a DFS instance whose state pairs a boolean flag with the set of ancestors of the current vertex; on revisiting a vertex already in ancestors it sets the flag, and cycleDetect returns true iff the graph has a directed cycle.
**Directed Graph** — A directed graph (digraph) is a pair G = (V, A) where V is a set of vertices and A ⊆ V × V is a set of directed edges (arcs); may have self loops.
**discovered** — a vertex is discovered when it is added to the frontier.
**discrete random variable** — A random variable whose range is finite or countably infinite.
**Distance** — The distance δ_G(u, v) from u to v is the length of the shortest path (minimum number of edges) from u to v.
**Distance of a Vertex** — for a source s, the distance of a vertex v is the number of edges on the shortest path from s to v in G, denoted δ_G(s,v).
**distinct edge-weights assumption** — the assumption that all edge weights are distinct (achievable by deterministic tie-breaking), under which the MST is unique.
**divide and conquer with reduce** — A pattern where a divide-and-conquer algorithm that simply splits in the middle can be written in one line as reduce myCombine emptyVal (map base a).
**divide-and-conquer algorithm** — an algorithm with a base case for small instances and an inductive step of three phases: divide the instance into smaller instances of the same problem, recur on each, and combine their solutions into the solution for the original.
**Divide-and-Conquer eTSP** — an eTSP heuristic that splits the points by a cut along the longest dimension, recursively solves the two parts to get cycles L and R, then bridges them by swapping the edge pair with minimum swapCost; Θ(n²) work and Θ(log² n) span.
**Document Index** — an abstract data type over documents (id × contents) supporting makeIndex : (id × contents) seq → index, find : index → word → docs, queryAnd/queryOr/queryAndNot : docs × docs → docs, size : docs → ℕ, and toSeq : docs → id seq for building and querying a searchable index of a static document collection.
**domain** — a table function returning the set of all keys in the table.
**domain (of a BST)** — dom(T), the set of keys contained in the internal nodes of a BST T.
**domain (of a table)** — the operation returning the set of all keys in a table.
**domination (of cost specifications)** — one cost specification dominates another if, for every function, its asymptotic work and span are no higher than the other's.
**Dot-Product Hashing** — for prime m, integer r, universe ℕ_<mʳ and 0≤a<mʳ, the class {h_a(x) = (Σ aᵢ·xᵢ) mod m} (with aᵢ, xᵢ the base-m digits) is universal, needing only a prime near the range rather than larger than the universe.
**Double Hashing** — a flat-table implementation using two hash functions with probe sequence hᵢ(k) = (h(k) + i·hh(k)) mod m, providing up to m² probe sequences and avoiding secondary clustering, provided hh(k) is nonzero and relatively prime to m.
**dynamic programming** — an inductive algorithm-design technique that solves a larger instance from smaller ones and, unlike divide-and-conquer, saves and reuses solutions to shared subinstances, potentially giving exponential savings in work.
**dynamic-programming DAG** — a directed acyclic graph whose vertices are distinct problem instances and whose edges run from a smaller instance to a larger one that uses it, modeling the sharing in a dynamic program.
**Edge Partition** — a graph partition in which each block is either a single vertex or two vertices joined by an edge.
**Edge Sets** — a graph representation G = (V set, (V×V) set) storing the vertex set and the set of directed edges, giving O(log n) find/insert/delete of an edge but Θ(m) work to enumerate a vertex's neighbors.
**Edge Sets for Graphs** — for G=(V set,(V×V) set) with a tree-based set model: mapping over vertices Θ(n) work, over edges or neighbors Θ(m) work, degree Θ(m), edge membership/insert/delete Θ(log n), all with Θ(log n) span.
**Edge-Induced Subgraph** — The subgraph of G = (V, E) induced by E′ ⊆ E is H = (V′, E′) where V′ is the set of all vertices incident on the edges in E′.
**edge-set representation** — a graph representation consisting of a set of vertices and a set of edges, where each undirected edge is stored as two arcs, one in each direction.
**efficient reduction** — A reduction whose input and output transformation costs are asymptotically the same as the cost of the problem being reduced to.
**elementary event** — an individual element (single outcome) of the sample space Ω.
**empty** — the BST/set/table constructor returning an empty structure.
**empty (array implementation)** — implemented directly via tabulate: empty = tabulate (λi.i) 0.
**empty and singleton** — empty is the empty sequence ⟨⟩; singleton x returns a one-element sequence ⟨x⟩ containing x.
**Empty, Singleton and JoinM** — empty = joinMid(Leaf), singleton k = joinMid(Node(empty,k,empty)), and joinM(L,k,R) = joinMid(Node(L,k,R)).
**enumerable graph** — a graph whose vertices are the integers V = {0,1,…,n−1}, allowing sequence-based (random-access) representations.
**Enumerable graphs** — A graph G = (V, E) whose vertices are labeled with natural numbers, V = {0, 1, …, n−1}; more efficient to represent than general graphs.
**enumerable set** — a set drawn from a universe {0,…,u−1} representable by a boolean sequence of length |U| indicating membership.
**ephemeral data structure** — an implementation that destroys (reuses in place) existing instances when creating new ones, efficient for linear use but generally unsafe for parallelism because concurrent destructive updates make results nondeterministic.
**Euclidean Traveling Salesperson Problem (eTSP)** — The NP-hard variant of TSP in which vertices lie in a Euclidean space and edge weights are Euclidean distances.
**Euler tour** — a cycle in a graph that visits every edge exactly once; a DFS-based traversal of an MST that traverses each tree edge twice forms an Euler tour visiting every vertex at least once.
**event** — any subset of the sample space Ω, typically representing a property common to multiple outcomes.
**expand** — The contraction phase that constructs the solution to the original instance from the solution to the smaller instance.
**expectation** — the sum of a random variable over the elementary events weighted by their probability, E[X] = Σ_{y∈Ω} X(y)·P[{y}] = Σ_x x·PX(x).
**Expected and High-Probability Bounds** — two useful cost bounds for randomized algorithms: an expected bound gives the average cost over all random choices, and a high-probability bound states that the cost exceeds a bound with vanishing probability p(n)→1 as n→∞.
**expected bound** — a bound that informs us about the average cost of a randomized algorithm across all its random choices.
**expected instance size** — the expectation E[N_i] of the problem-instance size at round i, which for the darts game satisfies E[N_{i+1}] = (1−p+pr)·E[N_i].
**expected penalty** — the average penalty cost of a randomized game, bounded by choosing the constant c so that (1/n^c)·f(n) ≤ 1 for penalty function f(n).
**Expected Size of Input (select)** — starting with size n, the expected size of the input to select after d recursive calls is at most (3/4)ᵈ·n.
**expected span** — the expectation E[S(n)] of an algorithm's total span, obtained from the expected per-throw span and bounded via concavity of the logarithm.
**expected work** — the expectation E[W(n)] of an algorithm's total work, obtained by summing the expected per-throw work using linearity of expectations.
**experiment** — A model of an uncertain situation that returns exactly one outcome from a set of possible outcomes.
**expose** — a primitive tree-sequence function that returns Zero if the sequence is empty, One(x) if it has a single element x, and Two(L,R) — some cut into left half L and right half R — otherwise.
**Fetch and Add** — An atomic read-modify-write instruction faa r delta that atomically adds delta to the contents of memory location r and returns the contents before the update.
**filter** — filter f a applies Boolean function f to each element of a and returns, in original relative order, exactly those elements for which f is true; the tests may run in parallel.
**filter (array implementation)** — implemented by mapping each kept element to a singleton and each rejected element to the empty sequence (a "deflate"), then flattening.
**find** — the operation that searches for a given key and returns a boolean (or value) indicating success.
**find (set)** — the basic membership test, find(a)(x) = true iff x ∈ a, equivalently |a ∩ {x}| = 1.
**Finding Overlap** — Brute-force algorithm that finds the maximum overlap of strings s then t by checking each suffix of s against a prefix of t; O(|s|·|t|) work and O(lg(|s|+|t|)) span using a reduce.
**Finding the Shortest Permutation** — Algorithm that computes the shortest superstring of a permutation by eliminating overlaps between successive strings, then tries every permutation and keeps the one with the shortest superstring (revealing parallelism across permutations).
**Finding the Shortest Permutation (Improved)** — Uses staging: first precompute overlaps between all pairs of snippets into a dictionary (O(m²) work, O(lg m) span), then try all permutations using dictionary lookups; still limited by n! permutations.
**finish time** — the timestamp when a vertex is finished, i.e. all its out-neighbors are done being explored.
**first** — the ordered-set operation returning the minimum element of the set (or ⊥ if empty).
**first / last** — ordered-set operations returning the minimum (first) and maximum (last) element of a set, or ⊥ if empty.
**First Visited** — if u is the first vertex visited by DFS in its component, then for all v reachable from u, T_F(u) > T_F(v).
**flat table (open addressing)** — a hash-table design storing all key-value pairs in a single flat table mapping keys to entries, resolving collisions by probing.
**Flat Tables / Open Addressing** — hash tables that store all pairs in one table and, on insertion, follow a probe sequence of positions until an available slot is found; collisions are minimized by keeping the load factor low.
**flatten** — flatten takes a sequence of sequences ⟨a₁,…,aₙ⟩ and returns the single sequence containing all elements of the aᵢ in order.
**flatten (array cost)** — maps each subsequence to its length, scans to find output offsets, then writes each element in parallel; work O(|a| + ||a||) and span O(lg|a|), where ||a|| = Σ|a[i]|.
**forward edge** — a non-tree edge (u,v) where v is a descendant of u in the DFS tree.
**fromSeq** — a function taking a sequence and returning the set of its distinct elements (its range), eliminating duplicates.
**frontier** — the set of vertices that are neighbors of the visited set X but not yet in X, i.e. N⁺(X) \ X.
**Frontier and Discovered Vertices** — for a graph G and visited set X, the frontier F is the set of unvisited out-neighbors of X, i.e. N⁺_G(X)\X; each frontier vertex is a discovered vertex.
**Full Binary Tree** — an ordered rooted tree where each node is either a leaf (no children) or an internal node with a left child, a value, and a right child; definable as the recursive type Leaf | Node of (tree × α × tree).
**Function** — A mapping from A to B is a relation R ⊆ A × B in which every element of the domain maps to exactly one element (|R| = |domain(R)|); A is the domain and B the co-domain.
**functional algorithm** — An algorithm that uses only pure functions and supports functions as first-class values.
**functional programming** — A programming style in which functions behave like mathematical functions (mapping domain to codomain with no side effects) and can be used as values (passed, stored, and created on the fly).
**garbage collector** — A runtime mechanism that reclaims memory holding data no longer needed by the program.
**Generic DFS** — a DFS that threads an application-specific state Σ through the computation along with the visited set X, applying user-supplied visit, finish, and revisit functions to manipulate the state.
**Generic DFSAll** — a variant that runs generic DFS from every vertex of a graph in turn, visiting each vertex exactly once.
**Generic Quicksort** — the quicksort algorithm with pivot-choosing left unspecified: pick a pivot, filter the input into elements less than, equal to, and greater than the pivot, recursively sort the less and greater parts in parallel, and concatenate; expected work Θ(n lg n) and span Θ(lg² n) with random pivots.
**geometric growth / geometric decay** — a sequence has geometric growth if each element exceeds the previous by at least a constant factor >1, and geometric decay if it shrinks by at least a constant factor; either way its sum is within a constant factor of its largest term.
**geometric random variable** — the number of trials X needed to observe the first head in repeated Bernoulli trials with probability p, with PX(x) = (1−p)^{x−1} p.
**getRange** — an ordered-set operation returning all keys k with k₁ ≤ k ≤ k₂, implementable with two splits.
**good hash function** — one that is cheap to compute, compact to store, surjective onto its range (coverage), unlikely to map two arbitrary keys to the same value (collision avoidance), and hard to predict from a few observations (mixing).
**graph (network)** — an abstraction representing relationships between objects, formalized as a relation (a subset of the Cartesian product of two sets) over a vertex set.
**Graph Connectivity** — connectedComponents computes the connected components by recursively contracting via star partition and, on return, composing the partition maps (C ∘ P) to map each vertex to its component representative.
**graph contraction** — a parallel contraction technique that solves a graph problem by reducing it to a smaller quotient graph, solving that, and expanding the solution back; designed for polylogarithmic span.
**Graph Cut** — for a graph G=(V,E) and a nonempty proper subset U ⊊ V, the cut (U, V\U) partitions the vertices; the cut edges E(U,V\U) are the edges between the two parts (each said to cross the cut).
**Graph Partition** — a collection of vertex-induced subgraphs H₀=(V₀,E₀),…,H_{k−1}=(V_{k−1},E_{k−1}) where {V₀,…,V_{k−1}} is a set partition of V.
**graph search (graph traversal)** — a class of algorithms that systematically explore a graph's vertices and edges, searching outward from a source and iteratively visiting unvisited neighbors of already-visited vertices.
**Graph Search (Single Source)** — the generic search starting from source s that repeatedly, while the frontier is nonempty, chooses a subset U of the frontier, visits it, adds it to the visited set X, and recomputes the frontier as N⁺_G(X)\X.
**Graph Search Solves Reachability** — graphSearch(G,s) returns exactly the vertices reachable from s in at most |V| rounds, for any choice of frontier subset U on each round.
**Graph-Contraction Technique** — an inductive technique with a base case (small graph → compute result directly) and an inductive round: contract the graph into a smaller quotient graph (partition into blocks, contract each block to a super-vertex, drop internal edges, reroute cut edges), recursively solve, then expand.
**Graph-Search Tree** — a rooted tree over the visited vertices X and edges E′⊆E in which the source s is the root and every other visited vertex v has as parent an in-neighbor u that was in X when v was visited.
**greedy algorithm** — An iterative algorithm that at each step makes a locally optimal (greedy) decision to reduce the problem size, hoping to reach a global optimum; may or may not return an optimal solution.
**Greedy Approximate SS** — Greedy algorithm greedyApproxSS that repeatedly joins the pair of snippets with maximum overlap until one string remains; O(nm²) work and O(n lg m) span, returning a superstring within a factor of 3.5 (conjectured 2) of optimal.
**greedy scheduler** — a scheduler that, whenever a processor is free and a task is ready, immediately assigns that task to the processor.
**greedy scheduling principle** — the guarantee that running a computation on P processors with a greedy scheduler takes time T_P < W/P + S, where W is work and S is span (in clock cycles).
**Greedy Vertex Matching** — a sequential algorithm that iterates over the edges, adding an edge to the matching M whenever no edge in M is already incident on its endpoints and discarding it otherwise; within a factor of two of optimal.
**Hamiltonian cycle** — A cycle in a graph that visits every vertex exactly once.
**harmonic number** — H(n), the sum Σ_{i=1}^n 1/i, bounded between ln n and ln n + 1, used to bound the number of composites m ≈ (n/2)·ln n in the sieve analysis.
**Hash Function** — a function h : U → ℕ_<m from a universe U to a range {0,…,m−1}, where m is usually much smaller than |U|; a domain element is a key and a range element is a hash value, hash code, or digest.
**Hash Tables** — an abstract data type supporting createTable, insert, lookup, loadAndSize, and resize on key-value pairs whose keys are drawn from a universe and admit an equality test, giving a dynamically changing key-to-value mapping without requiring a total order on keys.
**hash value (hash code)** — an element of the range of a hash function; the output h(x), also called a digest.
**hashing** — the general idea of mixing up the information content of an object to produce a compact hash value with some randomness so distinct objects are unlikely to collide.
**head and tail** — the head of a sequence is its first element and the tail is the suffix beginning at the second element, both quickly accessible in list-based sequences.
**heap** — a rooted tree in which the key at every node is ordered relative to its descendants; a min-heap has every node's key ≤ its descendants', a max-heap has every node's key ≥ its descendants'.
**heap property** — the invariant that the key at each node is ordered (≤ for a min-heap) relative to the keys of its children.
**heap property (on priorities)** — the Treap invariant that every internal node's priority is at least the priorities of its children, so the parent's priority exceeds its children's.
**heap property (Treap)** — the invariant that for every internal node u with parent v, p(k(v)) ≥ p(k(u)), i.e. a parent's priority is at least its children's.
**Heapsort** — a version of selection sort that inserts all keys into a priority queue and then repeatedly removes the minimum; with O(log n) insert and deleteMin it does optimal O(n log n) work but is completely sequential.
**height (of a BST)** — h(T), the maximum depth of any leaf, being 0 for an empty tree and 1 for a single node.
**height balance** — a balancing criterion where the children of a node are about the same height.
**height of a BST** — h(T), the maximum depth of any leaf; an empty tree has height 0 and a single-node tree has height 1.
**Heisenbug** — A bug (often a race condition) that disappears when you try to study it and reappears when you stop, making it hard to reproduce.
**high-probability bound** — a bound stating that it is very unlikely the cost exceeds it, holding with probability p(n) where lim_{n→∞} p(n) = 1.
**higher-order function** — A function that takes other functions as arguments (or returns them), enabling abstraction such as a reduce parameterized by a binary associative operator.
**hit probability** — the probability p that a throw is a hit (successfully reduces the instance) in the darts game.
**hit ratio** — the factor r by which an instance is reduced on a successful throw (hit) in the darts game.
**Human Genome** — The full nucleic acid sequence for humans, over 3 billion base pairs of the bases A, C, G, and T, writable as a string over {A, C, G, T}.
**in-order traversal** — the traversal that recursively lists the left subtree's values, then the node's key, then the right subtree's values, producing sorted order for a BST.
**Incidence** — An edge is incident on a vertex if the vertex is one of its endpoints (and vice versa).
**independence** — two events A and B are independent if P[A ∩ B] = P[A]·P[B]; events A₀,…,A_{n−1} are mutually independent if for every nonempty subset I the probability of their intersection equals the product of their probabilities.
**independence (of random variables)** — X is independent of an event A if P[{X = x} ∩ A] = P[X = x]·P[A] for all x; X and Y are independent if PX,Y(x,y) = PX(x)·PY(y) for all x, y.
**Index Functions** — implements the index interface via set/table operations: find = Table.find, queryAnd = set intersection, queryOr = set union, queryAndNot = set difference, size = set size, toSeq = set toSeq; find costs O(log n) and the query operations cost the same as set intersection/union/difference.
**indicator random variable** — a 0/1 random variable X_ij whose expectation equals the probability that the indicated event occurs.
**inject** — inject a b takes a sequence b of position-value pairs and updates each position of a with its value; out-of-range updates are ignored and, when several updates target one position, the first in b's order wins.
**inject (array cost)** — copies a and applies updates by atomic writes where the leftmost update to each position wins; total work O(n+m) and, for a position hit by d updates, O(lg d) expected updates (span O(lg degree)).
**Insert** — insert(T,k) splits T at k and rejoins the parts with k in the middle via joinM.
**Internal and Cut Edges** — an edge {v₁,v₂} is an internal edge if both endpoints lie in the same block Vᵢ, and a cut edge if its endpoints lie in different blocks Vᵢ and Vⱼ.
**internal edge** — an edge whose two endpoints lie in the same block of a partition.
**internal node** — a node of a full binary tree that has a left child, a value, and a right child.
**Intersect** — like union, splits T₂ at T₁'s root key, recursively intersects both sides in parallel, and joins including the root key only if it was found in both trees.
**intersection** — the operation returning a structure containing the keys appearing in both input structures.
**intersection (on BSTs)** — an operation returning a BST containing the keys appearing in both input BSTs.
**intersection (table)** — a table function taking a combining function f and returning, for each key in both tables' domains, k ↦ f(find a k, find b k).
**intractable** — describing a computation whose required work or time is so large (e.g. exceeding roughly 10^100, the number of atoms in the known universe) that it is infeasible for all but tiny inputs.
**iScan / scanI (inclusive scan)** — scanI f id a = ⟨reduce f id a[0···i] : 0 ≤ i < |a|⟩, an inclusive scan that includes the element at position i in each prefix result.
**isEmpty and isSingleton** — isEmpty a returns true iff sequence a is empty; isSingleton a returns true iff a has exactly one element.
**isEmpty and isSingleton (array implementation)** — implemented as the length tests |a| = 0 and |a| = 1 respectively.
**Isolated Vertices** — a vertex is isolated in a graph if it has no neighbor.
**iterate** — iterate f x a sequentially threads a running result through sequence a, starting from x and updating it by f at each element: iterate f x a = f(…f(f(x,a[0]),a[1])…,a[n−1]); inherently sequential.
**iterate (array implementation)** — implemented by iterating left to right over the sequence, applying f to the running state and the next element.
**iteratePrefixes** — a variant of iterate that returns a pair whose first component is the sequence of all intermediate results (excluding the last) and whose second component is the final result.
**Jensen's inequality** — the inequality (used to show even splits are the worst case for union's work) that for a concave function such as lg, Σ lg(nⱼ) ≤ Σ lg(n/k), named after Danish mathematician Johan Jensen.
**Johnson's Algorithm** — adds a dummy source with zero-weight edges to all vertices, runs Bellman-Ford to get potentials D, reweights w'(u,v) = w(u,v) + D[u] − D[v] to remove negative weights, then runs Dijkstra from each vertex and readjusts distances.
**join** — the inverse of expose: given Zero builds an empty tree, given One(v) a singleton, and given Two(L,R) appends L and R, rebalancing as needed.
**join (ordered sets)** — an operation on sets A₁, A₂ with max(A₁) < min(A₂) returning their union, essentially the BST join.
**joinM** — like joinPair but taking a middle key k with T₁ < k < T₂ and returning a tree containing T₁, k, and T₂ (the M denotes the middle value).
**joinMid** — the inverse of expose: it takes a Leaf or Node(L,k,R) with L < k < R and creates the corresponding tree, rebalancing as needed to maintain the balancing scheme's invariants.
**joinPair** — an operation joining two trees T₁, T₂ where all keys in T₁ are less than all keys in T₂, returning a valid BST containing all their keys.
**joint probability mass function** — For random variables X and Y, PX,Y(x,y) = P[{X=x}∩{Y=y}], the probability they simultaneously take given values.
**k-hop Distance** — δ_G^k(u,v) is the weight of the shortest path from u to v using at most k edges (∞ if no such path exists).
**k-th order statistic** — the k-th smallest element of a sequence counting from zero.
**k-wise independence** — the formal property that, given a small set of keys and their hash codes, the hash code of any other key is difficult to predict.
**Kadane's algorithm** — The work-efficient linear-work, linear-span iterative algorithm for MCSS that maintains the best subsequence ending at each position.
**key (hashing)** — an element of the universe U that is the input to a hash function.
**key-value pair** — a key stored together with its associated value in an augmented BST node.
**Kleene Operators** — For a set Σ, the Kleene star Σ* is the set of all strings over Σ including the empty string, and the Kleene plus Σ⁺ is the set of all such strings excluding the empty string.
**Kruskal's algorithm** — a sequential MST algorithm that considers edges in increasing weight order, adding each edge that does not form a cycle with the edges already chosen.
**lambda calculus** — A pure language of expressions (variables, lambda abstractions, and applications) developed by Alonzo Church, arguably the first programming language and inherently parallel.
**language-based cost model** — a cost model that takes a programming language as its starting point and defines cost as a function mapping the language's expressions to their cost, usually recursively over the forms of expression.
**Las Vegas algorithm** — a randomized algorithm that uses randomization to weaken only the cost guarantees (work and span), so it always returns the correct answer but its cost depends on random choices.
**last** — the ordered-set operation returning the maximum element of the set (or ⊥ if empty).
**latest version** — The most recently produced version of an stseq, the only one on which update and access are guaranteed O(1) work.
**Law of Total Probability** — for a partition A₀,…,A_{n−1} of Ω with each P[Aᵢ] > 0 and any event B, P[B] = Σ P[B ∩ Aᵢ] = Σ P[Aᵢ] P[B | Aᵢ].
**leaf** — A node of a rooted tree with no out-edges; a node with out-edges is an internal node.
**leaf dominated** — a recurrence in which every node's cost is at most a factor 1/α of the summed cost of its children, so total cost is Θ of the summed leaf cost (often just the number of leaves).
**leaf-dominated** — a recurrence cost property where the total cost is asymptotically dominated by the work performed at the leaves of the recursion tree.
**left subtree** — the subtree rooted at the left child of a given node.
**Leftist Heap (Data Structure 45.6)** — a heap storing a rank field on each node and using makeLeftistNode to swap children when needed so the leftist property is preserved; meld recurses only into the smaller-rank right subtree.
**Leftist Heap Work** — melding two leftist heaps A and B runs in O(log|A| + log|B|) work and returns a leftist heap containing all elements of A and B, since meld only traverses the (short) right spines.
**Leftist Property and Leftist Heaps** — a leftist heap is a heap in which the leftist property holds: for every node x, rank(L(x)) ≥ rank(R(x)), keeping the tree deeper on the left and the right spine short.
**Leftist Rank** — in a leftist heap with n entries, the rank of the root node is at most log₂(n+1), because a heap of rank r contains at least 2^r − 1 entries.
**length (array cost)** — computed from the stored slice boundaries by arithmetic, constant work and span.
**length and indexing** — length a (also |a|) returns the number of elements of sequence a; nth a i (also a[i]) returns the element at index i, with undefined/error behavior when i is out of range.
**light-edge property** — the property that for any cut of a graph the minimum-weight edge crossing the cut is in the MST, underlying essentially all MST algorithms.
**Linear Probing** — a flat-table implementation with probe sequence hᵢ(k) = (h(k)+i) mod m, giving only m distinct probe sequences.
**Linear Work Divide-and-Conquer MCSS** — MCSSDCAux returns (max subsequence, max prefix, max suffix, total) and combines subproblem tuples in constant work per level; Θ(n) work and Θ(lg² n) span.
**linearity (linear use)** — a usage pattern in which each instance of a data structure is consumed at most once, making destructive (ephemeral) updates safe.
**linearity of expectations** — for random variables X, Y and constants a, b, c, E[aX + bY + c] = aE[X] + bE[Y] + c, holding even when X and Y are on different probability spaces.
**List Sequences (cost specification)** — linked-list costs: nth and subseq O(i) work and span (position-dependent, suffixes shared); each operation's span essentially equals its work (nearly no parallelism); append O(|a|); otherwise similar work to arrays; useful mainly for fast head/tail access.
**Load Factor** — for a hash table of size m holding n key-value pairs, the load factor α = n/m, quantifying how crowded the table is.
**logical-and search** — a document-search function that finds documents containing one given word and another.
**logical-and-not search** — a document-search function that finds documents containing one given word but not another.
**logical-or search** — a document-search function that finds documents containing one given word or another.
**lower bound** — A provable minimum on the resources any algorithm for a problem must use, e.g. Ω(n) work for MCSS since every element must be inspected.
**Machine-Based Cost Model** — A cost model that takes a machine model and defines the cost of each executable instruction (often unit cost per instruction); an algorithm is analyzed by translating it to the machine and counting instruction costs.
**Make Index** — builds a document index by tagging each token of each document with its identifier, flattening, and using Table.collect to map each word to the set of documents containing it, in O(n log n) work and O(log² n) span.
**makeLeftistNode** — a constructor that builds a heap node from a value and two subtrees, placing the higher-rank subtree on the left and setting the node's rank to one plus the smaller child's rank, ensuring the leftist property.
**makeNode** — the node-construction function modified to compute a node's size and/or reduced value from those of its children when the node is created.
**map** — map f a applies f to each element of sequence a, returning an equal-length sequence of the results, with the applications parallelizable.
**map (array implementation)** — implemented via tabulate: map f a = tabulate (λi. f(a[i])) |a|.
**map (on tables)** — the table operation producing a new table by applying a function to each value while keeping the keys unchanged.
**map (table)** — a table function applying f to every value while keeping keys the same: {k ↦ f(v) : (k↦v) ∈ a}.
**marginal probability mass function** — the PMF of one random variable recovered from a joint PMF by summing over the other, e.g. PX(x) = Σ_y PX,Y(x,y).
**Markov's inequality** — an inequality bounding the probability that a nonnegative random variable is at least a value by its expectation divided by that value.
**master method** — a formulaic method for solving recurrences whose recursive calls are all equal-sized and a constant factor smaller than n; the authors avoid it because it handles only special cases and its three cases are limited instances of the brick method's leaf/balanced/root cases.
**matrix chain product problem** — given a chain of matrices A₁×A₂×⋯×Aₙ, determine the cheapest order (parenthesization) in which to perform the multiplications; solvable by dynamic programming with the same structure and cost bounds as OBST.
**max-heap** — a rooted tree in which the key at every node is greater than or equal to the keys of all its descendants.
**Maximum Contiguous Subsequence (MCS) problem** — given a sequence of integers, find the contiguous subsequence with maximum total sum (the sum of an empty sequence defined as −∞).
**Maximum Contiguous Subsequence Sum (MCSS) problem** — given a sequence of integers, find the total sum of the elements in the contiguous subsequence with maximum total sum; requires Ω(n) work.
**maximum overlap** — for two strings a and b, the largest suffix of a that is also a prefix of b.
**Maximum Subsequence Spanning the Cut** — computes the best subsequence crossing the cut as the largest suffix on the left (an MCSSE instance) plus the largest prefix on the right (an MCSSS instance); Θ(n) work and Θ(lg n) span.
**maximum vertex matching problem** — the problem of finding the largest vertex matching of a graph, solvable in O(√|V||E|) work.
**MCS: Brute Force** — solves MCS by enumerating all pairs (i,j) with 0 ≤ i ≤ j < n, computing each subsequence's sum with reduce and taking the maximum; Θ(n³) work and Θ(lg n) span.
**MCSS by Reduction to MCSSE** — solves MCSS by enumerating all MCSSE instances (all end positions) and selecting the maximum; O(n²) work and O(lg n) span.
**MCSS with Iteration** — solves MCSS by iterating over prefixes with iteratePrefixes and the update f(sum,x)=max(sum+x, x), then reducing with max; linear work and linear span.
**MCSS: Brute Force** — solves MCSS via brute-force reduction to MCS: run the brute-force MCS algorithm and sum the returned subsequence.
**MCSS: Brute Force Strengthened** — solves MCSS by directly taking the maximum, over all pairs i ≤ j, of reduce + 0 a[i···j], without tracking subsequences; Θ(n³) work and Θ(lg n) span.
**MCSS: Brutest Force** — a brute-force MCSS that enumerates all integers up to the sum of the positive elements and checks each for a matching contiguous subsequence; terminates but its bound depends on element values rather than length.
**MCSS: Reduced Force** — solves MCSS by reduction to MCSSS: try all start positions, solve MCSSS for each, and take the maximum; Θ(n²) work and Θ(lg n) span.
**MCSS: Work Optimal and Low Span** — computes all prefix sums in one scan and the minimum preceding prefix in another, takes their differences, and reduces with max; Θ(n) work and Θ(lg n) span, work optimal.
**MCSSE (Maximum Contiguous Subsequence Sum with Ending) problem** — find the maximum contiguous subsequence of a sequence ending at a specified end position.
**MCSSE Extension (lemma)** — the maximum contiguous subsequence ending at position i+1 is either the one ending at i extended by a[i], or just ⟨a[i]⟩ alone, whichever has the larger sum.
**MCSSE problem** — The Maximum Contiguous Subsequence Sum with Ending problem: find the maximum-sum contiguous subsequence that ends at a given position.
**MCSSPS** — the MCSS problem strengthened to also return the maximum prefix sum, maximum suffix sum, and overall total, enabling a linear-work divide-and-conquer solution.
**MCSSPS problem** — The strengthening of MCSS that additionally returns the maximum prefix sum and maximum suffix sum, enabling a linear-work divide-and-conquer solution.
**MCSSS (Maximum Contiguous Subsequence Sum with Start) problem** — find the maximum contiguous subsequence of a sequence that starts at a given position.
**MCSSS problem** — The Maximum Contiguous Subsequence Sum with Start problem: find the maximum-sum contiguous subsequence that starts at a given position.
**meld** — an operation that merges two priority queues into a single priority queue containing all their elements.
**Meldable Priority Queue** — for a totally ordered set S, a type T representing subsets of S with empty, singleton, findMin, insert, deleteMin, meld, and fromSeq, where meld(Q1,Q2) returns a queue holding the union of the elements of Q1 and Q2.
**members (elements)** — the distinct objects contained in a set, requiring the universe to support equality.
**memo table** — the mapping from recursive-call arguments to their computed solutions used in memoization, typically a balanced search tree or hash table.
**memoization** — the technique of storing solutions to subproblems as they are computed so they can be reused, underlying the top-down approach.
**Memoization and Memo Table** — memoization is running the recursive code as-is but keeping a mapping (the memo table) from a recursive call's arguments to its result, adding each argument-result pair on return so a repeated argument is looked up instead of recomputed.
**Memoized MED** — a top-down MED that threads the memo table M through each recursive call (taking and returning a memo table), keeping the code purely functional but inherently sequential due to the threaded table.
**merge sort** — a divide-and-conquer sort that splits the input into two half-length sequences, recursively sorts each, and merges the sorted results, giving Θ(n lg n) work and Θ(lg² n) span.
**Metric Traveling Salesperson (TSP) Problem** — given a complete undirected graph with non-negative edge weights satisfying the triangle inequality, find the minimum-weight cycle that visits all vertices.
**min-heap** — a rooted tree in which the key stored at every node is less than or equal to the keys of all its descendants, so the minimum is always at the root and only a partial order on keys is maintained.
**Minimum Edit Distance (MED) Problem** — given an alphabet Σ and two strings S, T ∈ Σ*, find the minimum number of single-character insertions and deletions needed to transform S into T.
**Minimum Spanning Trees** — given a connected undirected weighted graph, the MST problem requires finding a spanning tree of minimum total edge weight.
**miss** — an event in the darts game where the throw fails to remove a sufficiently large fraction of the instance, mapped to no decrease in instance size.
**Monte Carlo algorithm** — a randomized algorithm that uses randomization to weaken the correctness guarantee, so a given execution might or might not return a correct answer.
**MST Edge Replacement** — for an MST T and a non-tree edge e={u,v}, e is heavier than every edge e' on the path between u and v in T.
**MST-based TSP approximation** — using an MST's Euler tour with shortcuts to produce a metric-TSP tour within a factor of 2 of optimal, since W(MST) ≤ W(TSP) ≤ 2·W(MST).
**Multigraphs** — Graphs that allow multiple edges (multi-edges) between the same pair of vertices.
**Multiplicative Hashing with Offset** — for a prime p ≥ every key and 0<a<p, 0≤b<p, the class {h_{a,b}(x) = ((ax+b) mod p) mod m} is universal.
**mutable state** — References and destructive updates; their use breaks the observational equivalence between a parallel program and its sequential elision and complicates reasoning about correctness and efficiency.
**mutation** — Writing over the value stored in a location, changing (mutating) it.
**Mutual Exclusion Problem** — The problem of designing algorithms or protocols that ensure mutual exclusion; also called the critical section problem.
**mutually exclusive** — A property of outcomes such that each actual outcome of the experiment corresponds to exactly one, non-overlapping element of the sample space.
**mutually independent** — Events A₀,…,A_{n−1} such that for every non-empty subset I the probability of their intersection equals the product of their probabilities.
**Naïve Meldable Binary Heap (Data Structure 45.3)** — a binary-tree heap where meld chooses the smaller root and recursively melds the other heap with its right subtree; because the right spine can be arbitrarily long, meld can take Θ(|A|+|B|) work.
**nearly balanced (balance)** — a balancing scheme where all trees of n elements satisfying its invariants have height O(lg n), possibly in expectation or with high probability.
**Nearly Balanced BST** — a balancing scheme where all trees with n elements satisfying the scheme's invariants have height O(lg n), possibly only in expectation or with high probability.
**negative-weight cycle** — a cycle whose edge weights sum to a negative value, which can drive shortest-path weights to −∞ for paths passing through it.
**Neighborhood** — For an undirected graph, the neighborhood N_G(v) of a vertex v is its set of all neighbors {u | {u, v} ∈ E}; N⁺_G(v) and N⁻_G(v) denote out- and in-neighbors in a directed graph.
**Neighbors** — A vertex u is a neighbor of (adjacent to) v if edge {u, v} ∈ E; for directed graphs u is an in-neighbor of v if (u, v) ∈ E and an out-neighbor if (v, u) ∈ E.
**nested parallelism** — A style of parallelism (nested fork-join) in which any task can fork child tasks that run in parallel; the parent suspends until the children join, and forking can be nested, giving a simple work/span cost model.
**nested table** — a hash-table design using an outer table that maps each hash code to an inner table holding the key-value pairs with that hash code, where the inner table may be a list or another hash table.
**next** — the ordered-set operation returning the smallest element strictly greater than a given key.
**ninject (array cost)** — copies a and applies each update independently by a constant-work atomic write, giving linear work in the number of updates and constant span.
**Non-Negative Weights** — for p(v) = δ_{G⁺}(s,v), all reweighted edge weights w'(u,v) = w(u,v) + p(u) − p(v) are non-negative.
**Nonblocking Synchronization** — Atomic read-modify-write operations are called nonblocking because they don't block the executing thread; they can implement complex concurrent data structures guaranteeing system-wide progress.
**nondeterministic inject (ninject)** — ninject a b is like inject but when several updates target the same position any one may take effect, allowing a more efficient, lower-span implementation.
**normal form** — An expression with nothing left to reduce; computation in the lambda calculus applies beta reduction until normal form is reached (which may never happen).
**NP-hard** — A classification indicating a problem is unlikely to have an algorithm with polynomial work.
**nth (array cost)** — with arrays, indexing is a single array access, constant work and span.
**Nucleic Acid** — A large molecule structured as a linear chain of nucleotides; DNA and RNA are the two important examples.
**Nucleotide** — The basic building block of nucleic acid polymers such as DNA and RNA, comprising a nitrogenous base (Adenine, Cytosine, Guanine, or Thymine), a 5-carbon sugar, and one or more phosphate groups.
**Number of Bridged Satellites** — for a graph with n non-isolated vertices, the expected number of vertices removed by bridgeStarPartition is at least n/4.
**Number of Satellites** — for a graph with n• non-isolated vertices, the expected number of satellites in a call to starPartition is at least n•/4.
**numeric function** — A function from the domain of natural numbers (input sizes) to the codomain of real numbers (cost), used to characterize an algorithm's behavior.
**O, Ω, Θ, o, ω Notation** — Sets of numeric functions defined via dominance: O(f) = {g : f dominates g}, Ω(f) = {g : g dominates f}, Θ(f) = O(f) ∩ Ω(f), o(f) = O(f) \ Ω(f), and ω(f) = Ω(f) \ O(f).
**one-way hash function** — a hash function easy to compute in the forward direction but hard to invert, used in cryptography for hiding information, digital signatures, and password protection.
**Optimal Algorithm for MCSSE** — expresses each subsequence ending at j as a difference of prefixes, scans to get the total and the minimum preceding prefix, and returns their difference; Θ(j) work and Θ(lg j) span, optimal.
**Optimal Algorithm for MCSSS** — computes the sums of all subsequences starting at position i with a scan, then takes their maximum with reduce; Θ(n−i) work and Θ(lg(n−i)) span, asymptotically optimal.
**Optimal Binary Search Tree (OBST) Problem** — given an ordered key set S and a query probability p : S → [0,1], find the BST on S minimizing Σ_{s∈S} d(s,T)·p(s), where d(s,T) is the depth of key s (root depth 1).
**optimal substructure property** — the property that an optimal solution is composed of optimal solutions to its subproblems (e.g. each subtree of an optimal BST is itself optimal), a clue that greedy or dynamic programming may apply.
**Optimization and Decision Problem** — an optimization problem seeks a solution optimizing some criterion (e.g. a shortest path); a decision problem asks whether a solution exists; both may also require counting or enumerating solutions.
**Order Statistics Problem** — given a sequence, an integer k with 0 ≤ k < |a|, and a comparison < defining a total order, find the kth smallest element (counting from zero), i.e. the kth order statistic.
**ordered pair** — a two-element sequence (x, y) whose left element x is the first entry and right element y the second.
**Ordered Sets ADT** — for a totally ordered universe (U,<), a set ADT extended with order-based operations first, last, previous, next, split, join, getRange, rank, select, and splitRank.
**Overlap** — The function overlap(sᵢ, sⱼ) computing the maximum overlap when snippet sᵢ is followed by snippet sⱼ.
**Parallel BFS (Reachability)** — an instance of generic graph search that visits all frontier vertices at once each round, searching outward from distance 0, returning the reachable set and maximum distance; runs in O(m lg n) work and O(d lg² n) span where d is the largest reachable distance.
**Parallel BFS and Distances** — at the start of each round i of BFSReach, the visited set X equals {v | δ_G(s,v) < i} and the frontier F equals {v | δ_G(s,v) = i}.
**parallel composition** — The parallel operator ‖: (e₁ ‖ e₂) evaluates e₁ and e₂ at the same time and returns the ordered pair of results; same return value as sequential composition but different cost.
**Parallel Edge Contraction** — a specialization of graph contraction that uses parallel vertex matching to partition the graph; on cycle graphs achieves linear work and O(lg² n) span, but contracts general (e.g. star) graphs poorly.
**Parallel Star Partition** — computes TH, the arcs from tails to heads, forms a satellite-to-center partition map Ps (choosing one center per satellite), promotes all non-satellite vertices to centers mapping to themselves, and returns the centers and combined partition map.
**parallel time** — The run-time on P processors, upper bounded by the greedy scheduling principle as W/P + S for work W and span S.
**Parallel Vertex Matching** — flips a coin for each edge in parallel and selects edge (u,v) to match u and v if its coin is heads and all edges incident on u and v are tails.
**Parallelism** — An algorithm is parallel if it performs multiple tasks at the same time; parallelism is a property of an implementation or solution.
**Parametric BST** — an interface abstracting away the balancing scheme, with types K (key), T (tree), and E (exposed tree Leaf | Node of (T×K×T)) and functions size, expose, and joinMid, so that all BST functionality reduces to implementing joinMid.
**Parametric Flat Hash Tables (Data Structure 47.6)** — an open-addressing implementation with entries Empty, Dead (deleted), or Live(key,value), where lookup, insert, and delete follow the key's probe sequence and Dead markers preserve interleaved probe sequences.
**parent and child** — For a directed edge (u, v) in a rooted tree, u is the parent of v and v is a child of u.
**partial order** — a binary relation that is transitive (a ≤ b and b ≤ c implies a ≤ c) and antisymmetric (for distinct a,b, a ≤ b and b ≤ a cannot both hold), allowing some elements to be unordered.
**Partition Map** — a description of a graph partition as a tuple of a set of block labels plus a map sending each vertex to its block's label (often a representative vertex).
**Path** — A sequence of adjacent vertices in a graph; its length is the number of edges (one less than the number of vertices), and a simple path has no repeated vertices.
**Path Potentials** — for w'(u,v) = w(u,v) + p(u) − p(v) and G' = (V,E,w'), δ_G(u,v) = δ_{G'}(u,v) − p(u) + p(v).
**Path Weight** — the weight of a path in a weighted graph is the sum of the weights of the edges along that path.
**pebbling** — marking a DAG vertex as computed; a vertex may be pebbled once all its in-neighbors are pebbled, and vertices whose in-neighbors are all pebbled can be pebbled in parallel.
**Perfect Hashing** — for a known static set of n key-value pairs, a two-level scheme using an outer universal hash function with range n and, for each inner table Tᵢ of nᵢ pairs, a universal hash function with range nᵢ² chosen so it has no collisions; gives worst-case O(1) lookup and O(n) expected total space.
**perfect speedup** — Achieved when W work is divided evenly across P processors so total time is W/P; not always attainable because dependencies cannot be broken.
**Perfectly Balanced BST** — a binary tree with the minimum possible height; for n keys a perfectly balanced BST has height exactly ⌈lg(n+1)⌉.
**persistence** — The property that, in pure computation, data is never overwritten so any referenced data structure remains available in its original state.
**persistent** — a property of a data structure such that an update leaves the old version unmodified while creating a new version.
**persistent (pure) data structure** — a non-destructive implementation in which passing a value to an operation (map, update, inject, …) leaves the original value unchanged; safe for parallelism but costs extra (e.g. array update/inject require Ω(|a|) work to copy).
**pivot** — the element chosen in quicksort's divide step against which the data is partitioned into elements less than, equal to, and greater than it.
**pivot tree** — a binary search tree representing an execution of quicksort, whose nodes are tagged with the pivots chosen and whose edges represent caller–callee relationships, used to reason about quicksort's work and span.
**planar Euclidean traveling salesperson (eTSP) problem** — given a set of points P in the 2-d plane, find a tour of minimum total distance visiting every point exactly once, where distances are Euclidean (ℓ₂); it is NP-hard.
**planar Euclidean traveling salesperson problem** — Given points P in the 2-d plane, find a minimum-total-distance tour that visits every point exactly once under ℓ₂ distance.
**plus scan** — A scan using addition, producing the prefix sums of a sequence together with the total sum.
**Points in 2D (problem)** — given n, produce the sequence of points (x,y) with 0 ≤ x < n and 1 ≤ y < n.
**Points in 3D (problem)** — given n, produce the sequence of points (x,y,z) with 0 ≤ x ≤ n−1, 1 ≤ y ≤ n, and 2 ≤ z ≤ n+1.
**potential** — a value p(v) assigned to each vertex (via Bellman-Ford) used to reweight edges as w'(u,v) = w(u,v) + p(u) − p(v) without changing which path is shortest.
**PRAM (Parallel Random Access Machine)** — an extension of the RAM consisting of p sequential RAMs sharing one memory, operating synchronously under a common clock with each processor having a unique id in {0,…,p−1}.
**pre-order traversal** — the traversal that visits the node's key first, then the left subtree, then the right subtree.
**prefix** — A string s is a prefix of r if s is a substring starting at the beginning of r.
**prefixes** — all the subsequences of a sequence that begin at its start (including the empty sequence), over which scan computes its cumulative results.
**preorder** — A relation that is transitive and reflexive; asymptotic dominance defines a preorder over numeric functions.
**previous** — the ordered-set operation returning the largest element strictly less than a given key.
**previous / next** — ordered-set operations returning the largest key less than k (previous) or the smallest key greater than k (next), or ⊥ if none.
**Prim's Algorithm** — priority-first search from an arbitrary s with T=∅, visiting the frontier vertex of least priority p(v) = min_{x∈X} w(x,v) and extending T by the chosen edge; O(m lg n) work with binary heaps or O(m + n lg n) with Fibonacci heaps.
**primality testing** — the problem of determining whether a given integer is prime, a classic case where randomization simplifies algorithm design.
**primary clustering** — the tendency of linear probing to form runs of occupied cells, where any key hashing anywhere into a cluster lengthens it and makes further lengthening more likely, so a cluster's cost grows with the square of its length.
**Prime Sieve** — primeSieve n builds a length-n Boolean array of true, ninjects false into every composite position i·j (2 ≤ i ≤ ⌊√n⌋, 2 ≤ j ≤ n/i), then keeps the still-true positions; work O(n lg n) and span O(lg n) (Sieve of Eratosthenes).
**primer walking** — A sequential technique for sequencing nucleic acids up to ~10,000 bases by reading from each end with primers and repeatedly walking along using the last-read part as the next primer.
**Primes (problem)** — find all prime numbers less than a given natural number n, where a prime has exactly two distinct divisors, 1 and itself.
**primitive functions (sequences)** — the small subset nth, length, subseq, tabulate, flatten, inject, and ninject implemented directly, in terms of which the rest of the sequence interface is built.
**Primitive Tree Sequences (cost specification)** — length, expose, and join(Zero)/join(One(x)) cost 1 work and span, while join(Two(L,R)) costs 1 + |r(L) − r(R)|, i.e. proportional to the difference of the two ranks; none of these operations has parallelism.
**Primitive Tree Sequences (data type)** — a minimal balanced-tree sequence interface with type Tα = Zero | One of α | Two of Sα×Sα and functions length, expose (cut a sequence into left and right), and join (append/build from Zero, One, or Two).
**priorities (quicksort)** — a device that simulates randomness by assigning each key a unique uniformly random value in [0,1] before the algorithm starts and always choosing the highest-priority key as pivot, making the algorithm deterministic given the priorities.
**priorities (simulating randomness)** — unique values assigned uniformly at random from [0,1] to each key so the algorithm picks the highest-priority key, making randomized quicksort deterministic once assigned.
**Priority Queue** — An ADT consisting of a priority queue type supporting empty (return an empty queue), insert (insert a value with a priority), and removeMin (remove and return the value with the smallest priority).
**Priority Queue: Basic** — Cost specification for priority queue operations: empty is O(1) work and O(1) span; insert is O(log n) work and O(log n) span; removeMin is O(log n) work and O(log n) span.
**priority(T)** — a helper returning the priority of a treap's root, or −∞ if the tree is a leaf, in O(1) work.
**Priority-First Search (PFS)** — a specialization of generic graph search that assigns each frontier vertex a priority (which may change when an in-neighbor is visited) and visits the highest-priority vertex or vertices; a greedy technique used by BFS, Dijkstra's, and Prim's algorithms.
**probability mass function (PMF)** — for a discrete random variable X, the function PX(x) = P[X = x] mapping each value in X's range to the probability of the event {X = x}; non-negative, normalizing, and additive.
**probability measure** — A function P from events (subsets of Ω) to real numbers satisfying nonnegativity, additivity over disjoint events, and normalization P[Ω]=1.
**probability space** — a sample space Ω together with a probability measure P from subsets of Ω to real numbers satisfying nonnegativity (P[A] ∈ [0,1]), additivity for disjoint events, and normalization (P[Ω] = 1).
**Probe Sequence** — for a hash table with m entries, a permutation of {0,1,…,m−1} giving the order of positions probed for a key; correctness requires it to try all positions.
**processor id** — the unique index in {0,…,p−1} assigned to each processor of a PRAM, letting different processors do different computations despite running the same algorithm.
**pseudo-polynomial** — a work (or time) bound that is polynomial in the numeric value of an input parameter (e.g. k) but exponential in its bit-length; the subset-sum O(k|S|) algorithm is pseudo-polynomial.
**Pure Computation** — A function is pure if it performs no side effects, and a computation is pure if all its functions are pure; an impure or imperative computation can perform side effects.
**Quadratic Probing** — a flat-table implementation with probe sequence hᵢ(k) = (h(k)+i²) mod m, whose larger jumps move probes away from clusters and so avoid primary clustering.
**quick sort** — a divide-and-conquer sort with an interesting divide step (partitioning around a pivot) but trivial combine step, achieving Θ(n log n) work but only in expectation over its random choices.
**Quicksort and Order Statistics (lemma)** — the path from the root to the ith node of the quicksort pivot tree has the same distribution of pivots and subproblem sizes as the steps of select on k = i.
**quotient graph** — the smaller graph formed by representing each partition block as a super-vertex and rerouting cut edges between super-vertices.
**Race Conditions** — Side effects whose result depends on the evaluation order (timing) of the computation.
**RAM Model** — The Random Access Machine, the classic sequential machine-based model: a single processor with unbounded, natural-number-indexed memory, executing arithmetic/logical, memory, and jump instructions each in unit time, so time and work coincide.
**random hash function** — a hash function that maps each key to an independently, uniformly chosen value less than m; it mixes well and collides any two distinct keys with probability 1/m but is not compact.
**random variable** — a real-valued function X : Ω → R assigning a real number to each outcome of an experiment; discrete if its range is finite or countably infinite.
**Randomized Algorithm** — an algorithm that makes random choices, typically by consulting a source of randomness such as a pseudo-random number generator.
**randomized symmetry breaking** — using randomization (coin flips) to let vertices make independent local matching decisions in parallel while avoiding two vertices matching to the same neighbor.
**range search** — finding all keys between two given values, a search enabled by storing keys in sorted order in a BST.
**rank** — an integer r(T) associated with each tree sequence satisfying r(T) ∈ O(log |T|), with a parent's rank one or two greater than each child's, intuitively the height of the tree.
**rank (in a BST)** — the operation returning the number of keys in the tree that are less than or equal to a given key.
**rank (index)** — the position of an element in a sequence, numbered from 0 for the first element.
**rank (of an element)** — the position of an element in the corresponding sorted sequence.
**Rank and Select** — recursive implementations that at each node compare against |L|+1 to descend left or right; with size-augmented balanced trees they take logarithmic work and span, versus linear work without augmentation.
**Reachability** — a vertex v is reachable from u in a graph G (directed or undirected) if there is a path from u to v in G.
**Reachability and connectivity** — Vertex u can reach v if there is a path from u to v; an undirected graph is connected, and a directed graph strongly connected, if all vertices are reachable from all others.
**recurrence** — a recursive function whose arguments and result are numbers, used here to express the work and span of recursive algorithms; the goal is a closed-form (often asymptotic) solution rather than to run it.
**recursion tree** — the tree describing how a divide-and-conquer problem instance decomposes into smaller instances.
**Recursive MED** — computes MED(S,T) by returning |S| or |T| when one string is empty, skipping matching heads, and otherwise taking 1 + min(insert case, delete case), giving a DAG with O(|S||T|) vertices, O(|S||T|) work, and O(|S|+|T|) span.
**Recursive MED (Indexed)** — the MED recursion rewritten with integer indices i,j from the string ends, making explicit that there are only |S|×|T| distinct arguments.
**Recursive Optimal Binary Search Tree** — computes OBST cost as 0 for the empty set and otherwise Σ_{s∈S} p(s) + min over roots i of OBST(prefix) + OBST(suffix); with sharing the DAG has O(n²) vertices, giving O(n³) work and O(n log n) span.
**Recursive Optimal Binary Search Tree (indexed)** — a streamlined OBST recursion identifying each subproblem by a start offset i and length l, summing the subsequence probabilities plus the minimum over split points of OBST'(i,k)+OBST'(i+k+1,l−k−1).
**Recursive Subset Sum** — solves SS(S,k) by, for the head element a of S, returning true if k=0, false if S is empty, and otherwise trying both including a (recurse on k−a) and excluding a (recurse on k), giving a DAG of O(k|S|) vertices, O(k|S|) work, and O(|S|) span.
**Recursive Subset Sum (Indexed)** — the subset-sum recursion rewritten with an integer index i into S in place of a list, making it clear there are only |S|·(k+1) distinct subproblems and easier to detect equal arguments.
**Red-Black tree** — a BST maintaining that all leaves have depth within a factor of 2 of each other, ensured by coloring nodes red and black.
**reduce** — reduce f id a combines the elements of a with associative f and left identity id, computing via balanced divide-and-conquer; for associative f its result equals iterate f id a but its span is logarithmic rather than linear.
**reduce (array implementation)** — implemented by divide-and-conquer: split a at the midpoint, recurse on both halves in parallel, and combine the results with f.
**reduce (on a tree)** — the operation applying an associative function f with identity I over all keys of the tree.
**Reduce with Contraction** — reduceContract computes an associative reduction by contracting the sequence to half its length via f on consecutive pairs in parallel, then recursing; O(n) work and O(log n) span.
**Reduce with Divide and Conquer** — reduceDC applies an associative binary operation over a sequence by splitting at the middle, recursively reducing each half in parallel, and combining; for constant-cost operations it has Θ(n) work and Θ(lg n) span.
**reduced value** — a per-node augmentation storing the result of reducing the subtree rooted at that node with a user-specified associative function f, maintained by combining children's reduced values with the node's own value at node creation.
**reducer-augmented ordered table** — an ordered table augmented with an associative reducer f and identity I_f supporting reduceVal in O(1) work and span.
**Reducer-Augmented Ordered Table ADT** — for an associative reducer f: V×V→V with identity I_f, an ordered table supporting all ordered-table operations plus reduceVal A = Table.reduce f I_f A, which returns the sum of all values under f in O(1) work and span via augmented BSTs.
**reduceVal** — the operation on a reducer-augmented ordered table returning the reduction of all its values under the augmenting associative operator f, computable in O(1) work and span.
**reduction** — An algorithm-design technique that solves one problem by transforming it into another problem with a known solution; can also prove NP-hardness.
**Relation** — A binary relation from a set A to a set B is a subset of A × B; the set of first components is its domain and the set of second components its range.
**Remark (DFS is P-Complete)** — depth-first search is P-complete, a class of computations solvable in polynomial work but widely believed to admit no polylogarithmic-span algorithm.
**representative** — a vertex chosen inside a block to stand for (label) that block.
**restrict** — a table function restricting a table's domain to a given set b: {k↦v ∈ a | k ∈ b}, a bulk version of find.
**Reverse Markov Inequality** — an inequality used to bound the probability that a random variable bounded above takes a small value, applied here to bound P[Y ≤ 0.5(1−r_e)n].
**Reverse-Markov Inequality** — for a random variable X upper-bounded by a constant u, and any x < u, P[X ≤ x] ≤ E[u − X]/(u − x).
**right spine** — the path from the root of a binary tree to its rightmost node.
**right subtree** — the subtree rooted at the right child of a given node.
**root dominated** — a recurrence in which every node's cost is at least a factor α>1 greater than the summed cost of its children, so total cost is Θ of the root's cost (bounded by α/(α−1) times the root).
**Rooted Trees** — A directed graph in which one vertex (the root) has no in-edges, all other vertices have exactly one in-edge, and there is a path from the root to every vertex.
**round (of graph contraction)** — one application of the inductive contraction step.
**sample space** — An arbitrary, possibly countably infinite set Ω of all possible outcomes of a probabilistic experiment.
**sample space (Ω)** — an arbitrary, possibly countably infinite set of the possible outcomes of a probabilistic experiment, from which any experiment returns exactly one outcome.
**satellite** — a non-center vertex of a star graph, attached directly to the center.
**scan** — a sequence primitive that applies a reduction to every prefix of the input and returns the sequence of those results together with the total, with type (α*α→α)→α→Sα→(Sα*α).
**scan (prefix sums)** — scan f id a returns the pair (⟨reduce f id a[0···i−1] : 0 ≤ i < |a|⟩, reduce f id a), i.e. the exclusive cumulative "sums" over all prefixes plus the total; also called prefix sums.
**Scan Using Contraction** — scan computed by contracting the sequence with f on consecutive pairs, recursively scanning the half-size sequence to fill even positions, then an expansion step to fill odd positions; O(n) work and O(log n) span.
**Scan with Divide and Conquer** — scanDC computes the scan of a sequence by splitting in the middle, recursively scanning both halves, and adding the first half's total b′ to each element of the second half's result; Θ(n log n) work and Θ(log n) span.
**SCC Correctness** — Algorithm 55.18 (SCC) correctly solves the SCC problem.
**SCC Problem** — the problem of finding the strongly connected components of a graph and returning them in topological order.
**scheduler** — a scheduling algorithm that maps dynamically-generated parallel tasks to available processors, typically to minimize execution time (and sometimes space).
**Searching a BST** — the find algorithm: at each node compare k to the node's key k′, returning true on equality, recursing left if k < k′ and right if k > k′, and returning false at a leaf; it does O(h(T)) work.
**Secondary Clustering** — the residual problem of quadratic probing that two keys hashing to the same location follow the identical probe sequence, giving only m possible probe sequences.
**Secure Hash Algorithm (SHA)** — the NSA-developed family of cryptographic hash functions (e.g. SHA-224/256/384/512) named for "Secure Hash Algorithm.".
**select** — select(T,i) returns the key with rank i in T.
**select (in a BST)** — the operation returning the key with a given rank i in the tree.
**semantics** — What a program computes; operational semantics capture how it computes, and cost semantics augment these with specific costs.
**Separate Chaining** — a nested-table implementation using an array for the outer table and a list at each slot storing the colliding key-value pairs; insert is O(1) and lookup/delete are O(1+α) work in expectation.
**sequence (mathematical)** — an α sequence is a mapping (function) from ℕ to α whose domain is {0,…,n−1} for some n ∈ ℕ, i.e. a finite, gap-free, zero-indexed enumerated collection allowing repetition.
**sequence comprehensions** — a mathematical-style notation for constructing sequences (e.g. ⟨e : 0 ≤ i < eₙ⟩ for tabulate, ⟨e : p ∈ es⟩ for map, ⟨x ∈ es | e⟩ for filter, es ++ e's for append) that desugars to the sequence ADT functions.
**sequence scan** — Computing, for every prefix of a sequence, the reduction of that prefix under an associative operator, returning the results as a sequence.
**Sequences (data type)** — the α-sequence data type Sα, the set of all α sequences together with the functions length, nth, empty, singleton, tabulate, map, subseq, append, filter, flatten, update, inject, isEmpty, isSingleton, collect, iterate, reduce, and scan.
**Sequential BFS (Reachability)** — a specialization of graph search that in each round visits the frontier vertex with the closest distance (breaking ties arbitrarily), returning the set of vertices reachable from source s and the maximum distance δ_G(s,v); runs in O(|V| + |E|) work using a queue-based ephemeral representation.
**sequential composition** — The comma operator: (e₁, e₂) evaluates e₁ and e₂ one after the other and returns the ordered pair of results.
**Sequential Elision** — For any SPARC program, the corresponding sequential program obtained by replacing parallel pairs (‖) with sequential pairs; observationally equivalent to the parallel program when it is pure.
**set** — A collection of distinct objects, called its members or elements; the set with no elements is the empty set, written {} or ∅.
**set comprehension** — A compact notation for defining sets by mixing intentional and extensional specification.
**Set Partition** — A partition of a set A is a set P of non-empty, pairwise-disjoint subsets (blocks) of A whose union is A, so each element of A lies in exactly one block.
**Sets ADT** — for a universe U supporting equality, a type S representing all finite subsets of U with functions size, toSeq, empty, singleton, fromSeq, filter, intersection, difference, union, find, delete, and insert.
**shape property** — the invariant that a complete binary heap has all levels completely filled except possibly the bottom level, which is filled from the left.
**sharing (dynamic programming)** — the reuse of the solution to a subinstance that arises in solving multiple larger instances, the phenomenon dynamic programming exploits.
**shortcut edge** — in the MST-based TSP approximation, an edge taken directly to the next unvisited vertex instead of returning to an already-visited vertex; by the triangle inequality it is no longer than the path it replaces.
**Shortest Paths and Distance** — a shortest (weighted) path from u to v is a path of minimal total weight; the distance δ_G(u,v) is the weight of a shortest path (∞ if none exists).
**Shortest Superstring (SS) Problem** — Given an alphabet Σ and a set A ⊆ Σ* of finite strings, return a shortest string r that contains every x ∈ A as a substring.
**Shortest Superstring by Overlap Removal** — Given any start ordering of snippets s₁, …, sₙ, removing the maximum overlap between each adjacent pair (sᵢ, sᵢ₊₁) yields the shortest superstring of the snippets for that ordering.
**shortest-path tree** — a graph-search tree generated by BFS in which the path from s to any vertex v is a shortest path.
**Shotgun Method** — A genome-sequencing method: make multiple copies of a DNA sequence, randomly cut them into short fragments, sequence each fragment, and reconstruct the original genome from the overlapping fragments.
**Side Effects** — A computation has a side effect if, in addition to returning a value, it performs an effect such as writing to memory, printing, or writing to a file.
**SIMD (single instruction multiple data)** — a programming model in which every processor executes the same instruction but possibly on different data, the typical form of PRAM computation.
**Simple Divide-and-Conquer for MCSS** — MCSSDC splits at the middle, recursively solves both halves, uses bestAcross to find the best subsequence spanning the cut, and returns max{mb, mc, mbc}; Θ(n lg n) work and Θ(lg² n) span.
**Simple Uniform Hashing** — the assumption that for any universe and range there is a hash function mapping each key with equal probability to any valid hash code, independent of the other keys' images.
**Single Threaded Array Sequence (cost specification)** — the stseq cost bounds: fromSeq and toSeq are O(|a|) work O(1) span, nth and update are O(1) work and span, and inject is O(|b|) work with O(lg(degree)) span, valid only for the latest version.
**Single-Pair Shortest Paths** — given a weighted graph, a source s and a destination t, find the shortest weighted path from s to t.
**single-source shortest path problem (unweighted)** — the problem of finding the shortest path, measured as the number of edges, from a source to all other vertices.
**Single-Source Shortest Paths (SSSP)** — given a weighted graph and source s, find a shortest weighted path from s to every other vertex.
**single-threaded sequence (stseq)** — a persistent sequence data type Tα whose functions have no externally visible effects but internally use benign effects, supporting fromSeq, toSeq, nth, update, and inject with constant-work access and update on the latest version.
**singleton** — the constructor creating a structure with a single key (or key-value pair).
**singleton (array implementation)** — implemented via tabulate: singleton x = tabulate (λi.x) 1.
**size (of a BST)** — the number of keys in the tree, written |S|.
**size field** — a per-node augmentation recording how many keys are in the subtree rooted at that node, computed as size(L)+size(R)+1 when the node is created, enabling O(1) subtree-size queries.
**size of a BST** — the number of keys in the tree, written |S|.
**Snippets** — In genome sequencing, the fragments that are not substrings of any other fragment.
**Source** — the specific starting vertex s ∈ V (or set of vertices) from which a graph search begins its outward exploration.
**span** — the longest chain of sequential dependencies in a computation; written S(e) for expression e, or S(n) as a function of input size n.
**span of a dynamic program** — the heaviest vertex-weighted path in its DAG, i.e. the maximum over paths of the sum of the vertices' spans.
**Spanning Tree** — for a connected undirected graph G=(V,E), a tree T=(V,E') with E' ⊆ E that includes all vertices.
**Spanning Trees Edge Replacement** — given a spanning tree T of G and a non-tree edge e={u,v}, swapping e for any edge e' on the u–v path in T yields another spanning tree T'.
**SPARC** — A minimal, strict, purely functional pseudocode language (an extended, typed lambda calculus, similar to ML) used throughout the book to specify algorithms and data structures with nested parallelism.
**SPARC Cost Model** — a recursive definition of the work W(e) and span S(e) of every SPARC expression, where each construct sums the work (and span) of its subexpressions plus 1, except parallel application (e₁ || e₂) whose span is max(S(e₁),S(e₂))+1.
**SPARC expressions** — The core grammar of SPARC, defining identifiers, types, data types, values, expressions (infix operations, sequential and parallel pairs, case, conditionals, application, let bindings), operations, and bindings.
**Sparse and Dense Graphs** — With n = |V| and m = |E|, a graph is informally sparse if m ≪ n² and dense otherwise.
**spawn** — An operation that takes an expression, creates a thread to execute it, and returns the thread, which then runs concurrently.
**speedup** — S_P = T_S/T_P, the ratio of the best sequential time T_S to the P-processor parallel time T_P; perfect speedup means S_P equals P.
**spin lock** — A synchronization mechanism that lets a thread busy-wait until the critical section is clear of other threads.
**Splay tree** — an amortized BST that does not guarantee near balance but guarantees O(lg n) amortized work per insert, find, and delete over any operation sequence.
**Split** — a recursive algorithm that exposes T's root, and on a key comparison returns (L,true,R) on equality, otherwise recurses into the relevant subtree and reassembles the far part with joinM.
**splitRank** — an ordered-set operation splitRank(A,i) returning the keys with rank less than i and those with rank at least i.
**SSSP+** — the SSSP problem restricted to non-negative edge weights (w : E → R⁺).
**staging** — An algorithm-design technique that identifies a repeatedly computed value, pre-computes it once, and stores it in a data structure for fast lookup instead of recomputing.
**standard deviation** — σ = √(E[(X − µ)²]), the square root of the variance.
**Star Contraction** — a higher-order algorithm taking base and expand functions: in the base case (no edges) it calls base on the vertices, otherwise it star-partitions, reroutes edges to super-vertices (dropping self-edges), recurses, and calls expand.
**Star Graph** — an undirected graph with a center vertex v and edges attaching v directly to every other vertex, called satellites.
**Star Partition** — a graph partition where each block is a vertex-induced subgraph with respect to a star graph.
**star partition (parallel construction)** — flip a coin per vertex: heads vertices become star centers, tails vertices with a heads neighbor become satellites of that neighbor, and tails vertices with no heads neighbor become their own singleton centers.
**Star Partition along Bridges** — bridgeStarPartition applies star contraction restricted to vertex-bridge edges, selecting bridges that go from a tail vertex to a head vertex, improving Boruvka's span from O(log³ n) to O(log² n).
**strengthening** — refining the problem being reduced to so it returns more information than strictly necessary, commonly used to improve efficiency by removing redundant recomputation.
**strict language** — A call-by-value language in which the argument to a function is always evaluated to a value before the function is applied.
**string** — a sequence of characters, written 'c₀c₁…c_{n−1}'.
**Strongly Connected Components** — the SCC algorithm sorts vertices by decreasing finish time (decreasingFinish), transposes the graph, and iterates DFSReach on the transposed graph in that order, collecting each nonempty reachable set as a component in topological order.
**Strongly Connected Graph** — a directed graph in which all vertices can reach each other.
**Sub-Path** — a sub-path of a path is itself a path contained within that path.
**Sub-Paths Property** — any sub-path of a shortest path is itself a shortest path, allowing shortest paths to be built from smaller shortest paths.
**Subgraph** — A graph H = (V′, E′) is a subgraph of G = (V, E) if V′ ⊆ V and E′ ⊆ E.
**subproblem** — A problem B that instances of a problem A are reduced to, especially when the reduction produces multiple instances of B.
**subseq (array cost)** — computed by adjusting slice boundaries without copying elements, constant work and span.
**subsequence** — a sequence b derived from a sequence a by deleting zero or more elements without changing the order of the remaining elements.
**subsequences (subseq)** — subseq(a,i,j) extracts the contiguous subsequence of a starting at position i of length j (clipped to a's bounds); written a[i···j] ≡ subseq(a,i,j−i+1).
**Subset Sum (SS) Problem** — given a multiset S of positive integers and a positive integer k, decide whether some X ⊆ S has Σ_{x∈X} x = k.
**substitution method** — a technique for solving a recurrence by guessing a closed form (with explicit constants) and verifying it by (strong) mathematical induction.
**substring** — A string s is a substring of r if s occurs in r as a contiguous block.
**subtract** — the table operation deleting from a table the entries whose keys belong to a given set, a bulk version of delete.
**suffix** — A string s is a suffix of r if s is a substring ending at the end of r.
**super-vertex** — a vertex of the quotient graph representing a contracted block of the original graph.
**Superlinear Recurrence** — the theorem that a recurrence W(n) = 2W(n/2) + k·n^(1+ε) with ε>0 solves to W(n) = O(n^(1+ε)), i.e. is root dominated.
**Superstring** — A string r is a superstring of a string s if s occurs in r as a contiguous block (i.e., s is a substring of r).
**swapCost** — The change in tour length from removing one edge from each recursive eTSP solution and bridging the endpoints across the cut with two new edges.
**Symmetry Breaking** — an algorithm's ability to distinguish between choices that otherwise look equivalent (e.g. selecting a subset of a graph's vertices by local decisions), which randomization can implement.
**sync** — An operation that takes a thread and waits until that thread completes its execution.
**Synchronization Instructions** — Techniques for solving mutual exclusion by synchronizing threads, broadly: spin locks (busy-wait), blocking locks/mutexes (block and wait for a signal), and atomic read-modify-write instructions.
**syntax** — The structure of a program itself.
**Syntax of the Lambda Calculus** — Expressions of the lambda calculus are one of three forms: a variable; a lambda abstraction (λ x . e) with argument x and body e; or an application (e₁ e₂).
**table** — an abstract data type mapping keys to associated values, also called a map, dictionary, key-value store, or associative array.
**Tables ADT** — for a universe of keys K supporting equality and values V, a type T representing the subsets of K×V in which each key appears at most once, with functions size, empty, singleton, domain, tabulate, map, filter, intersection, union, difference, find, delete, insert, restrict, and subtract.
**Tables cost specification** — table costs mirroring sets: O(1) for size/singleton, O(lg|a|) for find/insert/delete, and O(m·lg(1+n/m)) work with O(lg(n+m)) span for the bulk operations intersection/union/difference/restrict/subtract.
**tabulate** — tabulate f n produces the length-n sequence ⟨f(0),f(1),…,f(n−1)⟩ by applying f at each position, where the applications may run in parallel.
**tabulate (array cost)** — allocates a fresh n-element array and writes f(i) at each position; work is the sum of the work of the f(i), span is the maximum span of any f(i).
**The Asymmetric Traveling Salesperson Problem (aTSP)** — Given a weighted directed graph, find the shortest cycle that starts at some vertex and visits all vertices exactly once before returning to the start.
**The Graph Connectivity Problem** — given an undirected graph, find all connected components by specifying the set of vertices in each component.
**The Graph Reachability Problem** — given a graph G=(V,E) and a vertex v∈V, return all vertices reachable from v.
**The Memo Function** — a wrapper memo f M a that looks up a in memo table M, returning its stored value if present, and otherwise computing f M a, storing the result, and returning it.
**Thread** — Short for thread of execution, a computation that executes a given piece of code; a program using multiple threads is multithreaded, and threads support the spawn and sync operations.
**Thread Scheduler** — The component that executes spawned threads to completion, at any time running any subset of the ready (non-waiting) threads.
**time (execution time)** — the cost of a computation in the RAM model, measured by the number of instructions the machine executes; because the RAM is sequential, time and work coincide.
**top-down approach (memoization)** — a dynamic-programming implementation that runs the recursion from the root but stores each computed subproblem result so repeated calls are looked up rather than recomputed.
**topological sort** — a total ordering of a DAG's vertices consistent with the partial order, so that if a can reach b then a comes before b; equivalently every edge goes from left to right when vertices are laid out in a line.
**Topological Sort of a DAG** — a total ordering v₁ < v₂ < … < vₙ of a DAG's vertices such that for every directed edge (vᵢ,vⱼ), i < j.
**toSeq** — the set operation converting a set to a sequence by ordering its elements in an unspecified but implementation-consistent way.
**Total Expectations Theorem** — the law of total expectation used to combine conditional expected spans weighted by their probabilities to bound overall expected span.
**trace** — the set T(op) of calls to the combining function f (with their arguments) generated by an evaluation of iterate, reduce, or scan, over which its work and span costs are summed.
**tractable** — A problem for which a feasible (non-astronomical) amount of work and time suffices; a problem needing on the order of 10^100 operations is intractable.
**transposing the graph** — reversing the direction of every edge in a graph, which preserves reachability within each component but flips inter-component edges relative to the component-DAG topological order.
**Traveling Salesperson Problem (TSP)** — The problem of finding a minimum-weight Hamiltonian cycle in a graph; its symmetric and asymmetric variants are both NP-hard.
**Treap** — a binary search tree over a set K with a priority p: K → ℤ for each key that, in addition to the BST property on keys, satisfies the heap property on priorities (every node's priority is at least its children's); "Treap" is short for tree heap.
**Treap Generating Quicksort** — the qsTree variant of quicksort that chooses as pivot the key of largest priority, recurses on the less and greater parts in parallel, and builds a TNode; it generates the unique treap for the input sequence, so treap height equals quicksort recursion depth, O(lg n) with high probability.
**Treap-generating quicksort (qsTree)** — a quicksort variant choosing the highest-priority key as pivot, whose output tree is exactly the Treap for the input sequence.
**Treaps (data structure)** — an implementation of the parametric BST ADT with priorities, whose join function places the higher-priority root on top recursively so that joinMid, and split built on it, take O(log n) work and span with high probability.
**Tree** — An undirected graph is a tree if it has no cycles and is connected; a rooted tree designates a distinguished root node from which all other nodes can be accessed.
**Tree and Non-Tree Edges in DFS** — an edge (u,v) is a tree edge if v is discovered during the visit to u (tree edges form the DFS tree); a non-tree edge is a back edge if v is an ancestor of u, a forward edge if v is a descendant of u, and a cross edge if v is neither.
**tree contraction** — contracting the tree-shaped blocks defined by vertex bridges by removing non-bridge edges and applying star contraction along the tree, giving Boruvka O(m log n) work and O(log³ n) span.
**tree edge** — an edge (u,v) where v is first discovered during the visit to u; the tree edges define the DFS tree.
**tree method** — a technique for solving a recurrence by unfolding it into a recursion tree and summing, over all levels, the cost per node times the number of nodes at each level.
**tree sequence** — A sequence implementation built on balanced trees exposing only length, expose (cut into two pieces), and join (append two pieces).
**Tree Sequence Functions** — implementations of empty, singleton, append, nth, map, tabulate, filter, drop, update, subseq, and flatten built on the primitive tree-sequence operations expose and join.
**Tree Sequences (cost specification)** — balanced-tree costs: nth and subseq O(lg|a|); append work O(|lg(|a|/|b|)|); update cheaper than arrays; map/tabulate same work as arrays but +lg span; filter same as arrays; length/singleton/isSingleton/isEmpty/collect/iterate/reduce/scan same as array sequences.
**Tree Sets (cost specification)** — a tree-based set implementation giving O(1) work for size and singleton, O(lg|a|) for find/insert/delete, and O(m·lg(1+n/m)) work with O(lg n) span for the bulk operations, where n and m are the larger and smaller set sizes.
**Tree-based ordered sets and tables (cost specification)** — the costs match tree-based sets and tables for shared operations, and every ordered operation runs in O(lg n) work and span (join in the sum of the two input sizes).
**Trees and forests** — An undirected graph with no cycles is a forest; a connected forest is a tree; a rooted tree is a tree with one vertex designated as the root.
**triangle inequality** — for any three vertices, w(a,c) ≤ w(a,b) + w(b,c).
**type constructor** — An identifier that gives a name to a type (e.g., btree for binary trees).
**undirected graph** — a graph in which an edge denotes a symmetric pair of relation members (a,b) and (b,a); it can be represented as a directed graph keeping each edge in both directions.
**Union** — a divide-and-conquer algorithm that splits T₂ at the root key of T₁, recursively unions the less and greater parts in parallel, and joins them with joinM.
**union (on BSTs)** — an operation taking two BSTs and returning a BST containing the union of their keys; can be viewed as a "parallel" insert of multiple keys at once.
**union (table)** — a table function combining two tables' key-value pairs, using a combining function f for keys present in both, specified as (intersection f a b) ∪ (difference a b) ∪ (difference b a).
**Union and Intersection** — For sets A and B, the union A ∪ B contains all elements of A and B, and the intersection A ∩ B contains the elements in both; A and B are disjoint if A ∩ B = ∅.
**union bound** — Boole's inequality, stating that the probability of a union of events is at most the sum of their individual probabilities.
**union bound (Boole's inequality)** — for any collection of events A₀,…,A_{n−1}, P[⋃ Aᵢ] ≤ Σ P[Aᵢ], holding unconditionally and useful for high-probability bounds.
**union-find** — a data structure with operations insert, union (join two elements into one super-vertex), find (return the super-vertex containing an element), and equals; used to test whether two vertices are in the same component lazily.
**Union-Find Kruskal** — sorts the edges by weight, inserts all vertices into a union-find structure, then iterates over edges adding an edge to the tree and unioning its endpoints only when they are in different components; O(m log n) work, dominated by the sort.
**Universal Class of Hash Functions** — a class H of hash functions from U to ℕ_<m is universal if for all distinct x, y ∈ U the probability, over a uniformly random h ∈ H, that h(x)=h(y) is at most 1/m.
**Unweighted Shortest Paths (BFSDistance)** — a variant of parallel BFS that returns a table mapping every reachable vertex v to δ_G(s,v) by tagging frontier vertices with the current distance i as they are visited.
**update** — update(a,(i,x)) returns a copy of sequence a with position i set to value x, returning a unchanged if i is out of range.
**update (array implementation)** — implemented via tabulate that copies a, substituting x at the target position.
**variance** — σ² = E[(X − µ)²], the expected squared deviation of a random variable from its mean µ.
**version list** — A linked list, kept per position, of all updates to that position each tagged with its version number, most recent at the head.
**version number** — A per-sequence counter, incremented on each update or inject, used to identify which version of a position's value is current.
**vertex bridge (bridge)** — the minimum-weight edge incident on a given vertex, which by the light-edge property is always in the MST.
**vertex matching** — a subset M ⊆ E of edges no two of which share an endpoint (each vertex has degree at most 1 in M); also called an independent edge set.
**Vertex-Induced Subgraph** — The subgraph of G = (V, E) induced by V′ ⊆ V is H = (V′, E′) where E′ is all edges of E with both endpoints in V′ (a maximal subgraph on V′).
**visit / revisit / finish** — the three points of interest for a vertex v in DFS: visit when v is first visited, revisit when v is encountered but not visited again, and finish when all vertices reachable from v have been visited.
**visit time** — the timestamp when a vertex is first visited in DFS.
**Visited Vertices** — the set X of vertices a graph search has already visited and avoids re-visiting.
**weight balance** — a balancing criterion where the children of a node are about the same size.
**weight balanced (BB[α]) tree** — a BST where the left and right subtrees of a size-n node each have size at least αn for 0 < α ≤ 1 − 1/√2, with BB meaning bounded balance.
**weight table (label table)** — a separate table mapping each edge to its weight, extending any graph representation to weighted graphs by keeping edge weights structurally separate at the cost of some redundancy.
**Weight-balanced (BB[α]) tree** — a BST where each subtree of a size-n node has size at least αn for 0 < α ≤ 1 − 1/√2; BB stands for bounded balance, and α trades off search versus update cost.
**weighted (labeled) graph** — a graph that associates a value (weight) with each edge.
**Weighted and Edge-Labeled Graphs** — A triple G = (E, V, w) where w : E → L maps edges to labels (weights) drawn from a label set L; called a weighted graph when the labels are real numbers.
**with high probability** — a property that holds with probability p(n) such that limₙ→∞ p(n) = 1, usually of the form 1 − 1/nᵏ for constant k ≥ 1 and instance size n.
**word search** — a document-search function that finds all documents containing a given word.
**work** — The total number of primitive operations performed by an algorithm; on a sequential machine it corresponds to the sequential running time.
**Work and Span** — The work of a computation is the sum of the work of its subcomputations (for both sequential and parallel composition, 1 + W₁ + W₂); the span is the sum of spans for sequential composition (1 + S₁ + S₂) and the maximum for parallel composition (1 + max(S₁, S₂)).
**Work and Span of Star Contraction** — star contraction reduces a graph to isolated vertices in O((|V|+|E|) lg |V|) work and O(lg² |V|) span.
**Work Efficiency** — A parallel algorithm is (asymptotically) work efficient if its work is asymptotically the same as the running time of an optimal sequential algorithm for the same problem.
**work efficient** — describes a parallel algorithm that performs asymptotically the same work as the best known sequential algorithm for the problem (e.g. Θ(n log n) comparison sorting).
**work of a dynamic program** — the sum of the work of all vertices in its DAG.
**work-efficient algorithm** — An algorithm whose total work matches the best known (asymptotically optimal) work bound for the problem.
**work-span model** — the language-based cost model used in this book, based on two metrics: work (total number of operations) and span (longest chain of dependencies).
