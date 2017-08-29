require 'minitest/autorun'
require 'minitest/pride'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
  def test_one_plus_two
    assert_equal(3, Calculator.plus(1, 2))
  end

  def test_zero_plus_ten
    assert_equal(10, Calculator.plus(0, 10))
  end

  def test_zero_plus_zero
    assert_equal(0, Calculator.plus(0, 0))
  end

  def test_negative_plus_negative
    assert_equal(-8, Calculator.plus(-5, -3))
  end

  def test_number_plus_string
    assert_raises ArgumentError do
      Calculator.plus(1, "7")
    end
  end

  def test_string_plus_number
    assert_raises ArgumentError do
      Calculator.plus("1", 7)
    end
  end

  def test_number_plus_nil
    assert_raises ArgumentError do
      Calculator.plus(3, nil)
    end
  end

  def test_nil_plus_number
    assert_raises ArgumentError do
      Calculator.plus(nil, 7)
    end
  end
end
