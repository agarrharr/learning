# Seven Languages in Seven Weeks - Chapter 2 - Ruby

## Day 1 - Self-Study

### Find:

- [The Ruby API](https://ruby-doc.org/core-2.6.5/)
- [Programming Ruby: The Pragmatic Programmer's Guide](https://ruby-doc.org/core-2.6.5/)
- A method that substitutes part of a string - [gsub](https://ruby-doc.org/core-2.6.5/String.html#method-i-gsub)
- Information about Ruby's [regular expressions](https://ruby-doc.org/core-2.6.5/Regexp.html)
- Information about Ruby's [ranges](https://ruby-doc.org/core-2.6.5/Range.html)

### Do:

- Print the string "Hello, world"

  ```ruby
  >> puts 'Hello, world'
  Hello, world
  => nil
  ```

- For the string "Hello, Ruby", find the index of the word "Ruby".


    ```ruby
    >> 'Hello, Ruby'.index("Ruby")
    => 7
    ```

- Print your name 10 times.

  ```ruby
  >> i = 0
  => 0
  >> while i < 10
  >>   puts 'Adam'
  >> i = i + 1
  >> end
  Adam
  Adam
  Adam
  Adam
  Adam
  Adam
  Adam
  Adam
  Adam
  Adam
  => nil
  ```

  In day 2 I learned you could do it this way:

  ```ruby
  >> 3.times { puts 'Adam' }
  Adam
  Adam
  Adam
  => 3
  ```

- Print the string "This is sentence number 1", where the number 1 changes from 1 to 10.

  ```ruby
  >> i = 0
  => 0
  >> while i < 10
  >>   i = i + 1
  >>   puts "This is sentence number #{i}"
  >> end
  This is sentence number 1
  This is sentence number 2
  This is sentence number 3
  This is sentence number 4
  This is sentence number 5
  This is sentence number 6
  This is sentence number 7
  This is sentence number 8
  This is sentence number 9
  This is sentence number 10
  => nil
  ```

  In day 2 I learned you could do it this way:

  ```
  >> (1..10).step(1) { |i| puts "This is sentence number #{i}" }
  This is sentence number 1
  This is sentence number 2
  This is sentence number 3
  This is sentence number 4
  This is sentence number 5
  This is sentence number 6
  This is sentence number 7
  This is sentence number 8
  This is sentence number 9
  This is sentence number 10
  => 1..10
  ```

- Run a ruby program from a file.

  ```bash
  ruby file.rb
  ```

- Bonus problem: If you're feeling the need for a little more, write a program that picks a random number. Let a player guess the number, telling the player whether the guess is too low or too high.

  ```bash
  ruby random.rb
  ```

## Day 2 - Self-Study

### Find:

- Find out how to access files with and without code blocks. What is the benefit of the code block?

  ```bash
  ruby files.rb
  ```

  You immediately get to map over each line instead of having to use `map` and `chomp`.

- How would you translate a hash to an array?

  ```bash
  ruby translate.rb
  ```

  - Can you translate arrays to hashes?

    Yes, but you have less information for what the key and the value is...

- Can you iterate through a hash?

  ```ruby
  numberHash.each { |key, value|
    puts "Key: #{key}"
    puts "Value: #{value}"
  }
  ```

- You can use Ruby arrays as stacks. What other common data structures do arrays support?

  Queues, linked list, set.

### Do:

- Print the contents of an array of sixteen numbers, four numbers at a time, using just `each`. Now, do the same with `each_slice` in `Enumerable`.

  ```bash
  ruby each_slice.rb
  ```

- The `Tree` class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure of hashes. You should be able to specify a tree like this: `{'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}}`.

  ```bash
  ruby tree.rb
  ```

  - Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.

  ```bash
  ruby grep.rb
  ```
