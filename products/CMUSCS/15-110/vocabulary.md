# 15-110 — Principles of Computing · Vocabulary

Source: Carnegie Mellon University 15-110 *Principles of Computing*, Spring 2026 (S26) offering, public lecture slides at https://www.cs.cmu.edu/~110/schedule.html (53 slide PDFs under `slides/`). The concurrent Summer 2026 offering at `~15110/` keeps its slides behind EdStem (login-walled), so this fully public Spring 2026 offering was used instead.

## Unit 1 — Programming Fundamentals

**computer science** — The field concerned with algorithms and how computers are used to solve problems across many domains; in this course it spans both programming and general algorithmic concepts.

**algorithm** — A precise, step-by-step description of how to solve a task. Algorithms can be written in plain language and later expressed as programs in a programming language.

**abstraction** — A technique for making complex systems manageable by changing the amount of detail used to represent or interact with the system, e.g. interpreting bits as numbers, text, or images.

**program** — An algorithm written so a computer can carry it out. Computers only do what programs tell them to do.

**programming language** — A notation (such as Python) for expressing algorithms as programs; different languages share the same algorithmic concepts but differ in syntax and commands.

**IDE (Integrated Development Environment)** — A text-editor-like tool for writing and running programs; the course uses Thonny, whose editor holds saved `.py` text and whose interpreter (shell) runs the code.

**data** — Information a program keeps track of and manipulates with actions.

**data type** — The category of a data value that determines its properties and operations; the three core types introduced are numbers, text, and truth values.

**integer / floating-point number** — The two Python numeric types: integers are whole numbers (0, 14, -7); floating-point numbers include a decimal point (3.0, 5.735).

**string** — The text data type, a sequence of characters that can be indexed, sliced, and looped over.

**Boolean** — A truth-value type with exactly two values, `True` and `False`, produced by comparisons and combined with logical operations.

**variable** — A name that holds a value in a program; tracing a variable means following the different values it holds over time.

**expression / operator** — An expression combines values using operators (e.g. `+`, `-`, `*`, `/`) to compute a new value.

**number system** — A way of representing numbers using symbols; the same quantity can be written in different systems (e.g. decimal vs. binary).

**binary** — The base-2 number system of 0s and 1s that computers use to represent all information.

**bit** — A single binary digit (0 or 1), the smallest unit of data; in hardware a bit is a low or high electrical voltage.

**data representation** — Using bits, via abstraction, to encode different kinds of information such as decimal numbers, colors, and text.

**pixel** — A single square of color in an image; an image is represented as a grid of pixels, each pixel encoded in binary.

**RGB color** — A scheme that represents a color in binary as a combination of red, green, and blue components.

**ASCII / text encoding** — A mapping that assigns each text character a number so text can be stored as binary.

**function call** — Using an already-defined function by naming it with parentheses and supplying inputs, so an abstract action can be repeated on different inputs.

**function definition** — Writing a new named function that implements an algorithm on abstract input, using `def`.

**parameter / argument** — A parameter is a named input in a function definition; an argument is the actual value supplied for that parameter in a call.

**return value** — The result a function hands back to its caller via `return`.

**side effect** — An observable action a function performs other than returning a value, such as printing lines.

**library / module** — A file (module) or collection of functions grouped by purpose; Python's Standard Library and external libraries add functionality that must be brought in with `import`.

**logical operators** — The operations `and`, `or`, and `not` that combine Boolean values: `and` is True only if both operands are True, `or` if either is, `not` reverses a value.

**conditional** — A control structure (`if` / `elif` / `else`) that chooses which code to run based on Boolean data.

**truth table** — A table listing every combination of Boolean inputs and the resulting output for an expression, gate, or circuit.

**hardware / software** — Software is the abstracted concepts of computation (how data is represented and manipulated); hardware is the physical components that implement it.

**circuit** — A physical arrangement that redirects electrical voltage through hardware to perform computational actions.

**logic gate** — An abstracted circuit component that implements a Boolean operation on bits; the basic gates are `and`, `or`, and `not`, each mapping directly to real hardware.

**transistor** — A fundamental circuit component that acts as an electronic switch between on and off, underlying circuit design.

**while loop** — A control structure that repeats a block of actions as long as a condition remains True, governed by a loop control variable.

**for loop** — A control structure that repeats actions a specified number of times, with the loop control variable updated automatically each iteration, often over a `range`.

**iteration** — One pass through the body of a loop; iterative solutions keep track of a running result across passes.

**string indexing / slicing** — Accessing a single character by its integer position with square brackets (indexing), or extracting a substring by a range of positions (slicing); positions start at 0 and `len(s)` gives the length.

**list** — A data structure that holds an ordered collection of values, letting many pieces of data be stored and analyzed under one variable.

**list method** — A built-in operation on a list (e.g. to add or remove elements); lists are mutable, so methods can change them in place.

**reference / memory** — Data lives in computer memory as bits; a variable stores a reference (memory address) to its value, and reassigning a variable points it at a new value rather than changing the old one.

**recursion** — A technique where an idea is defined in terms of itself; a recursive algorithm delegates a slightly smaller version of the problem to itself and combines the sub-answer.

**base case / recursive case** — The base case stops the recursion by returning a direct answer; the recursive case reduces the problem and makes one or more recursive calls (e.g. Towers of Hanoi, Fibonacci).

**iteration vs. recursion** — Two ways to repeat work: iteration loops and tracks a running total; recursion delegates a smaller subproblem to itself, sometimes yielding simpler, more elegant algorithms.

**linear search** — Searching by stepping through each element in turn until the target is found or the data runs out.

**binary search** — Searching a sorted list by repeatedly checking the middle element and discarding the half that cannot contain the target, far faster than linear search.

**dictionary** — A data structure that stores data as key-value pairs, mapping keys to values (like a phonebook mapping names to numbers), allowing lookup by key.

## Unit 2 — Data Structures and Efficiency

**data structure** — A way of organizing multiple pieces of data while programming (lists, dictionaries, trees, graphs), often designed so that specific tasks have efficient algorithms.

**efficiency** — The study of designing algorithms that run quickly by minimizing the number of actions taken.

**tree** — A hierarchical data structure of nodes, where each node holds a value and connects to a parent above and any number of children below; drawn with the root at the top.

**binary search tree** — A tree arranged so search algorithms can be applied to locate items efficiently within the hierarchy.

**graph** — A structure of nodes connected by edges with fewer restrictions than a tree — any node may connect to any other — able to carry weights and directions, used to model maps, molecules, and social networks.

**hash function / hashtable** — A hash function deterministically maps values to integers; a hashtable uses it to store and retrieve data in roughly constant time.

**runtime analysis** — Measuring an algorithm's efficiency by counting how many basic actions it performs as a function of input size, rather than timing it on one machine.

**Big-O notation** — A notation that characterizes an algorithm's efficiency by its function family (e.g. O(n) linear, O(n²), O(2ⁿ), O(n!)), abstracting away hardware and constant factors.

**worst case / best case** — The inputs that make an algorithm take the most or the fewest actions, used to bound its runtime.

**brute force algorithm** — A simple approach that generates every possible solution and checks each against the problem's constraints; easy to write but often very inefficient.

**tractable vs. intractable** — A problem is tractable if it has an efficient (polynomial-time) algorithm and intractable if its known solutions require impractically many steps (e.g. O(2ⁿ) or O(n!)).

**complexity classes P and NP** — P is the class of problems solvable in polynomial time; NP is the class whose solutions can be checked in polynomial time; distinguishing them is a central open question.

**Travelling Salesperson Problem** — A classic hard problem: given a graph of cities and distances, find the shortest route visiting every city and returning home; brute force is O(n!).

**Boolean satisfiability / subset sum** — Example computationally hard (NP) problems used to illustrate intractability, alongside puzzle-solving and exam scheduling.

**heuristic** — A rule-of-thumb method that finds a good-enough solution to a hard (NP) problem in polynomial time without guaranteeing the optimal answer.

## Unit 3 — Scaling Up Computing

**parallel programming** — Speeding up computation by doing multiple actions at the same time, involving concepts like a scheduler, multitasking, multiprocessing, data dependencies, and shared resources.

**multiprocessing** — Running multiple programs or processes at the same time on a single computer with multiple CPUs.

**distributed computing** — A concurrency approach that networks many separate computers together and assigns different processes to different machines to gain efficiency beyond one computer.

**Internet** — The global network connecting computers, built from routers, ISPs, IP addresses, DNS servers, browsers, and cloud computing.

**packet** — A unit of data sent across the Internet; packets are not fully reliable and may arrive out of order or be lost.

**protocol** — An agreed set of rules governing how machines exchange data over a network.

**IP address / DNS** — An IP address identifies a machine on the network; DNS (Domain Name System) servers translate human-readable names into IP addresses.

**fault tolerance** — Designing systems to keep working despite failures such as dropped packets, bad connections, and bottlenecks.

**encryption** — Transforming readable data (plaintext) into obfuscated data (ciphertext) using a key, so only intended parties can recover it; reversed by decryption.

**plaintext / ciphertext / key** — Plaintext is the original message, ciphertext is its encrypted form, and the key is the secret used to encode and decode it.

**Caesar cipher / RSA** — Example encryption algorithms studied in the course: the Caesar cipher (a simple letter shift) and RSA (a modern public-key scheme).

**symmetric vs. asymmetric encryption** — Symmetric encryption uses one shared key for both encoding and decoding; asymmetric encryption uses a related pair of keys (public and private).

## Unit 4 — Computer Science as a Tool

**data analysis** — Using computational and statistical methods to gain insights about data, involving modeling and parsing data to answer questions.

**simulation** — A computational imitation of a real-world event that can be run on different inputs and interacted with to study how the event changes under varied circumstances.

**Monte Carlo method** — A simulation technique that uses repeated random sampling to estimate the answer to a question.

**model** — A simplified representation of a system or dataset built to explore it or make predictions; central to data analysis, simulation, and machine learning.

**machine learning** — An approach where, instead of the programmer specifying the pattern, the computer generates its own models from data to make predictions.

**supervised / unsupervised / reinforcement learning** — The three major categories of machine learning: supervised learning trains models to predict outputs from labeled inputs; unsupervised learning finds structure in unlabeled data; reinforcement learning trains through feedback from actions.

**classification / regression / clustering** — The three major categories of machine-learning reasoning: classification predicts a category, regression predicts a numeric value, and clustering groups similar data together.

**overfitting** — When a machine-learning model matches its training data too closely and fails to generalize to new data.

## Unit 5 — The Big Picture

**Turing machine** — Alan Turing's general theoretical model of computation, defining what it means to compute and underpinning the Church-Turing Thesis.

**Church-Turing Thesis** — The principle that Turing's model captures the general notion of what can be computed by any effective procedure.

**computer science ethics** — The study of the consequences of applying computing in the real world, including data collection, automated decision-making, bias, explainability, algorithmic appreciation, and accountability.
