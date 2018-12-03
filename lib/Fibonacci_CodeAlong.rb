class Fibonacci

  attr_accessor :fib_array

  def initialize
    @fib_array = [1,2,3]
    @even_number_array = []
  end

  # create the fibonacci sequence
  # should append to @fib_array in the correct sequence

  def fib_creator(fib_max)
    @fib_array << (@fib_array[-1] + @fib_array[-2]) while @fib_array.length < fib_max
  end

  def summate_array(array)
    array.inject(:+)
  end

  def sum_of_even
    fib_array.each do |i|
      @even_number_array << i if (i % 2).zero?
    end
    @even_number_array.inject(:+)
  end


end
