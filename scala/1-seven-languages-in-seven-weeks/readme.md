# Seven Languages in Seven Weeks - Chapter 5 - Scala

## Day 1 - Self-Study

### Find:

- The Scala API
  [https://docs.scala-lang.org/api/all.html](https://docs.scala-lang.org/api/all.html)
- A comparison of Java and Scala
  [https://www.toptal.com/scala/why-should-i-learn-scala](https://www.toptal.com/scala/why-should-i-learn-scala)
  [https://www.guru99.com/scala-vs-java.html](https://www.guru99.com/scala-vs-java.html)
- A discussion of `val` versus `var`
  [Question on StackOverflow](https://stackoverflow.com/questions/1791408/what-is-the-difference-between-a-var-and-val-definition-in-scala)

### Do:

- Write a game that will take a tic-tac-toe board with X, O, and blank characters and detect the winner or whether there is a tie or no winner yet. Use classes where appropriate.
- Bonus problem: Let two players play tic-tac-toe.

## Day 2 - Self-Study

### Find:

- A discussion on how to use Scala files.
  [https://www.journaldev.com/8278/scala-file-io-write-file-read-file](https://www.journaldev.com/8278/scala-file-io-write-file-read-file)
- What makes a closure different from a code block.

### Do:

- Use `foldLeft` to compute the total size of a list of strings.
- Write a `Censor` trait with a method that will replace the curse words Shoot and Darn with Pucky and Beans alternatives. Use a map to store the curse words and their alternatives.
- Load the curse words and alternatives from a file.

## Day 3 - Self-Study

### Find:

- For the sizer program, what would happen if you did not create a new actor for each link you wanted to follow? What would happen to the performance of the application?

### Do:

- Take the sizer application and add a message to count the number of links on the page.
- Bonus problem: Make the sizer follow the links on a given page, and load them as well. For example, a sizer for "google.com" would compute the size for Google and all of the pages it links to.
