require "password_generator/version"

module PasswordGenerator
  # Your code goes here...
  ASCII = ('!'..'~')
  ALPHA = ASCII.grep(/[[:alpha:]]/)
  UPPER = ASCII.grep(/[[:upper:]]/)
  LOWER = ASCII.grep(/[[:lower:]]/)
  NUMBER = ASCII.grep(/[[:digit:]]/)
  PUNCT = ASCII.grep(/[[:punct:]]/)

  def self.generate
    (1..20).map do
      ALPHA.sample
    end.join
  end

  # length
  # number of each type
  # default mix of upper and lower
  # add x digits and x punct optionally
  # disallow repeating?
end
