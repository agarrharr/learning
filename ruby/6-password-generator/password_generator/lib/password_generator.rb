module PasswordGenerator
  # Your code goes here...
  ASCII = ('!'..'~')
  ALPHA = ASCII.grep(/[[:alpha:]]/)
  UPPER = ASCII.grep(/[[:upper:]]/)
  LOWER = ASCII.grep(/[[:lower:]]/)
  NUMBER = ASCII.grep(/[[:digit:]]/)
  PUNCT = ASCII.grep(/[[:punct:]]/)

  def self.generate(unique: false, punct: 0, length: 20)
    alpha_ary = ALPHA.dup
    punct_ary = PUNCT.dup
    ((1..(length - punct)).map do
      sample(alpha_ary, unique)
    end + (1..punct).map do
      sample(punct_ary, unique)
    end).shuffle.join
  end

  def self.sample(collection, unique)
      if unique
        collection.delete_at(rand(collection.size))
      else
        collection.sample
      end
  end

  # length
  # number of each type
  # default mix of upper and lower
  # add x digits and x punct optionally
  # disallow repeating?
end
