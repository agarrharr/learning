List myAverage := method(
  self reduce(a, b,
    if(a == nil, nil,
      if(a type != Number type or b type != Number type,
        Exception raise("Not a number"),
        a + b / self size
      )
    )
  )
)

a := list(1,2,3,3)
a myAverage println

b := list()
b myAverage println

c := list(1, 2, "3")
c myAverage println
