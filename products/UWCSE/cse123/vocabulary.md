# CSE 123 — Introduction to Computer Programming III · Vocabulary

Source: University of Washington CSE 123 (Introduction to Computer Programming III), Autumn 2025 (25au) offering, instructor James Wilcox. Extracted from the 20 public lecture slide decks (lectures 0–19) at https://courses.cs.washington.edu/courses/cse123/25au/lectures/

Terms are ordered by course progression, following the sequence of the lectures.

## Advanced object-oriented programming

**Comparable&lt;E&gt;** — A Java interface that lets a class define a natural ordering between two of its objects; it is used by `TreeSet`, `TreeMap`, `Collections.sort`, and other ordered collections.

**compareTo** — The single required method of `Comparable`; `a.compareTo(b)` returns a negative number if `a` is less than `b`, zero if they are equal, and a positive number if `a` is greater than `b`.

**subtraction trick** — Implementing `compareTo` for integer fields as `this.a - other.a` (ascending) or `other.a - this.a` (descending); it works only for integers because doubles suffer truncation.

**inheritance** — A relationship that connects a subclass to a superclass so the subclass borrows (inherits) the superclass's code to reduce redundancy, declared with `class Subclass extends Superclass`.

**subclass / superclass** — The subclass is the more specific class that extends and inherits from the more general superclass.

**super()** — A keyword used inside a constructor to invoke the superclass's constructor, analogous to how `this()` invokes another constructor of the same class.

**Object class** — The implicit root superclass that every Java object inherits from, providing methods such as `toString()` and `equals(Object)`.

**"is-a" relationship** — The design rule of thumb that class A should extend class B only if an A genuinely "is a" B in the real world (e.g. `Chef extends Employee`); Java does not enforce this, so it is the programmer's responsibility.

**inheritance hierarchy** — A tree of classes connected by `extends` relationships, designed to minimize redundant code while respecting the "is-a" test.

**polymorphism** — The behavior by which the actual type of an object, not its declared type, determines which overridden version of a method is executed at runtime.

**override** — Providing a new implementation of an inherited method in a subclass; at runtime Java uses the most specific overriding version starting from the object's actual type.

**declared type vs. actual type** — In `DeclaredType x = new ActualType()`, the declared type is the type of the variable and controls which methods the compiler allows; the actual type is the object actually created and controls which overridden method runs.

**casting** — Using `(Type)` to change the declared type of a reference so additional methods can be called on it; e.g. `Dog d = (Dog) a;`.

**compile-time error** — An error the compiler reports before the program runs, such as calling a method that the declared type does not have.

**runtime error** — An error that occurs while the program executes, such as casting an object to a type that is not a superclass of its actual type.

**abstract class** — A hybrid of an interface and a class: it can declare abstract methods and cannot be instantiated (like an interface) but can also hold field, constructors, and method implementations (like a class); used to share behavior among classes.

**abstract method** — A method that is declared with a signature but no body, deferring its implementation to subclasses.

**levels of abstraction** — The spectrum from interfaces (high-level specification of what behavior a type should have), through abstract classes (shared behavior plus specification), to concrete classes (individual behavior implementation).

## Interfaces, implementations, and data structures

**interface vs. implementation** — Interface is *what* something should do; implementation is *how* it is done. A recurring theme of CSE 123 is choosing between different implementations of the same interface.

**client vs. implementor** — The client is the code that uses a data structure through its interface; the implementor is the code that provides the underlying implementation.

**abstract data type (ADT)** — A data structure defined by its specified behavior (the operations it supports, e.g. the `List` interface) independent of how those operations are implemented.

**List interface** — The specified behavior of a list: `add`, `add(index, value)`, `remove`, `get`, `set`, `size`, etc., which any list implementation must provide.

**array vs. ArrayList** — An array is a fixed-length fundamental data structure (`int[] arr = new int[x]`); an `ArrayList` is a `java.util` class that provides the illusion of resizing.

**ArrayIntList** — A teaching implementation of a list that stores `int`s in an underlying array; it maintains an `int[] elementData` field and an `int size` field.

**elementData** — The backing array field inside an array-based list where the elements are actually stored.

**size** — The number of user-added elements in a list, which acts as the boundary between meaningful data and unused slots in the backing array; it must be tracked, never hardcoded.

**capacity** — The length of the underlying array, distinct from `size`; when `size == capacity` the list is full.

**resizing** — Growing a full array-backed list by allocating a new, larger array and copying the existing elements into it.

**shifting elements** — Moving elements over by one index to make room when inserting at, or to close the gap when removing from, the front or middle of an array-backed list.

## Memory, references, and linked structures

**value semantics** — The treatment of primitive types (`int`, `double`, `boolean`) and Strings, where a variable stores the value itself and assignment copies that value.

**reference semantics** — The treatment of object types (arrays, `Scanner`, `ArrayList`, etc.), where a variable stores a reference to a value in memory and assignment copies the reference, so two variables can share one underlying object.

**reference diagram** — A drawing used to track variables, the references they hold, and the objects in memory they point to.

**contiguous memory** — Storage laid out in one unbroken block, like an array; it cannot be resized in place because surrounding memory is occupied.

**non-contiguous memory** — Storage whose pieces are scattered in memory and joined by references; it is easy to grow by allocating more memory and linking it to the rest.

**node** — An object that stores a piece of data together with one or more references to other nodes, used to build non-contiguous linked structures.

**ListNode** — A node class for a linked list holding an `int data` field and a `ListNode next` reference to the following node; a class may reference its own type because it stores only a reference, not a nested object.

**next** — The reference field of a node that points to the next node in the chain; a `null` next marks the end of the list.

**reference chain** — A sequence of nodes linked by their `next` references, navigated with expressions like `node.next.next.data`.

**LinkedIntList** — A list ADT implemented with linked nodes, keeping a single `ListNode front` field pointing to the first node in the chain.

**front** — The field that references the first node of a linked list; modifying `front` (or a node's `next`) is what actually changes the list.

**inner class** — A class defined inside another class (e.g. `ListNode` inside `LinkedIntList`) so that implementation details are hidden from clients while still accessible to the enclosing class.

**curr (traversal variable)** — A temporary local `ListNode` used to walk a linked list (`ListNode curr = front; while (curr != null) { ...; curr = curr.next; }`) without losing the reference to the front.

**edge cases (F/M/E/E)** — The special situations to handle when modifying a linked list: Front (first node), Middle (general case), Empty list, and End of list.

## Runtime analysis

**runtime analysis** — Evaluating how long an algorithm takes by counting how the number of simple operations grows with input size, giving a comparison independent of hardware, OS, language, and compiler.

**simple operation** — A single primitive step (variable initialization/update, array access, conditional check) counted as one constant unit of work.

**complexity class** — The category describing how an algorithm's operation count scales with input size `n`, ignoring constant factors.

**constant time — O(1)** — Runtime that does not depend on the input size `n`, such as returning `arr[0]`.

**linear time — O(n)** — Runtime proportional to `n`, such as a single loop over an array.

**quadratic time — O(n²)** — Runtime proportional to `n²`, such as a nested loop over an array.

**logarithmic time — O(log n)** — Runtime that grows with the logarithm of `n`, arising when each step eliminates half of the remaining data (e.g. binary search, balanced-BST `contains`).

**dominating term** — The fastest-growing term of an operation count, which alone determines the complexity class as `n` becomes large (so `n² + 100000n` is `O(n²)`).

**Big-O notation** — Notation used to express the worst-case complexity of an algorithm, e.g. `O(n)` for a worst-case linear search.

**worst-case complexity** — The complexity of an algorithm in the least favorable input situation, which programmers focus on because solutions must perform well in the worst case.

## Recursion

**recursion** — Defining a problem in terms of itself; in programming, a method that calls itself, serving as an alternative (or complement) to iteration.

**call stack** — The last-in-first-out (LIFO) structure Java uses to track paused method calls, pushing a frame for each call and popping it when the method returns.

**stack frame** — The record of a single in-progress method call on the call stack, holding that call's local state.

**StackOverflowError** — The error that results from infinite recursion, when method calls pile onto the call stack without ever returning.

**base case** — The simplest version of a recursive problem, which has no subproblems and returns a known answer directly; it stops the recursion.

**recursive case** — The part of a recursive method that decomposes the problem into a smaller subproblem, makes the recursive call, and combines the results.

**recursive definition** — A definition expressed in terms of itself (e.g. `n! = n * (n-1)!`, Fibonacci, or "a linked list is either empty or a node followed by another list") that lends itself naturally to a recursive solution.

**public/private pair** — An idiom pairing a public method that kick-starts recursion with a private helper method that carries extra parameters (such as the current node or accumulated state) the client should not have to supply.

**accumulator** — An extra parameter (such as the `soFar` string or list) threaded through recursive calls to build up partial results.

## Search and backtracking

**exhaustive search** — Systematically exploring every possible solution in a search space, typically implemented as recursion plus an accumulator using a public/private pair.

**decision tree** — A visualization (not a data structure) of a recursive search process, where end nodes correspond to base cases, middle nodes to recursive cases, and pruned branches to dead ends.

**recursive backtracking** — Exhaustive search that shares a mutable data-structure accumulator across recursive calls, following the "choose, explore, un-choose" pattern.

**choose, explore, un-choose** — The backtracking pattern of adding an option to the shared accumulator (choose), recursing (explore), then removing it (un-choose) so it is not seen by sibling branches.

**dead end / pruning** — A partial solution that cannot lead to a valid answer; recognizing it lets the search skip (prune) that branch instead of exploring it.

## Recursive linked lists and trees

**x = change(x) pattern** — The idiom for recursively modifying a linked structure, where a helper returns the (possibly new) node and the caller reassigns it (`node.next = removeAll(value, node.next)` or `front = change(front)`), producing cleaner code than iterative modification.

**binary tree** — A recursively defined structure that is either empty (`null`) or a node with a data value and two subtrees (left and right).

**TreeNode / IntTreeNode** — A tree node with three fields: `int data`, `TreeNode left`, and `TreeNode right`.

**root / overallRoot** — The topmost node of a tree; `overallRoot` names the field referencing the entire tree's root.

**leaf** — A node with no children (both subtrees empty).

**parent / child / sibling** — Tree terminology: a parent node links down to its children; nodes sharing the same parent are siblings.

**subtree** — The tree rooted at a given node's left or right child, processed recursively just like the whole tree.

**tree traversal** — Visiting every node of a tree in a defined order; the three primary orders differ in when the current root is processed.

**pre-order traversal** — Process the root first, then the left subtree, then the right subtree.

**in-order traversal** — Process the left subtree, then the root, then the right subtree.

**post-order traversal** — Process the left subtree, then the right subtree, then the root.

## Binary search trees, hashing, and machine learning

**binary search** — Searching a sorted list by repeatedly checking the midpoint and discarding the half that cannot contain the target, running in `O(log n)`.

**binary search tree (BST)** — A binary tree with the ordering invariant that, for every node, all values in the left subtree are less than the node's value and all values in the right subtree are greater (assuming no duplicates), enabling `O(log n)` `contains`.

**balanced tree** — A tree whose height stays proportional to `log n`; a BST's `O(log n)` operations are only guaranteed when it is balanced, otherwise operations degrade to `O(n)`.

**self-balancing BST** — A BST implementation (such as AVL or red-black trees) that keeps itself balanced; Java's `TreeSet` and `TreeMap` use them and order elements via `Comparable`/`compareTo`.

**natural ordering** — The element order a `TreeSet`/`TreeMap` maintains via `compareTo`, revealed by an in-order traversal of the underlying BST.

**hash table** — A data structure that stores each value in a large array at an index computed from the value, giving average `O(1)` lookup, insertion, and removal.

**hash function** — A function `h(x)` that turns any value into an integer used as its index in the hash table.

**hash code** — The integer a hash function produces for a value; Java's standard pattern accumulates fields as `hash = 31 * hash + hash(field)`.

**collision** — When two different values hash to the same table slot, which the table must resolve.

**linear probing** — A collision-resolution scheme that places a colliding element in the next available slot, using `h'(x) = [h(x) + i] % size`.

**quadratic probing** — A collision-resolution scheme that searches for an open slot quadratically, using `h'(x) = [h(x) + i²] % size`.

**chaining** — A collision-resolution scheme that makes each table slot a linked list (a "bucket") holding all values that hash there.

**bucket** — The linked list stored at a hash-table index under chaining.

**clustering** — The tendency of probing schemes to make data clump together in the table, wasting space and slowing operations, which chaining avoids.

**load factor (λ)** — The average number of values per bucket in a chained hash table; keeping it small keeps lookups effectively `O(1)`.

**machine learning (ML)** — A subset of computer science concerned with "learning" trends from data; the course surveys its pipeline and societal implications (this material is not tested).

**ML pipeline** — The stages of building an ML model: data collection/sanitization, featurization, model training/tuning, evaluation, and deployment (with the ability to step backward).

**data bias** — Bias present in training data (e.g. skewed image-search results) that a model reproduces, since "garbage in, garbage out" — a model is only as good as its data.

**featurization** — Converting raw data into numbers (features) a computer can process, such as vectorizing words into embeddings or representing images as arrays of RGB values.

**word embedding** — A vector representation of a word (e.g. from word2vec) on which mathematical operations can find synonyms or analogies, and which can also expose bias.

**decision tree (ML classifier)** — A tree where each interior node holds a feature/threshold decision and each leaf holds a label, used to classify inputs such as text.

**overfitting / underfitting** — Failure modes detected during evaluation by splitting data into train, validation, and test sets to judge how well a model generalizes.
