random = rand(10) + 1
guess = nil

while guess.to_i != random
  puts ''
  puts 'Guess?'
  guess = gets
  puts 'Too high' if guess.to_i > random
  puts 'Too low' if guess.to_i < random
end

puts "Correct! The answer is #{random}"
