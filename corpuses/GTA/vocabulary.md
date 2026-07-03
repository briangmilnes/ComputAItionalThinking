# GTA — Graph Theory with Applications (Bondy & Murty) — Vocabulary
A glossary of 295 distinct defined terms, named theorems, and notation drawn from *Graph Theory with Applications* by J.A. Bondy and U.S.R. Murty (Macmillan/Elsevier, 1976).

**ε(G)** — the number of edges of G (the size of G).
**κ ≤ λ ≤ δ** — for every graph the connectivity is at most the edge connectivity, which is at most the minimum degree.
**ν(G)** — the number of vertices of G (the order of G).
**ω(G)** — the number of components of G.
**acyclic graph** — a graph that contains no cycles.
**adjacency matrix** — the ν × ν matrix A(G) = [a_ij] where a_ij is the number of edges joining vᵢ and vⱼ.
**adjacency matrix of a digraph** — the ν × ν matrix whose (i, j) entry is the number of arcs with tail vᵢ and head vⱼ.
**adjacent** — two vertices incident with a common edge, or two edges incident with a common vertex.
**arc** — a directed edge of a digraph, assigned an ordered pair of vertices by the incidence function.
**automorphism** — an isomorphism of a graph onto itself.
**automorphism group** — Γ(G), the group under composition of all automorphisms of G.
**Berge's Theorem** — a matching M is maximum if and only if G contains no M-augmenting path.
**bipartite graph** — a graph whose vertex set can be partitioned into two subsets X and Y so that every edge has one end in X and one in Y; G is bipartite if and only if it has no odd cycle.
**bipartition** — the partition (X, Y) of the vertex set of a bipartite graph.
**block** — a maximal connected subgraph with no cut vertex.
**bond** — a minimal nonempty edge cut of G; in a connected graph, a minimal set of edges whose removal disconnects it.
**bond space** — the vector space of all potential differences of D, spanned by the elementary potential differences of its bonds.
**boundary** — the boundary of a face, a closed walk traversing each incident cut edge twice; it is a cycle when the face has no incident cut edge.
**breakthrough** — the event in the labelling method when the growing unsaturated tree reaches the sink, yielding an f-incrementing path.
**bridge of a subgraph** — for a subgraph H, a subgraph of G induced by an equivalence class of the edges outside H under the relation of being linked by a path avoiding H internally, together with H-vertices where it meets H.
**Brooks' Theorem** — if a connected simple graph is neither an odd cycle nor a complete graph, then χ(G) ≤ Δ.
**Brouwer's Fixed-Point Theorem** — every continuous mapping of a closed n-disc into itself has a fixed point.
**capacity** — the value c(a), the maximum rate at which flow may pass along arc a.
**capacity of a cut** — cap K, the sum of the capacities of the arcs of the cut K.
**Cayley's Formula** — the number of distinct labelled spanning trees of Kₙ is nⁿ⁻².
**Chinese Postman Problem** — the problem of finding a minimum-weight tour (closed walk covering every edge) in a connected weighted graph with non-negative weights.
**chromatic number** — χ(G), the least k for which G is k-colourable.
**chromatic polynomial** — π_k(G), the number of distinct k-colourings of G, a polynomial in k of degree ν with integer coefficients alternating in sign, leading term kᵛ, and zero constant term.
**Chvátal's Theorem** — if a simple graph with ν ≥ 3 and degree sequence d₁ ≤ … ≤ d_ν has no index m < ν/2 with d_m ≤ m and d_{ν−m} < ν − m, then it is hamiltonian.
**circulation** — a real-valued function on the arcs of a digraph satisfying the conservation condition at every vertex.
**circumference** — the length of a longest cycle in G.
**clique** — a set S of vertices of a simple graph such that G[S] is complete; S is a clique iff it is an independent set of the complement.
**closed walk** — a walk of positive length whose origin and terminus coincide.
**closure of a graph** — the graph c(G) obtained from G by recursively joining nonadjacent vertices whose degree sum is at least ν, until no such pair remains.
**colour represented at a vertex** — a colour i is represented at vertex v when some edge at v has colour i.
**complement** — the complement Gᶜ of a simple graph G is the simple graph on V(G) in which two vertices are adjacent if and only if they are not adjacent in G.
**complement of a subgraph** — the subgraph H̄(G) obtained by deleting the edges of a subgraph H from G.
**complete bipartite graph** — a simple bipartite graph with bipartition (X, Y) in which each vertex of X is joined to each vertex of Y; with |X| = m and |Y| = n it is denoted Kₘ,ₙ.
**complete graph** — a simple graph in which each pair of distinct vertices is joined by an edge; the complete graph on n vertices is Kₙ.
**complete k-partite graph** — a simple k-partite graph in which each vertex is joined to every vertex not in its own subset.
**component** — a subgraph induced by an equivalence class of the connection relation on the vertex set.
**composition of graphs** — the simple graph G[H] on V(G) × V(H) in which (u, v) and (u′, v′) are adjacent iff uu′ ∈ E(G), or u = u′ and vv′ ∈ E(H).
**condensation** — the digraph on the dicomponents of D with an arc from one to another whenever some arc of D runs between them.
**conductance matrix** — the ν × ν matrix (Laplacian) with diagonal entries the vertex degrees and off-diagonal entry −a_ij, equal to MMᵀ, whose cofactors all equal the number of spanning trees.
**connected graph** — a graph with exactly one component; otherwise it is disconnected.
**connected vertices** — two vertices u and v are connected when G contains a (u, v)-path; connection is an equivalence relation on V.
**connectivity** — κ(G), the minimum size of a vertex cut of G (taken as ν − 1 for a complete graph); κ(G) = 0 when G is trivial or disconnected.
**connector problem** — given the cost of a direct link between each pair of sites, find a minimum-total-cost network connecting them all, i.e. a minimum-weight connected spanning subgraph.
**conservation condition** — the requirement that at each intermediate vertex the flow in equals the flow out.
**contraction of an edge** — the operation of deleting an edge e and identifying its two ends, yielding the graph G·e.
**converse** — the digraph D̄ obtained from D by reversing every arc.
**cotree** — the complement of a spanning tree T in a connected graph, i.e. the edges not in T.
**covering** — a set K of vertices such that every edge has at least one end in K, also called a vertex cover.
**covering number** — β(G), the number of vertices in a minimum covering.
**critical graph** — a graph G with χ(H) < χ(G) for every proper subgraph H.
**crossing number** — the least number of edge crossings in any drawing of G in the plane.
**cut** — for a network with source x and sink y, an arc set of the form (S, S̄) with x ∈ S and y ∈ S̄.
**cut edge** — an edge e whose deletion increases the number of components, ω(G − e) > ω(G); equivalently an edge lying on no cycle, also called a bridge.
**cut vertex** — a vertex v whose deletion increases the number of components; for a loopless nontrivial connected graph, ω(G − v) > 1.
**cutset rank** — dim of the bond space, ν − ω, the number of edges in a spanning forest.
**cycle** — a closed trail whose origin and internal vertices are all distinct.
**cycle rank** — dim of the cycle space, ε − ν + ω, the nullity of the graph.
**cycle space** — the vector space of all circulations of D, spanned by the elementary circulations of its cycles.
**degree** — the degree d_G(v) of a vertex v is the number of edges of G incident with v, each loop counted twice.
**degree of a face** — d_G(f), the number of edges incident with face f, each incident cut edge counted twice.
**degree sequence** — for a graph with vertices v₁,…,v_ν, the sequence (d(v₁),…,d(v_ν)) of their degrees.
**degree-majorised** — G is degree-majorised by H when ν(G) = ν(H) and G's nondecreasing degree sequence is entrywise at most that of H.
**demand** — a non-negative requirement τ(yⱼ) on the net flow into a sink.
**diameter** — the maximum distance between two vertices of G.
**diameter of a point set** — the maximum distance between two points of a finite planar point set (a geometric notion distinct from graph diameter).
**dicomponents** — the maximal diconnected subdigraphs, the equivalence classes of mutual reachability.
**diconnected** — a digraph in which every vertex is reachable from every other; equivalently one with a single diconnected component.
**Dirac's Theorem** — if a simple graph has ν ≥ 3 vertices and minimum degree δ ≥ ν/2, then it is hamiltonian.
**directed graph** — a digraph: an ordered triple (V(D), A(D), ψ_D) of a vertex set, an arc set disjoint from it, and an incidence function assigning each arc an ordered pair of vertices.
**directed path** — a directed walk whose vertices are distinct; likewise directed trail, directed cycle, and directed tour.
**directed walk** — a finite non-null alternating sequence of vertices and arcs in which each arc's tail and head are the preceding and following vertices.
**disjoint subgraphs** — subgraphs with no vertex in common; edge-disjoint subgraphs share no edge.
**distance** — the distance d_G(u, v) is the length of a shortest (u, v)-path, or infinite if u and v are not connected.
**dual graph** — the plane graph G* with one vertex per face of G and one edge e* per edge e of G, joining the two faces separated by e.
**edge** — an element of the edge set E(G), represented by a line joining the points of its two ends.
**edge chromatic number** — χ′(G), the least k for which a loopless graph is k-edge-colourable; also called the chromatic index.
**edge connectivity** — λ(G), the minimum size of an edge cut of G; λ(G) = 0 if G is trivial or disconnected, and 1 if G is connected with a cut edge.
**edge covering** — a set L of edges such that every vertex is an end of some edge in L; it exists iff δ > 0.
**edge covering number** — β′(G), the number of edges in a minimum edge covering.
**edge cut** — a subset of E of the form [S, S̄] = {edges with one end in S and one in S̄}, where S is a nonempty proper subset of V.
**edge independence number** — α′(G), the number of edges in a maximum matching.
**edge-deleted subgraph** — G − E′, the spanning subgraph with edge set E \ E′ (G − e when E′ = {e}); G + E′ adds the edges E′ instead.
**edge-induced subgraph** — for a nonempty E′ ⊆ E, the subgraph G[E′] whose edge set is E′ and whose vertex set is the set of ends of edges in E′.
**edge-transitive** — a simple graph in which, for any two edges, some automorphism maps one to the other.
**embeddable on a surface** — a graph is embeddable on a surface S if it can be drawn on S with edges meeting only at their ends.
**empty graph** — a graph with no edges.
**ends** — the two vertices u and v that an edge e joins (ψ_G(e) = uv).
**equality subgraph** — the spanning subgraph G_l whose edges are those xy with l(x) + l(y) = w(xy), for a feasible vertex labelling l.
**Euler tour** — a tour that traverses each edge exactly once (a closed Euler trail).
**Euler trail** — a trail that traverses every edge of a graph.
**Euler's Formula** — for a connected plane graph, ν − ε + φ = 2.
**eulerian graph** — a graph that contains an Euler tour, equivalently a connected graph in which every vertex has even degree.
**exterior face** — the unique unbounded face of a plane graph.
**extremal graph theory** — the branch, rooted in Turán's Theorem, concerned with the maximum number of edges a graph may have while avoiding a prescribed subgraph.
**f-incrementing path** — an unsaturated (source, sink)-path along which the flow can be increased, whose existence shows the flow is not maximum.
**face** — one of the connected regions into which a plane graph divides the plane; φ(G) denotes the number of faces.
**face chromatic number** — χ*(G), the least k for which a plane graph has a proper k-face colouring (faces separated by an edge coloured differently); χ*(G) = χ(G*).
**factorable graph** — a graph that is the edge-disjoint union of factors of a given kind; k-factorable when the pieces are k-factors.
**feasible flow** — a flow whose net outflow at each source is at most its supply and whose net inflow at each sink is at least its demand.
**feasible vertex labelling** — a function l on X ∪ Y with l(x) + l(y) ≥ w(xy) for every x ∈ X, y ∈ Y.
**Feasible-Flow Theorem** — a feasible flow exists iff c(S, S̄) ≥ τ(Y ∩ S) − σ(X ∩ S) for every vertex set S (Gale).
**finite graph** — a graph whose vertex set and edge set are both finite.
**five-colour theorem** — every planar graph is 5-vertex-colourable.
**Fleury's Algorithm** — an algorithm that constructs an Euler tour by tracing a trail, taking a cut edge of the untraced subgraph only when no other edge is available.
**flow** — a function f on the arcs with 0 ≤ f(a) ≤ c(a) for every arc and satisfying the conservation condition at every intermediate vertex.
**forest** — an acyclic graph, each of whose components is a tree.
**four-colour conjecture** — the statement, later proved, that every planar graph is 4-vertex-colourable; determining it is the four-colour problem.
**fundamental system of bonds** — for a spanning forest T, the bonds each determined by removing one tree edge; they form a basis of the bond space.
**fundamental system of cycles** — for a spanning forest T, the cycles obtained by adding one non-tree edge to T at a time; they form a basis of the cycle space.
**Gallai's identity** — for any graph with no isolated vertices, α(G) + β(G) = ν.
**girth** — the length of a shortest cycle in G, or infinite if G has no cycle.
**girth and chromatic number** — Erdős's result that for all k, l ≥ 2 there is a graph of girth at least k and chromatic number at least l.
**good algorithm** — a graph algorithm whose number of computational steps on any graph is bounded by a polynomial in ν and ε.
**graph** — an ordered triple (V(G), E(G), ψ_G) consisting of a nonempty set V(G) of vertices, a set E(G) of edges disjoint from V(G), and an incidence function ψ_G that assigns to each edge an unordered pair of (not necessarily distinct) vertices.
**graphic sequence** — a sequence that is the degree sequence of some simple graph.
**Grinberg's condition** — for a plane graph with a Hamilton cycle C, Σᵢ (i − 2)(φᵢ′ − φᵢ″) = 0, where φᵢ′ and φᵢ″ count degree-i faces inside and outside C.
**Hadwiger's Conjecture** — every k-chromatic graph is contractible to a graph containing Kₖ.
**Hajós' Conjecture** — every k-chromatic graph contains a subdivision of Kₖ.
**Hall's Theorem** — a bipartite graph with bipartition (X, Y) has a matching saturating every vertex of X if and only if |N(S)| ≥ |S| for every S ⊆ X.
**Hamilton cycle** — a cycle that contains every vertex of a graph.
**Hamilton path** — a path that contains every vertex of a graph.
**Hamilton-connected graph** — a graph in which every two vertices are joined by a Hamilton path.
**hamiltonian graph** — a graph that contains a Hamilton cycle.
**handshaking lemma** — in any graph the degree sum equals twice the number of edges, Σ_{v∈V} d(v) = 2ε; consequently the number of vertices of odd degree is even.
**Hungarian method** — the algorithm that, in a bipartite graph, either finds a matching saturating X or finds a set S ⊆ X with |N(S)| < |S|, by growing M-alternating trees.
**hypohamiltonian graph** — a graph that is not hamiltonian but for which G − v is hamiltonian for every vertex v.
**hypotraceable graph** — a graph with no Hamilton path but for which G − v has a Hamilton path for every vertex v.
**identical graphs** — graphs G and H with V(G) = V(H), E(G) = E(H), and ψ_G = ψ_H (written G = H).
**incidence function** — the map ψ_G that associates with each edge e an unordered pair of vertices; if ψ_G(e) = uv the edge e joins u and v.
**incidence matrix** — the ν × ε matrix M(G) = [m_ij] where m_ij is the number of times (0, 1, or 2) that vertex vᵢ and edge eⱼ are incident.
**incident** — a relation between an edge and each of its ends (the ends are incident with the edge and vice versa).
**indegree and outdegree** — d⁻(v), the number of arcs with head v, and d⁺(v), the number of arcs with tail v.
**independence number** — α(G), the number of vertices in a maximum independent set.
**independent set** — a set of vertices no two of which are adjacent.
**induced subgraph** — for a nonempty V′ ⊆ V, the subgraph G[V′] whose vertex set is V′ and whose edges are exactly those of G with both ends in V′.
**inner bridge / outer bridge** — a bridge of a cycle C in a plane graph lying entirely inside C (inner) or entirely outside C (outer).
**intermediate vertex** — a network vertex that is neither a source nor a sink.
**internal vertices** — the vertices v₁,…,v_{k−1} of a walk other than its origin and terminus.
**internally-disjoint paths** — a family of paths no one of whose internal vertices is used by another path in the family.
**intersection** — the intersection G₁ ∩ G₂, defined analogously for subgraphs sharing at least one vertex.
**isomorphic** — G and H are isomorphic (G ≅ H) when an isomorphism between them exists.
**isomorphism** — a pair of bijections θ: V(G) → V(H) and φ: E(G) → E(H) such that ψ_G(e) = uv if and only if ψ_H(φ(e)) = θ(u)θ(v).
**join** — an edge e joins vertices u and v when ψ_G(e) = uv.
**join of two graphs** — the graph G ∨ H obtained from the disjoint union G + H by joining each vertex of G to each vertex of H.
**Jordan curve** — a continuous non-self-intersecting closed curve in the plane.
**Jordan Curve Theorem** — any arc joining a point interior to a Jordan curve to a point exterior to it must meet the curve.
**k-chromatic** — a graph with χ(G) = k.
**k-colourable** — a graph that has a proper k-vertex colouring.
**k-colouring** — a proper vertex colouring using k colours, i.e. a partition of V into k independent sets.
**k-connected** — a graph with κ(G) ≥ k.
**k-critical** — a graph that is k-chromatic and critical.
**k-cube** — the graph whose vertices are the ordered k-tuples of 0's and 1's, two vertices being joined exactly when they differ in one coordinate; it has 2ᵏ vertices and k·2^(k−1) edges.
**k-cycle** — a cycle of length k; it is odd or even according as k is odd or even, and a 3-cycle is a triangle.
**k-edge colouring** — an assignment of k colours to the edges of a loopless graph, equivalently a partition of E into k colour classes.
**k-edge cut** — an edge cut of exactly k edges.
**k-edge-colourable** — a graph having a proper k-edge colouring.
**k-edge-connected** — a graph with λ(G) ≥ k.
**k-factor** — a k-regular spanning subgraph of G.
**k-partite graph** — a graph whose vertex set can be partitioned into k subsets so that no edge has both ends in one subset.
**k-regular graph** — a graph in which every vertex has degree k.
**k-vertex colouring** — an assignment of k colours to the vertices of a graph.
**k-vertex cut** — a vertex cut of exactly k vertices.
**Kirchhoff's current law** — the requirement that the current entering each internal vertex equals the current leaving it, i.e. that the current is a circulation.
**Kruskal's Algorithm** — a greedy algorithm that builds an optimal spanning tree by repeatedly adding a least-weight edge that keeps the chosen edge set acyclic.
**Kuhn-Munkres Algorithm** — the algorithm that finds an optimal matching in a weighted complete bipartite graph by applying the Hungarian method within equality subgraphs and adjusting the labelling when it stalls.
**Kuratowski's Theorem** — a graph is planar if and only if it contains no subdivision of K₅ or K₃,₃.
**König's Theorem** — in a bipartite graph the size of a maximum matching equals the size of a minimum covering.
**labelling method** — the Ford–Fulkerson algorithm that repeatedly finds an f-incrementing path and augments the flow along it until none remains.
**length** — the number of edges in a walk.
**line graph** — the graph (edge graph) with vertex set E(G) in which two vertices are joined if and only if they are adjacent edges of G.
**link** — an edge whose two ends are distinct.
**loop** — an edge whose two ends are identical.
**M-alternating path** — a path whose edges are alternately outside M and in M.
**M-alternating tree** — a tree rooted at an M-unsaturated vertex u in which the unique path from u to each of its vertices is M-alternating.
**M-augmenting path** — an M-alternating path both of whose ends are M-unsaturated.
**marriage theorem** — the corollary of Hall's Theorem that every k-regular bipartite graph with k > 0 has a perfect matching.
**matched** — the two ends of an edge of a matching M are matched under M.
**matching** — a set M of links no two of which are adjacent.
**Matrix-Tree Theorem** — the number of spanning trees of G equals any cofactor of its conductance (Laplacian) matrix, equivalently det KKᵀ for K an incidence matrix with one row deleted (Kirchhoff).
**Max-Flow Min-Cut Theorem** — in any network the maximum value of a flow equals the minimum capacity of a cut (Ford and Fulkerson).
**maximal matching** — a matching to which no edge can be added while remaining a matching.
**maximum degree** — Δ(G), the largest vertex degree in G.
**maximum flow** — a flow of greatest possible value.
**maximum independent set** — an independent set of the greatest possible size.
**maximum matching** — a matching M such that G has no matching with more edges.
**Menger's Theorem** — a graph with ν ≥ k + 1 is k-connected if and only if any two distinct vertices are joined by at least k internally-disjoint paths.
**Menger's Theorem (arc form)** — the maximum number of arc-disjoint directed (x, y)-paths equals the minimum number of arcs whose deletion destroys all directed (x, y)-paths.
**Menger's Theorem (edge form)** — the maximum number of edge-disjoint (x, y)-paths in a graph equals the minimum number of edges whose deletion destroys all (x, y)-paths.
**Menger's Theorem (vertex form)** — for nonadjacent x and y, the maximum number of internally-disjoint (x, y)-paths equals the minimum number of vertices whose deletion destroys all (x, y)-paths.
**minimum covering** — a covering with the fewest possible vertices.
**minimum cut** — a cut of least possible capacity.
**minimum degree** — δ(G), the smallest vertex degree in G.
**multiplicity** — μ(G), the maximum number of edges joining a single pair of vertices.
**Mycielski's construction** — a construction that turns a triangle-free k-chromatic graph into a triangle-free (k+1)-chromatic graph, proving triangle-free graphs of arbitrarily high chromatic number exist.
**neighbour set** — N_G(S), the set of all vertices adjacent to some vertex of a set S.
**network** — a digraph together with disjoint nonempty vertex sets X (sources) and Y (sinks) and a non-negative integer capacity on each arc.
**nontrivial graph** — any graph that is not trivial (has more than one vertex).
**odd component** — a component with an odd number of vertices; o(G) denotes the number of odd components of G.
**Optimal Assignment Problem** — the problem of finding a maximum-weight perfect matching in a weighted complete bipartite graph.
**optimal cycle** — a minimum-weight Hamilton cycle in a weighted complete graph.
**optimal matching** — a maximum-weight perfect matching in a weighted complete bipartite graph.
**optimal tour** — a minimum-weight tour in a weighted connected graph.
**optimal tree** — a minimum-weight spanning tree of a weighted connected graph.
**order of a squared rectangle** — the number of squares in the dissection.
**orientation** — a digraph obtained from a graph by imposing an order on the ends of each edge.
**oriented incidence matrix** — the matrix whose rows are indexed by vertices, with entry +1 if the vertex is the tail of the arc, −1 if the head, and 0 otherwise.
**origin and terminus** — the first vertex v₀ (origin) and last vertex v_k (terminus) of a walk.
**orthogonality of cycle and bond spaces** — the cycle space and bond space of a digraph are orthogonal complements in the arc space.
**overlapping bridges** — two bridges of a cycle that cannot both be drawn on the same side without crossing; otherwise they avoid one another.
**path** — a trail whose vertices are all distinct.
**perfect matching** — a matching that saturates every vertex of the graph.
**Personnel Assignment Problem** — the problem of deciding whether n workers can each be assigned to a distinct job for which they are qualified, i.e. whether the associated bipartite graph has an X-saturating matching.
**planar embedding** — a drawing of a planar graph in the plane in which edges meet only at their ends.
**planar graph** — a graph that can be drawn in the plane so that its edges meet only at their ends; equivalently, one embeddable in the plane.
**plane graph** — a planar graph together with a fixed planar embedding, regarded as a graph of points and lines in the plane.
**plane triangulation** — a plane graph in which every face has degree three.
**poles** — the two vertices of the digraph associated with a squared rectangle that correspond to its top and bottom sides.
**potential difference** — a function on the arcs of the form δp(a) = p(x) − p(y) for a vertex function p, where a has tail x and head y.
**probabilistic method** — a nonconstructive counting argument establishing the existence of a graph with prescribed properties, as in the bound r(k, k) > 2^(k/2).
**product of graphs** — the simple graph G × H on V(G) × V(H) in which (u, v) and (u′, v′) are adjacent iff either u = u′ and vv′ ∈ E(H), or v = v′ and uu′ ∈ E(G).
**proper colouring** — a vertex colouring in which no two adjacent vertices share a colour, i.e. a partition of V into independent colour classes.
**proper edge colouring** — an edge colouring in which no two adjacent edges get the same colour, i.e. every colour class is a matching.
**proper subgraph** — a subgraph H of G with H ≠ G (written H ⊂ G).
**Ramsey number** — r(k, l), the least n such that every graph on n vertices contains a k-clique or an independent set of size l; generalised to r(k₁,…,k_m).
**Ramsey's Theorem** — for all positive integers k and l there is a least integer r(k, l) such that every graph on r(k, l) vertices contains a clique of k vertices or an independent set of l vertices.
**reachable** — a vertex v is reachable from u if the digraph contains a directed (u, v)-path.
**regular graph** — a graph that is k-regular for some k.
**reliable communication network** — a network required to remain connected after the failure of any k − 1 nodes or lines, modelled by a k-connected (or k-edge-connected) graph.
**Robbins' Theorem** — a graph has a diconnected (strongly connected) orientation if and only if it is 2-edge-connected.
**Rédei's Theorem** — every tournament has a directed Hamilton path.
**saturated arc** — an arc a with f(a) = c(a); it is unsaturated if f(a) < c(a).
**saturated vertex** — a vertex incident with an edge of a matching M is M-saturated; otherwise it is M-unsaturated.
**Schur's Theorem** — for every positive integer n there is an integer f_n such that any partition of {1,…,f_n} into n classes has a class containing a solution of x + y = z.
**score vector** — the vector of out-degrees (games won) of the vertices of a tournament; iterating gives the higher-level score vectors AⁱJ.
**section** — a section of a walk W is a subsequence vᵢeᵢ₊₁…eⱼvⱼ of consecutive terms of W, the (vᵢ, vⱼ)-section.
**self-complementary** — a simple graph G with G ≅ Gᶜ.
**self-dual** — a plane graph isomorphic to its own dual.
**shortest path problem** — the problem of finding, in a weighted graph with non-negative weights, a minimum-weight path between two specified vertices.
**simple graph** — a graph with no loops and no two links joining the same pair of vertices.
**sink** — a vertex of a network in the distinguished set Y, modelling a market.
**skew bridges** — two bridges whose vertices of attachment interleave around the cycle in the cyclic order u, u′, v, v′.
**source** — a vertex of a network in the distinguished set X, modelling a production centre.
**spanning subgraph** — a subgraph H of G with V(H) = V(G).
**spanning tree** — a spanning subgraph of G that is a tree.
**Sperner's Lemma** — every properly labelled simplicial subdivision of a triangle has an odd number of tricoloured (distinguished) small triangles.
**squared rectangle** — a rectangle dissected into finitely many (at least two) squares; perfect if the squares are all of different sizes, simple if it contains no smaller squared rectangle.
**stereographic projection** — the mapping from a sphere minus one point onto a tangent plane that realises plane embeddings as sphere embeddings and vice versa.
**storage problem** — the scheduling problem of storing mutually incompatible chemicals in the fewest compartments, modelled by vertex-colouring a conflict graph.
**strict digraph** — a digraph with no loops and no two arcs having the same tail and the same head.
**subdivision** — a graph obtained from another by subdividing edges, i.e. inserting vertices of degree two along edges.
**subdivision of an edge** — the operation of deleting an edge e and replacing it by a path of length two through a new vertex.
**subgraph** — a graph H with V(H) ⊆ V(G), E(H) ⊆ E(G), and ψ_H the restriction of ψ_G to E(H) (written H ⊆ G).
**supergraph** — G is a supergraph of H when H is a subgraph of G.
**supply** — a non-negative bound σ(xᵢ) on the net flow permitted out of a source.
**support** — the set of arcs on which a function is nonzero.
**system of distinct representatives** — for sets A₁,…,A_m, a set {a₁,…,a_m} with a_i ∈ A_i and all a_i distinct.
**tail and head** — for an arc a with ψ_D(a) = (u, v), the tail is u and the head is v; a joins u to v.
**Tait colouring** — a proper 3-edge colouring of a cubic (3-regular) graph.
**thickness** — θ(G), the least number of planar graphs whose union is G; θ(G) = 1 iff G is planar.
**timetabling problem** — the problem of scheduling teachers' classes in the fewest periods, solved by properly edge-colouring the corresponding bipartite graph.
**totally unimodular matrix** — a matrix every one of whose square submatrices has determinant 0, +1, or −1.
**tour** — a closed walk that traverses each edge of a graph at least once.
**tournament** — an orientation of a complete graph.
**trail** — a walk whose edges are all distinct.
**Travelling Salesman Problem** — the problem of finding a minimum-weight Hamilton cycle in a weighted complete graph.
**tree** — a connected acyclic graph.
**tree graph** — the graph whose vertices are the spanning trees of a connected graph, two spanning trees adjacent when they share exactly ν − 2 edges.
**trivial graph** — a graph with just one vertex and no edges.
**Turán graph** — T_{m,n}, the complete m-partite graph on n vertices whose parts are as equal in size as possible.
**Turán's Theorem** — a simple graph on ν vertices with no Kₘ₊₁ has at most ε(T_{m,ν}) edges, with equality only for the Turán graph T_{m,ν}.
**Tutte's Theorem** — G has a perfect matching if and only if o(G − S) ≤ |S| for every S ⊆ V.
**underlying graph** — the graph obtained from a digraph by ignoring the orientation of every arc.
**underlying simple graph** — the simple spanning subgraph obtained from G by deleting all loops and, for each adjacent pair, all but one link joining them.
**unilateral** — a digraph in which, for every two vertices, at least one is reachable from the other.
**union** — the union G₁ ∪ G₂ has vertex set V(G₁) ∪ V(G₂) and edge set E(G₁) ∪ E(G₂).
**uniquely k-colourable** — a graph in which any two k-colourings induce the same partition of V.
**uniquely k-edge-colourable** — a graph in which any two proper k-edge colourings induce the same partition of the edges.
**value of a flow** — val f, the net flow out of the sources, equal to the net flow into the sinks.
**vertex** — an element of the vertex set V(G), represented by a point in a diagram of the graph.
**vertex cut** — a subset V′ of V such that G − V′ is disconnected.
**vertex-deleted subgraph** — G − V′ = G[V \ V′], obtained by deleting the vertices in V′ together with their incident edges (G − v when V′ = {v}).
**vertex-transitive** — a simple graph in which, for any two vertices u and v, some automorphism maps u to v.
**vertices of attachment** — for a bridge B of H, the vertices where B meets H.
**Vizing's Theorem** — for a simple graph G, χ′(G) equals Δ or Δ + 1 (for loopless G, Δ ≤ χ′(G) ≤ Δ + μ).
**Wagner's characterisation** — a graph is planar if and only if it has no subgraph contractible to K₅ or K₃,₃.
**walk** — a finite non-null sequence W = v₀e₁v₁e₂v₂…e_kv_k of alternating vertices and edges in which the ends of eᵢ are v_{i−1} and vᵢ.
**weight** — the number w(e) on an edge; the weight w(H) of a subgraph is the sum of the weights of its edges.
**weighted graph** — a graph together with a real number w(e), the weight, assigned to each edge.
**wheel** — a graph formed from a cycle by adding one vertex joined to every vertex of the cycle; the added edges are its spokes.
**Whitney's Theorem** — a graph with ν ≥ 3 is 2-connected if and only if any two of its vertices are connected by at least two internally-disjoint paths.
