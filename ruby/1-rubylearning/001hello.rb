# puts stands for put string

=begin
 this is a
 multiline comment
=end

puts 'Hello Ruby without the optional parenthesis!'
puts('Hello Ruby with parenthesis!')

# run this with:
# $ ruby 001hello.rb

puts -7 %  3 #  2
puts -5 %  3 #  1
puts  5 % -3 # -1
puts -5 % -3 # -2
puts  5 %  3 #  2

# runs terminal command
puts `ls -lha`

# current filename
puts $0 #001hello.rb
