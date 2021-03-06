require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fizzbuzz'

class FizzBuzzTest < Minitest::Test
  def test_divisible_by_three
    assert_equal("Fizz", FizzBuzz.from(3))
  end

  def test_divisible_by_five
    assert_equal("Buzz", FizzBuzz.from(5))
  end

  def test_divisible_by_five_and_three
    assert_equal("FizzBuzz", FizzBuzz.from(15))
  end

  def test_divisible_by_thirty
    assert_equal("FizzBuzz", FizzBuzz.from(30))
  end

  def test_divisible_by_zero
    assert_equal("FizzBuzz", FizzBuzz.from(0))
  end

  def test_divisible_by_four
    assert_equal(4, FizzBuzz.from(4))
  end

  def test_divisible_by_nil
    assert_raises ArgumentError do
      FizzBuzz.from(nil)
    end
  end

  def test_divisible_by_text
    assert_raises ArgumentError do
      FizzBuzz.from("fizzbuzz")
    end
  end
end
