# CSE 344 — Introduction to Data Management · Vocabulary

Source: University of Washington CSE 344, *Introduction to Data Management*, Spring 2026 (Sp'26), lecture slides — https://courses.cs.washington.edu/courses/cse344/26sp/

Grounded in the 27 public lecture PDFs (lec01–lec28, no lec14). Terms are ordered by course progression: relational model → SQL → relational algebra → database design/normalization → storage/indexing → query execution/optimization → transactions. Concepts not taught in this offering (relational calculus, datalog, MapReduce, semi-structured/JSON/XML, recovery/logging — the last explicitly deferred to CSE 444) are omitted.

## Relational data model

**Database** — A collection of files storing related data (e.g. a payroll, student, or products database).

**Database Management System (DBMS)** — A large program that efficiently manages a large database and lets it persist over long periods; examples include PostgreSQL, SQLite, Oracle, Snowflake, and BigQuery.

**Data model** — A mathematical definition of data. The relational model is one of several (others: semi-structured, key-value, graph, object-oriented); this course studies the relational model.

**Relational model** — Codd's model in which data is stored in simple, flat relations, retrieved via a set-at-a-time query language, with no prescription of the physical representation.

**Relation (table)** — A named, flat collection of tuples of the same shape.

**Tuple (row, record)** — A single record in a relation; one horizontal entry of the table.

**Attribute (column, field)** — A named component of a relation, e.g. `UserID`, `Name`, `Job`, `Salary`.

**Schema** — The type of the data: the relation name plus its attribute names, e.g. `Payroll(UserId, Name, Job, Salary)`.

**Instance** — The actual data currently in a relation (the set of tuples).

**Domain / attribute type** — Each attribute has a type; a value violating that type (e.g. a string where an INT is required) is not allowed.

**Set semantics** — In a relation, tuple order does not matter and duplicate tuples are not allowed.

**Bag semantics** — A collection that, unlike a set, permits duplicate tuples; allowed by some systems and produced by SQL by default.

**Flat table** — A relation may not contain sub-tables; attribute values are atomic (no nested tables).

## SQL basics

**SQL (Structured Query Language)** — A domain-specific, declarative, set-at-a-time language for relational databases: you describe *what* data you want and the system decides *how* to compute it.

**SELECT-FROM-WHERE** — The basic SQL query form: `SELECT` chosen attributes, `FROM` one or more tables, `WHERE` a filter condition.

**For-each (nested-loop) semantics** — The meaning of a SQL query, defined as iterating over each row (or combination of rows), testing the condition, and outputting matching tuples.

**Alias** — A short name bound to a table in the FROM clause via `AS` (e.g. `Payroll AS P`), used to qualify attribute references.

**DISTINCT** — A modifier that removes duplicate tuples from the result, converting bag semantics to set semantics.

**ORDER BY** — Sorts the query result by one or more attributes; multiple sort keys break ties left to right.

**CREATE TABLE** — A statement that defines a new, persistent table together with its attribute types and constraints.

**Data types** — Attribute types such as `CHAR(n)`, `VARCHAR(n)`, `TEXT`, `INT`, `SMALLINT`, `FLOAT`, `MONEY`, `DATETIME`; statically enforced except in SQLite.

**INSERT** — Adds one or more tuples to a table; the inserted tuples are persistent.

**DELETE** — Removes one, several, or all tuples from a table according to a WHERE condition.

**DROP TABLE** — Deletes an entire table.

**Persistence** — A table (and its tuples) continues to exist after the computer is shut down.

**Key** — One or more attributes that uniquely identify a row of a table.

**Primary key** — The one key SQL requires a table to designate when several candidate keys exist; declared with `PRIMARY KEY`. Good practice is one primary key per table.

**Composite (multi-attribute) key** — A key formed from a combination of attributes when no single attribute is unique, declared with `PRIMARY KEY (a, b)`.

**Foreign key** — One or more attributes that uniquely identify a row in *another* table; declared with `REFERENCES`, and must point to a unique attribute (almost always that table's primary key).

## Joins

**Join** — An operation that links records from different tables, often via a key/foreign-key relationship but permitted on any condition.

**Cross product (Cartesian product)** — The combination of every tuple of one table with every tuple of another; a join with no matching condition.

**Nested-loop semantics** — The meaning of a multi-table query: for each tuple of the first table, for each tuple of the second, etc., test the WHERE condition and output matches.

**Inner join / `JOIN … ON`** — The explicit join syntax `FROM A JOIN B ON <cond>`, equivalent to listing tables in FROM with the condition in WHERE.

**ON vs WHERE** — In an inner join the `ON` predicate behaves like a `WHERE` predicate; the distinction matters for outer joins.

**Self join** — A join of a table with itself, using two different aliases.

**Boolean expression** — A WHERE/ON condition built with `AND`, `OR`, `NOT` over comparisons.

**Outer join** — A join that also keeps unmatched tuples: `LEFT OUTER JOIN` keeps all left tuples, `RIGHT OUTER JOIN` all right tuples, `FULL OUTER JOIN` both, padding missing attributes with NULL.

## Aggregation and NULLs

**Aggregate** — A function mapping many values to one: `count`, `sum`, `avg`, `min`, `max`.

**count(\*)** — Counts all rows in a group; `count(attr)` counts non-null entries and `count(DISTINCT attr)` counts distinct non-null entries.

**NULL** — A special value meaning missing or unknown; aggregates (except `count(*)`) ignore NULLs, and any arithmetic expression containing a NULL evaluates to NULL.

**Three-valued conditions with NULL** — A WHERE condition that evaluates to NULL (neither true nor false) does not pass the filter; NULLs make conditions subtle.

**GROUP BY** — Partitions rows into groups by one or more attributes (or expressions) and applies aggregates per group; like `DISTINCT` plus aggregation.

**HAVING** — Filters *groups* by a condition on aggregates or grouping attributes, after `GROUP BY` (as opposed to `WHERE`, which filters rows before grouping).

**Empty groups** — `GROUP BY` never produces a group with `count(*) = 0`; queries needing zero-count cases require extra work (e.g. an outer join).

## Subqueries

**Subquery** — A query nested inside another, appearing in `SELECT`, `FROM`, or `WHERE`/`HAVING`.

**Subquery in SELECT** — Must return a single value; otherwise it is an error (except in SQLite).

**Subquery in FROM** — A nested query used as a derived table.

**WITH clause (common table expression)** — Names a temporary table computed by a subquery for use in the main query; a simple form of subquery common in data pipelines.

**EXISTS / NOT EXISTS** — Predicates testing whether a subquery returns a non-empty (`EXISTS`) or empty (`NOT EXISTS`) set; the natural way to express existential and universal quantification.

**IN / NOT IN** — Predicates testing membership (or non-membership) of a value in the set returned by a subquery.

**ANY / ALL** — Predicates comparing a value against *some* (`ANY`) or *every* (`ALL`) element of a subquery result.

**Existential vs universal quantifier** — `Exists x P(x)` and its dual `Forall x good(x) ≡ Not Exists x (Not good(x))`, the logical basis for expressing "for all" via `NOT EXISTS`.

**Correlated subquery** — A subquery that references an attribute from the outer query, so it is re-evaluated for each outer row.

**Unnesting** — Rewriting a nested query as an equivalent flat SELECT-FROM-WHERE (sometimes needing a left outer join or aggregation).

**Witness / argmax** — The record(s) achieving a min or max value; finding the max is easy, but returning the tuple attaining it (the witness) needs a join or `HAVING`.

**Monotone query** — A query Q where `I ⊆ J` implies `Q(I) ⊆ Q(J)`; every SELECT-FROM-WHERE query without subqueries or aggregation is monotone, whereas aggregation and negation (`NOT EXISTS`, `NOT IN`) are non-monotone.

**Monotone function** — A function f where `x ≤ y` implies `f(x) ≤ f(y)`; aggregates are generally not monotone.

## Conceptual design (E/R) and constraints

**Entity** — A single object; the same idea as an object in programming.

**Entity set** — A collection of entities of the same type; the same idea as a class, and may be a subclass of another entity set. Each entity set becomes a relation.

**Relationship** — An association relating entities from two (or more) entity sets; may itself carry attributes.

**Entity-Relationship (E/R) diagram** — A pen-and-paper diagram of entity sets, their attributes, and relationships, used to design a schema before writing SQL.

**Multiplicity (cardinality) constraint** — A limit on how many entities may participate in a relationship: one-to-one, one-to-many, or many-to-many.

**Subclass / ISA / inheritance** — An entity set that is a subclass of another via `isA`, inheriting the superclass's attributes; represented in SQL by separate related tables (some DBMSs support inheritance directly).

**Constraint** — A rule the DBMS checks on every update; kinds include attribute-level, tuple-level, and referential-integrity constraints.

**Attribute-level constraint** — A constraint attached to one attribute, e.g. `NOT NULL`, `UNIQUE`, or `CHECK (job IN ('TA','Prof'))`.

**Tuple-level constraint** — A `CHECK` constraint over several attributes of the same row, e.g. `CHECK (job='TA' AND salary <= 60000)`.

**Referential integrity constraint** — A foreign-key constraint requiring that referenced values exist in the target table; enforced with a choice of update/delete policies.

## Functional dependencies and normalization

**Functional dependency (FD)** — An assertion that a set of attributes determines another: `X → Y` means any two tuples agreeing on X agree on Y.

**Armstrong's Axioms** — The inference rules (reflexivity, augmentation, transitivity) for deriving all FDs implied by a given set.

**Closure of an attribute set (X⁺)** — The set of all attributes functionally determined by X; computed by the closure operator and used to test whether an FD holds or whether X is a (super)key.

**Superkey** — A set of attributes whose closure is all attributes of the relation (it functionally determines every attribute).

**Trivial FD** — An FD `X → Y` where `Y ⊆ X`; it always holds.

**Data anomalies** — Problems caused by a poorly designed (redundant) table: *redundancy anomaly* (repeated data), *update anomaly* (a change requires many row updates), and *deletion anomaly* (deleting one fact loses another).

**Normalization** — Redesigning tables to remove anomalies by decomposition guided by functional dependencies.

**Decomposition** — Splitting a relation `R(A₁…Aₙ)` into `R₁(X⁺) ⋈ R₂({A₁…Aₙ} − X⁺)` using an FD `X → …`; a good (lossless) decomposition is recoverable by joining the pieces back.

**Boyce-Codd Normal Form (BCNF)** — A relation is in BCNF if for every nontrivial FD `X → Y` that holds, X is a superkey; the BCNF algorithm recursively decomposes violating relations and eliminates all anomalies (though decomposition may lose an FD).

**Third Normal Form (3NF)** — A weaker normal form than BCNF; mentioned as more complicated and not covered in this course.

## Database architecture

**Database architectures** — The deployment tiers: single-client/single-server (the entire SQLite engine lives in your application), 2-tier client-server (only the connection manager is in your app, the DBMS is a separate server), and 3-tier (adding an application server).

**JDBC** — The Java client interface used to connect an application to a database server.

## Relational algebra

**Relational algebra** — A set of operators over relations that provides the logical query plan a SQL query is compiled into.

**Selection (σ)** — `σ_pred(R)`: keeps the tuples of R satisfying a predicate.

**Projection (Π)** — `Π_attrs(R)`: keeps only the listed attributes (with duplicate elimination under set semantics).

**Cartesian product (×)** — Combines every tuple of one relation with every tuple of another.

**Join (⋈)** — Cartesian product followed by a selection; specializations include eq-join, theta-join, and natural join.

**Natural join** — A join that matches on all commonly named attributes and keeps one copy of each.

**Theta-join / eq-join** — A join whose condition is an arbitrary predicate (theta-join) or an equality (eq-join).

**Union (∪)** — Combines the tuples of two union-compatible relations (with set or bag variants).

**Difference (−)** — Returns tuples in one relation but not another; the basis for expressing negation and non-monotone queries.

**Intersection (∩)** — Returns tuples common to two relations.

**Rename (ρ)** — Renames a relation or its attributes so operators can refer to them unambiguously.

**Extended relational algebra** — Relational algebra augmented with grouping/aggregation and other operators so that full SQL (e.g. `HAVING`) needs no extra operator.

**Logical query plan** — A relational-algebra expression tree representing a query independent of execution algorithms.

## Query execution and physical operators

**Physical operator** — A concrete algorithm implementing a relational-algebra (logical) operator; the logical plan alone does not fully describe execution.

**Physical query plan** — A logical plan in which every operator is assigned a physical algorithm.

**Nested-loop join** — The simplest join algorithm: for each tuple of R, scan S for matches.

**Hash join** — A join that builds a hash table on one input and probes it with the other; usually O(n) but can degrade to O(n²).

**Merge join (sort-merge join)** — A join that scans two sorted inputs in tandem; O(n log n) including the sort.

**Hash table** — A structure simulating an array indexed by keys, used to implement hash joins and grouping.

**Duplicate elimination** — The extra step that turns a bag result into a set (needed for set-semantics union, projection, etc.).

## Storage and indexing

**Index** — An auxiliary file that speeds access to the data by a search key; gives direct access to reduce the number of I/Os.

**B+ tree** — The usual index structure: a perfectly balanced search tree whose leaves hold the keys; with fan-out m, a lookup in N records costs about `log_m N` block reads. Insertion and deletion keep each node between d and 2d keys by splitting/merging.

**Clustered vs unclustered index** — An index is *clustered* if the data file is physically sorted by the index's search key (only one per table is possible); otherwise it is *unclustered*. Clustering strongly affects the I/O cost of an index-based selection.

## External-memory algorithms and cost

**External-memory algorithm** — An algorithm designed to minimize disk I/O because data does not fit in main memory.

**Block (page)** — The unit the disk reads and writes; the disk always reads one entire block at a time.

**Buffer pool (main memory)** — The M pages of main memory available to hold blocks during query processing.

**Cost model parameters** — `B(R)` = number of blocks holding relation R, `T(R)` = number of tuples, `V(R,A)` = number of distinct values of attribute R.A, and `M` = number of memory pages; cost is measured in disk I/Os.

**Sequential access** — Reading consecutive blocks, cheaper than scattered reads; the reason clustered indexes and full scans can be efficient.

**Index-based selection** — Answering a selection through an index rather than a full scan; its cost depends on whether the index is clustered or unclustered.

**Block nested-loop join** — A nested-loop join that reads R in chunks of (M−2) pages ("blocks") to reduce the number of passes over S.

**Partitioned hash join** — A join (used heavily by real DBMSs) that hash-partitions both R and S into buckets on disk, then joins matching buckets in memory using a second hash function.

## Query optimization

**Query optimization** — Transforming a logical plan into an equivalent, least-cost physical plan.

**Search space** — The set of all candidate plans for a query; huge, so optimizers restrict it (e.g. to left-deep plans, avoiding cross products).

**Left-deep / right-deep / bushy plans** — Shapes of join trees; optimizers commonly limit the search space to left-deep plans.

**Heuristics** — Rule-of-thumb transformations that always help, such as pushing selections down below joins.

**Pipelining vs blocking** — Whether an operator streams its output to the next operator as it produces it (pipelining) or must fully materialize/consume its input first (blocking).

**Cardinality estimation** — Estimating the number of tuples each intermediate result produces, computed bottom-up and used to estimate plan cost.

**Selectivity factor (θ)** — The fraction of tuples expected to satisfy a predicate; for `σ_{A=const}`, `θ = 1/V(R,A)`.

**Uniformity assumption** — Assuming values of an attribute are uniformly distributed when estimating selectivity.

**Independence assumption** — Assuming distinct predicates (or attributes) are statistically independent when combining their selectivities.

**Containment-of-values assumption** — Assuming that the value set of one join attribute is contained in the other's when estimating join cardinality.

**Histogram** — A statistic that refines `T(R)` and `V(R,A)` per value range; 1-d histograms mitigate the uniformity assumption and 2-d histograms mitigate the independence assumption (though the latter are rarely supported).

## Transactions and concurrency control

**Transaction** — A sequence of reads and writes to the database that must execute as a unit; delimited by `BEGIN TRANSACTION` … `COMMIT`.

**ACID** — The informal guarantees of a transaction: **Atomicity** (all or none of its operations happen), **Consistency** (it takes the DB from one consistent state to another), **Isolation** (it appears to run alone), and **Durability** (committed effects survive crashes).

**BEGIN / COMMIT / ROLLBACK (ABORT)** — Statements that start a transaction, make its effects permanent, or undo them.

**Autocommit** — A mode in which each statement is its own transaction, committed immediately.

**Database consistency** — An invariant that should always hold on the data; if the application is correct, transactions preserve it.

**Schedule** — An interleaving of the read/write operations of several concurrent transactions.

**Serial schedule** — A schedule in which every operation of one transaction precedes all operations of the next (no interleaving); by definition safe.

**Serializable schedule** — A schedule equivalent in effect to some serial schedule; the goal of concurrency control.

**Conflict** — A pair of operations that cannot be swapped without possibly changing the result: read-write `Ri(X),Wj(X)`, write-read `Wi(X),Rj(X)`, or write-write `Wi(X),Wj(X)` on the same element (plus any two ops of the same transaction).

**Conflict serializability** — A schedule is conflict-serializable if it can be turned into a serial schedule by swapping only non-conflicting adjacent operations; it implies serializability but is a stricter (worst-case) test and does not prevent phantoms.

**Precedence graph** — A graph with one node per transaction and an edge for each conflicting pair; the schedule is conflict-serializable iff this graph is acyclic.

**Dirty (inconsistent) read** — Reading a value written by an uncommitted transaction.

**Unrepeatable read** — Re-reading a value within a transaction and getting a different result because another transaction changed it.

**Phantom read** — A read that returns different sets of rows within a transaction because another transaction inserted or deleted qualifying rows.

**Lock** — A token a transaction must acquire on an element before reading or writing it; each element has one lock, and a transaction blocks if the lock is held by another.

**Shared (read) lock vs exclusive (write) lock** — A shared lock permits concurrent readers; an exclusive lock is needed to write and excludes all others.

**Two-phase locking (2PL)** — The rule that in every transaction all lock acquisitions precede all unlocks; it guarantees conflict-serializable schedules.

**Strict 2PL** — The variant used by real locking DBMSs in which all locks are held until commit/rollback, which also ensures recoverability.

**Deadlock** — A cycle of transactions each waiting for a lock the other holds; detected and broken by aborting (sacrificing) and retrying a transaction. Deadlocks are unavoidable in general.

**Isolation levels** — A spectrum trading isolation for throughput: `READ UNCOMMITTED`, `READ COMMITTED`, `REPEATABLE READ`, and `SERIALIZABLE`; weaker levels admit dirty reads, unrepeatable reads, or phantoms in exchange for less locking overhead and higher transactions-per-second.

**SQLite lock modes** — The concrete lock progression SQLite uses — shared/read lock, reserved lock, pending lock, and exclusive lock (acquired to commit) — illustrating locking-based concurrency control in practice.
