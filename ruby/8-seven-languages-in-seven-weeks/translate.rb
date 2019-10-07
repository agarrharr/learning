numberHash = {1 => 'one', 2 => 'two', 3 => 'three'}

numberArray = numberHash.values
puts numberArray

numberArray = numberHash.keys
puts numberArray

newHash = Hash.new
numberArray.each { |value|  newHash[value] = value }
puts newHash

