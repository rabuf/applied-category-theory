# Lecture 9 - Adjoints and the Logic of Subsets

---

We've seen that classical logic is closely connected to the logic of
subsets. For any set \\(X\\) we get a poset \\(P(X)\\), the **power
set** of \\(X\\), whose elements are _subsets_ of \\(X\\), with the
partial order being \\(\subseteq\\). If \\(X\\) is a set of "states"
of the world, elements of \\(P(X)\\) are "propositions" about the
world. Less grandiosely, if \\(X\\) is the set of states of any
system, elements of \\(P(X)\\) are propositions about that system.

This trick turns logical operations on propositions - like "and" and
"or" - into operations on subsets, like intersection \\(\cap\\) and
union \\(\cup\\). And these operations are then special cases of
things we can do in _other_ posets, too, like join \\(\vee\\) and meet
\\(\wedge\\).

We could march much further in this direction. I won't, but try it
yourself!

**Puzzle 22.** What operation on subsets corresponds to the logical
operation "not"? Describe this operation in the language of posets, so
it has a chance of generalizing to other posets. Based on your
description, find some posets that _do_ have a "not" operation and
some that don't.

I want to march in another direction. Suppose we have a function
\\(f : X \to Y\\) between sets. This could describe an _observation_,
or _measurement_. For example, \\(X\\) could be the set of states of
your room, and \\(Y\\) could be the set of states of a thermometer in
your room: that is, thermometer readings. Then for any state \\(x\\)
of your room there will be a thermometer reading, the temperature of
your room, which we can call \\(f(x)\\).

This should yield some function between \\(P(X)\\), the set of
propositions about your room, and \\(P(Y)\\), the set of propositions
about your thermometer. It does. But in fact there are _three_ such
functions! And they're related in a beautiful way!

The most fundamental is this:

**Definition.** Suppose \\(f : X \to Y\\) is a function between sets.
For any \\(S \subseteq Y\\) define its **[inverse
image](https://en.wikipedia.org/wiki/Image_(mathematics%29#Inverse_image)**
under \\(f\\) to be

\\[f^{\ast}(S) = \\{x \in X: \; f(x) \in S\\} .\\]

The pullback is a subset of \\(X\\).

The inverse image is also called the **preimage**, and it's often
written as \\(f^{-1}(S)\\). That's okay, but I won't do that: I don't
want to fool you into thinking \\(f\\) needs to have an inverse
\\(f^{-1}\\) - it doesn't. Also, I want to match the notation in
Example 1.89 of _Seven Sketches_.

The inverse image gives a monotone function

\\[f^{\ast}: P(Y) \to P(X),\\]

since if \\(S,T \in P(Y)\\) and \\(S \subseteq T\\) then

\\[f^{\ast}(S) = \\{x \in X: \; f(x) \in S\\} \subseteq \\{x \in X:\; f(x) \in T\\} = f^{\ast}(T) .\\]

Why is this so fundamental? Simple: in our example, propositions about
the state of your thermometer give propositions about the state of
your room! If the thermometer says it's 35&deg;, then your room is
35&deg;, at least near your thermometer. Propositions about the
measuring apparatus are useful because they give propositions about
the system it's measuring - that's what measurement is all about!
This explains the "backwards" nature of the function \\(f^{\ast}: P(Y)
\to P(X)\\), going back from \\(P(Y)\\) to \\(P(X)\\).

Propositions about the system being measured also give propositions
about the measurement apparatus, but this is more tricky. What does
"there's a living cat in my room" tell us about the temperature I read
on my thermometer? This is a bit confusing... but there is an answer
because a function \\(f\\) really does also give a "forwards" function
from \\(P(X)\\) to \\(P(Y)\\). Here it is:

**Definition.** Suppose \\(f : X \to Y\\) is a function between sets.
For any \\(S \subseteq X\\) define its
**[image](https://en.wikipedia.org/wiki/Image_(mathematics%29#Image_of_a_subset)**
under \\(f\\) to be

\\[f_{!}(S) = \\{y \in Y: \; y = f(x) \textrm{ for some } x \in S\\} .\\]

The image is a subset of \\(Y\\).

The image is often written as \\(f(S)\\), but I'm using the notation
of _Seven Sketches_, which comes from category theory. People
pronounce \\(f_{!}\\) as "\\(f\\) lower shriek".

The image gives a monotone function

\\[f_{!}: P(X) \to P(Y)\\]

since if \\(S,T \in P(X)\\) and \\(S \subseteq T\\) then

<center>$$f_{!}(S) = \{y \in Y: \; y = f(x) \textrm{ for some } x \in S \}
\subseteq \{y \in Y: \; y = f(x) \textrm{ for some } x \in T \} =
f_{!}(T) .$$</center>

But here's the cool part:

**Theorem.** \\(f_{!}: P(X) \to P(Y)\\) is the left adjoint of
\\(f^{\ast}: P(X) \to P(Y)\\).

**Proof.** We need to show that for any \\(S \subseteq X\\) and \\(T
\subseteq Y\\) we have

\\[f_{!}(S) \subseteq T \textrm{ if and only if } S \subseteq
f^{\ast}(T) .\\]

David Tanzer gave a quick proof in [Puzzle
19](https://forum.azimuthproject.org/discussion/comment/16490/#Comment_16490).
It goes like this: \\(f_{!}(S) \subseteq T\\) is true if and only if
\\(f\\) maps elements of \\(S\\) to elements of \\(T\\), which is true
if and only if \\(S \subseteq \\{x \in X: \; f(x) \in T\\} =
f^{\ast}(T)\\). \\(\quad \blacksquare\\)

This is great! But there's also _another_ way to go forwards from
\\(P(X)\\) to \\(P(Y)\\), which is a _right_ adjoint of \\(f^{\ast}:
P(Y) \to P(X)\\). This is less widely known, and I don't even know a
simple name for it. Apparently it's less useful.

**Definition.** Suppose \\(f : X \to Y\\) is a function between sets.
For any \\(S \subseteq X\\) define

\\[f_{\ast}(S) = \\{y \in Y: x \in S \textrm{ for all } x \textrm{
such that } y = f(x)\\} .\\]

This is a subset of \\(Y\\).

**Puzzle 23.** Show that \\(f_{\ast}: P(X) \to P(Y)\\) is the right
adjoint of \\(f^{\ast}: P(Y) \to P(X)\\).

What's amazing is this. Here's another way of describing our friend
\\(f_{!}\\). For any \\(S \subseteq X\\) we have

\\[f_{!}(S) = \\{y \in Y: x \in S \textrm{ for some } x \textrm{ such
that } y = f(x)\\} .\\]

This looks almost exactly like $$f_{\ast}$$. The only difference is
that while the left adjoint $$f_{!}$$ is defined using "for some", the
right adjoint $$f_{\ast}$$ is defined using "for all". In logic "for
some \\(x\\)" is called the **[existential
quantifier](https://en.wikipedia.org/wiki/Existential_quantification)**
\\(\exists x\\), and "for all \\(x\\)" is called the **[universal
quantifier](https://en.wikipedia.org/wiki/Universal_quantification)**
\\(\forall x\\). So we are seeing that _existential and universal
quantifiers arise as left and right adjoints!_

This was discovered by Bill Lawvere in this revolutionary paper:

* F. Willam Lawvere, [Adjointness in
  foundations](https://www.emis.de/journals/TAC/reprints/articles/16/tr16abs.html),
  _Dialectica_ **23** (1969). Reprinted with author commentary in
  _Theory and Applications of Categories_ **16** (2006), 1-16.

By now this observation is part of a big story that "explains" logic
using category theory.

Two more puzzles! Let \\(X\\) be the set of states of your room, and
\\(Y\\) the set of states of a thermometer in your room: that is,
thermometer readings. Let \\(f : X \to Y\\) map any state of your room
to the thermometer reading.

**Puzzle 24.** What is \\(f_{!}(\\{\text{there is a living cat in your
room}\\})\\)? How is this an example of the "liberal" or "generous"
nature of left adjoints, meaning that they're a "best approximation
from above"?

**Puzzle 25.** What is \\(f_{\ast}(\\{\text{there is a living cat in
your room}\\})\\)? How is this an example of the "conservative" or
"cautious" nature of right adjoints, meaning that they're a "best
approximation from below"?

**[To read other lectures go here.](http://www.azimuthproject.org/azimuth/show/Applied+Category+Theory#Course)**

---

[Click here to read the original discussion.](https://forum.azimuthproject.org/discussion/1931/lecture-9-chapter-1-adjoints-and-the-logic-of-subsets/p1)

---

{% include "../LICENSE.md" %}
