class FizzBuzz
  attr_accessor :fizzbuzz_array

  def initialize
    @fizzbuzz_array = []
  end

  #divisable by given number
  # return true or false
  def divisable_by_given?(number, given)
    number % given == 0
  end

  #fizzbuzz range creator
  # set the fizzbuzz_array for a given range with correct sequence of numbers and strings

  def fizzbuzz_iterator(range_from, range_to)
    (range_from..range_to).each do |i|
      if divisable_by_given?(i, 3) && divisable_by_given?(i, 5)
        @fizzbuzz_array << 'FizzBuzz'
      elsif divisable_by_given?(i, 3)
        @fizzbuzz_array << 'Fizz'
      elsif divisable_by_given?(i, 5)
        @fizzbuzz_array << 'Buzz'
      else
        @fizzbuzz_array << i
      end
    end
  end


end
