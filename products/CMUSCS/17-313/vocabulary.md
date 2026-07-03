# 17-313 — Foundations of Software Engineering · Vocabulary

Source: CMU 17-313 Foundations of Software Engineering. The Spring 2026 offering (Michael Hilton & Joshua Sunshine, https://cmu-313.github.io/) publishes its lecture decks only as CMU-domain-restricted Google Slides (export returns a Google sign-in page), so the vocabulary below is extracted from the publicly downloadable PDF lecture slides of a prior offering of the same course: CMU 17-313 / 15-313, Fall 2018 (Christian Kästner & Michael Hilton), archived at https://www.cs.cmu.edu/~ckaestne/17313/2018/ (26 lecture PDFs, including the 245-slide end-of-term summary). The two offerings share the same syllabus and topic sequence.

## Requirements engineering

**Requirements engineering** — The activity of discovering, documenting, and validating what a system must do and the qualities it must have, articulating the relationship between a desired system and its environment.

**The world and the machine** — Michael Jackson's framing that requirements are properties of the environment (the world), specifications describe the shared environment–machine interface, and domain knowledge bridges the two; conflating them produces defective requirements.

**Indicative vs. optative mood** — The indicative mood states facts true of the environment as-is; the optative mood states the desired environment once the machine is present (to-be). Requirements are written to avoid implementation bias by describing only what is observable at the environment–machine interface.

**Functional requirement** — A statement of behavior the system must exhibit: the outputs it must produce for given inputs and events.

**Quality (non-functional) requirement** — A constraint on how well the system performs, covering quality-of-service attributes such as accuracy, safety, security, reliability, performance, usability, and maintainability; should be stated in measurable, verifiable ways.

**Requirements qualities** — Good requirements are correct, consistent (no conflicts), unambiguous (only one valid interpretation), complete (all inputs/outputs covered), feasible, relevant, testable (acceptance tests possible), and traceable (uniquely labeled).

**Requirements elicitation** — Techniques for gathering requirements from stakeholders, including interviews and content analysis (studying existing artifacts: manuals, bug reports, the system to be replaced, domain literature).

**Stakeholder** — Any party with an interest in the system (users, clients, operators, regulators, "fringe" affected parties); a use case must satisfy the interests of its stakeholders.

**Software Requirements Specification (SRS)** — A formal requirements document, often standardized and used as the basis for contracts.

**Use case** — A structured description of a system's interaction with actors, capturing scope, level, primary actor, stakeholders and interests, preconditions, success guarantees (postconditions), the main success scenario ("happy path"), and extensions (alternate flows).

**Actor** — An external entity (user or system) that interacts with the system under design; may be primary, supporting, or offstage.

**Main success scenario / extensions** — The typical step-by-step interaction that achieves the goal, versus the alternate/exception flows that branch off it; extensions usually make up the majority of a use case's text.

**User story** — A short, user-centered statement of a desired capability, grouped into larger "epics" and managed on a board; an alternative lightweight requirements format to full use cases.

**Traceability** — The ability to link requirements forward to design, code, and tests (and back), so each element's origin and rationale can be followed; valuable but costly to maintain.

**Glossary / domain model** — A shared vocabulary and conceptual model of the problem domain, built to resolve terminology, designation, and structure inconsistencies among stakeholders.

## Measurement and metrics

**Software metric** — A function mapping a software artifact or process to a numeric value used as a decision tool to reduce uncertainty; every metric should be evaluated by its measurement function, scale, and relationship to the attribute of interest.

**Construct validity** — Whether a metric actually measures the attribute it claims to measure (e.g., does a "maintainability" metric really track maintainability).

**External validity** — Whether results obtained from a metric or study generalize beyond the specific context in which they were collected.

**Measurement reliability** — Whether a measurement yields consistent, repeatable results.

**Cyclomatic complexity** — A metric counting the number of linearly independent paths through a program's control flow, used as a proxy for code complexity and testing effort.

**Halstead volume** — A size/complexity metric derived from counts of operators and operands in the code.

**Maintainability index** — A composite metric (combining Halstead volume, cyclomatic complexity, and lines of code) yielding a 0–100 score intended to indicate how easy code is to maintain.

**Measurement dysfunction / bad incentives** — The danger that optimizing to a metric distorts behavior: rewards can extinguish intrinsic motivation, encourage cheating and shortcuts, and foster short-term thinking, so metrics used as incentives can degrade the very quality they measure.

**Benchmark-based metric** — A metric interpreted by comparison against typical values collected from a reference set, rather than in absolute terms.

## Software architecture and design

**Software architecture** — The high-level structure of a system: its components, their interfaces and relationships, and the design decisions made with system-wide quality attributes in mind, at a higher abstraction level than object-oriented design.

**Architecture vs. design** — Architectural questions concern system-wide structure and quality attributes (how to scale, where to put trust boundaries, subsystem interfaces); design questions concern local implementation within a component (how to add a menu item, which lock protects data).

**Architectural view** — A representation of the architecture from one perspective (e.g., module, component-and-connector, allocation); different views and notations are chosen to suit the documentation's purpose and to avoid ambiguity (an arrow can mean many different relationships).

**Architectural style** — A named, reusable organization of components and connectors with known properties and tradeoffs, e.g., pipe-and-filter, call-return, publish-subscribe, layered, client-server, repository, and service-oriented.

**Pipe-and-filter** — A style in which independent processing components (filters) are connected by data streams (pipes), each transforming its input and passing it on.

**Layered architecture** — A style organizing the system into layers where each layer provides services to the one above and depends only on those below, improving modifiability and portability.

**Client-server** — A style separating service requesters (clients) from service providers (servers), typically communicating over a network.

**Repository model** — A style in which components share and communicate through a common central data store.

**Publish-subscribe** — A style in which components emit events and other components subscribe to them, decoupling producers from consumers.

**Microservices** — An architectural style structuring an application as a suite of small, independently deployable services, enabling continuous deployment and independent scaling but adding operational and integration complexity.

**Coupling** — The degree of interdependence between modules; low coupling is a design goal because it localizes the impact of change.

**Cohesion** — The degree to which the elements inside a module belong together and serve a single purpose; high cohesion is a design goal.

**Information hiding** — Encapsulating design decisions (especially those likely to change) inside a module behind a stable interface, so that changes do not ripple through the system; the basis of design for change.

**Modularity** — Decomposing a system into well-defined, separately understandable modules with explicit interfaces.

**Design pattern** — A named, reusable solution to a recurring low-level (often object-oriented) design problem.

**Architectural tactic** — A design decision that improves a specific quality attribute (e.g., availability, performance, security); resembles a design pattern but is targeted at "how do I get better at achieving quality X" rather than at structure alone.

**Facade** — A design element providing a single simplified interface to a larger body of code or subsystem.

**Abstraction / levels of abstraction** — Reasoning at the appropriate level (requirements, architecture, subsystem, object design) and choosing notation that matches that level, deliberately hiding lower-level detail.

## DevOps and delivery

**DevOps** — The practice of integrating development and operations to enable frequent, reliable releases through automation of build, test, and deployment.

**Continuous integration / continuous deployment (CI/CD)** — Automatically building and testing every change and releasing frequently (often several times per day) with incremental rollout and quick rollback.

**Containerization** — Lightweight virtualization (e.g., Docker) providing sub-second boot, shareable images with full configuration, and one image per service, used consistently across development and deployment.

## Quality assurance and testing

**Software quality assurance (QA)** — The full range of techniques—testing, inspection, static and dynamic analysis, process controls—used to build confidence that a system meets its functional and quality requirements.

**Validation vs. verification** — Verification asks "did we build the system correctly" (does it meet its specification / are there design or code flaws); validation asks "did we build the right system" (does it meet users' needs / are there flaws in the specification).

**Software testing** — Executing a program on selected inputs to detect faults; limited in that it cannot exercise code not run and cannot prove the absence of bugs.

**Black-box vs. white-box testing** — Black-box tests derive inputs from the specification without knowledge of internals; white-box tests use knowledge of the code structure to drive coverage.

**Unit testing** — Testing an individual component in isolation against its specification.

**Integration testing** — Testing the interactions and protocols between components once combined.

**Regression testing** — Re-running an accumulated test suite after changes to detect newly introduced faults; bug fixes are accompanied by a regression test reproducing the bug.

**Test coverage** — A measure of how much of some artifact (statements, branches, paths) is exercised by a test suite; a coverage criterion defines the target.

**Test-driven development (TDD)** — An agile practice of writing a failing test as a specification before writing the code that satisfies it, driving testable design and interface-first thinking.

**Test stub / mock** — A stand-in implementation of a dependency (e.g., an interface that throws a connection error) used so a unit can be tested in isolation and under controlled conditions.

**Test oracle / the oracle problem** — The mechanism that decides whether a test's observed output is correct; the difficulty of obtaining such an oracle for many properties is a fundamental limit of testing.

**Random testing** — Selecting inputs at random from the input domain according to some distribution, which can give probabilistic bounds on failure rates.

**A/B testing** — Comparing two variants in production by splitting users, to measure the effect of a change empirically.

**Performance testing** — Measuring throughput and latency under load using tools such as JMeter.

**Flaky test / nondeterminism** — Tests that pass or fail inconsistently due to nondeterministic behavior, timing, or environment, undermining the reliability of the suite.

## Inspection and code review

**Software inspection** — A formal, structured peer review (Fagan inspection) with defined roles (moderator, author, readers/scribe/verifier) and stages (planning, overview, preparation, meeting, rework, follow-up) to find defects.

**Code review** — Peer examination of proposed changes; "modern" (tool-supported, asynchronous "passaround") code review at Google/Microsoft improves style/design consistency, ensures adequate tests, spreads knowledge, and prevents any single developer committing unreviewed code.

**Walkthrough** — A less formal review in which the author leads peers through the artifact.

**Pair programming** — Two developers working together at one workstation (driver and navigator), a form of continuous review.

**Review formality spectrum** — From least to most formal: ad hoc review, passaround, pair programming, walkthrough, inspection.

**Checklist** — A structured list of items reviewers verify, used to make inspections systematic and to counter reviewer fatigue (sessions recommended not to exceed ~60 minutes).

## Static and dynamic analysis

**Static analysis** — Analyzing a program without executing it to find classes of defects; ranges from syntactic pattern matching to type checking and data-flow analysis.

**Dynamic analysis** — Analyzing a program by observing its execution, defined by a property of interest, an instrumentation mechanism to collect related information, and the inputs the program is run on.

**Instrumentation** — Inserting probes into source, bytecode, or binary (via code transformation) to collect information about a program run.

**Control flow graph (CFG)** — A graph whose nodes are basic blocks and whose edges represent possible control transfers, the basis for many analyses.

**Data-flow analysis** — Static analysis that propagates facts (e.g., zero/non-zero, tainted/untainted) over the control flow graph to a fixed point, using an abstraction that narrows the state space.

**Kildall's worklist algorithm** — The standard fixed-point iteration for data-flow analysis: repeatedly apply flow functions and join results at merge points until no facts change.

**Soundness** — An analysis is sound if it reports all real defects (no false negatives), typically achieved by over-approximation.

**Completeness** — An analysis is complete if every defect it reports is real (no false positives), typically achieved by under-approximation.

**False positive / false negative** — A false positive is a reported defect that is not real; a false negative is a real defect the analysis misses; combined with true positives/negatives in the standard confusion matrix.

**Rice's theorem** — Any nontrivial property of the language recognized by a Turing machine is undecidable; consequently every static analysis must be unsound, incomplete, or non-terminating.

**Syntactic / structural analysis** — Analysis over the token stream or the parse/AST structure (e.g., grep-style pattern search, structural pattern matching) rather than over semantics.

**Type checking** — Static verification that operations are applied to compatible types, a widely deployed sound-by-construction static analysis.

**Linter** — A tool applying many lightweight static checks for style and likely-bug patterns (e.g., Checkstyle, FindBugs, language-specific linters).

**Taint analysis** — A data-flow analysis tracking data from untrusted sources to sensitive sinks to detect leaks or injection; can be implemented statically or dynamically, and the two combined to offset each other's limitations.

**Source / sink** — In taint analysis, the point where untrusted (tainted) data enters and the sensitive operation it must not reach without sanitization.

## Software process

**Software process** — The chosen way of organizing development activities; process matters because early effort is dominated by rework and progress is hard to measure.

**Waterfall model** — The classic linear sequence (requirements, architectural design, detailed design, coding, unit/integration testing, operation and maintenance); a useful reference but limited by its lack of feedback between phases.

**Iterative and incremental development (IID)** — Building the system in repeated cycles that add and refine functionality, with roots in Shewhart's plan-do-study-act cycles; addresses risk through feedback.

**Spiral model** — Barry Boehm's risk-driven process that repeatedly cycles through requirements, design, and implementation, tackling the highest engineering risks first via prototypes.

**Rational Unified Process (RUP)** — An iterative commercial process framework from Rational Software organizing development into phases and disciplines.

**Change control board** — A body that reviews and approves proposed changes (e.g., new feature requests) against project constraints during planning.

**Agile / Agile Manifesto** — A family of iterative practices and a business approach valuing individuals and interactions over processes and tools, working software over comprehensive documentation, customer collaboration over contract negotiation, and responding to change over following a plan.

**Scrum** — An agile framework organizing work into fixed-length sprints with a product backlog, defined roles, and ceremonies; introduced by Sutherland and Schwaber.

**Sprint / backlog** — A sprint is a short time-boxed iteration producing a working increment; the backlog is the prioritized list of pending work items.

**Velocity** — The amount of backlog a team completes per sprint, used to forecast future capacity.

**Extreme Programming (XP)** — Kent Beck's agile methodology bundling practices such as test-driven development, pair programming, continuous integration, and an open workspace.

**Kanban board** — A visual board showing work items moving through stages (e.g., to-do, in-progress, done) to manage flow and limit work in progress.

**Planning poker** — An estimation technique in which team members privately estimate effort and reveal simultaneously to reach consensus.

**Gantt chart / network plan** — Scheduling tools that lay out activities over time and model task dependencies for planning and progress tracking.

**Milestone** — A verifiable checkpoint used for planning and measuring progress.

**Estimation** — Predicting project parameters (effort, duration, cost); iteratively re-estimated as the project proceeds because early estimates are highly uncertain ("plans are worthless, but planning is everything").

**Risk management** — Identifying, analyzing, and mitigating project and engineering risks; risk is coped with by selective innovation, reliance on precedent, and iteration/feedback (prototypes, spirals, sprints).

**Technical debt** — The accumulated cost of expedient design or implementation shortcuts that must later be repaid through rework; tracked on dashboards alongside other engineering data.

## Security engineering

**Security development lifecycle (SDL)** — Building security in across the entire development lifecycle (e.g., Microsoft's SDL) rather than bolting it on, addressing complexity, changing assumptions, and flawed specifications as sources of insecurity.

**Threat modeling** — Systematically analyzing a design or architecture to enumerate potential threats and decide where to add security mechanisms.

**STRIDE** — A threat taxonomy—Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, Elevation of privilege—each mapped to a security property that counters it (authentication, integrity, non-repudiation, confidentiality, availability, authorization).

**Security properties (CIA and beyond)** — Confidentiality, integrity, and availability, plus authentication, authorization, and non-repudiation, as the goals a secure system must uphold.

**Attack surface** — The set of points where an attacker can attempt to enter or extract data; reduced by input validation and by banning dangerous APIs.

**Quality gate** — An automated checkpoint (e.g., static checkers run at check-in) that code must pass before proceeding, used to enforce security and quality standards.

**CWE (Common Weakness Enumeration)** — A community catalog of software weakness types used as a reference for classes of vulnerabilities.

## People, teams, and open source

**Developer motivation** — Models of what drives productive work: Maslow's hierarchy of needs, Herzberg's separation of satisfiers from dissatisfiers, and the autonomy–mastery–purpose model; extrinsic rewards can crowd out intrinsic motivation.

**Team communication cost** — Coordination overhead grows with team size as n(n−1)/2 communication links, motivating structuring teams into smaller units (e.g., Spotify squads).

**10x engineer** — The disputed notion of an outlier "rock-star" developer far more productive than peers; discussed skeptically alongside team-composition effects.

**Free / open source software** — Software distributed with source and freedoms to use, study, modify, and share ("free as in free speech"); associated with community development, varied motivations, and the "many eyes" quality argument.

**Open source license** — The legal terms governing reuse, spanning permissive licenses (MIT, Apache, BSD) and copyleft licenses (GPL, LGPL) that impose share-alike obligations.

**Defect density** — Defects per 1,000 lines of code, used to compare software quality (e.g., Coverity's finding of comparable density for open source and proprietary code).

**Open source business models** — Ways to profit around freely licensed software: selling support/expertise (Red Hat), complementary services (WordPress), or consulting and paid extensions.

## Data analytics and ethics

**Software analytics / data-driven decision making** — Using the abundance of engineering data (code history, bug trackers, CI logs, crash reports, runtime and customer telemetry) to guide software-engineering decisions and evaluate the effectiveness of interventions.

**Testing in production** — Validating changes under real workloads via beta tests, A/B tests, and staged rollouts across hardware/software diversity, avoiding costly redundant test infrastructure.

**Measurement overhead** — The time and perturbation that instrumentation itself adds; a measured event should be 100–1000× longer than the measurement overhead to be trustworthy.

**Software engineering code of ethics** — The IEEE-CS/ACM eight principles (Public, Client and Employer, Product, Judgement, Management, Profession, Colleagues, Self) obligating engineers to act in the public interest.

**Negligence vs. malpractice** — Negligence is failure to exercise the care a reasonably prudent person would; malpractice is professional negligence—failing to meet a licensed profession's standard of care and thereby causing harm.

**Dual use** — The property that software or a feature built for a legitimate purpose can also be repurposed for harm, raising ethical responsibility in design decisions.
