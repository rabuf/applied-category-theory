# Lecture 4 - Galois Connections Part 1
---
Okay, now let's get to the cool part: Galois connections. Before he
died in a duel, the young [&Eacute;variste
Galois](https://en.wikipedia.org/wiki/%C3%89variste_Galois) proved
that you couldn't solve the quintic equation with radicals: that is,
there's nothing like the quadratic formula for equations like:

<center>$$ax^5 + bx^4 + cx^3 + dx^2 + ex + f = 0.$$</center>

He used a trick for converting one view of a problem into another, and
then converting the other view back into the original one. And by
now, we've extracted the essence of this trick and dubbed it a "Galois
connection". It's far more general than Galois dreamed. More [here.](https://pdfs.semanticscholar.org/de4c/0a1a2269ddee82bd2d21f1ae23cdadb09cd7.pdf)

Remember, a **[preorder](https://en.wikipedia.org/wiki/Preorder)** is
a set \\(A\\) with a relation \\(\le_A\\) that's reflexive and
transitive. When we're in the mood for being careful, we write a
preorder as a pair \\( (A,\le_A)\\). When we're feeling lazy we'll
just call it something like \\(A\\), and just write \\(\le\\) for the
relation.

**Definition.** Given preorders \\((A,\le_A)\\) and \\((B,\le_B)\\), a
**monotone map** from \\(A\\) to \\(B\\) is a function \\(f : A \to
B\\) such that

<center>$$x \le_A y \textrm{ implies } f(x) \le_B f(y).$$</center>

for all elements \\(x,y \in A\\),

**Puzzle 10.** There are many examples of monotone maps between
posets.  List a few interesting ones!

**Definition.** Given preorders \\((A,\le_A)\\) and \\((B,\le_B)\\), a
**[Galois
connection](https://en.wikipedia.org/wiki/Galois_connection)** is a
monotone map \\(f : A \to B\\) together with a monotone map \\(g: B
\to A\\) such that

<center>$$f(a) \le_B b  \textrm{ if and only if } a \le_A g(b)$$</center>

for all \\(a \in A, b \in B\\). In this situation we call \\(f\\) the
**left adjoint** and \\(g\\) the **right adjoint**.

So, the right adjoint of \\(f\\) is a way of going back from \\(B\\)
to \\(A\\) that's related to \\(f\\) in some way.

**Puzzle 11.** Show that if the monotone map \\(f: A \to B\\) has an
inverse \\(g : B \to A \\) that is also a monotone map, then \\(g\\)
is _both a right adjoint and a left adjoint_ of \\(f\\).

So, adjoints are some sort of generalization of inverses. But as
you'll eventually see, they're much more exciting!

I will spend quite a few lectures describing really interesting
examples, and you'll start seeing what Galois connections are good
for. It shouldn't be obvious yet, unless you already happen to know or
you're some sort of superhuman genius. I just want to get the
definition on the table right away.

Here's one easy example to get you started. Let \\(\mathbb{N}\\) be
the set of natural numbers with its usual notion of \\(\le\\).
There's a function \\(f : \mathbb{N} \to \mathbb{N}\\) with \\(f(x) =
2x\\). This function doesn't have an inverse. But:

**Puzzle 12.** Find a right adjoint for \\(f\\): that is, a function
\\(g : \mathbb{N} \to \mathbb{N}\\) with

<center>$$f(m) \le n  \textrm{ if and only if } m \le  g(n)$$</center>

for all \\(m,n \in \mathbb{N}\\). How many right adjoints can you
find?

**Puzzle 13.** Find a left adjoint for \\(f\\): that is, a function
\\(g : \mathbb{N} \to \mathbb{N}\\) with

<center>$$g(m) \le n  \textrm{ if and only if } m \le  f(n)$$</center>

for all \\(m,n \in \mathbb{N}\\). How many left adjoints can you find?

---

[Click here to read the original
discussion.](https://forum.azimuthproject.org/discussion/1828/lecture-4-chapter-1-galois-connections/p1)

---

{% include "../LICENSE.md" %}
