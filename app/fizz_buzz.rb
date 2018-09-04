class FizzBuzz
  FIZZ = 'Fizz'.freeze
  BUZZ = 'Buzz'.freeze
  FIZZ_BUZZ = (FIZZ + BUZZ).freeze
  
  def execute
    (1..100).each do |number|
      p response(number)
    end
  end

  def response(number)
    raise ArgumentError unless 1 <= number && number <= 100

    if number % 3 == 0 && number % 5 == 0
      return FIZZ_BUZZ
    end

    if number % 3 == 0
      return FIZZ
    end

    if number % 5 == 0
      return BUZZ
    end

    number
  end
end

FizzBuzz.new.execute unless defined?(RSpec)
