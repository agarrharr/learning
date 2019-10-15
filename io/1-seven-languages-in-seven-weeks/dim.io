Dim := Object clone do (
  init := method(
    self lists := list()
  )

  dim := method(x, y,
    self lists preallocateToSize(y)
    for(i, 0, y - 1, self lists append(list() preallocateToSize(x)))
    self
  )

  set := method(x, y, value,
    self lists at(y) atInsert(x, value)
  )

  get := method(x, y,
    self lists at(y) at(x)
  )

  transpose := method(
    newList := Dim clone dim(self lists size, self lists at(0) size)
    self lists foreach(y, subList,
      subList foreach(x, value,
        newList set(y, x, value)
      )
    )
    newList
  )

  toFile := method(filename,
    f := File with(filename)
    f openForUpdating
    for(x, 0, self lists at(0) size - 1,
      for(y, 0, self lists size - 1,
        f write("#{lists at(y) at(x)}," interpolate)
      )
      f write("\n")
    )
    f close
  )

  fromFile := method(filename,
    f := File with(filename)
    f openForReading
    lines := f readToEnd split("\n")
    lines foreach(y, line,
      items := line split(",")
      items foreach(x, value,
      	self set(y, x, value)
      )
    )
    f close
  )
)

a := Dim clone dim(3, 3)
a set(0, 0, "a")
a set(0, 1, "b")
a set(0, 2, "c")
a set(1, 0, "d")
a set(1, 1, "e")
a set(1, 2, "f")
a set(2, 0, "g")
a set(2, 1, "h")
a set(2, 2, "i")
a toFile("a.txt")
a fromFile("a.txt")

a get(0, 0) println
a get(0, 1) println
a get(0, 2) println
a get(1, 0) println
a get(1, 1) println
a get(1, 2) println
a get(2, 0) println
a get(2, 1) println
a get(2, 2) println

b := a transpose
b println
b get(0, 0) println
b get(0, 1) println
b get(0, 2) println
b get(1, 0) println
b get(1, 1) println
b get(1, 2) println
b get(2, 0) println
b get(2, 1) println
b get(2, 2) println
