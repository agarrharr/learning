Number divide := Number getSlot("/")
Number / := method(d, if(d == 0, 0, call target divide(d)))

2 / 3 println
2 / 0 println

2 divide(0) println
