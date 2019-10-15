random := 4
guessCounter := 0
previousDiff := nil
currentDiff := nil

while(guessCounter < 10,
  guessCounter = guessCounter + 1
  guess := File standardInput readLine("Enter your guess: ") asNumber()
  guess println
  "What is your guess?" println
  previousDiff = currentDiff
  currentDiff = (guess - random) abs
  if (previousDiff type == "Number",
    if(currentDiff < previousDiff, "Hotter" println, "Colder" println)
  )
)
