# Lecture 6 - Computing Adjoints
---
I've already said that left and right adjoints give _the best
approximate ways to solve a problem that has no solution_, namely
finding the inverse of a monotone function that has no inverse. I've
defined them and given you some puzzles about them. But now let's
review these puzzles and extract some valuable lessons!

We took the function \\(f : \mathbb{N} \to \mathbb{N}\\) that doubles
any natural number

<center>$$f(a) = 2a .$$</center>

This function has no inverse, since you can't divide an odd number by
2 and get a natural number! But if you did the puzzles, you saw that
\\(f\\) has a "right adjoint" \\(g : \mathbb{N} \to \mathbb{N}\\).
This is defined by the property

<center>$$f(a) \le b \textrm{ if and only if } a \le g(b) .$$</center>

or in other words,

<center>$$2a \le b \textrm{ if and only if } a \le g(b) .$$</center>

Using our knowledge of fractions, we have

<center>$$2a \le b \textrm{ if and only if }  a \le b/2$$</center>

but since \\(a\\) is a natural number, this implies

<center>$$2a \le b \textrm{ if and only if }  a \le \lfloor b/2 \rfloor$$</center>

where we are using the [floor
function](https://en.wikipedia.org/wiki/Floor_and_ceiling_functions)
to pick out the largest integer \\(\le b/2\\). So,

<center>$$g(b) = \lfloor b/2 \rfloor.$$</center>

Moral: the right adjoint \\(g\\) is the "best approximation from
below" to the nonexistent inverse of \\(f\\).

If you did the puzzles, you also saw that \\(f\\) has a left adjoint!
This is the "best approximation from above" to the nonexistent inverse
of \\(f\\): it gives you the smallest integer that's \\(\ge n/2\\).

So, while \\(f\\) has no inverse, it has two "approximate inverses".
The left adjoint comes as close as possible to the (perhaps
nonexistent) correct answer while making sure to never choose a number
that's _too small_. The right adjoint comes as close as possible while
making sure to never choose a number that's _too big_.

The two adjoints represent two opposing philosophies of life: _make
sure you never ask for too little_ and _make sure you never ask for
too much_. This is why they're philosophically profound. But the great
thing is that they are defined in a completely precise, systematic way
that applies to a huge number of situations!

If you need a mnemonic to remember which is which, remember left
adjoints are "left-wing" or "liberal" or "generous", while right
adjoints are "right-wing" or "conservative" or "cautious".

Let's think a bit more about how we can compute them in general,
starting from the basic definition.

Here's the definition again. Suppose we have two preorders
\\((A,\le_A)\\) and \\((B,\le_B)\\) and a monotone function \\(f : A
\to B\\).  Then we say a monotone function \\(g: B \to A\\) is a
**right adjoint of \\(f\\)** if

<center>$$f(a) \le_B b  \textrm{ if and only if } a \le_A g(b)$$</center>

for all \\(a \in A\\) and \\(b \in B\\). In this situation we also say
that \\(f\\) is a **left adjoint of \\(g\\)**.

The names should be easy to remember, since \\(f\\) shows up on the
_left_ of the inequality \\(f(a) \le_B b\\), while \\(g\\) shows up on
the _right_ of the inequality \\(a \le_A g(b)\\).  But let's see how
they actually work!

Suppose you know \\(f : A \to B\\) and you're trying to figure out its
right adjoint \\(g: B \to A\\). Say you're trying to figure out
\\(g(b)\\). You don't know what it is, but you know

<center>$$f(a) \le_B b  \textrm{ if and only if } a \le_A g(b)$$</center>

So, you go around looking at choices of \\(a \in A\\). For each one
you compute \\(f(a)\\).  If \\(f(a) \le_B b\\), then you know \\(a
\le_A g(b)\\). So, you need to choose \\(g(b)\\) to be greater than or
equal to every element of this set:

<center>$$\{a  \in A : \; f(a) \le_B b  \}$$</center>

In other words, \\(g(b)\\) must be an **[upper
bound](https://en.wikipedia.org/wiki/Upper_and_lower_bounds)** of this
set. But you shouldn't choose \\(g(b)\\) to be any bigger than it
needs to be! After all, you know \\(a \le_A g(b)\\) _only if_ \\(f(a)
\le_B b\\). So, \\(g(b)\\) must be a **[least upper
bound](https://en.wikipedia.org/wiki/Infimum_and_supremum)** of the
above set.

Note that I'm carefully speaking about _a_ least upper bound. Our set
could have two different least upper bounds, say \\(a\\) and \\(a'\\).
Since they're both the least, we must have \\(a \le a'\\) and \\(a'
\le a\\). This doesn't imply \\(a = a'\\), in general! But it does if
our preorder \\(A\\) is a "poset". A **poset** is a preorder \\((A,
\le_A)\\) obeying this extra axiom:

<center>$$\textrm{ if } a \le a'  \textrm{ and } a' \le a \textrm{ then } a = a'$$</center>

for all \\(a,a' \in A\\).

In a poset, our desired least upper bound may still not _exist_. But
if it does, it's _unique_, and Fong and Spivak write it this way:

<center>$$\bigvee \{a  \in A : \; f(a) \le_B b  \}$$</center>

The \\(\bigvee\\) symbol stands for "least upper bound", also known as
**supremum** or **join**.

So, here's what we've shown:

If \\(f : A \to B\\) has a right adjoint \\(g : B \to A\\) and \\(A\\)
is a poset, this right adjoint is unique and we have a formula for it:

<center>$$g(b) =  \bigvee \{a  \in A : \; f(a) \le_B b  \} .$$</center>

And we can copy our whole line of reasoning and show this:

If \\(g : B \to A\\) has a left adjoint \\(f : A \to B\\) and \\(B\\)
is a poset, this left adjoint is unique and we have a formula for it:

<center>$$f(a) =  \bigwedge \{b  \in B : \; a \le_A g(b)\}.$$</center>

Here the \\(\bigwedge\\) symbol stands for "greatest lower bound",
also known as the **infimum** or **meet**.

We're making progress: we can now actually compute left and right
adjoints! Next we'll start looking at more examples.

---

[Click here to read the original discussion.](https://forum.azimuthproject.org/discussion/1901/lecture-6-chapter-1-computing-adjoints/p1)
