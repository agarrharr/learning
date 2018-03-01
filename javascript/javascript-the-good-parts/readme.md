# Javascript the Good Parts Exercises

These are my solutions to the problems from "Javascript the Good Parts" Pluralsight course Authored by: Douglas Crockford available at [Javascript the Good Parts](http://pluralsight.com/training/courses/TableOfContents?courseName=javascript-good-parts)

1. Write a function that takes an argument and returns that argument.

   ```javascript
   identity(3) // 3
   ```

2. Write two binary functions, add and mul, that take two numbers and return their sum and their product.

   ```javascript
   add(3, 4) // 7
   mul(3, 4) // 12
   ```

3. Write a function that takes an argument and returns a function that returns that argument.

   ```javascript
   idf = identityf(3);
   idf()   // 3
   ```

4. Write a function that adds from two invocations

   ```javascript
   addf(3)(4) // 7
   ```

5. Write a function that takes a binary function, and makes it callable with two invocations.

   ```javascript
   addf = applyf(add);
   addf(3)(4)         // 7

   applyf(mul)(5)(6)  // 30
   ```

6. Write a function that takes a function and an argument, and returns a function that can supply a second argument.

   ```javascript
   add3 = curry(add, 3);
   add3(4)               // 7

   curry(mul, 5)(6)      // 30
   ```

7. Without creating any new functions, show three ways to create the inc function.

   ```javascript
   inc(5)       //6
   inc(inc(5))  //7
   ```

8. Write methodize, a function which converts a binary function to a method.

   ```javascript
   Number.prototype.add = methodize(add);
   (3).add(4)    // 7
   ```

9. Write demethodize, a function that converts a method to a binary function.

   ```javascript
   demethodize(Number.prototype.add)(5, 6)  // 11
   ```

10. Write twice, a function which takes a binary function and returns a unary function that passes its argument to the binary function twice.

   ```javascript
   var double = twice(add);
   double(11)    // 22

   var square = twice(mul);
   square(11)    // 121
   ```

11. Write composeu, a function which takes two unary functions and returns a unary function that calls them both.

   ```javascript
   composeu(double, square)(3)  // 36
   ```

12. Write comboseb, a function which takes two binary functions and returns a function that calls them both.

   ```javascript
   composeb(add, mul)(2, 3, 5)  // 25
   ```

13. Write once, a function which takes a function and returns a function that can only be called once.

   ```javascript
   add_once = once(add);
   add_once(3, 4)        // 7
   add_once(3, 4)        // throw!
   ```

14. Write a factory function that returns two functions that implement an up/down counter.

   ```javascript
   counter = counterf(10);
   counter.inc()    // 11
   counter.dec()    // 10
   ```

15. Make a revocable function that takes a nice function, and returns a revoke function that denies access to the nice function, and an invoke function that can invoke the nice function until the nice funciton is revoked.

   ```javascript
   temp = revocable(alert);
   temp.invoke(7);          // alert: 7
   temp.revoke();
   temp.invoke(8);          // throw!
   ```
