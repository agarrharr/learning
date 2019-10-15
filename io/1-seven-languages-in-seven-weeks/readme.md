# Seven Languages in Seven Weeks - Chapter 3 - Io

## Day 1 - Self-Study

### Find:

- Some Io example problems.

- An Io community that will answer questions.

- A style guide with Io idioms.

### Answer:

- Evaluate `1 + 1` and then `1 + "one"`. Is Io strongly typed or weakly typed? Support your answer with code.

      Yes, when you try to add a number to a string, it throws an error, saying  that `argument 0 to method '+' must be a Number, not a 'Sequence'`.

  ```
  Io> 1 type
  ==> Number
  Io> "one" type
  ==> Sequence
  ```

- Is 0 true or false? What about the empty string? Is `nil` true or false? Support your answer with code.

  They're all different types.

  ```
  Io> true type
  ==> true
  Io> false type
  ==> false
  Io> nil type
  ==> nil
  Io> 0 type
  ==> Number
  ```

  And when comparing the empty string, 0, and `nil` to false, it returns false.

  ```
  Io> "" == false
  ==> false
  Io> 0 == false
  ==> false
  Io> nil == false
  ==> false
  Io>
  ```

- How can you tell what slots a prototype supports?

  `Object slotNames`

- What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?

  `=` Assigns a value to a slot
  `:=` Creates a slot and assigns a value
  `::=` Creates a slot, creates a setter, assigns a value

  You can use `=` if the slot is already created, otherwise you need to use `:=`. Or if you want a setter method, you can use `::=`.

### Do:

- Run an Io program from a file.

  ```
  io file.io
  ```

- Execute the code in a slot given it's name

  ```
  io file.io
  ```

## Day 2 - Self-Study

### Do:

1. A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of the two numbers that came before: 1, 1, 2, 3, 5, 8, 13, 21, and so on. Write a program to find the nth Fibonacci number. `fib(1)` is 1 and `fib(4)` is 3. As a bonus, solve the problem with recursion and with loops.

```
io fibonacci.io
```

2. How would you change `/` to return 0 if the denominator is zero?

```
io divide.io
```

3. Write a program to add up all the numbers in a two-dimensional array.

```
io sum-2d-array.io
```

4. Add a slot called `myAverage` to a list that computes the average of all the numbers in a list. What happens if there are no numbers in a list? (Bonus: Raise an Io exception if any item in the list is not a number.)

```
io myaverage.io
```

5. Write a prototype for a two-dimensional list. The `dim(x, y)` method should allocate a list of `y` lists that are `x` elements long. `set(x, y, value)` should set a value, and `get(x, y)` should return that value.

```
io dim.io
```

6. Bonus: Write a transpose method so that `(new_matrix get(y, x)) == matrix get(x, y)` on the original list.

```
io dim.io
```

7. Write the matrix to a file, and read the matrix from a file.

```
io dim.io
```

8. Write a program that gives you ten tries to guess a random number from 1-100. If you like, give a hint of "hotter" or "colder" after the first guess.
