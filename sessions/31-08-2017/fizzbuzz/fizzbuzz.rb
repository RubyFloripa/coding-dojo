class FizzBuzz
  def self.from(value)
    raise ArgumentError unless value.is_a? Numeric

    result = ""

    result << "Fizz" if (value % 3).zero?
    result << "Buzz" if (value % 5).zero?

    result.empty? ? value : result
  end
end
