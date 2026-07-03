# CSE 312 — Foundations of Computing II · Vocabulary

Source: University of Washington CSE 312 (Foundations of Computing II). 26su offering has only lectures 1–5 posted at the time of extraction, so the full lecture set was taken from the most recent complete offering, **25wi** (26 lectures, intro through victory lap). Calendar: https://courses.cs.washington.edu/courses/cse312/26su/calendar/calendar.html · 25wi slides: https://courses.cs.washington.edu/courses/cse312/25wi/

Terms are ordered by course progression: counting → probability → conditioning/independence → random variables → distributions → continuous/CLT → joint distributions → tail bounds/concentration → estimation and applications.

## Counting and combinatorics

**Sum rule** — When a set of outcomes splits into disjoint (non-overlapping) cases, the total count is the sum of the counts of each case.

**Product rule** — When an outcome is built by a sequence of independent choices, the total count is the product of the number of options at each step.

**Factorial (n!)** — The number of orderings (arrangements in a row) of n distinct objects, equal to n·(n−1)···2·1.

**Permutation** — An ordered arrangement of objects; the number of ordered length-k selections from n distinct items (a k-permutation) is P(n,k) = n!/(n−k)!.

**Combination** — An unordered selection of k objects from n distinct objects, counted by the binomial coefficient "n choose k".

**Binomial coefficient (n choose k)** — C(n,k) = n!/(k!(n−k)!), the number of k-element subsets of an n-element set; read "n choose k."

**Overcounting** — A counting technique in which one counts an arrangement multiple times, then divides out the number of repetitions to get the correct count.

**Complementary counting** — Counting the outcomes you do NOT want and subtracting from the total, when the complement is easier to count.

**Stars and bars** — A counting method for the number of ways to distribute k identical items into n distinct bins (equivalently, non-negative integer solutions to a sum), using "stars" for items and "bars" as dividers.

**Multinomial coefficient** — A generalization of the binomial coefficient counting the ways to partition n objects into groups of specified sizes.

**Binomial theorem** — The algebraic identity expanding (x+y)^n as a sum of binomial-coefficient-weighted terms, connecting combinations to polynomial expansion.

**Principle of inclusion-exclusion** — A formula for the size of a union of sets that alternately adds single-set sizes, subtracts pairwise intersections, adds triple intersections, and so on.

**Pigeonhole principle** — If n items are placed into k containers and n > k, some container holds at least two items; the strong/generalized form guarantees some container holds at least ⌈n/k⌉ items.

## Probability foundations

**Sample space (Ω)** — The set of all possible outcomes of a random experiment.

**Outcome** — A single element of the sample space; one possible result of the experiment.

**Event** — A subset of the sample space; a collection of outcomes to which a probability is assigned.

**Complement** — The event that a given event does NOT occur; its probability is 1 minus the event's probability.

**Axioms of probability** — The foundational rules: probabilities are non-negative, the whole sample space has probability 1, and the probability of a union of disjoint events is the sum of their probabilities.

**Mutually exclusive (disjoint) events** — Events that cannot both occur (empty intersection); the probability of their union is the sum of their probabilities.

**Partition** — A family of subsets that are pairwise disjoint and together cover the whole sample space (or an event), used to split a probability calculation into cases.

**Equally likely outcomes (uniform probability)** — A model where every outcome in a finite sample space has the same probability, so an event's probability is (favorable outcomes)/(total outcomes).

## Conditional probability, Bayes, independence

**Conditional probability** — The probability of event A given that event B occurred, P(A|B) = P(A∩B)/P(B); reweights the sample space to the outcomes where B holds.

**Chain rule (multiplication rule)** — Expresses the probability of a joint event as a product of conditional probabilities, e.g. P(A∩B) = P(A)·P(B|A).

**Law of total probability** — For a partition A₁,…,Aₖ of the sample space, P(E) = Σ P(E|Aᵢ)·P(Aᵢ); combines conditional probabilities over all cases.

**Bayes' theorem (Bayes' rule)** — Inverts conditioning: P(A|B) = P(B|A)·P(A)/P(B), used to update a prior belief into a posterior after observing evidence.

**Prior / posterior** — The prior is the probability of a hypothesis before evidence; the posterior is its updated probability after applying Bayes' theorem to observed evidence.

**False positive / false negative rate** — In a test, the false positive rate is the chance of a positive result when the condition is absent; the false negative rate is the chance of a negative result when the condition is present.

**Independence (of events)** — Two events are independent if P(A∩B) = P(A)·P(B), equivalently P(A|B) = P(A); one occurring gives no information about the other.

**Conditional independence** — Events that are independent once a third event is conditioned on, even if they are not independent unconditionally.

**Pairwise vs. mutual independence** — Pairwise independence requires each pair of events to be independent; mutual (full) independence additionally requires the product rule to hold for every subset of the events.

## Random variables and expectation

**Random variable** — A function from the sample space to the real numbers, assigning a numeric value to each outcome.

**Discrete random variable** — A random variable taking values in a countable set (e.g. the integers), described by a probability mass function.

**Probability mass function (PMF)** — For a discrete random variable, the function giving P(X = x) for each value x; its values are non-negative and sum to 1.

**Cumulative distribution function (CDF)** — The function F(x) = P(X ≤ x), defined for any random variable, non-decreasing from 0 to 1.

**Support (range)** — The set of values a random variable can actually take with nonzero probability.

**Expectation (expected value, 𝔼[X])** — The long-run average value of a random variable, computed as Σ x·P(X=x) for discrete X; a weighted mean of its values.

**Law of the unconscious statistician (LOTUS)** — Computes 𝔼[g(X)] as Σ g(x)·P(X=x) directly from the PMF, without first finding the distribution of g(X).

**Linearity of expectation** — 𝔼[X+Y] = 𝔼[X] + 𝔼[Y] and 𝔼[aX] = a·𝔼[X], holding for ANY random variables whether or not they are independent.

**Indicator random variable** — A 0/1 random variable equal to 1 exactly when a specified event occurs; its expectation equals the probability of that event, making it central to linearity-of-expectation arguments.

**Variance (Var(X))** — A measure of spread, 𝔼[(X − 𝔼[X])²] = 𝔼[X²] − 𝔼[X]², quantifying how far X typically falls from its mean.

**Standard deviation** — The square root of the variance, giving spread in the same units as the random variable.

**Covariance** — Cov(X,Y) = 𝔼[XY] − 𝔼[X]𝔼[Y], measuring the linear co-variation of two random variables; zero for independent variables.

**Correlation** — A normalized covariance (dividing by the product of standard deviations) giving a unitless measure of linear association between −1 and 1.

## Named discrete distributions ("the zoo")

**Bernoulli distribution** — A single trial that succeeds with probability p and fails with probability 1−p; a 0/1 random variable with mean p and variance p(1−p).

**Binomial distribution** — The number of successes in n independent Bernoulli(p) trials; PMF C(n,k)p^k(1−p)^(n−k), mean np, variance np(1−p).

**Geometric distribution** — The number of independent Bernoulli(p) trials up to and including the first success; it is memoryless and has mean 1/p.

**Negative binomial distribution** — The number of independent trials needed to obtain a fixed number r of successes, generalizing the geometric distribution.

**Poisson distribution** — Models the count of rare events in a fixed interval given an average rate λ; PMF e^(−λ)λ^k/k!, with mean and variance both equal to λ.

**Hypergeometric distribution** — The number of successes in draws made without replacement from a finite population containing a fixed number of successes.

**Discrete uniform distribution** — Assigns equal probability to each of a finite set of values (e.g. a fair die).

## Continuous random variables and named continuous distributions

**Continuous random variable** — A random variable taking values on a continuum, described by a probability density function rather than point masses.

**Probability density function (PDF)** — A non-negative function f whose integral over an interval gives the probability the variable falls in that interval; f integrates to 1 over the whole line.

**Density vs. mass** — For continuous variables probability comes from integrating a density over a region (any single point has probability 0), in contrast to discrete mass at individual points.

**Continuous uniform distribution** — A random variable equally likely to fall anywhere in an interval [a,b], with constant density 1/(b−a).

**Exponential distribution** — Models the waiting time until the next event in a Poisson process; it is the continuous memoryless distribution, with rate λ and mean 1/λ.

**Memorylessness** — The property (of the geometric and exponential distributions) that P(X ≥ s+t | X ≥ s) = P(X ≥ t): past waiting gives no information about remaining waiting time.

**Normal (Gaussian) distribution** — The bell-shaped continuous distribution 𝒩(μ,σ²) parameterized by mean μ and variance σ²; the limiting distribution in the Central Limit Theorem.

**Standard normal 𝒩(0,1)** — The normal distribution with mean 0 and variance 1; any normal variable is converted to it by standardization.

**Standardization (z-score)** — Transforming a random variable to mean 0 and standard deviation 1 by subtracting its mean and dividing by its standard deviation, so its probabilities can be read from a standard-normal table.

**Continuity correction** — An adjustment (shifting boundaries by ±0.5) applied when approximating a discrete distribution by a continuous normal distribution.

## Central Limit Theorem

**Central Limit Theorem (CLT)** — As n → ∞, the (standardized) sum or average of n independent, identically distributed random variables converges in distribution to a normal distribution, regardless of the original distribution's shape.

**i.i.d. (independent and identically distributed)** — A collection of random variables that are mutually independent and share the same distribution; the standard setting for the CLT and estimation.

**Sample mean** — The average of n i.i.d. observations, itself a random variable whose distribution concentrates around the true mean as n grows.

## Joint distributions

**Joint distribution** — The combined distribution of two or more random variables, giving probabilities of their values simultaneously (joint PMF for discrete, joint density for continuous).

**Marginal distribution** — The distribution of one variable obtained from a joint distribution by summing (or integrating) out the other variables.

**Conditional distribution / conditional expectation** — The distribution (or expected value) of one random variable given a specified value of another; conditional expectation is itself a random variable.

**Independence of random variables** — X and Y are independent when their joint PMF/density factors into the product of the marginals for all values; equivalently knowing one gives no information about the other.

## Tail bounds and concentration

**Tail bound** — An inequality bounding the probability that a random variable deviates far from its mean (lands in the "tail" of the distribution).

**Union bound** — P(A₁∪…∪Aₙ) ≤ Σ P(Aᵢ): the probability that at least one of several events occurs is at most the sum of their probabilities.

**Markov's inequality** — For a non-negative random variable, P(X ≥ a) ≤ 𝔼[X]/a; a weak tail bound needing only the mean.

**Chebyshev's inequality** — Bounds deviation from the mean using the variance: P(|X − 𝔼[X]| ≥ a) ≤ Var(X)/a².

**Chernoff bound** — An exponentially decaying tail bound for sums of independent random variables, far tighter than Markov or Chebyshev, giving "with high probability" guarantees.

**Concentration inequality** — Any bound showing a random variable is close to its expectation with high probability; the umbrella term for Markov, Chebyshev, and Chernoff-style results.

**With high probability (w.h.p.)** — A guarantee that an event holds with probability approaching 1 (failure probability shrinking, e.g. below a small δ), typically obtained via concentration bounds.

**Confidence interval** — A range, computed from data, that contains the true parameter with a stated probability (e.g. 90%), derived using concentration inequalities or the CLT.

## Estimation (Maximum Likelihood)

**Likelihood** — The probability of the observed data viewed as a function of the unknown parameter(s) of the model.

**Log-likelihood** — The logarithm of the likelihood, maximized in place of the likelihood because sums are easier to differentiate than products.

**Maximum likelihood estimation (MLE)** — The method of choosing the parameter value that maximizes the likelihood of the observed data.

**Estimator** — A rule (function of the data) used to estimate an unknown parameter; itself a random variable because it depends on random data.

**Unbiased estimator** — An estimator whose expected value equals the true parameter it estimates, so it is correct on average.

## Applications and randomized algorithms

**Randomized algorithm** — An algorithm that makes random choices during execution; its running time and/or correctness are analyzed probabilistically.

**Las Vegas vs. Monte Carlo algorithms** — A Las Vegas algorithm is always correct but has random running time; a Monte Carlo algorithm runs in bounded time but may be wrong with small probability.

**Quicksort (randomized analysis)** — A sorting algorithm whose expected number of comparisons (O(n log n)) is analyzed with indicator variables and linearity of expectation, and shown to run in O(n log n) with high probability via concentration.

**Birthday problem / collisions** — The counting-and-probability analysis of how likely two of n items share a value among m possibilities, underpinning hashing collision analysis.

**Hash function (pairwise-independent)** — A function mapping keys to buckets; pairwise-independent hash families give provable collision-probability guarantees used in randomized data structures.

**Naive Bayes (Bayesian classification)** — Applying Bayes' theorem with a conditional-independence assumption among features to classify inputs (e.g. spam detection), computing a posterior over classes.

**Covariance matrix** — A matrix collecting the pairwise covariances of a random vector, used to describe multivariate distributions and, via its eigenvalues/eigenvectors, the directions of greatest variance.
