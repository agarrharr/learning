# Seven Languages in Seven Weeks - Chapter 4 - Prolog

## Day 1 - Self-Study

### Find:

- Some free Prolog tutorials
  [cs.nuim.ie/~jpower](https://www.cs.nuim.ie/~jpower/Courses/Previous/PROLOG/) - Beginner tutorial that walks you through the syntax
  [cpp.edu/~jrfisher](https://www.cpp.edu/~jrfisher/www/prolog_tutorial/contents.html) - Lots of great example programs here
- A support forum (there are several)
  [GNU Prolog Mailing list](http://gprolog.org/#maillist)
- One online reference for the Prolog version you're using
  [GNU Prolog manual](http://gprolog.org/manual/gprolog.html)

### Do:

- Make a simple knowledge base. Represent some of your favorite books and authors.
- Find all books in your knowledge base written by one author.
  `books_author(Books, cSLewis)`
- ~~Make a knowledge base representing musicians and instruments. Also represent musicians and their genre of music.~~
- ~~Find all musicians who play the guitar.~~
- Find all authors who write a certain genre.
  `author_genre(Authors, memoir).`
- Find all genres written by one author.
  `author_genre(cSLewis, Genres).`

## Day 2 - Self-Study

### Find:

- Some implementations of a Fibonacci series and factorials. How do they work?
  They have subgoals with the N -1 and N -2 and then you have a subgoal that adds or multiples and unifies it to the result variable.
- A real-world community using Prolog. What problems are they solving with it today?
  [Reddit](https://www.reddit.com/r/prolog/)
  [StackOverflow](https://stackoverflow.com/search?q=prolog)

Move advanced:

- An implementation of the Towers of Hanoi. How does it work?
  It has 2 clauses. The first describes the movement of one disc. `X`, and `Y` will match to the names of the pegs that the disk needs to move from and to. It has `_` for the fourth argument so that it will match move/4, just like the second clause, and it has 1 as the first argument because it will only match when you have 1 specific piece.

  ```
  move(1,X,Y,_) :-
    write('Move top disk from '),
    write(X),
    write(' to '),
    write(Y),
    nl.
  ```

  The other clause has 3 subgoals. Think about moving just one disc: you move the disc from the left to right, so you have:

  ```
  move(1, left, right, center)
  ```

  But on either side of this subgoal, you need other subgoals involving moving the other piece. Think about moving 2 pieces now. You need:

  ```
  left to center
  left to right
  center to right
  ```

  So the subgoals are just like that:

  ```
  M is N-1,
  move(M,X,Z,Y),
  move(1,X,Y,_),
  move(M,Z,Y,X).
  ```

- What are some of the problems of dealing with "not" expressions? Why do you have to be careful with negation in Prolog?

  You can't produce bindings of the variables for which the goal fails:

  ```
  ?- not(married(Who)).
  no
  ```

  If `married(Who)` gives you henry, you might expect `not(married(Who))` to give you tom, but it can't do that because `married(Who)` succeeds, and so the negative goal fails.

### Do:

- Reverse the elements of a list.

  ```
  ?- [reverse_list].

  yes
  ?- revers([1,2,3,4], What).

  What = [4,3,2,1] ? a

  What = [4,3,2,1]

  yes
  ```

- Find the smallest element of a list.

  ```
  ?- [smallest].

  yes
  ?- smallest([5,7,4], What).

  What = 4 ? a

  no
  ```

- Sort the elements of a list.

## Day 3 - Self-Study

### Find:

- Prolog has some input/output features as well. Find print predicates that print out variables.

  ```
  print(Name).
  ```

- Find a way to use the print predicates to print only successful solutions. How do they work?

### Do:

- Modify the Sudoku solver to work on six-by-six puzzles (squares are 3x2) and 9x9 puzzles.
- Make the Sudoku solver print prettier solutions.

If you're a puzzle enthusiast, you can get lost in Prolog. If you want to dive deeper into the puzzles I've presented, Eight Queens is a good place to start.

- Solve the Eight Queens problem by taking a list of queens. Rather than a tuple, represent each queen with an integer from 1-8. Get the row of a queen by its position in the list and the column by the value in the list
