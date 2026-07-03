# CSE 122 — Introduction to Computer Programming II · Vocabulary

Source: University of Washington CSE 122 (Introduction to Computer Programming II), Autumn 2025 offering (instructor Elba Garza). Public lecture slides (Lessons 0–20), <https://courses.cs.washington.edu/courses/cse122/25au/>.

## Program design and quality

**Functional decomposition** — Breaking a complex problem or system into smaller parts that are easier to conceive, understand, program, and maintain; in code this usually means splitting a task into smaller methods.

**Method (function)** — A named, reusable unit of code that carries out a step of a task; a rule of thumb in this course is that a method should do at least two steps and should make the code easier to understand.

**Helper method** — A supporting method introduced to reduce redundancy and decompose a larger problem into manageable pieces, rather than one added just for the sake of adding a method.

**Pseudocode** — An informal, plain-English outline of how a method will work, written to plan a solution before committing it to Java syntax.

**Code quality** — Writing code so it communicates effectively to human readers; in CSE 122 this covers naming conventions, descriptive variable names, indentation, line length, spacing, good method decomposition, and documentation.

**"Plain English" description** — A concise, high-level explanation of what a method does (not a line-by-line reading), the style expected in method comments.

**Edge case** — A scenario that is uncommon but possible, especially at the "edge" of a parameter's valid range (e.g., a negative index or a value larger than a list's length), which code should be written to handle.

**Iterative development** — A problem-solving strategy of first solving a simpler or partial version of a problem, then building up to the full solution.

## File input/output

**Scanner** — A class in the `java.util` package that reads input from a source (the console via `System.in`, or a file) and hands it back a piece at a time.

**Token** — A unit of input as defined by the Scanner, separated from other tokens by whitespace (spaces, tabs, or newlines).

**Token-based processing** — Reading input one token at a time, typically with a `while (scan.hasNext___())` loop calling the matching `next___()` method.

**Line-based processing** — Reading input one full line at a time using `hasNextLine()` and `nextLine()`.

**Hybrid processing** — Reading a file line by line, then wrapping each line in its own Scanner to process that line's individual tokens.

**File** — A class in the `java.io` package representing a file on disk, constructed from a filename and passed to a Scanner to read the file's contents.

**PrintStream** — A class used to write program output to a destination such as a file, constructed from a `File` (mirror of how `System.out` writes to the console).

**Checked exception** — An exception the compiler forces you to handle or declare; for example, creating a file Scanner may report `FileNotFoundException`, which must be caught or declared.

**`throws` clause** — A declaration added to a method header (e.g., `throws FileNotFoundException`) promising the compiler that the method may propagate that checked exception.

## Collections and lists

**Collection** — A data structure that holds multiple pieces of data (elements); different collections support different operations and trade-offs.

**Element** — An individual value stored inside a collection.

**Array** — A fixed-size, zero-indexed sequence of same-typed values, reviewed as background for the resizable collections that follow.

**ArrayList** — A resizable, zero-indexed list class that behaves like an array but grows and shrinks dynamically; supports `add`, `get`, `set`, `remove`, `indexOf`, `contains`, and `size`.

**List (interface)** — The Java interface describing list behavior (methods like `add`, `get`, `contains`, `size`); `ArrayList` and `LinkedList` are classes that implement it.

**Zero-based indexing** — The convention that the first element of a list or array is at index 0.

**Dynamic resizing** — The ability of an ArrayList to change its length automatically as elements are added or removed, unlike a fixed-length array.

**Wrapper class** — An object type that "wraps" a primitive so it can be stored in a collection, since ArrayLists and other collections can only hold objects; examples are `Integer`, `Double`, `Boolean`, and `Character`.

**Type parameter (`<E>`)** — The generic type written in angle brackets that fixes the element type of a collection (e.g., `Stack<String>`, `List<Double>`, `Map<String, Integer>`).

## Abstract data types, stacks and queues

**Abstract Data Type (ADT)** — A specification of a collection of data and the operations that can be performed on it, describing what a collection does rather than how it is implemented.

**Interface** — A Java construct that specifies which methods a class must provide; for example, the `List` interface.

**Implementation** — Concrete code that meets an interface's specification; for example, `ArrayList` and `LinkedList` implement `List`.

**Stack** — A collection that adds and retrieves elements in opposite order: Last-In, First-Out (LIFO); the client works only with the "top" element.

**push / pop / peek (stack)** — `push` adds an element to the top, `pop` removes and returns the top element, and `peek` examines the top element without removing it.

**LIFO** — "Last-In, First-Out," the ordering discipline of a stack.

**Queue** — A collection that retrieves elements in the order they were added: First-In, First-Out (FIFO); the client adds to the back and removes/examines the front.

**add (enqueue) / remove (dequeue) / peek (queue)** — `add` places a value at the back, `remove` removes and returns the front value, and `peek` examines the front value.

**FIFO** — "First-In, First-Out," the ordering discipline of a queue.

**LinkedList** — A class that implements the `List` interface and is used to construct a `Queue` in Java (`Queue<Integer> q = new LinkedList<>()`).

**EmptyStackException / NoSuchElementException** — Exceptions thrown when popping/peeking an empty stack or removing from an empty queue, respectively.

## Sets, iteration

**Set** — A collection of unique values (no duplicates) supporting efficient `add`, `remove`, and `contains` (search); a set has no indices and no guaranteed order.

**HashSet** — A very fast `Set` implementation backed by a hash table array, storing elements in an unpredictable order.

**TreeSet** — A `Set` implementation backed by a binary search tree, storing elements in sorted order (and thus requiring elements that can be compared).

**contains / search** — The set (and list) operation that reports whether a given value is present in the collection.

**For-each loop (enhanced for loop)** — A loop of the form `for (Type x : collection)` that visits each element in turn; the collection is effectively read-only during the loop.

**Iterator** — An object that has access to all elements of a structure and returns them one at a time, obtained from a collection's `iterator()` method.

**hasNext / next (iterator)** — `hasNext()` reports whether more elements remain, and `next()` returns the next element in the iteration.

**ConcurrentModificationException** — The error thrown when a collection is modified while being traversed with a for-each loop; the iterator's own `remove()` must be used instead.

## Maps and nested collections

**Map** — A data structure that associates unique keys with values; core operations are `put(key, value)`, `get(key)`, and `remove(key)` (analogous to Python's `dict`).

**Key / value pair** — The unit of storage in a map: each unique key is mapped to a value, and putting a duplicate key overwrites its value.

**HashMap** — A `Map` implementation that is extremely fast with keys stored in an unpredictable (unsorted) order.

**TreeMap** — A `Map` implementation that is fast and keeps its keys in sorted order.

**keySet / values** — Map methods returning, respectively, a set of all keys and a collection of all values, commonly used to iterate over a map.

**Nested collections** — Collections stored inside other collections (for example a `Map<String, Set<String>>`), since a map's values may themselves be data structures.

**Reference (to a data structure)** — The value stored in a nested collection is a reference to the inner object, so multiple keys may point to the same object and changes through one are visible through the others.

## Exceptions

**Exception** — A signal that halts normal execution when something goes wrong or an input is invalid; allows code to "fail fast" instead of printing warning messages and continuing.

**throw** — The statement that raises an exception, optionally with a custom error message describing what went wrong.

**IllegalArgumentException** — The exception thrown to reject invalid arguments passed to a method.

**Fail fast** — The practice of immediately halting execution on invalid input rather than continuing in a bad state.

## Objects and classes

**Object-oriented programming (OOP)** — A style in which a program's behavior arises from interactions between objects, using classes that represent things; contrasted with procedural programming.

**Procedural programming** — A style in which a program carries out its behavior as a series of steps, using classes that do things.

**Class** — A template or blueprint that defines what it means to be a certain kind of thing, specifying its fields and methods.

**Object / instance** — A concrete example built from a class's template, created with the `new` keyword (e.g., `new Scanner(System.in)`).

**State and behavior** — An object ties together related state (its data) and behavior (its actions); state lives in fields and behavior lives in instance methods.

**Field (instance variable)** — A variable defined in a class and tied to a specific instance; each object gets its own copy of the fields.

**Instance method** — A method defined in a class and called on a particular instance, affecting only that instance.

**Abstraction** — The separation of ideas from details, letting you use something (like a Scanner) without knowing exactly how it works internally.

**Client vs. implementor** — The client is code that uses an object's public behavior; the implementor is the author who writes the class's internal code.

**toString** — An instance method returning a String representation of an object, called automatically whenever the object is treated like a String.

**Encapsulation** — Hiding an object's implementation details from its clients so the implementor keeps control (and flexibility) over how state is stored and changed; encapsulation provides abstraction.

**private / access modifier** — `private` is an access modifier (like `public`) that prevents code outside the class from accessing a field; fields are normally declared private to encapsulate them.

**Accessor (getter) / Mutator (setter)** — Instance methods that give controlled access back to private fields: accessors (e.g., `getX()`) read state, mutators (e.g., `setX(int)`) change it.

**Constructor** — A special method called when a new instance is created; it initializes the object's fields, and once you write any constructor Java no longer supplies a default one.

**`this` keyword** — A reference to the current object inside a method or constructor, used to reach the object's own fields (`this.x`), call its instance methods (`this.setX(...)`), or call another constructor (`this(0, 0)`).

**Reference semantics (aliasing)** — The behavior that assigning one object variable to another (`Point p2 = p`) copies the reference, not the object, so both names refer to the same object and changes through one are seen through the other.

**null / reference type** — A reference type (objects, Strings, arrays) may or may not hold a value; `null` denotes the complete absence of an object (distinct from empty `""` or `0`) and is the default value of an uninitialized reference field.

**equals** — An instance method returning whether a given object is considered equal to this one; the version Java provides checks reference equality, so value equality must be written by hand.

**Reference equality vs. value equality** — Reference equality (`==`) asks whether two variables point to the same object; value equality asks whether two distinct objects hold the same data, which a custom `equals` implements.

**Object (type)** — The most general type; declaring an `equals` parameter as `Object` lets it accept any kind of object.

**instanceof** — A keyword that tests whether an object is actually of a given type, used inside `equals` before casting.

**Cast** — Converting a reference of a general type to a more specific type (e.g., `(Point) o`) after checking it with `instanceof`.

## Interfaces and polymorphism

**Interface as a contract** — An interface is like a contract: to implement it, a class must fulfill the required methods, but the interface says nothing about how they are implemented.

**implements** — The keyword declaring that a class provides all methods required by an interface; a class may implement multiple interfaces at once.

**Interface extends interface** — One interface may extend another (`interface A extends B`), so any class implementing the child must provide the methods of both.

**Programming to an interface (flexibility)** — Writing a method to accept an interface type (e.g., `Set<String>` or a custom `Container`) so it works with any implementing class (`HashSet`, `TreeSet`, etc.), the flexibility benefit of interfaces.

**Comparable / compareTo** — The `Comparable<E>` interface, used by structures like `TreeSet` to order elements; its one required method `compareTo` returns a negative number, zero, or a positive number when `this` is less than, equal to, or greater than another element.

## Testing, JUnit, and libraries

**Testing** — Checking that code does what it is supposed to; emphasized because software controls high-stakes systems and bugs are easy to introduce.

**Debugging** — Finding and fixing defects by checking whether a solution behaves correctly on example and edge-case inputs.

**Unit test** — A method that compares what your code does against what you expect it to do.

**Testing framework** — A library that provides special tags and keywords for unit tests, letting you run tests and see pass/fail results separately from running the program.

**JUnit** — A unit-testing framework for Java, providing method annotations and assertion methods via `import` statements.

**@Test annotation** — A JUnit method annotation marking a method as a test case (related: `@DisplayName`).

**assertEquals / assertTrue / assertFalse** — JUnit assertion methods that check an expected value against an actual value, or that a boolean condition is true or false.

**Specification (black-box) testing vs. clear-box (white-box) testing** — Specification testing derives test cases from the spec and can be written before the solution; clear-box testing is based on knowledge of the implementation and is done afterward.

**Test-Driven Development (TDD)** — Writing specification-based tests before writing the code that must pass them.

**Floating-point numbers / precision** — `double` values are stored with finite precision, so calculations can be slightly inexact and `==` should not be relied on for them.

**delta (tolerance)** — A tolerance value passed to `assertEquals(expected, actual, delta)` specifying how far apart two doubles may be while still counting as equal.

**Library (third-party library)** — A collection of code someone has written, packaged, and shared for reuse (JUnit itself is an example), pulled into a program with `import` statements.
