require "password_generator/version"

module PasswordGenerator
  # Your code goes here...
  ASCII = ('!'..'~')
  ALPHA = ASCII.grep(/[[:alpha:]]/)
  UPPER = ASCII.grep(/[[:upper:]]/)
  LOWER = ASCII.grep(/[[:lower:]]/)
  NUMBER = ASCII.grep(/[[:digit:]]/)
  PUNCT = ASCII.grep(/[[:punct:]]/)
end
