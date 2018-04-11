# Lecture 2 - What is Applied Category Theory? 
--------

"Applied category theory" is fairly new, and I should warn you right away that it's just getting started.   While I can point you to some great applications of category theory outside mathematics and computer science, if you ask "have categories been successfully applied to X?" there's a high chance the answer will be no, even if such an application is possible!  It takes time.

Category theory was created in 1947.  _It was created to be applied_. Mathematicians were having problems connecting topology to algebra, and Eilenberg and Mac Lane realized that 3 new concepts were required to solve these problems: category, functor, and natural transformation.  They succeeded wonderfully, and category theory started growing rapidly: it is now indispensable in the subject of "algebraic topology", which solves topology problems using algebra.  Later Grothendieck applied category theory to "algebraic geometry", and used it to prove the Weil Conjectures, some amazing conjectures relating number theory to geometry.  In the process he invented many other fundamental concepts, like topoi, or toposes.  By now category theory is a very large subject that takes a long time to thoroughly learn.

However, these are applications within pure mathematics, and the new buzzword "applied category theory" refers to applications _outside_ pure mathematics.  

It also mainly means applications outside computer science.

Category theory has been applied to computer science for a long time now, at least since the 1960s.  That's why a lot of you - maybe even most of you - are hackers, programmers, software designers, or computer scientists.  You've heard that category theory is good for you.  You probably heard that _before_ the new buzzword "applied category theory".

 I'm _not_ a programmer.  I apologize for this flaw.  I know a fair amount about categories in computer science - but I learned it from the category theory side, not from hands-on experience in programming.   For example, I understood monads before I heard of Haskell, and my first reaction was "What are these guys doing with monads?  How are they managing to make such a simple concept so mysterious?"   I understood cartesian closed categories before I understood the lambda calculus, and I can't imagine myself understanding the lambda calculus _without_ category theory (though plenty of people do).

So, this is not a course on "categories in computer science".  Nonetheless, because category theory is about understanding and organizing abstract data structures, everything I say will be relevant in some way to computing!  Furthermore, several chapters in _Seven Sketches_ explicitly discuss databases, and type systems, and other aspects of computer science.   

In the 1990s people started applying category theory to quantum physics, and quantum gravity.  That's how I got interested in category theory!   There are a lot of success stories here by now.   And if people succeed in building [topological quantum computers](https://en.wikipedia.org/wiki/Topological_quantum_computer), we'll see technology that can _only be understood using category theory_.

More recently, some of us decided that if categories are good for computer science and physics, maybe we should apply them elsewhere: engineering, chemistry, biology and beyond.  That's what I'm doing now.   I'm applying categories in the DARPA-funded project on [complex adaptive system design](https://johncarlosbaez.wordpress.com/2018/02/19/complex-adaptive-systems-part-7/), I'm being paid by the Silicon Valley startup [Pyrofex](https://johncarlosbaez.wordpress.com/2018/02/04/pyrofex/) to do research in category theory, and I've got 8 grad students and a postdoc studying [networks](http://math.ucr.edu/home/baez/networks/) using category theory.  And it's not just us - it's catching on.

It's this incipient spread of category theory into many areas of science and engineering that people mean when they say "applied category theory".  

I held a workshop on it last year.  You can see slides and videos here:

* [Applied Category Theory](http://math.ucr.edu/home/baez/ACT2017/), AMS Western Sectional Meeting, U. C. Riverside, 4-5 November 2017. 

This month [Spencer Breiner](https://www.nist.gov/people/spencer-breiner) and [Eswaran Subrahmanian](https://www.cmu.edu/epp/people/faculty/eswaran-subrahmanian.html) ran a workshop pulling together academics and lots of honchos from industry and government:

* [Applied Category Theory: Bridging Theory & Practice](https://johncarlosbaez.wordpress.com/2018/02/17/applied-category-theory-at-nist/), 15-16 March 2018, National Institute of Standards and Technology, Gaithersburg, Maryland, USA.

They took videos and collected talk slides, but for now you can only read my description - click the link.  

At the end of April there will be a much bigger week-long school followed by a week-long workshop in the Netherlands:

* Applied Category Theory (ACT 2018).  [School](https://johncarlosbaez.wordpress.com/2017/10/22/applied-category-theory-2018-adjoint-school/) 23-27 April 2018 and [workshop](https://johncarlosbaez.wordpress.com/2017/09/12/act-2018/) 30 April-4 May 2018 at the <a href="https://www.lorentzcenter.nl/">Lorentz Center</a> in Leiden, the Netherlands.  Organized by <a href="http://www.cs.ox.ac.uk/bob.coecke/">Bob Coecke</a> (Oxford), <a href="http://www.brendanfong.com/">Brendan Fong</a> (MIT), <a href="http://www.cs.ru.nl/A.Kissinger/">Aleks Kissinger</a> (Nijmegen), <a href="https://www.cs.ox.ac.uk/people/martha.lewis/">Martha Lewis</a> (Amsterdam), and <a href="http://joshuatan.com/research">Joshua Tan</a> (Oxford).

There should be a lot to see on YouTube!  I'll be there, and I'll keep you informed.

These are _all_ the events I know that have "applied category theory" in the title.    The applications have been building up over decades, but only now have they reached a critical mass, to make it a subject with its own name.  

The book by Fong and Spivak is a great introduction to category theory as viewed from this new perspective.  So that's what we'll talk about here!
