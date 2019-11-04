// $ scala for_loop.scala command line arguments to loop over

def forLoop {
  println("for loop")
  for(i <- 0 until args.length) {
    println(args(i))
  }
}
forLoop

def forEachLoop {
  println("foreach loop")
  args.foreach { arg =>
    println(arg)
  }
}
forEachLoop
