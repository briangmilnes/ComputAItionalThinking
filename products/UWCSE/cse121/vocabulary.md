# CSE 121 — Introduction to Computer Programming I · Vocabulary

Source: UW CSE 121 keeps all lecture slides behind EdStem login (verified for offerings 22au–25au). Per the fallback instruction, this vocabulary is drawn from the retired-but-public **UW CSE 142 "Building Java Programs" (Reges/Stepp), Spring 2022 (22sp)** lecture slides — the equivalent public intro-programming-I material. URL: https://courses.cs.washington.edu/courses/cse142/22sp/calendar.shtml (25 lecture PDFs downloaded from the `lectures/` directory). Terms are ordered by the course's chapter progression (chapters 1–10) and grounded in those slides.

## Chapter 1 — Introduction and static methods

**program** — A set of instructions to be carried out by a computer; program execution is the act of carrying out those instructions.

**programming language** — A systematic set of rules used to describe computations in a format editable by humans; the course uses Java.

**source code** — The set of human-written instructions that make up a program; also called "code."

**compile** — To translate a program from one language to another. The Java compiler converts source code into byte code.

**byte code** — The platform-independent format the Java compiler produces, which runs on many computer types.

**execute (run)** — To carry out the instructions of a compiled program, producing its output.

**output** — The messages a program prints to the user (e.g. via `System.out.println`).

**algorithm** — A list of steps for solving a problem, independent of any particular programming language.

**structured algorithm** — An algorithm split into coherent, named tasks to reduce lack of structure and redundancy; the motivation for methods.

**class** — In Java, a program is written as a class; every executable file begins with `public class Name`.

**main method** — The special method `public static void main(String[] args)` where program execution begins.

**statement** — A single command to be executed by the program, terminated by a semicolon.

**println statement** — `System.out.println(...)` prints a line of text and then moves to the next line; `System.out.print(...)` prints without a trailing newline.

**comment** — A note written in source code by the programmer to describe or clarify code; not executed. Written `// ...` (one line) or `/* ... */` (multi-line).

**static method** — A named group of statements that can be called as a unit, used to give a program structure and remove redundancy.

**method call** — The act of executing a method by writing its name followed by parentheses, e.g. `printMessage();`.

**syntax error (compiler error)** — A problem in the structure of a program that prevents it from compiling, such as a missing semicolon or misspelled keyword.

**indentation** — Consistent spacing used to show the nesting structure of a program; a readability convention, not required by the compiler.

## Chapter 2 — Expressions, variables, and for loops

**data type** — A category or set of data values that constrains the operations that can be performed on the data.

**primitive type** — One of Java's eight simple built-in types for numbers, text, and logic; the course uses `int`, `double`, `char`, and `boolean`.

**int** — A primitive type holding integers (e.g. `42`, `-3`, `0`).

**double** — A primitive type holding real numbers (e.g. `3.1`, `-0.25`, `9.4e3`).

**char** — A primitive type representing a single text character, written in single quotes (e.g. `'a'`, `'\n'`); internally assigned a numeric code.

**boolean** — A logical primitive type whose only values are `true` and `false`.

**expression** — A value or operation that computes a value, e.g. `1 + 4 * 5`; the simplest expression is a literal value.

**literal** — A constant value written directly in code, such as `42` or `"hi"`.

**operator** — A symbol that combines multiple values or expressions, such as the arithmetic operators `+ - * / %`.

**integer division** — Division of two `int` values, which discards the remainder and yields an `int` (e.g. `14 / 4` is `3`).

**modulus (remainder)** — The `%` operator, which computes the remainder from integer division (e.g. `14 % 4` is `2`).

**precedence** — The order in which operators are evaluated: `()` before `* / %` before `+ -`.

**mixing types** — When an `int` and a `double` are combined in an expression, the result is a `double` (type promotion).

**variable** — A piece of the computer's memory that is given a name and a type and can store a value.

**variable declaration** — A statement that sets aside memory for storing a value, giving it a name and type (e.g. `int x;`).

**assignment** — A statement that stores a value into a variable, using `=` (e.g. `x = 3;`).

**initialization** — Declaring a variable and assigning it a value in one statement (e.g. `int x = 3;`).

**for loop** — A control structure that repeats statements a known number of times, with the form `for (initialization; test; update) { body }`.

**loop body** — The statements inside a loop that are executed on each pass.

**control variable** — The counter variable managed by a for loop's initialization, test, and update.

**nested loop** — A loop placed inside the body of another loop.

**increment / decrement** — Shortcut operators `++` and `--` that increase or decrease a variable's value by 1; `+=`, `-=`, etc. modify a variable by a given amount.

**class constant** — A named value visible to the whole program, declared `public static final type NAME = value;`; used to name and centralize fixed values.

## Chapter 3 — Parameters, return values, and input

**parameter** — A value passed into a method by its caller, declared in the method header; the specific value supplied at the call is the argument.

**return** — To send a value out as the result of a method; the method's declared return type states what kind of value it produces (`void` means none).

**Scanner** — A Java object that reads user input from the console, constructed as `new Scanner(System.in)`.

**token** — A unit of user input separated by whitespace, as read by a Scanner (via `next`, `nextInt`, `nextDouble`).

**prompt** — A message printed to the user asking them to enter input before reading it.

## Chapter 4 — Conditionals and strings

**conditional (if/else)** — A control structure that executes statements only when a test is true; `if`, `if/else`, and `if/else if` select among alternatives.

**relational operator** — An operator that compares two values to produce a boolean, such as `<`, `>`, `<=`, `>=`, `==`, `!=`.

**cumulative sum** — A variable that keeps a running total in progress across the iterations of a loop; the same idea works with other operators (e.g. a running product or count).

**string** — An object storing a sequence of text characters, written in double quotes.

**string concatenation** — Using `+` between a string and another value to build a larger string.

**string method** — A method called on a String, such as `length()` (number of characters), `charAt(i)` (character at an index), `indexOf(str)`, `substring(...)`, `toLowerCase()`, and `equals(str)` (whether two strings hold the same characters).

**type cast** — A conversion from one type to another written with a parenthesized type, e.g. `(int) 3.7` or `(double) x`.

## Chapter 5 — while loops, randomness, and boolean logic

**while loop** — A control structure that repeatedly executes its body as long as a test remains true; suited to indefinite repetition.

**definite loop** — A loop that executes a known, fixed number of times (typically a for loop).

**indefinite loop** — A loop where the number of iterations is not known in advance (typically a while loop).

**fencepost loop** — A "loop-and-a-half" pattern that pulls the first repeated action outside the loop so that a separator is placed between, but not after, items.

**sentinel loop** — An indefinite loop that repeats until a special sentinel value signals it to stop; the sentinel is not processed as data.

**Random** — A Java object (`new Random()`) whose `nextInt` method produces pseudo-random numbers, used to add unpredictability to programs.

**logical operator** — An operator that combines boolean conditions: `&&` (and), `||` (or), `!` (not).

**do/while loop** — A loop that executes its body once and then repeats while a test is true; the test is checked at the bottom.

**break statement** — A statement that immediately exits the enclosing loop.

## Chapter 6 — File processing

**file input** — Reading data from a file by constructing a Scanner over a `File` object rather than over `System.in`.

**exception** — An object representing a runtime error, such as a missing file or invalid input, which halts the program if not handled.

## Chapter 7 — Arrays

**array** — An object that stores many values of the same type in a single, fixed-size structure.

**element** — One individual value stored in an array.

**index** — A 0-based integer used to access an element of an array; legal indexes run from `0` to the array's `length - 1`.

**length** — The number of elements in an array, obtained via the array's `length` field.

**traversal** — An examination of each element of an array in turn, typically with a for loop.

## Chapter 8 — Objects and classes

**object** — A programming entity that bundles together state (data) and behavior (methods).

**field (state)** — A variable declared inside an object that stores part of the object's state.

**constructor** — A special method that initializes the state of a new object when it is created with `new`.

**instance method** — A method that operates on a particular object and can access that object's fields.

**implicit parameter** — The object on which an instance method is called, referred to inside the method (implicitly, or via `this`).

**accessor** — An instance method that provides information about the state of an object without changing it (a "getter").

**mutator** — An instance method that modifies the state of an object (a "setter").

**encapsulation** — Hiding the implementation details of an object (e.g. by making fields `private`) so clients interact only through its methods.

**toString** — An instance method that returns a String representation of an object, called automatically when the object is printed or concatenated to a String.

**reference semantics** — The behavior of objects and arrays, where variables store references so that assigning or passing them shares the same underlying object (contrast with value semantics, where primitive values are copied).

## Chapter 9 — Inheritance

**inheritance** — A mechanism by which one class acquires the fields and behavior of another, expressing an "is-a" relationship and forming an inheritance hierarchy.

## Chapter 10 — ArrayList

**ArrayList** — A resizable list object from the Java library that stores an ordered, growable sequence of elements, accessed by index through methods like `add`, `get`, `size`, and `remove`.
