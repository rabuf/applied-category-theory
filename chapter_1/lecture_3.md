Okay, let's get started!

Fong and Spivak start out by explaining **posets**, which is short for
"partially ordered sets".  Whenever you have a set of things and a
reasonable way deciding when anything in that set is "bigger" than
some other thing, or "more expensive", or "taller", or "heavier", or
"better" in any well-defined sense, or... anything like that, you've
got a poset.  When \\(y\\) is bigger than \\(x\\) we write \\(x \le
y\\).  (You can also write \\(y \ge x\\), of course.)

What do I mean by "reasonable"?  We demand that the \\(\le\\) relation
obey these rules:

1.  **reflexivity**: \\(x \le x\\)

2.  **transitivity** \\(x \le y\\) and \\(y \le z\\) imply \\(x \le
    z\\).

A set with a relation obeying these rules is called a
**[preorder](https://en.wikipedia.org/wiki/Preorder)**.

This is a fundamental concept!  After all, humans are always busy
trying to compare things and see what's better.  So, we'll start by
studying preorders.

But I can't resist revealing a secret trick that Fong and Spivak are
playing on you here.  Why in the world should a book on applied
category theory start by discussing preorders?  Why not start by
discussing _categories?_

The answer: a preorder is a specially simple kind of category.  A
category, as you may have heard, has a bunch of 'objects'
\\(x,y,z,\dots\\) and 'morphisms' between them.  A morphism from
\\(x\\) to \\(y\\) is written \\(f : x \to y\\).  You can 'compose' a
morphism from \\(f : x \to y\\) with a morphism from \\(g: y \to z\\)
and get a morphism \\(gf : x \to z\\).  Every object \\(x\\) has an
'identity' morphism \\(1_x : x \to x\\).  And a few simple rules must
hold.  We'll get into them later.

But a category with _at most one_ morphism from any object \\(x\\) to
any object \\(y\\) is really just a preorder!  If there's a morphism
from \\(x\\) to \\(y\\) we simply write \\(x \le y\\).  We don't need
to give the morphism a name because there's at most one from \\(x\\)
to \\(y\\).

So, the study of preorders is a baby version of category theory, where
everything gets much easier!  And when Fong and Spivak are teaching
you about preorders, they're sneakily getting you used to categories.
Then, when they introduce categories explicitly, you can always fall
back on preorders as examples.

I've posted 4 puzzles on preorders
[here](https://forum.azimuthproject.org/discussion/comment/15878/#Comment_15878).
Look at them!  I just answered Puzzle 3.  Puzzle 4 has millions of
answers - come up with another!  Also look at Puzzle 5
[here](https://forum.azimuthproject.org/discussion/comment/15954/#Comment_15954).
And people who already know the definition of a category, and want to
ponder how preorders are a special case of categories, should try
Puzzles 6 and 7
[here](https://forum.azimuthproject.org/discussion/comment/16077/#Comment_16077).

[Click here to read the original
discussion.](https://forum.azimuthproject.org/discussion/1812/lecture-3-chapter-1-posets/p1)
