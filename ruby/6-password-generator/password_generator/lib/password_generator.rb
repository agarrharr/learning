class PasswordGenerator
  ASCII = ('!'..'~')
  ALPHA = ASCII.grep(/[[:alpha:]]/)
  UPPER = ASCII.grep(/[[:upper:]]/)
  LOWER = ASCII.grep(/[[:lower:]]/)
  NUMBER = ASCII.grep(/[[:digit:]]/)
  PUNCT = ASCII.grep(/[[:punct:]]/)

  attr_reader :unique, :punct, :digit, :upper, :length

  def self.generate(opts = {})
    new(opts).generate
  end

  def initialize(unique: false, punct: 0, digit: 0, upper: nil,  length: 20)
    @unique, @punct, @digit, @upper, @length = unique, punct, digit, upper, length
  end

  def generate
    rest = length - punct - digit - upper.to_i
    if upper
      default_sample = Sampler.new(LOWER, unique, rest)
    else
      default_sample = Sampler.new(ALPHA, unique, rest)
    end
    punct_sampler = Sampler.new(PUNCT, unique, punct)
    digit_sampler = Sampler.new(NUMBER, unique, digit)
    upper_sampler = Sampler.new(UPPER, unique, upper.to_i)

    [default_sample, punct_sampler, digit_sampler, upper_sampler].map do |sampler|
      sampler.sample
    end.flatten.shuffle.join
  end

end

  class Sampler
    def initialize(ary, unique, count)
      @ary, @unique = ary.dup, unique
      @count = count
    end

    def sample
      (1..@count).map do
        if @unique
          @ary.delete_at(rand(@ary.size))
        else
          @ary.sample
        end
      end
    end
  end
