fib := method(n,
  if(n == 1, 1,
    if(n == 2, 1, fib(n - 1) + fib(n - 2))
  )
)

for(i, 1, 11, fib(i) println)

"" println

fibLoops := method(n,
  a := 1;
  b := 1;
  c := 0;
  if(n == 1, a,
    if(n == 2, b,
      for(i, 3, n, c = a + b; a = b; b = c))
  )
)

for(i, 1, 11, fibLoops(i) println)
