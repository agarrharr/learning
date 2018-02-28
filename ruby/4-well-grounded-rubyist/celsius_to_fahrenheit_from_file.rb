puts "Reading celsius temperature from celsius.txt..."
celsius = File.read("celsius.txt")
fahrenheit = (celsius.to_i * 9 / 5) + 32
puts "The temperature in celsius is: " + celsius
print "The temperature in fahrenheit is: "
print fahrenheit
puts "."
