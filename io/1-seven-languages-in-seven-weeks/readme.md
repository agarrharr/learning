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
