require "test_helper"

class PasswordGeneratorTest < Minitest::Test
  def test_alpha
    50.times do
      password = PasswordGenerator.generate
      assert_match /^[[:alpha:]]+$/, password
    end
  end

  def test_unique
    50.times do
      password = PasswordGenerator.generate(unique: true)
      assert_match /^[[:alpha:]]+$/, password
      assert_equal password.size, password.chars.uniq.size
    end
  end

  def test_punct
    50.times do
      password = PasswordGenerator.generate(unique: true, punct: 2, length: 30)
      assert_match /^[[:alpha:]]*[[:punct:]][[:alpha:]]*[[:punct:]][[:alpha:]]*$/, password
      assert_equal 30, password.size
      assert_equal 30, password.chars.uniq.size
    end
  end

  def test_digit
    50.times do
      password = PasswordGenerator.generate(unique: true, digit: 1, length: 15)
      assert_match /^[[:alpha:]]*[[:digit:]][[:alpha:]]*$/, password
      assert_equal 15, password.size
      assert_equal 15, password.chars.uniq.size
    end
  end

  def test_upper
    50.times do
      password = PasswordGenerator.generate(unique: true, upper: 1, length: 18)
      assert_match /^[[:lower:]]*[[:upper:]][[:lower:]]*$/, password
      assert_equal 18, password.size
      assert_equal 18, password.chars.uniq.size
    end
  end

  def test_no_upper
    50.times do
      password = PasswordGenerator.generate(unique: true, upper: 0, length: 18)
      assert_match /^[[:lower:]]*$/, password
      assert_equal 18, password.size
      assert_equal 18, password.chars.uniq.size
    end
  end
end
