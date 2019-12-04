# Seven Languages in Seven Weeks - Chapter 6 - Erlang

## Day 1 - Self-Study

### Find:

- The Erlang language's official site.
  (erlang.org)[https://www.erlang.org]
- Official documentation for Erlang's function library.
  (Functions)[http://erlang.org/doc/reference_manual/functions.html]
- The documentation for Erlang's OTP library.

### Do:

- Write a function that uses recursion to return the number of words in a string.

  ```
  1> c(number_of_words).
  {ok,number_of_words}
  2> number_of_words:num("hi there").
  2
  ```

- Write a function that uses recursion to count to ten.
- Write a function that uses matching to selectively print "success" or "error: message" given input of the form `{error, Message}` or `success`.

## Day 2 - Self-Study

### Do:

- Consider a list of keyword-value tuples, such as `[{erlang, "a functional language"}, {ruby, "an OO language"}]`. Write a function that accepts the list and a keyword and returns the associated value for the keyword.

  ```
  1> c(value).
  {ok,value}
  2> value:value([{erlang, "Functional"}, {java, "OO"}], erlang).
  "Functional"
  ```

- Consider a shopping list that looks like `[{item, quantity, price}, ...]`. Write a list comprehension that builds a list of items of the form `[{item, total_price}, ...]`, where `total_price` is `quantity` times `price`.

  ```
  17> c(shopping).
  {ok,shopping}
  18> shopping:list([{cocoa, 2, 5}, {bananas, 10, 1}]).
  [{cocoa,10},{bananas,10}]
  ```

Bonus problem:

- Write a program that reads a tic-tac-toe board presented as a list or a tuple of size nine. Return the winner (x or o) if a winner has been determined, `cat` if there are no more possible moves, or `no_winner` if no player has won yet.
