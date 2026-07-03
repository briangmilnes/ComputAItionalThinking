# 15-112 — Fundamentals of Programming and Computer Science · Vocabulary

Source: CMU 15-112 *Fundamentals of Programming and Computer Science*, Fall 2022 offering (most recent complete offering with full public HTML lecture notes; the current Summer 2026 offering hosts its lectures on the login-gated CMU CS Academy). Lecture notes: https://www.cs.cmu.edu/~112-f22/schedule.html

Terms are ordered by course progression, following the sequence of the lecture notes.

## Data Types and Operators

**Python** — The high-level programming language taught in this course; the class covers a large subset of Python together with its standard libraries and programming paradigms.

**int** — The integer data type, representing whole numbers of arbitrary size (e.g. `2`, `-40`).

**float** — The floating-point data type, representing real numbers with a fractional part (e.g. `2.2`); stored approximately, so exact equality tests are unreliable.

**str (string)** — The text data type, a sequence of characters written in quotes (e.g. `"2.2"`).

**bool (boolean)** — The truth-value data type, whose only values are `True` and `False`.

**None (NoneType)** — The built-in constant representing "no value"; a function with no explicit `return` evaluates to `None`.

**complex** — Python's complex-number type (e.g. `2+3j`), mentioned as one of the built-in numeric types.

**type** — A built-in function (and the class of classes) that reports an object's data type, e.g. `type(2)` is `int`.

**arithmetic operators** — `+ - * / // ** %` and unary `+`/`-`, the operators that compute numeric results.

**integer division (//)** — The operator that divides and discards the fractional part, rounding toward negative infinity (e.g. `5//3` is `1`, `-1//3` is `-1`).

**modulus / remainder operator (%)** — The operator giving the remainder of a division; equivalent to `a - (a//b)*b`, useful for extracting digits and testing divisibility.

**relational operators** — The comparison operators `< <= > >= == !=` that evaluate to a boolean.

**logical operators** — `and`, `or`, `not`, which combine boolean values.

**assignment operators** — `=` and the augmented forms `+= -= *= /= //= **= %=` that update a variable in place.

**operator precedence** — The rules governing which operators are evaluated first (e.g. `**` before `*`/`/`/`//`/`%`, which come before `+`/`-`), so `2+3*4` is `14`.

**associativity** — The rule for grouping operators of equal precedence; most operators associate left-to-right, but `**` associates right-to-left (so `4**3**2` is `4**9`).

**floating-point approximation** — Because floats are stored approximately, results like `0.1+0.1+0.1` are not exactly `0.3`; one should never compare floats with `==`.

**almostEqual / epsilon** — The course's helper approach to comparing floats: test whether the absolute difference is below a tiny threshold epsilon (e.g. `10**-9`) rather than using `==`.

**short-circuit evaluation** — `and`/`or` stop evaluating as soon as the result is determined, so the right operand may never run (e.g. `False and crash()` never calls `crash`).

**isinstance** — A built-in that checks whether a value is an instance of a given type; preferred over `type(x) == T` because it also works across inheritance and type families (e.g. `numbers.Number`).

## Variables and Functions

**variable** — A named value that references or stores a piece of data; unlike in math, a variable can be reassigned, even to a value of a different type.

**assignment** — Placing a value into a variable with `=`; the whole line is a statement, and the right-hand side is an expression.

**expression** — A data value or an operation that evaluates to a value (anything you could print), e.g. `7 + 2` or `(2 < 3) and (9 > 0)`.

**statement** — A line of code that performs an action but does not itself evaluate to a value, such as a function definition, an assignment, or a conditional.

**function** — A named, reusable procedure (a sequence of statements) that can be called repeatedly by name.

**def** — The keyword that begins a function definition.

**function header** — The first line of a function, `def name(parameters):`, giving the function's name and parameters and ending in a colon.

**function body** — The indented block of statements below the header that the function executes when called.

**parameter** — A variable named in the function header that receives a value when the function is called.

**argument** — The actual data value passed into a function at a call site; the number of arguments must match the number of parameters.

**function call** — Invoking a function by name followed by parentheses containing the arguments; the call evaluates to the function's return value.

**return statement** — The statement that ends a function and provides its result to the caller; a function with no return evaluates to `None`.

**built-in function** — A function Python provides automatically, such as `print`, `len`, `abs`, `max`, `min`, `pow`, `round`, and the type-conversion functions.

**type conversion** — Converting a value from one type to another with functions such as `int()`, `float()`, `bool()`, and `str()`.

**variable scope** — The region of code in which a variable is visible; variables have local scope by default and cannot be used outside the region where they are defined.

**local variable** — A variable defined inside a function; it exists only within that function and is unrelated to same-named variables elsewhere.

**global variable** — A variable defined outside all functions, usable anywhere; modifying one inside a function requires the `global` declaration, and the course discourages their use.

**function composition** — Using the result of one function call as the argument to another; nested calls are evaluated innermost-first.

**helper function** — A small function written to capture an action used in multiple places, factoring out repeated logic.

**test function / assert** — A function that checks another function's correctness using `assert`, which crashes if its condition is false; good tests include edge cases so they can catch bugs.

## Conditionals

**if statement** — A conditional that runs its indented body only when its test expression is true.

**if-else statement** — A conditional that runs one branch when the test is true and another when it is false.

**if-elif-else statement** — A chain of conditions tested in order, running the body of the first true one and an optional final `else`.

**if-else expression** — The ternary form `value_if_true if condition else value_if_false`, which is an expression, not a statement.

**boolean logic** — Expressing conditions with `and`/`or`/`not` rather than arithmetic tricks, for clarity and correctness.

## Loops

**for loop** — A loop that repeats an action a definite number of times, iterating a variable over a sequence such as a `range`.

**range** — A built-in producing a sequence of integers; `range(m, n)` includes `m` and excludes `n`, and an optional third argument gives the step (which may be negative).

**nested loop** — A loop placed inside another loop, used to repeat actions across multiple levels (e.g. rows and columns).

**while loop** — A loop that repeats as long as its condition stays true, used when the number of iterations is indeterminate.

**break** — A keyword that immediately exits the entire enclosing loop.

**continue** — A keyword that skips the rest of the current loop iteration and proceeds to the next.

**pass** — A do-nothing placeholder statement used where a statement is syntactically required.

**iteration** — A single pass through a loop body; loops perform repeated iterations.

## Code Tracing, Reasoning, Style, and Debugging

**code tracing** — Reading a program by hand and simulating its execution step by step to deduce its output.

**reasoning over code** — Analyzing what a program does or what input produces a given result, without necessarily running it.

**style** — Writing clear, readable code following course conventions (meaningful names, no needless globals, boolean logic over arithmetic tricks); style is graded separately from correctness.

**debugging** — The systematic process of finding and fixing errors in a program.

## Strings

**string literal** — Text written directly in quotes; Python allows single, double, and triple quotes and escape sequences.

**string operators** — Operators that work on strings, including `+` for concatenation and `*` for repetition, plus comparison operators.

**indexing** — Accessing a single character by position with `s[i]`, where negative indices count from the end.

**slicing** — Extracting a substring (or sublist) with `s[start:end:step]`, which is non-destructive.

**string method** — A function called on a string with dot notation (e.g. `s.upper()`, `s.replace(...)`, `s.split(...)`), as opposed to a plain function like `len(s)`.

**f-string** — A formatted string literal prefixed with `f` in which `{expression}` fields are replaced by their values, e.g. `f"({x}, {y})"`.

**immutable** — Cannot be changed after creation; strings and tuples are immutable, so operations that appear to modify them actually build new values.

**alias** — Two variable names that reference the same underlying object; only meaningful for mutable values, and function parameters are aliases of their arguments.

**file I/O** — Reading from and writing to files on disk, the basic input/output operations introduced with strings.

## Graphics

**canvas** — The drawing surface on which graphics are rendered.

**canvas coordinates** — The coordinate system of the canvas, with the origin at the top-left and y increasing downward.

**graphics primitives** — Basic drawing calls such as lines, rectangles, ovals, polygons, and text, each with parameters for position, fill, and outline.

**custom colors** — Specifying colors beyond the named ones, e.g. via RGB values.

**trigonometry (for graphics)** — Using sine and cosine to place points on circles and draw circular or radial patterns (e.g. clock hands).

## Lists (1D)

**list** — An ordered, mutable sequence of elements that may mix data types, created with square brackets.

**mutable** — Can be changed in place after creation; lists are mutable, so their contents can be modified without creating a new list.

**object id / is** — Every Python object has a value, a type, and an id (like a serial number); `is` tests whether two names refer to the same object (same id), whereas `==` tests equal contents.

**list aliasing** — When two variables reference the same list, a change through one is visible through the other; `b = a` creates an alias, not a copy.

**copying a list** — Making an independent duplicate so mutations do not propagate, via `copy.copy(a)`, `a[:]`, `a + []`, or `list(a)`.

**destructive vs non-destructive** — A destructive operation mutates the original list in place (e.g. `a.sort()`), while a non-destructive one returns a new list and leaves the original unchanged (e.g. `sorted(a)`).

**list methods** — Built-in operations on lists such as `append`, `insert`, `pop`, `remove`, `extend`, `count`, `index`, `sort`, and `reverse`.

**membership (in / not in)** — Operators that test whether a value occurs in a list (or other collection).

**iterable** — A type that can be looped over directly with a for-each loop; lists and strings are both iterable.

**tuple** — An immutable sequence written with parentheses; like a list but unchangeable, and useful for parallel assignment.

**parallel (tuple) assignment** — Assigning several variables at once, e.g. `(x, y) = (y, x)` to swap two values.

**list comprehension** — A concise one-line way to build a list from a loop, optionally with a filtering condition, e.g. `[i for i in range(10) if i%2==0]`.

**join / split** — `s.split(sep)` converts a string into a list of substrings; `sep.join(list)` converts a list of strings back into one string.

## 2D Lists

**2D list** — A list of lists, used to represent a grid or table (rows of columns).

**dimensions (rows and columns)** — The number of rows and columns of a 2D list, obtained from `len(grid)` and `len(grid[0])`.

**ragged list** — A non-rectangular 2D list whose rows have differing lengths.

## Sets

**set** — An unordered collection of unique, immutable elements, supporting fast membership testing; cannot be indexed but can be iterated.

**unordered** — A set keeps no positional order among its elements.

**unique elements** — A set automatically discards duplicates; each value appears at most once.

**hashing** — The internal technique that makes set (and dictionary) membership and lookup very efficient; requires elements to be immutable/hashable.

## Dictionaries

**dictionary (map)** — A collection of key-value pairs allowing fast lookup of a value by its key, created with `{key: value}` syntax.

**key / value** — In a dictionary, the key is the unique lookup handle (must be immutable/hashable) and the value is the associated data.

## Algorithmic Efficiency

**Big-O** — Notation describing a function's asymptotic growth rate, ignoring lower-order terms and constants, used to characterize how running time scales with input size.

**constant time O(1)** — Running time independent of input size.

**logarithmic O(log n)** — Running time growing like the logarithm of the input size, e.g. binary search.

**linear O(n)** — Running time proportional to input size, e.g. linear search.

**linearithmic O(n log n)** — The growth rate of efficient comparison sorts such as merge sort.

**quadratic O(n²)** — Running time proportional to the square of the input size, typical of naive nested-loop algorithms.

**exponential O(k^n)** — Running time doubling (or more) with each added element; intractable for large inputs.

**linear search** — Scanning a collection element by element to find a target; O(n).

**binary search** — Repeatedly halving a sorted collection to locate a target; O(log n).

**sorting** — Arranging elements in order; the course discusses sort algorithms and their efficiency, including merge sort.

## Object-Oriented Programming

**method vs function** — A method is called on an object with dot notation (`s.upper()`), whereas a function is called on its arguments (`len(s)`).

**class** — A programmer-defined type; in Python "class" and "type" are synonyms, and a class is defined with the `class` keyword.

**instance** — A particular value of a class (e.g. `'abc'` is an instance of `str`); created by calling the class like a function.

**object** — Every value in Python is an object, having a value, a type, and an id; classes themselves are also objects.

**attribute (field / property)** — A piece of data stored on an instance, accessed with dot notation (e.g. `d1.name`).

**constructor (__init__)** — The special method Python calls when creating an instance, used to pre-load the new object with its attributes.

**self** — The conventional name for the first parameter of a method, referring to the instance the method is called on.

**special methods** — Double-underscore methods that customize built-in behavior, such as `__eq__` (equality), `__str__`/`__repr__` (string conversion), and `__hash__` (use in sets/dicts).

**class attribute** — A value shared by all instances of a class, defined at class level rather than per instance.

**static method** — A method that belongs to the class but does not take a `self` instance parameter.

**inheritance** — Defining a class as a subclass of a superclass so it acquires the superclass's methods and attributes.

**superclass / subclass** — The parent class whose behavior is inherited, and the child class that inherits and may extend it.

**overriding** — Redefining an inherited method in a subclass to change its behavior.

**encapsulation** — Bundling data and the methods that operate on it inside a class, a key advantage of using classes and objects.

## Recursion

**recursion** — A problem-solving technique in which a function calls itself on a smaller subproblem.

**base case** — The non-recursive case that stops the recursion and returns a direct answer for the simplest input.

**recursive case** — The case that reduces the problem toward the base case and calls the function on the smaller input.

**recursive call** — The function invoking itself within its own body.

**infinite recursion / stack overflow** — Recursion that never reaches a base case, exhausting the call stack and crashing the program.

**wrapper function** — A non-recursive outer function that sets up initial arguments and calls the true recursive helper.

**multiple recursive calls** — Recursion that calls itself more than once per invocation, as in Fibonacci, Towers of Hanoi, and merge sort.

**Towers of Hanoi** — A classic recursive puzzle used to illustrate multiple recursive calls.

**merge sort** — A recursive divide-and-conquer sorting algorithm running in O(n log n).

**fractals** — Self-similar geometric figures drawn with recursion, such as the Sierpinski triangle.

**recursive backtracking** — A recursive search strategy that tries a choice, recurses, and undoes the choice if it leads to a dead end.

**memoization** — Caching the results of recursive calls to avoid recomputing them, dramatically speeding functions like Fibonacci.

## Event-Based / Animation Programming

**event loop** — The framework loop that repeatedly waits for events and redraws the screen, driving an interactive animation.

**Model-View-Controller (MVC)** — The design pattern for animations: the model holds all app data, the view draws the app from the model, and the controller updates the model in response to events.

**event handler** — A function invoked when a specific event occurs, such as a key press, mouse press, or timer tick.

**timer / timerFired** — The periodic event used to advance an animation's state over time.

## Functions Redux

**variable-length arguments (*args)** — Syntax letting a function accept any number of positional arguments, collected into a tuple.

**default arguments** — Parameters given a default value used when the caller omits them.

**keyword arguments (**kwargs)** — Arguments passed by name; `**kwargs` collects arbitrary named arguments into a dictionary.

**lambda function** — A small anonymous function written inline as an expression.

**functions as values** — Functions are first-class objects that can be passed as arguments, returned from other functions, and stored in variables.

**closure / nonlocal** — A nested function that captures variables from its enclosing function; the `nonlocal` keyword lets it rebind those enclosing variables.

**decorator** — A function that wraps another function to extend or modify its behavior, applied with `@`-syntax.

## Exceptions

**exception** — A runtime error condition that, if unhandled, crashes the program.

**try/except** — The construct that attempts code and catches exceptions it raises, letting the program recover instead of crashing.

**raising an exception** — Deliberately signaling an error with `raise`.

## Theory and Applications

**Monte Carlo method** — Using repeated random sampling to estimate a quantity (e.g. estimating pi by random points).

**P (polynomial time)** — The class of problems solvable quickly, in time polynomial in the input size.

**EXP (exponential time)** — The class of problems whose only known solutions take exponential time; considered intractable in practice.

**intractable** — Solvable in theory but too slow to solve in practice for large inputs.

**NP** — The class of problems whose proposed solutions can be verified quickly, even if finding a solution may be slow.

**NP-complete** — The hardest problems in NP; all are polynomial-time reducible to one another, so if any one is in P then all are (e.g. subset-sum and Boolean SAT).

**P vs NP** — The open question of whether every problem that can be verified quickly can also be solved quickly; a famous unsolved Millennium Prize problem.

**Boolean satisfiability (SAT)** — The NP-complete problem of deciding whether a Boolean circuit's inputs can be set to make it output true.

**halting problem** — The problem of deciding whether an arbitrary program halts on a given input; proven to be uncomputable, so no algorithm can decide it in general.

**uncomputable** — A problem for which no algorithm can exist that solves it in all cases, as demonstrated by the halting problem.
