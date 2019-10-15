a := list(
  list(1, 2, 3),
  list(4, 5, 6),
  list(7, 8, 9)
)

sum := a flatten reduce(a, b, a + b)

a println
sum println
